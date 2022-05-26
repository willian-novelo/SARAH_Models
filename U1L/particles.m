ParticleDefinitions[GaugeES] = {
	{H0, {
		PDG -> 0,
		Width -> 0,
		Mass -> Automatic,
		FeynArtsNr -> 1,
		LaTeX -> "H^0",
		OutputName -> "H0"
		}
	},
	
	{Hp, {
		PDG -> 0,
		Width -> 0,
		Mass -> Automatic,
		FeynArtsNr -> 2,
		LaTeX -> "H^+",
		OutputName -> "Hp"
		}
	
	},
	
	{VB,  {Description -> "B-Boson"}},
	{VWB, {Description -> "W-Bosons"}},
	{VG,  {Description -> "Gluon"}},
	{gB,  {Description -> "B-Boson Ghost"}},
	{gWB, {Description -> "W-Boson Ghost"}},
	{gG,  {Description -> "Gluon Ghost"}}
};

ParticleDefinition[EWSB] = {
	(* Physical Scalars *)
	
	{hh, {Description -> "Higgs",
		PDG -> {25, 35, 900031, 900032},	
		Width -> Automatic,
		Mass -> LesHouches,
		FeynArtsNr -> 1,
		LaTeX -> "h",
		OutputName -> "h"
		}
	},
	
	{Ah, {Description -> "Pseudo-Scalar Higgs",
		PDG -> {0,0,900033,900034},
		Width -> {0,0, Automatic, Automatic},
		Mass -> {0,0, LesHouches, LesHouches},
		FeynArtsNr -> 2,
		LaTeX -> "A_h",
		OutputName -> "Ah"
		}
	},
	
	{Hm, {Description -> "Charged Higgs",
		PDG -> {0, 900035},
		PDG.IX -> {0, -10000602},
		Width -> {0, External},
		Mass -> {0, LesHouches},
		ElectricCharge -> -1,
		LaTeX -> {"H^+", "\\sigma^{1}", "\\sigma^{2}"},
		OutputName -> {"Hm", "s1", "s2"}
	},
	
	(* Physical Gauge Bosons *)
	
	{VP,  {Description -> "Photon"}},
	
	{VZ,  {Description -> "Z-Boson",
		Goldstone -> Ah[{1}]
		}
	},
	
	{VZp, {Description -> "Z'-Boson",
		Goldstone -> Ah[{2}]
		}
	},
	
	{VWm, {Description -> "W-Boson",
		Goldstone -> Hm[{1}]
		}
	},
	
	{VG,  {Description -> "Gluon"}},
	
	(* Ghosts *)
	
	{gP,   {Description -> "Photon Ghost"}},
	{gZ,   {Description -> "Z-Boson Ghost"}},
	{gZp,  {Description -> "Z'-Ghost"}},
	{gWm,  {Description -> "Negative W-Boson Ghost"}},
	{gWmC, {Description -> "Positive W-Boson Ghost"}},
	
	(* Fermions *)
	
	{Fu, {Description -> "Up Quarks"}},
	{Fd, {Description -> "Down Quarks"}},
	{Fe, {Description -> "Leptons"}},
	
	{Fv, {Description -> "Neutrinos",
		PDG -> {12,14,16,800031,800032,800033},
		PDG.IX -> {-110000001,-110000002,-110000003,-110000004,-110000005},
		Width -> {0,0,0,0,0,0},
		Mass -> {0,0,0,0,0,0},
		FeynArtsNr -> 1,
		ElectricCharge -> 0,
		LaTeX -> "\\nu",
		OutputName -> "nu"
		}
	},
	
	{Fx, {PDG -> {800021},
		PDG.IX -> {-8100021},
		Width -> Automatic,
		Mass -> Automatic,
		FeynArtsNr -> 6,
		ElectricCharge -> 0,
		LaTeX -> "\\chi^{0}",
		OutputName -> "Chi0"
		}
	},
	
	{Fvv, {PDG -> {800022},
		PDG.IX -> {-8100022},
		Width -> Automatic,
		Mass -> Automatic,
		FeynArtsNr -> 7,
		ElectricCharge -> 0,
		LaTeX -> "\\nu^{d}",
		OutpuName -> "nud"
		}
	},
	
	{FeD, {PDG -> {800023},
		PDG.IX -> {-8100023},
		Width -> Automatic,
		Mass -> LesHouches,
		FeynArtsNr -> 8,
		ElectricCharge -> -1,
		LaTeX -> "eD",
		OutputName -> "eD"
		}
	}
};

WeylFermionAndIntermediate = {
	(* Scalar Fields *)
	
	{H,   {PDG-> 0,
		Width -> 0,
		Mass -> Automatic,
		LaTeX -> "H",
		OutputName -> ""
		}
	},
	
	{eta, {PDG -> 0,
		Width -> 0,
		Mass -> Automatic,
		LaTeX -> "\\eta",
		OutputName -> ""
		}
	},
	
	{s,  {PDG -> 0,
		Width -> 0,
		Mass -> Automatic,
		LaTeX -> "s^{0}"},
		OutputName -> ""
	},
	
	{phi, {PDG -> 0,
		Width -> 0,
		Mass -> Automatic,
		LaTeX -> "\\phi",
		OutputName -> ""
		}
	},
	
	(* Fermion Fields *)
	
	{q,  {LaTeX -> "q"}},
	{uL, {LaTeX -> "u_L"}},
	{uR, {LaTeX -> "u_R"}},
	{dL, {LaTeX -> "d_L"}},
	{dR, {LaTeX -> "d_R"}},
	{l,  {LaTeX -> "l"}},
	{eL, {LaTeX -> "e_L"}},
	{eR, {LaTeX -> "e_R"}},
	{vL, {LaTeX -> "\\nu_L"}},
	{vR, {LaTeX -> "\\nu_R"}},
	
	{x1L, {LaTeX -> "\\chi_L"}},
	{x2R, {LaTeX -> "\\chi_R"}},
	
	{lp,   {LaTeX -> "l'"}},
	{vpL,  {LaTeX -> "\\nu'_L"}},
	{epL,  {LaTeX -> "e'_L"}},
	{epR,  {LaTeX -> "e'_R"}},
	{lpp,  {LaTeX -> "l''"}},
	{vppR, {LaTeX -> "\\nu''_R"}},
	{eppR, {LaTeX -> "e''_R"}},
	{eppL, {LaTeX -> "e''_L"}},
	
	{UL, {LaTeX -> "U_L"}},
	{UR, {LaTeX -> "U_R"}},
	{DL, {LaTeX -> "D_L"}},
	{DR, {LaTeX -> "D_R"}},
	{EL, {LaTeX -> "E_L"}},
	{ER, {LaTeX -> "E_R"}},
	{VL, {LaTeX -> "V_L"}},
	{VR, {LaTeX -> "V_R"}}		
};
