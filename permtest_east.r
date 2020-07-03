library(rcarbon)

Sites<-c(5001,5002,5002,5003,5004,5004,5005,5005,5005,5005,5005,5005,5005,5005,5008,5009,5009,5009,5009,5009,5009,5009,5009,5009,5009,5009,5010,5011,5012,5012,5012,5012,5015,5016,5017,5018,5019,5019,5019,5019,5020,5020,5022,5022,5022,5023,5025,5026,5027,5028,5029,5034,5035,5037,5039,5039,5039,5039,5039,5039,5039,5040,5040,5040,5041,5044,5045,5046,5048,5048,5051,5052,5052,5052,5052,5052,5052,5052,5052,5052,5052,5053,5053,5055,5056,5056,5057,5059,5059,5059,5059,5059,5060,5060,5060,5062,5062,5062,5062,5062,5063,5063,5064,5064,5065,5066,5066,5066,5066,5066,5068,5068,5069,5070,5071,5072,5073,5074,5074,5074,5075,5078,5078,5079,5079,5080,5082,5084,5085,5086,5087,5087,5087,5087,5088,5089,5089,5090,5091,5092,5092,5092,5092,5092,5093,5093,5096,5096,5097,5097,5097,5097,5098,5099,5099,5100,5101,5102,5103,5104,5105,5106,5106,5106,5106,5106,5106,5107,5108,5109,5116,5117,5118,5118,5119,5120,5120,5120,5120,5120,5120,5120,5120,5120,5120,5121,5121,5121,5122,5122,5122,5122,5122,5125,5126,5126,5128,5129,5129,5130,5139,5139,5139,5139,5139,5139,5141,5142,5142,5142,5143,5143,5144,5150,5154,5155,5155,5156,5158,5158,5158,5158,5158,5158,5158,5158,5158,5158,5161,5161,5162,5162,5176,5177,5178,5179,5180,5180,5181,5181,5181,5181,5181,5181,5181,5184,5185,5185,5185,5185,5185,5187,5187,5187,5187,5188,5188,5189,5189,5189,5189,5190,5191,5191,5192,5193,5193,5193,5193,5193,5193,5193,5193,5193,5193,5193,5193,5193,5193,5203,5203,5204,5204,5204,5204,5006,5006,5006,5007,5007,5007,5007,5013,5014,5014,5021,5021,5021,5024,5024,5024,5024,5024,5024,5024,5024,5024,5024,5024,5024,5024,5024,5024,5024,5024,5024,5024,5024,5030,5030,5030,5030,5030,5030,5031,5032,5032,5033,5033,5036,5036,5036,5036,5036,5036,5036,5036,5036,5038,5042,5043,5043,5043,5047,5047,5047,5047,5047,5047,5047,5047,5047,5049,5049,5049,5049,5050,5054,5054,5054,5054,5054,5058,5058,5058,5058,5058,5058,5058,5058,5061,5061,5061,5061,5061,5061,5061,5067,5076,5076,5077,5077,5077,5077,5077,5077,5081,5083,5083,5083,5083,5083,5083,5083,5083,5094,5094,5094,5094,5094,5094,5094,5094,5094,5094,5094,5094,5094,5094,5095,5095,5110,5110,5110,5111,5111,5112,5113,5113,5113,5113,5113,5113,5113,5113,5113,5113,5113,5113,5114,5115,5123,5123,5123,5123,5123,5123,5123,5123,5123,5123,5123,5124,5124,5124,5124,5124,5124,5124,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5127,5131,5131,5132,5132,5132,5132,5132,5132,5133,5133,5133,5133,5133,5133,5133,5133,5133,5133,5133,5134,5134,5134,5135,5135,5135,5135,5136,5136,5136,5137,5137,5137,5138,5140,5140,5140,5140,5140,5140,5140,5140,5140,5140,5140,5140,5140,5140,5140,5145,5145,5145,5145,5145,5145,5145,5145,5146,5146,5146,5147,5147,5148,5149,5151,5152,5152,5153,5153,5153,5153,5153,5153,5153,5153,5153,5153,5157,5157,5157,5157,5159,5160,5160,5160,5160,5160,5160,5163,5164,5165,5165,5165,5165,5165,5165,5165,5165,5166,5166,5166,5166,5166,5166,5166,5166,5166,5166,5166,5166,5166,5166,5166,5166,5167,5167,5168,5169,5170,5171,5172,5172,5173,5173,5174,5175,5182,5182,5182,5182,5182,5182,5183,5183,5183,5186,5186,5194,5195,5195,5195,5195,5195,5195,5195,5196,5197,5198,5199,5200,5200,5200,5201,5201,5201,5201,5202,5202,5202,5202,5202,5202,2001,2002,2002,2003,2004,2004,2005,2005,2005,2005,2005,2005,2005,2005,2006,2007,2007,2007,2007,2007,2007,2007,2007,2007,2007,2007,2010,2010,2012,2012,2012,2012,2013,2014,2015,2018,2019,2019,2019,2019,2020,2020,2022,2022,2022,2023,2025,2026,2027,2028,2029,2034,2035,2037,2039,2039,2039,2039,2039,2039,2039,2040,2040,2040,2041,2044,2045,2046,2048,2048,2051,2052,2052,2052,2052,2052,2052,2052,2052,2052,2052,2053,2053,2055,2056,2056,2057,2059,2059,2059,2059,2059,2060,2060,2060,2062,2062,2062,2062,2062,2063,2063,2064,2064,2065,2066,2066,2066,066,2066,2068,2068,2069,2070,2071,2072,2073,2074,2074,2074,2075,2078,2078,2079,2079,2081,2082,2084,2085,2086,2087,2087,2087,2087,2088,2089,2089,2090,2091,2092,2092,2092,2092,2092,2093,2093,2096,2096,2097,2097,2097,2097,2098,2099,2099,2100,2101,2102,2103,2104,2105,2106,2106,2106,2106,2106,2106,2107,2108,2109,2116,2117,2118,2118,2119,2120,2120,2120,2120,2120,2120,2120,2120,2120,2120,2121,2121,2121,2122,2122,2122,2122,2122,2125,2126,2126,2128,2129,2129,2130,2139,2139,2139,2139,2139,2139,2140,2142,2142,2142,2143,2143,2144,2150,2154,2155,2155,2156,2158,2158,2158,2158,2158,2158,2158,2158,2158,2158,2161,2161,2162,2162,2176,2177,2178,2178,2180,2180,2181,2181,2181,2181,2181,2181,2181,2184,2185,2185,2185,2185,2185,2187,2187,2187,2187,2188,2188,2189,2189,2189,2189,2190,2191,2191,2192,2193,2193,2193,2193,2193,2193,2193,2193,2193,2193,2193,2193,2193,2193,2203,2203,2204,2204,2204,2044)

Aar<-c(3500,3485,3525,3970,3995,4735,3870,4475,4535,4570,4710,4850,4905,5025,4740,3765,4885,4905,4930,4965,5020,5054,3375,4965,5020,5054,4955,4130,3390,3600,3610,3630,4230,3950,4046,4890,4370,4401,4536,4622,5256,5425,3530,3630,3695,4830,4755,3543,4930,4182,4280,5075,3775,4965,3445,3535,3595,3660,3685,3720,3790,5090,5245,5260,3550,3622,4160,4180,3580,5300,4959,4146,4821,4910,4953,5010,5080,5187,5238,5423,5480,4270,4560,4702,3263,3629,3300,5000,5055,5065,5075,5115,3610,3950,4350,3825,4075,4965,5195,5405,4990,5150,4480,5135,3890,4095,4400,4770,4840,5055,4012,4210,4463,4354,4698,3457,3570,4090,4600,4700,5142,3445,4250,4625,5000,3980,3870,3680,3450,4081,3376,3991,4377,4398,4180,4860,5015,3670,3665,3250,3465,3550,3555,3945,3611,5206,3595,3705,3525,5020,5190,5210,3810,3507,4450,3130,3040,4940,4830,4155,3605,4220,4300,4410,4510,4615,5315,3510,3530,3950,3830,4210,4705,4796,4600,3775,4813,4891,4931,4939,5010,5017,5021,5055,5057,5005,5015,5085,5095,5325,5325,5325,5400,4150,3580,4860,3520,3526,3685,4527,3240,3310,4210,4670,4680,4880,4660,3820,4434,4446,4885,5030,4669,3480,4920,3585,3715,4965,4790,4850,4860,4885,4950,4955,4960,5040,5130,5155,3600,4716,4335,4945,3625,3540,3868,3970,4610,4850,4260,4430,4850,4890,4940,5120,5290,4485,3520,4090,4800,4850,4950,3550,4000,4110,4300,4180,4300,3490,3590,4720,4810,3680,3514,3600,5190,3570,4090,4095,4130,4150,4150,4230,4240,4240,4330,4355,4365,4380,4420,3460,3605,4655,4665,4685,5030,2975,3140,3500,3365,3560,3610,3665,4200,4080,4290,4060,4330,5040,3235,3305,3305,3310,3325,3340,3345,3355,3365,3460,3470,3480,3505,3525,3530,3545,3560,3560,3635,3635,3190,3205,3280,3330,3380,3450,4855,4870,4960,3590,3665,3360,3600,3640,3650,4250,5060,5190,5280,5360,5040,4405,3580,3590,3640,3790,3860,3970,4470,4640,4650,4730,4780,4820,3320,3420,3520,3550,3610,4000,4020,4170,4400,5160,3870,4065,4290,4340,4345,4505,4560,4570,3200,3215,3320,3405,3410,3435,3505,3550,4840,4850,4170,4670,4770,4910,5090,5100,3550,4110,4130,4160,4340,4360,4690,4760,5110,3625,3670,3810,3980,4040,4070,4100,4300,4310,4350,4350,4590,4620,4860,4660,4690,3385,3395,3625,4040,4195,4000,3220,4105,4280,4350,4350,4375,4420,4425,4460,4470,4495,4570,3830,3680,3250,3335,3390,3395,3435,3455,3455,3475,3495,3545,3555,3380,3400,3410,3410,3535,3680,3745,4230,4280,4340,4340,4410,4410,4430,4450,4490,4580,4560,4610,4640,4650,4660,4670,4690,4690,4760,4880,4860,4920,4960,4900,5010,5010,5030,5050,5100,5160,5150,5270,5440,3535,3545,3325,3410,3515,3530,3610,3670,3380,3390,3410,3420,3430,3460,3470,3500,3570,3600,3690,3544,3648,3733,3580,4015,4150,4170,5165,5330,5400,3940,4010,4170,3710,3075,3120,3135,3165,3170,3175,3215,3515,3550,3570,3650,3665,3850,3880,4085,3010,3220,3270,3320,3330,3360,3560,3650,3650,3690,3760,3960,4180,4190,4229,3290,3640,5300,3610,3900,4045,4015,4095,4100,4100,4140,4175,4180,3540,3970,3990,4000,3895,4190,4240,4440,4920,5020,5150,3415,3603,3410,3420,3440,3465,3500,3565,3595,3875,3305,3445,3455,3495,3675,3685,3695,3720,3810,3950,4010,5125,3615,3745,4025,4395,4990,5180,3610,3925,3570,3570,3560,4080,5080,5100,4000,4030,3010,3440,3550,3680,4200,4870,3650,3700,3920,4630,5030,4200,3420,3425,3495,3535,3640,4970,5430,4895,4130,3840,5125,4300,4500,4540,4220,4760,4860,5290,3540,3595,3610,3690,3805,3840,3500,3485,3525,3970,3995,4735,3870,4475,4535,4570,4710,4850,4905,5025,4740,3765,4885,4905,4930,4965,5020,5054,3375,4965,5020,5054,4955,4130,3390,3600,3610,3630,4230,3950,4046,4890,4370,4401,4536,4622,5256,5425,3530,3630,3695,4830,4755,3543,4930,4182,4280,5075,3775,4965,3445,3535,3595,3660,3685,3720,3790,5090,5245,5260,3550,3622,4160,4180,3580,5300,4959,4146,4821,4910,4953,5010,5080,5187,5238,5423,5480,4270,4560,4702,3263,3629,3300,5000,5055,5065,5075,5115,3610,3950,4350,3825,4075,4965,5195,5405,4990,5150,4480,5135,3890,4095,4400,4770,4840,5055,4012,4210,4463,4354,4698,3457,3570,4090,4600,4700,5142,3445,4250,4625,5000,3980,3870,3680,3450,4081,3376,3991,4377,4398,4180,4860,5015,3670,3665,3250,3465,3550,3555,3945,3611,5206,3595,3705,3525,5020,5190,5210,3810,3507,4450,3130,3040,4940,4830,4155,3605,4220,4300,4410,4510,4615,5315,3510,3530,3950,3830,4210,4705,4796,4600,3775,4813,4891,4931,4939,5010,5017,5021,5055,5057,5005,5015,5085,5095,5325,5325,5325,5400,4150,3580,4860,3520,3526,3685,4527,3240,3310,4210,4670,4680,4880,4660,3820,4434,4446,4885,5030,4669,3480,4920,3585,3715,4965,4790,4850,4860,4885,4950,4955,4960,5040,5130,5155,3600,4716,4335,4945,3625,3540,3868,3970,4610,4850,4260,4430,4850,4890,4940,5120,5290,4485,3520,4090,4800,4850,4950,3550,4000,4110,4300,4180,4300,3490,3590,4720,4810,3680,3514,3600,5190,3570,4090,4095,4130,4150,4150,4230,4240,4240,4330,4355,4365,4380,4420,3460,3605,4655,4665,4685,5030)

Errors<-c(40,30,30,30,70,50,40,40,45,40,55,40,40,40,45,60,35,35,40,35,35,85,40,40,45,35,35,130,35,50,35,40,170,80,61,32,45,36,131,48,44,25,65,40,55,50,45,37,39,31,120,85,40,90,70,40,45,45,60,50,50,40,35,50,30,34,50,50,120,220,34,32,34,40,35,40,40,35,36,37,35,60,100,33,35,31,40,80,70,70,70,70,40,40,40,30,30,35,50,50,35,35,75,80,70,70,120,65,75,45,26,54,41,43,98,33,40,35,130,120,37,60,175,155,65,60,95,45,30,39,34,34,37,38,40,170,95,35,45,40,35,35,35,40,41,32,110,120,110,50,60,70,90,36,45,30,30,30,130,35,55,30,45,35,30,100,40,30,60,40,30,40,31,32,30,30,46,31,31,47,27,29,28,27,28,45,55,50,45,50,45,50,55,35,30,30,40,31,41,32,80,100,130,70,50,110,80,40,28,27,80,80,31,30,90,35,45,35,35,35,35,35,40,35,35,45,45,40,60,31,40,40,35,90,30,100,120,60,120,35,80,100,120,40,115,38,35,45,40,40,50,35,110,90,40,40,40,40,40,40,40,50,34,36,100,160,45,70,40,110,55,60,160,45,190,55,55,200,80,70,70,35,30,30,30,90,110,60,100,55,65,65,170,140,170,90,110,80,30,35,30,40,35,40,40,30,30,30,30,40,35,30,40,30,30,35,30,35,70,65,65,60,60,60,110,35,35,35,40,110,110,70,50,100,100,120,120,120,100,65,85,40,40,70,100,100,120,130,100,100,130,180,90,130,80,110,50,90,120,90,90,90,45,40,65,55,85,115,115,35,50,55,50,65,55,55,55,70,80,90,70,170,90,90,180,90,120,30,30,30,40,30,30,30,30,60,60,180,60,170,90,80,120,100,80,80,100,100,60,140,140,60,70,86,50,105,70,85,95,40,95,95,115,90,55,85,75,65,120,40,40,70,50,50,50,65,50,60,50,50,70,65,30,30,30,30,40,45,40,80,60,50,90,90,50,50,50,70,80,110,80,60,90,120,90,90,70,100,80,60,50,80,100,50,80,80,70,60,120,100,60,120,40,35,70,70,50,55,150,55,40,30,40,40,30,30,30,30,40,40,65,30,30,31,120,35,110,35,105,55,125,75,70,75,65,40,30,30,35,30,30,40,35,30,30,35,35,30,30,35,70,70,70,60,60,40,70,90,60,90,70,60,70,60,45,40,40,40,40,40,30,30,30,40,30,40,30,30,70,60,110,90,40,110,130,130,90,100,130,80,20,30,40,35,35,40,40,35,35,70,65,40,70,35,45,40,45,35,115,30,120,90,75,50,75,50,40,40,40,130,130,90,100,150,80,150,80,70,115,130,120,70,100,90,80,80,60,130,80,110,75,85,110,110,80,100,190,60,105,75,110,80,90,90,60,100,70,55,60,75,75,75,105,40,30,30,30,70,50,40,40,45,40,55,40,40,40,45,60,35,35,40,35,35,85,40,40,45,35,35,130,35,50,35,40,170,80,61,32,45,36,131,48,44,25,65,40,55,50,45,37,39,31,120,85,40,90,70,40,45,45,60,50,50,40,35,50,30,34,50,50,120,220,34,32,34,40,35,40,40,35,36,37,35,60,100,33,35,31,40,80,70,70,70,70,40,40,40,30,30,35,50,50,35,35,75,80,70,70,120,65,75,45,26,54,41,43,98,33,40,35,130,120,37,60,175,155,65,60,95,45,30,39,34,34,37,38,40,170,95,35,45,40,35,35,35,40,41,32,110,120,110,50,60,70,90,36,45,30,30,30,130,35,55,30,45,35,30,100,40,30,60,40,30,40,31,32,30,30,46,31,31,47,27,29,28,27,28,45,55,50,45,50,45,50,55,35,30,30,40,31,41,32,80,100,130,70,50,110,80,40,28,27,80,80,31,30,90,35,45,35,35,35,35,35,40,35,35,45,45,40,60,31,40,40,35,90,30,100,120,60,120,35,80,100,120,40,115,38,35,45,40,40,50,35,110,90,40,40,40,40,40,40,40,50,34,36,100,160,45,70,40,110,55,60,160,45,190,55,55,200,80,70,70,35,30,30,30)

Region<-c(3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,3000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000)

bins <- binPrep(sites=Sites, ages=Aar, h=200)

caldates <- calibrate(x=Aar, errors=Errors, calCurves='intcal13', normalised=FALSE, calMatric=TRUE)

nsim=1000

res = permTest(caldates,marks=Region,nsim=nsim,bins=bins,runm=200,timeRange=c(6500,3000))
round(res$pValueList,4) #extract p-values
summary(res)
par(mfrow=c(2,1))
plot(res,focalm="3000",main="3000")
plot(res,focalm="1000",main="1000")
