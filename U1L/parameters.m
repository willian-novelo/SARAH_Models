ParameterDefinitions = {

	(* Coupling constants*)
	
	{g1,	{Description -> "Hypercharge-Coupling"}},
	{g1p1,	{Description -> "Mixed Gauge Coupling 1"}},
	{g11p,	{Description -> "Mixed Gauge Coupling 2"}},
	{g1p,	{Description -> "U1L-Coupling"}},
	
	{g2,    {Description -> "Left-Coupling"}},
	{g3,    {Description -> "Strong-Coupling"}}, 

	(* SM Useful Parameters *)
	
	{AlphaS, {Description -> "Alpha Strong"}},	
	{e,	 {Description -> "electric charge"}},
	{Gf,     {Description -> "Fermi's constant"}},
	{aEWinv, {Description -> "inverse weak coupling constant at mZ"}},
	{ThetaW, {Description -> "Weinberg-Angle"}},
	
	{MZp,       {   Description -> "Z' mass"}},
	
	{ThetaWp,{ Description -> "Theta'", DependenceNum -> None}},
	
	
	(* VEVs *)
	
	{vH,	{Description -> "EW-VEV",
		DependenceSPheno -> None}
	},
	{vPh,	{LaTeX -> "v_\\phi",
		Dependence -> None,
		OutputName -> vPh,
		Real -> True,
		LesHouches -> {BL, 43}}
	},
	
	(* Scalar potential parameters *)
	
	{mH2,	{LaTeX -> "\\mu_H^2",
		Output -> mH2,
		LesHouches -> {BL, 15}}
	},
	
	{mEt2,	{LaTeX -> "\\mu_\\eta^2",
		Output -> mEt2,
		LesHouches -> mEt2}
	},
	
	{mP2,	{LaTeX -> "\\mu_\\phi^2",
	     	Output -> mP2,
	     	LesHouches -> {BL,11}}
	},
	
	{mS2,	{LaTeX -> "\\mu_s^2",
		Output -> mS2,
		LesHouches -> mS2}
	},
	
	{Lamb1,	{LaTeX -> "\\lambda_1",
		Output -> Lamb1,
		LesHouches -> {BL,1}}
	},
	
	{Lamb2,	{LaTeX -> "\\lambda_2",
		Output -> Lamb2,
		LesHouches -> Lamb2}
	},
	
	{Lamb3,	{LaTeX -> "\\lambda_3",
		Output -> Lamb3,
		LesHouches -> Lamb3}
	},
	
	{Lamb4,	{LaTeX -> "\\lambda_4",
		Output -> Lamb4,
		LesHouches -> Lamb4}
	},
	
	{Lamb5,	{LaTeX -> "\\lambda_5",
		Output -> Lamb5,
		LesHouches -> Lamb5}
	},
	
	{Lamb6,	{LaTeX -> "\\lambda_6",
		Output -> Lamb6,
		LesHouches -> Lamb6}
	},
	
	{Lamb7,	{LaTeX -> "\\lambda_7",
		Output -> Lamb7,
		LesHouches -> Lamb7}
	},
	
	{Lamb8,	{LaTeX -> "\\lambda_8",
		Output -> Lamb8,
		LesHouches -> Lamb8}
	},
	
	{Lamb9,	{LaTeX -> "\\lambda_9",
		Output -> Lamb9,
		LesHouches -> Lamb9}
	},
	
	{Lamb10,{LaTeX -> "\\lambda_{10}",
		Output -> Lamb10,
		LesHouches -> Lamb10}
	},
	
	{Lamb11,{LaTeX -> "\\lambda_{11}",
		Output -> Lamb11,
		LesHouches -> Lamb11}
	},
	
	{Lamb12,{LaTeX -> "\\lambda_{12}",
		Output -> Lamb12,
		LesHouches -> Lamb12}
	},
	
	(* SM Yukawa Couplings *)
	
	{Yd,	{Description -> "Down-Yukawa-Coupling",
		DependenceNum ->  Sqrt[2]/vH* {{Mass[Fd,1],0,0},{0, Mass[Fd,2],0},{0, 0, Mass[Fd,3]}}
		}
	},
	
	{Yu,	{Description -> "Up-Yukawa-Coupling",
		DependenceNum ->  Sqrt[2]/vH* {{Mass[Fu,1],0,0},{0, Mass[Fu,2],0},{0, 0, Mass[Fu,3]}}
		}
	}, 
             									        						
	{Ye,	{Description -> "Lepton-Yukawa-Coupling",
		DependenceNum ->  Sqrt[2]/vH* {{Mass[Fe,1],0,0},{0, Mass[Fe,2],0},{0, 0, Mass[Fe,3]}}
		}
	}, 
	
	(* New Yukawa Couplings *)
	
	{YA,  {LaTeX -> "\\lambda_{a}",   
              Real -> True, 
              LesHouches -> YA,
              OutputName-> YA
              }
        },
          
	{YB,  {LaTeX -> "\\lambda_{b}",   
              Real -> True, 
              LesHouches -> YB,
              OutputName-> YB
              }
        },
        
        {YC,  {LaTeX -> "\\lambda_{c}",   
              Real -> True, 
              LesHouches -> YC,
              OutputName-> YC
              }
        },
        
        {YD,  {LaTeX -> "\\lambda_{d}",   
              Real -> True, 
              LesHouches -> YD,
              OutputName-> YD
              }
        },
        
        {YE,  {LaTeX -> "\\lambda_{e}",   
              Real -> True, 
              LesHouches -> YE,
              OutputName-> YE
              }
        },
        
        {YF,  {LaTeX -> "\\lambda_{f}",   
              Real -> True, 
              LesHouches -> YF,
              OutputName-> YF
              }
        },
        
        {YG,  {LaTeX -> "\\lambda_{g}",   
              Real -> True, 
              LesHouches -> YG,
              OutputName-> YG
              }
        },

	(* Gauge Mixing *)
	
	{ZZ, 	{Description ->   "Photon-Z-Z' Mixing Matrix"}},
	{ZW, 	{Description -> "W Mixing Matrix"}},

	(* Scalar Mixing *)
	
	{ZH,	{Description->"Scalar-Mixing-Matrix", 
               	Dependence -> None,
              	DependenceOptional -> None,
               	DependenceNum -> None}
	},
	
	{ZH2,	{Description->"Second Scalar Mixing Matrix", 
               	Dependence -> None,
              	DependenceOptional -> None,
               	DependenceNum -> None}
	},
  
	{ZA,	{Description->"Pseudo-Scalar-Mixing-Matrix", 
               	Dependence -> None,
               	DependenceOptional -> None,
               	DependenceNum -> None}
        },

	{ZA2,	{Description->"Second Pseudo-Scalar Mixing Matrix", 
               	Dependence -> None,
               	DependenceOptional -> None,
               	DependenceNum -> None}
        },

	{ZP,	{Description->"Charged-Mixing-Matrix", 
		LaTeX -> "Z^+",
		Real ->True,
		DependenceOptional -> None, 
		Value -> None, 
		LesHouches -> CHARGEMIX,
		OutputName-> ZP}
	},
	
	(* SM Fermion Mixing *)
	
	{Vu,	{Description ->"Left-Up-Mixing-Matrix"}},
	{Uu,	{Description ->"Right-Up-Mixing-Matrix"}},
	{Vd,	{Description ->"Left-Down-Mixing-Matrix"}},
	{Ud,	{Description ->"Right-Down-Mixing-Matrix"}}, 
	{Ve,	{Description ->"Left-Lepton-Mixing-Matrix"}},
	{Ue,	{Description ->"Right-Lepton-Mixing-Matrix"}},
	
	{ZM,	{Description -> "Neutrino-Mixing-Matrix"}},

	(* New Fermion Mixing *)
	
	{VeD,	{Description ->"New-Left-Lepton-Mixing-Matrix", 
             	LaTeX -> "UD^e_L",
             	Dependence ->  None, 
             	Value -> None, 
             	LesHouches -> UELDMIX,
             	OutputName-> ZELD}
	},            
            
	{UeD,	{Description ->"New-Right-Lepton-Mixing-Matrix", 
 		LaTeX -> "UD^e_R",
             	Dependence ->  None, 
             	Value -> None, 
             	LesHouches -> UERDMIX,
             	OutputName-> ZERD}
	}             
};
