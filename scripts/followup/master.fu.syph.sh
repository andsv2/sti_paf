#!/bin/bash

# For Jeb
# Base (still have syph.rhiv.rr)
qsub -q bf -t 1-16 -m n -v SIMNO=2000,NJOBS=16 runsim.fu.sh
# Non-base
qsub -q bf -t 1-16 -m n -v SIMNO=2001,NJOBS=16 runsim.fu.sh

# Retry syph
qsub -q bf -t 1-16 -m n -v SIMNO=2002,NJOBS=16 runsim.fu.sh

# # Relrisks changed to 1 at 2600
# qsub -q bf -t 1-16 -m n -v SIMNO=2988,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# 
# # PrEP w/o STIs ---- CHANGE PREP START TO 2601 to run these!!!!
# qsub -q bf -t 1-16 -m n -v SIMNO=2989,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=2990,NJOBS=16,COV=0.1,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=2991,NJOBS=16,COV=0.2,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=2992,NJOBS=16,COV=0.3,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=2993,NJOBS=16,COV=0.4,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=2994,NJOBS=16,COV=0.5,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=2995,NJOBS=16,COV=0.6,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=2996,NJOBS=16,COV=0.7,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=2997,NJOBS=16,COV=0.8,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=2998,NJOBS=16,COV=0.9,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=2999,NJOBS=16,COV=1.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# 
# # Base with no testing
# qsub -q bf -t 1-16 -m n -v SIMNO=3000,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# 
# # STIs w/o PrEP (12 month active, 6 months high-risk)
# qsub -q bf -t 1-16 -m n -v SIMNO=3011,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.1,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3012,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.2,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3013,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.3,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3014,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3015,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.5,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3016,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.6,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3017,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.7,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3018,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.8,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3019,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.9,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3020,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=1.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# 
# qsub -q bf -t 1-16 -m n -v SIMNO=3021,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.1,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3022,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.1,HRCOV=0.1,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3023,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.1,HRCOV=0.2,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3024,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.1,HRCOV=0.3,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3025,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.1,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3026,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.1,HRCOV=0.5,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3027,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.1,HRCOV=0.6,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3028,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.1,HRCOV=0.7,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3029,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.1,HRCOV=0.8,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3030,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.1,HRCOV=0.9,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3031,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.1,HRCOV=1.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# 
# qsub -q bf -t 1-16 -m n -v SIMNO=3032,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.2,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3033,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.2,HRCOV=0.1,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3034,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.2,HRCOV=0.2,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3035,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.2,HRCOV=0.3,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3036,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.2,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3037,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.2,HRCOV=0.5,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3038,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.2,HRCOV=0.6,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3039,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.2,HRCOV=0.7,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3040,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.2,HRCOV=0.8,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3041,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.2,HRCOV=0.9,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3042,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.2,HRCOV=1.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# 
# qsub -q bf -t 1-16 -m n -v SIMNO=3043,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.3,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3044,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.3,HRCOV=0.1,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3045,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.3,HRCOV=0.2,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3046,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.3,HRCOV=0.3,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3047,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.3,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3048,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.3,HRCOV=0.5,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3049,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.3,HRCOV=0.6,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3050,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.3,HRCOV=0.7,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3051,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.3,HRCOV=0.8,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3052,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.3,HRCOV=0.9,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3053,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.3,HRCOV=1.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# 
# qsub -q bf -t 1-16 -m n -v SIMNO=3054,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3055,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.1,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3056,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.2,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3057,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.3,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3058,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3059,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.5,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3060,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.6,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3061,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.7,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3062,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.8,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3063,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.9,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3064,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=1.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# 
# qsub -q bf -t 1-16 -m n -v SIMNO=3065,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.5,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3066,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.5,HRCOV=0.1,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3067,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.5,HRCOV=0.2,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3068,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.5,HRCOV=0.3,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3069,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.5,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3070,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.5,HRCOV=0.5,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3071,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.5,HRCOV=0.6,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3072,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.5,HRCOV=0.7,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3073,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.5,HRCOV=0.8,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3074,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.5,HRCOV=0.9,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3075,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.5,HRCOV=1.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# 
# qsub -q bf -t 1-16 -m n -v SIMNO=3076,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.6,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3077,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.6,HRCOV=0.1,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3078,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.6,HRCOV=0.2,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3079,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.6,HRCOV=0.3,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3080,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.6,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3081,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.6,HRCOV=0.5,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3082,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.6,HRCOV=0.6,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3083,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.6,HRCOV=0.7,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3084,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.6,HRCOV=0.8,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3085,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.6,HRCOV=0.9,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3086,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.6,HRCOV=1.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# 
# qsub -q bf -t 1-16 -m n -v SIMNO=3087,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.7,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3088,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.7,HRCOV=0.1,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3089,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.7,HRCOV=0.2,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3090,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.7,HRCOV=0.3,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3091,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.7,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3092,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.7,HRCOV=0.5,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3093,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.7,HRCOV=0.6,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3094,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.7,HRCOV=0.7,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3095,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.7,HRCOV=0.8,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3096,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.7,HRCOV=0.9,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3097,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.7,HRCOV=1.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# 
# qsub -q bf -t 1-16 -m n -v SIMNO=3098,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.8,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3099,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.8,HRCOV=0.1,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3100,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.8,HRCOV=0.2,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3101,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.8,HRCOV=0.3,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3102,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.8,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3103,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.8,HRCOV=0.5,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3104,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.8,HRCOV=0.6,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3105,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.8,HRCOV=0.7,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3106,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.8,HRCOV=0.8,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3107,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.8,HRCOV=0.9,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3108,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.8,HRCOV=1.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# 
# qsub -q bf -t 1-16 -m n -v SIMNO=3109,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.9,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3110,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.9,HRCOV=0.1,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3111,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.9,HRCOV=0.2,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3112,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.9,HRCOV=0.3,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3113,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.9,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3114,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.9,HRCOV=0.5,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3115,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.9,HRCOV=0.6,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3116,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.9,HRCOV=0.7,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3117,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.9,HRCOV=0.8,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3118,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.9,HRCOV=0.9,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3119,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.9,HRCOV=1.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# 
# qsub -q bf -t 1-16 -m n -v SIMNO=3120,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=1.0,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3121,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=1.0,HRCOV=0.1,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3122,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=1.0,HRCOV=0.2,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3123,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=1.0,HRCOV=0.3,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3124,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=1.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3125,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=1.0,HRCOV=0.5,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3126,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=1.0,HRCOV=0.6,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3127,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=1.0,HRCOV=0.7,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3128,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=1.0,HRCOV=0.8,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3129,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=1.0,HRCOV=0.9,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3130,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=1.0,HRCOV=1.0,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# 
# # Different STI active interval testing length with base coverages (Different ANNINT)
# qsub -q bf -t 1-16 -m n -v SIMNO=3131,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=28,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3132,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=63,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3133,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=91,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3134,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=119,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3135,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=147,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3136,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=182,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3137,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=210,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3138,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=238,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3139,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=273,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3140,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=301,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3141,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=329,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# 
# # Different STI testing indications (Different STIHRMODEL)
# qsub -q bf -t 1-16 -m n -v SIMNO=3142,NJOBS=16,COV=0.0,STIHRMODEL=sti,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3143,NJOBS=16,COV=0.0,STIHRMODEL=recentpartners,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3144,NJOBS=16,COV=0.0,STIHRMODEL=newpartners,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3145,NJOBS=16,COV=0.0,STIHRMODEL=concurrpartner,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3146,NJOBS=16,COV=0.0,STIHRMODEL=partnersti,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3147,NJOBS=16,COV=0.0,STIHRMODEL=uai.nmain,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3148,NJOBS=16,COV=0.0,STIHRMODEL=uai.any,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3149,NJOBS=16,COV=0.0,STIHRMODEL=cdc1,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3150,NJOBS=16,COV=0.0,STIHRMODEL=cdc2,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3151,NJOBS=16,COV=0.0,STIHRMODEL=cdc3,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3152,NJOBS=16,COV=0.0,STIHRMODEL=cdc4,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=1 runsim.fu.sh
# 
# # Different STI high-risk interval testing length (Different HRINT)
# qsub -q bf -t 1-16 -m n -v SIMNO=3153,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=28,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3154,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=35,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3155,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=42,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3156,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=49,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3157,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=56,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3158,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=63,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3159,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=70,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3160,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=77,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3161,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=84,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3162,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=91,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3163,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=98,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3164,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=105,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3165,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=112,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3166,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=119,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3167,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=126,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3168,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=133,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3169,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=140,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3170,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=147,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3171,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=154,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3172,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=161,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3173,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=168,STIASYMPTX=1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3174,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=175,STIASYMPTX=1 runsim.fu.sh
# 
# # Diagnosis--> Tx progression (Different STIASYMPTX)
# qsub -q bf -t 1-16 -m n -v SIMNO=3175,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=0 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3176,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=0.1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3177,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=0.2 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3178,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=0.3 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3179,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=0.4 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3180,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=0.5 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3181,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=0.6 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3182,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=0.7 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3183,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=0.8 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3184,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.4,HRCOV=0.0,ANNINT=364,HRINT=182,STIASYMPTX=0.9 runsim.fu.sh
# 
# qsub -q bf -t 1-16 -m n -v SIMNO=3185,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=0 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3186,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=0.1 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3187,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=0.2 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3188,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=0.3 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3189,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=0.4 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3190,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=0.5 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3191,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=0.6 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3192,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=0.7 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3193,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=0.8 runsim.fu.sh
# qsub -q bf -t 1-16 -m n -v SIMNO=3194,NJOBS=16,COV=0.0,STIHRMODEL=all,ANNCOV=0.0,HRCOV=0.4,ANNINT=364,HRINT=182,STIASYMPTX=0.9 runsim.fu.sh