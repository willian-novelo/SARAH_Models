Off[General::spell]

Model`Name = "U1L";
Model`NameLaTeX = "U(1)L extension with scotogenic radiative neutrino masses";
Model`Authors = "Willian Novelo";
Model`Date = "2022-04-11";

(* 2022-04-11 Introducing the U(1)L *)
(* 2022-04-21 Adding the scotogenic mechanism for neutrino masses *)

(*-------------------------------------------*)
(*   Particle Content  *)
(*-------------------------------------------*)

(* Gauge Fields *)

Gauge[[1]] = {B,   U[1], hypercharge, g1, False};
Gauge[[2]] = {WB, SU[2], left,        g2, True};
Gauge[[3]] = {G,  SU[3], color,       g3, False};
Gauge[[4]] = {Bp,  U[1], U1L,        g1p, False};

(* Chiral Fields *)

FermionFields[[1]]  = {q,   3, {uL,dL},             1/6, 2,  3,  0};
FermionFields[[2]]  = {l,   3, {vL,eL},            -1/2, 2,  1,  3};
FermionFields[[3]]  = {d,   3, conj[dR],            1/3, 1, -3,  0};
FermionFields[[4]]  = {u,   3, conj[uR],           -2/3, 1, -3,  0};
FermionFields[[5]]  = {e,   3, conj[eR],              1, 1,  1, -3};

FermionFields[[6]]  = {v,   3, conj[vR],              0, 1,  1,  6}; (* RH neutrino singlets *)
FermionFields[[7]]  = {x1,  2, x1L,                   0, 1,  1, -4}; (* DM candidate *)
FermionFields[[8]]  = {x2,  2, conj[x2R],             0, 1,  1, -5}; (* DM candidate *)

FermionFields[[9]]  = {lp,  1, {vpL, epL},         -1/2, 2,  1, -2}; (* Second lepton doublet *)
FermionFields[[10]] = {lpp, 1, conj[{-eppR, vppR}], 1/2, 2,  1, -7}; (* Third  lepton doublet *)
FermionFields[[11]] = {ep,  1, conj[epR],             1, 1,  1,  2}; (* Second lepton singlet *)
FermionFields[[12]] = {epp, 1, eppL,                 -1, 1,  1,  7}; (* Third  lepton singlet *)

ScalarFields[[1]]   = {H,   1, {Hp, H0},            1/2, 2,  1,  0};
ScalarFields[[2]]   = {eta, 1, {etp, et0},          1/2, 2,  1, -2}; (* Scotogenic neutrino masses *)
ScalarFields[[3]]   = {phi, 1, phi,                   0, 1,  1,  9}; (* Responsible for DM masses *)
ScalarFields[[4]]   = {s,   1, s0,                    0, 1,  1, -2}; (* Scotogenic neutrino masses *)

(*----------------------------------------------*)
(*   DEFINITION                                 *)
(*----------------------------------------------*)

NameOfStates={GaugeES, EWSB};

(* ----- Before EWSB ----- *)

DEFINITION[GaugeES][LagrangianInput]= {
	{LagYukSM, {AddHC->True}},
	{LagYukDM, {AddHC->True}},
	{LagH,     {AddHC->False}},
	{LagEt,    {AddHC->False}},
	{LagP,     {AddHC->False}},
	{LagS,     {AddHC->False}},
	{LagHEt,   {AddHC->False}},
	{LagPH,    {AddHC->False}},
	{LagPEt,   {AddHC->False}},
	{LagSH,    {AddHC->False}},
	{LagSEt,   {AddHC->False}},
	{LagPS,    {AddHC->False}},
	{LagTri,   {AddHC->True}}
};

(* Yukawa interactions *)

LagYukSM = -(Yd conj[H].d.q + Yu H.u.q + Ye conj[H].e.l);
LagYukDM = -(YA phi.x2.x1 + YB conj[eta].l.x2 + YC s0.x1.v + YD conj[phi].ep.epp + YE phi.lpp.lp + YF conj[H].ep.lp + YG H.epp.lpp);

(* Scalar potential *)

LagH    = -(mH2 conj[H].H      - Lamb1 conj[H].H.conj[H].H);
LagEt   = -(mEt2 conj[eta].eta - Lamb2 conj[eta].eta.conj[eta].eta);
LagP    = -(mP2 conj[phi].phi  - Lamb3 conj[phi].phi.conj[phi].phi);
LagS    = -(mS2 conj[s].s      - Lamb4 conj[s].s.conj[s].s);

LagHEt  = Lamb5  conj[H].H.conj[eta].eta + Lamb6 conj[H].eta.conj[eta].H;
LagPH   = Lamb7  conj[phi].phi.conj[H].H;
LagPEt  = Lamb8  conj[phi].phi.conj[eta].eta;
LagSH   = Lamb9  conj[s].s.conj[H].H;
LagSEt  = Lamb10 conj[s].s.conj[eta].eta;
LagPS   = Lamb11 conj[phi].phi.conj[s].s;
LagTri  = Lamb12 conj[eta].H.s; (* Trilinear term necessary to generate radiative neutrino masses *)


(* ----- After EWSB ----- *)

(* Gauge Sector *)

DEFINITION[EWSB][GaugeSector] =
{ 
  {{VB,VWB[3],VBp},{VP,VZ,VZp},ZZ},
  {{VWB[1],VWB[2]},{VWm,conj[VWm]},ZW}
};

          	
(* ----- VEVs ---- *)

DEFINITION[EWSB][VEVs]= 
{    {H0,  {vH,  1/Sqrt[2]}, {rhoH,  1/Sqrt[2]}, {sigmaH,  \[ImaginaryI]/Sqrt[2]}},
     {phi, {vPh, 1/Sqrt[2]}, {rhoPh, 1/Sqrt[2]}, {sigmaPh, \[ImaginaryI]/Sqrt[2]}},
     {et0, {0, 0},           {rhoEt, 1/Sqrt[2]}, {sigmaEt, \[ImaginaryI]/Sqrt[2]}},
     {s0,  {0, 0},           {rhoS,  1/Sqrt[2]}, {sigmaS,  \[ImaginaryI]/Sqrt[2]}}
};

DEFINITION[EWSB][MatterSector]=   
{
     (* Netral Scalar Mixing *)
     {{rhoH,rhoPh}, {hh,ZH}},
     {{sigmaH,sigmaPh}, {Ah,ZA}},
     
     {{rhoEt, rhoS}, {hp, ZH2}},
     {{sigmaEt, sigmaS}, {Ap, ZA2}},
  
     (* Charged Scalar Mixing *) 
     {{conj[Hp],conj[etp]},{Hm,ZP}},
  
     (* SM Fermion Mixing *)
     {{{dL}, {conj[dR]}}, {{DL,Vd}, {DR,Ud}}},
     {{{uL}, {conj[uR]}}, {{UL,Vu}, {UR,Uu}}},
     {{{eL}, {conj[eR]}}, {{EL,Ve}, {ER,Ue}}},

     (* Neutrino Mixing *)
     {{vL, conj[vR]}, {VL,ZM}},
     
     (* New Fermion Mixing *)
     {{{epL, eppL}, {conj[epR],conj[eppL]}}, {{ELD, VeD}, {ERD, UeD}}}
};

(*------------------------------------------------------*)
(* Dirac-Spinors *)
(*------------------------------------------------------*)

DEFINITION[EWSB][DiracSpinors]={
 Fd ->{DL, conj[DR]},
 Fe ->{EL, conj[ER]},
 Fu ->{UL, conj[UR]},
 Fv ->{VL, conj[VL]},
 
 Fx ->{x1L, conj[x2R]}, (* DM candidate *)
 Fvv ->{vpL, conj[vppR]},
 FeD ->{ELD, conj[ERD]} (*New charged leptons*)
 
};

DEFINITION[EWSB][GaugeES]={
 Fd1 ->{  FdL, 0},
 Fd2 ->{  0, FdR},
 Fu1 ->{  Fu1, 0},
 Fu2 ->{  0, Fu2},
 Fe1 ->{  Fe1, 0},
 Fe2 ->{  0, Fe2}
};
 
 
