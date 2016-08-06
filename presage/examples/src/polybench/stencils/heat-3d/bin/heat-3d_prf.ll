; ModuleID = './bin/heat-3d_psg_prf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

$_Z5getFDPKcS0_ = comdat any

$_Z14updateFIParamsv = comdat any

$_Z9checkMaskPvi = comdat any

$_Z13matchDynFSIdxv = comdat any

$_Z7flipBitPvj8DataType6FIAlgo = comdat any

$_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_ = comdat any

$_Z9getBitPosj8DataType6FIAlgo = comdat any

$_Z12getBitPosCBRj = comdat any

$_Z12getBitPosABR8DataType = comdat any

$_Z14getIntervalIdxx = comdat any

$_Z15updateTimeStampv = comdat any

$_Z18getStrFieldByIndexPcPKci = comdat any

$_Z13processParamsPKcS0_ = comdat any

$_Z11updateFSIdxv = comdat any

$_Z11file_existsPKc = comdat any

$_Z11printParamsv = comdat any

$_Z11checkParamsv = comdat any

$_Z12gen64bitRandv = comdat any

@fpstatus = global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%lld %lld\0A\00", align 1
@dynFSCount = global i64 0, align 8
@detectCounter = global i64 0, align 8
@dynFSCounter = global i64 0, align 8
@intvsz = global i64 0, align 8
@intvCount = global i64 0, align 8
@dynFSIdx = global i64* null, align 8
@fsIntTy1 = global i64 0, align 8
@fsIntTy8 = global i64 0, align 8
@fsIntTy16 = global i64 0, align 8
@fsIntTy32 = global i64 0, align 8
@fsIntTy64 = global i64 0, align 8
@fsFloatTy = global i64 0, align 8
@fsDoubleTy = global i64 0, align 8
@fiIntTy1 = global i64 0, align 8
@fiIntTy8 = global i64 0, align 8
@fiIntTy16 = global i64 0, align 8
@fiIntTy32 = global i64 0, align 8
@fiIntTy64 = global i64 0, align 8
@fiFloatTy = global i64 0, align 8
@fiDoubleTy = global i64 0, align 8
@fialg = global i32 3, align 4
@fibr = global i32 9, align 4
@fid = global i32 2, align 4
@ef = global i64 -1, align 8
@tf = global i64 -1, align 8
@fidatardflag = global i32 0, align 4
@bl = global i32 -1, align 4
@bu = global i32 -1, align 4
@pfs = global i32 -1, align 4
@fiParams = global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"fi.in\00", align 1
@fiStat = global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.4, i64 0, i64 0), align 8
@.str.1.4 = private unnamed_addr constant [7 x i8] c"fi.csv\00", align 1
@fiCount = global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"fi.out\00", align 1
@fsStat = global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.5, i64 0, i64 0), align 8
@.str.3.5 = private unnamed_addr constant [7 x i8] c"fs.out\00", align 1
@execKey = global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"fault site count:%lld\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"\0A----------------Fault Site Statistics------------------\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"\0ATotal # of fault sites enumerated : %lld\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"\0AFurther sub-categorization of fault sites below:\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"\0ATotal # of Data fault sites IntTy1 : %lld\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"\0ATotal # of Data fault sites IntTy16 : %lld\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"\0ATotal # of Data fault sites IntTy32 : %lld\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"\0ATotal # of Data fault sites IntTy64 : %lld\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"\0ATotal # of Data fault sites FloatTy : %lld\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"\0ATotal # of Data fault sites DoubleTy : %lld\00", align 1
@str.86 = private unnamed_addr constant [62 x i8] c"\0A------------------------------------------------------------\00"
@.str.29 = private unnamed_addr constant [34 x i8] c"\0AError:Coudn't find the file: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"fault injection count:%lld\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"\0Atimestamp:%lu\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"\0Aerror detection count:%lld\00", align 1
@.str.19 = private unnamed_addr constant [62 x i8] c"\0A----------------Fault Injection Statistics------------------\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"\0ATotal # of fault injection done : %lld\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"\0ATotal # of Data faults injected of type IntTy1 : %lld\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"\0ATotal # of Data faults injected of type IntTy16 : %lld\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"\0ATotal # of Data faults injected of type IntTy32 : %lld\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"\0ATotal # of Data faults injected of type IntTy64 : %lld\00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"\0ATotal # of Data faults injected of type FloatTy : %lld\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"\0ATotal # of Data faults injected of type DoubleTy : %lld\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"\0ATotal # of errors detected : %lld\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"Time;\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"%ld;\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"%s;\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"%d;\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"%c;\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"%lld;\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"%f;\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"%lf;\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str.90 = private unnamed_addr constant [44 x i8] c"\0AError: Invalid value provided for FI Algo!\00"
@switch.table = private unnamed_addr constant [5 x i32] [i32 7, i32 15, i32 31, i32 63, i32 31]
@.str.30 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@str.88 = private unnamed_addr constant [42 x i8] c"\0AError:Coudn't find fi param file \22fi.in\22\00"
@.str.32 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@str.89 = private unnamed_addr constant [47 x i8] c"\0AError:memory allocation failed for dynFSIdx!!\00"
@.str.34 = private unnamed_addr constant [11 x i8] c"Instr_Name\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"Original_Value\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"Corrupted_Value\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"Bit_Position\00", align 1
@.str.66 = private unnamed_addr constant [57 x i8] c"fialg!=FI_ERROR && \22Invalid fault injection algorithm!!\22\00", align 1
@.str.67 = private unnamed_addr constant [57 x i8] c"/home/vcsharma/apps/tools/vulfi/master/runtime/Corrupt.C\00", align 1
@__PRETTY_FUNCTION__._Z11checkParamsv = private unnamed_addr constant [19 x i8] c"void checkParams()\00", align 1
@.str.68 = private unnamed_addr constant [43 x i8] c"fibr!=FIBR_ERROR && \22Invalid byte range!!\22\00", align 1
@.str.69 = private unnamed_addr constant [45 x i8] c"fid!=FID_ERROR && \22Invalid byte direction!!\22\00", align 1
@.str.70 = private unnamed_addr constant [71 x i8] c"((bu>=bl && bu<=63 && bl >=0)||fialg!=FI_ABR) && \22Invalid bit range!!\22\00", align 1
@.str.71 = private unnamed_addr constant [62 x i8] c"ef<=tf&&ef>0&&tf>0 && \22Invalid fault injection probability!!\22\00", align 1
@.str.72 = private unnamed_addr constant [51 x i8] c"(pfs==0||pfs==1) && \22Invalid value for pfs flag!!\22\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"\0AFault injection algorithm: %d\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"\0AByte range: %d\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"\0AByte direction: %d\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"\0AProbability: %lld/%lld\00", align 1
@.str.64 = private unnamed_addr constant [54 x i8] c"\0ABit range (only applicable for fi algo ABR): [%d-%d]\00", align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"\0APrint Fault Site Status Flag: %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"fia\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"CBR\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"ABR\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"MSK\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"fib\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"fid\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"LSB\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"MSB\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"fiu\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"fil\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"pn\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"pd\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"pfs\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@str.16 = private unnamed_addr constant [33 x i8] c"\0AERROR: Insufficient Arguments!\0A\00"
@.str.1.6 = private unnamed_addr constant [58 x i8] c"Total time taken to execute the kernel: %lf microseconds\0A\00", align 1
@str.15 = private unnamed_addr constant [27 x i8] c"\0AINFO: Soft error detected\00"
@str = private unnamed_addr constant [31 x i8] c"\0AINFO: No Soft errors detected\00"
@stderr = external global %struct._IO_FILE*, align 8
@.str.8.7 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.9.8 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.10.9 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.12.10 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.13.11 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.14.12 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.5.13 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7.14 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@strname = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.1 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.2 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.3 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.4 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.5 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.6 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.7 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.8 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.9 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.10 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.11 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.12 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.13 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.14 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.15 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.16 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.17 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.18 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.19 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.20 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.21 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.22 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.23 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.24 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.25 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.26 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.27 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.28 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.29 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.30 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.31 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.32 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.33 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.34 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.35 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.36 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.37 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.38 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.39 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.40 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.41 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.42 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.43 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.44 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.45 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.46 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.47 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.48 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.49 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.50 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.51 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.52 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.53 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.54 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.55 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.56 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.57 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.58 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.59 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.60 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.61 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.62 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.63 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.64 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.65 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.66 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.67 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.68 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.69 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.70 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.71 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.72 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.73 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.74 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.75 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.76 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.77 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.78 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.79 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.80 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.81 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.82 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.83 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.84 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.85 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.86 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"
@strname.87 = internal constant [23 x i8] c"gep_heat-3d_noerror.db\00"

; Function Attrs: noinline nounwind uwtable
define void @_Z14presageProfilexxPKc(i64, i64, i8* nocapture readonly) #0 {
  %4 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %0, i64 %1)
  %6 = tail call i32 @fclose(%struct._IO_FILE* %4)
  ret void
}

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: noinline norecurse nounwind uwtable
define void @_Z13presageDetectx(i64) #2 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %4, label %3

; <label>:3:                                      ; preds = %1
  store i64 1, i64* @detectCounter, align 8, !tbaa !1
  br label %4

; <label>:4:                                      ; preds = %1, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @printFaultSitesData() #0 {
  %1 = load i32, i32* @pfs, align 4, !tbaa !5
  switch i32 %1, label %2 [
    i32 -1, label %42
    i32 0, label %42
  ]

; <label>:2:                                      ; preds = %0
  %3 = load i64, i64* @fsIntTy1, align 8, !tbaa !1
  %4 = load i64, i64* @fsIntTy16, align 8, !tbaa !1
  %5 = add nsw i64 %4, %3
  %6 = load i64, i64* @fsIntTy32, align 8, !tbaa !1
  %7 = add nsw i64 %5, %6
  %8 = load i64, i64* @fsIntTy64, align 8, !tbaa !1
  %9 = add nsw i64 %7, %8
  %10 = load i64, i64* @fsFloatTy, align 8, !tbaa !1
  %11 = add nsw i64 %9, %10
  %12 = load i64, i64* @fsDoubleTy, align 8, !tbaa !1
  %13 = add nsw i64 %11, %12
  %14 = load i8*, i8** @fsStat, align 8, !tbaa !7
  %15 = tail call %struct._IO_FILE* @_Z5getFDPKcS0_(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %13)
  %17 = icmp eq %struct._IO_FILE* %15, null
  br i1 %17, label %20, label %18

; <label>:18:                                     ; preds = %2
  %19 = tail call i32 @fclose(%struct._IO_FILE* nonnull %15)
  br label %20

; <label>:20:                                     ; preds = %2, %18
  %21 = load i64*, i64** @dynFSIdx, align 8, !tbaa !7
  %22 = icmp eq i64* %21, null
  br i1 %22, label %25, label %23

; <label>:23:                                     ; preds = %20
  %24 = bitcast i64* %21 to i8*
  tail call void @free(i8* %24) #3
  store i64* null, i64** @dynFSIdx, align 8, !tbaa !7
  br label %25

; <label>:25:                                     ; preds = %20, %23
  %26 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0))
  %27 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64 %13)
  %28 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  %29 = load i64, i64* @fsIntTy1, align 8, !tbaa !1
  %30 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* @fsIntTy16, align 8, !tbaa !1
  %32 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* @fsIntTy32, align 8, !tbaa !1
  %34 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* @fsIntTy64, align 8, !tbaa !1
  %36 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* @fsFloatTy, align 8, !tbaa !1
  %38 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* @fsDoubleTy, align 8, !tbaa !1
  %40 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i64 0, i64 0), i64 %39)
  %41 = tail call i32 @puts(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @str.86, i64 0, i64 0))
  br label %42

; <label>:42:                                     ; preds = %0, %0, %25
  %43 = phi i32 [ 0, %25 ], [ -1, %0 ], [ -1, %0 ]
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct._IO_FILE* @_Z5getFDPKcS0_(i8*, i8*) #0 comdat {
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1)
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i64 0, i64 0), i8* %0)
  tail call void @exit(i32 -1) #10
  unreachable

; <label>:7:                                      ; preds = %2
  ret %struct._IO_FILE* %3
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define i32 @printFaultInjectionData() #0 {
  %1 = load i32, i32* @pfs, align 4, !tbaa !5
  switch i32 %1, label %2 [
    i32 -1, label %48
    i32 1, label %48
  ]

; <label>:2:                                      ; preds = %0
  %3 = load i64, i64* @fiIntTy1, align 8, !tbaa !1
  %4 = load i64, i64* @fiIntTy16, align 8, !tbaa !1
  %5 = add nsw i64 %4, %3
  %6 = load i64, i64* @fiIntTy32, align 8, !tbaa !1
  %7 = add nsw i64 %5, %6
  %8 = load i64, i64* @fiIntTy64, align 8, !tbaa !1
  %9 = add nsw i64 %7, %8
  %10 = load i64, i64* @fiFloatTy, align 8, !tbaa !1
  %11 = add nsw i64 %9, %10
  %12 = load i64, i64* @fiDoubleTy, align 8, !tbaa !1
  %13 = add nsw i64 %11, %12
  %14 = load i8*, i8** @fiCount, align 8, !tbaa !7
  %15 = tail call %struct._IO_FILE* @_Z5getFDPKcS0_(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i64 %13)
  %17 = load i64, i64* @execKey, align 8, !tbaa !9
  %18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* @detectCounter, align 8, !tbaa !1
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i64 %19)
  %21 = icmp eq %struct._IO_FILE* %15, null
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %2
  %23 = tail call i32 @fclose(%struct._IO_FILE* nonnull %15)
  br label %24

; <label>:24:                                     ; preds = %2, %22
  %25 = load i64*, i64** @dynFSIdx, align 8, !tbaa !7
  %26 = icmp eq i64* %25, null
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %24
  %28 = bitcast i64* %25 to i8*
  tail call void @free(i8* %28) #3
  store i64* null, i64** @dynFSIdx, align 8, !tbaa !7
  br label %29

; <label>:29:                                     ; preds = %24, %27
  %30 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.19, i64 0, i64 0))
  %31 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0), i64 %13)
  %32 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0))
  %33 = load i64, i64* @fiIntTy1, align 8, !tbaa !1
  %34 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* @fiIntTy16, align 8, !tbaa !1
  %36 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i64 0, i64 0), i64 %35)
  %37 = load i64, i64* @fiIntTy32, align 8, !tbaa !1
  %38 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* @fiIntTy64, align 8, !tbaa !1
  %40 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.24, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* @fiFloatTy, align 8, !tbaa !1
  %42 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.25, i64 0, i64 0), i64 %41)
  %43 = load i64, i64* @fiDoubleTy, align 8, !tbaa !1
  %44 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* @detectCounter, align 8, !tbaa !1
  %46 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i64 %45)
  %47 = tail call i32 @puts(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @str.86, i64 0, i64 0))
  br label %48

; <label>:48:                                     ; preds = %0, %0, %29
  %49 = phi i32 [ 0, %29 ], [ -1, %0 ], [ -1, %0 ]
  ret i32 %49
}

; Function Attrs: noinline uwtable
define i32 @_Z21injectSoftErrorIntTy1iPKci(i32, i8*, i32) #5 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !5
  store i32 %2, i32* %5, align 4, !tbaa !5
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  store i32 %0, i32* %6, align 4, !tbaa !5
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  store i32 -1, i32* %7, align 4, !tbaa !5
  %14 = bitcast i32* %5 to i8*
  %15 = call i32 @_Z9checkMaskPvi(i8* %14, i32 4)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* @fsIntTy1, align 8, !tbaa !1
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @fsIntTy1, align 8, !tbaa !1
  %20 = load i32, i32* @pfs, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %33, label %22

; <label>:22:                                     ; preds = %17
  %23 = call i32 @_Z13matchDynFSIdxv()
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

; <label>:25:                                     ; preds = %22
  %26 = bitcast i32* %4 to i8*
  %27 = load i32, i32* @fialg, align 4, !tbaa !11
  %28 = call i32 @_Z7flipBitPvj8DataType6FIAlgo(i8* %26, i32 4, i32 0, i32 %27)
  store i32 %28, i32* %7, align 4, !tbaa !5
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* @fiIntTy1, align 8, !tbaa !1
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @fiIntTy1, align 8, !tbaa !1
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %26, i8* nonnull %13, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  br label %33

; <label>:33:                                     ; preds = %25, %30, %22, %17, %11
  %34 = load i32, i32* %4, align 4, !tbaa !5
  call void @llvm.lifetime.end(i64 4, i8* %13) #3
  call void @llvm.lifetime.end(i64 4, i8* %12) #3
  ret i32 %34
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z14updateFIParamsv() #5 comdat {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #3
  store i8* null, i8** %1, align 8, !tbaa !7
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  store i64 0, i64* %2, align 8, !tbaa !9
  %5 = tail call i64 @time(i64* null) #3
  %6 = trunc i64 %5 to i32
  tail call void @srand(i32 %6) #3
  tail call void @_Z15updateTimeStampv()
  %7 = load i8*, i8** @fiParams, align 8, !tbaa !7
  %8 = tail call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %0
  %11 = call i64 @getline(i8** nonnull %1, i64* nonnull %2, %struct._IO_FILE* nonnull %8)
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %24, label %13

; <label>:13:                                     ; preds = %10
  br label %16

; <label>:14:                                     ; preds = %0
  %15 = tail call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.88, i64 0, i64 0))
  tail call void @exit(i32 -1) #10
  unreachable

; <label>:16:                                     ; preds = %13, %16
  %17 = load i8*, i8** %1, align 8, !tbaa !7
  %18 = call i8* @_Z18getStrFieldByIndexPcPKci(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32 0)
  %19 = load i8*, i8** %1, align 8, !tbaa !7
  %20 = call i8* @_Z18getStrFieldByIndexPcPKci(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32 1)
  call void @_Z13processParamsPKcS0_(i8* %18, i8* %20)
  %21 = call i64 @getline(i8** nonnull %1, i64* nonnull %2, %struct._IO_FILE* nonnull %8)
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %16

; <label>:23:                                     ; preds = %16
  br label %24

; <label>:24:                                     ; preds = %23, %10
  %25 = load i32, i32* @pfs, align 4, !tbaa !5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %58

; <label>:27:                                     ; preds = %24
  %28 = load i64, i64* @tf, align 8, !tbaa !1
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %32, label %30

; <label>:30:                                     ; preds = %27
  %31 = load i64, i64* @intvsz, align 8
  br label %33

; <label>:32:                                     ; preds = %27
  store i64 %28, i64* @intvsz, align 8, !tbaa !1
  br label %33

; <label>:33:                                     ; preds = %30, %32
  %34 = phi i64 [ %31, %30 ], [ %28, %32 ]
  %35 = load i64, i64* @dynFSCount, align 8, !tbaa !1
  %36 = icmp sgt i64 %35, 0
  %37 = icmp sgt i64 %34, 0
  %38 = and i1 %36, %37
  br i1 %38, label %39, label %49

; <label>:39:                                     ; preds = %33
  %40 = srem i64 %35, %34
  %41 = icmp eq i64 %40, 0
  %42 = sdiv i64 %35, %34
  br i1 %41, label %43, label %44

; <label>:43:                                     ; preds = %39
  store i64 %42, i64* @intvCount, align 8, !tbaa !1
  br label %49

; <label>:44:                                     ; preds = %39
  %45 = sitofp i64 %42 to double
  %46 = call double @floor(double %45) #11
  %47 = fadd double %46, 1.000000e+00
  %48 = fptosi double %47 to i64
  store i64 %48, i64* @intvCount, align 8, !tbaa !1
  br label %49

; <label>:49:                                     ; preds = %43, %44, %33
  %50 = load i32, i32* @fidatardflag, align 4, !tbaa !5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call void @_Z11updateFSIdxv()
  br label %53

; <label>:53:                                     ; preds = %49, %52
  %54 = load i64*, i64** @dynFSIdx, align 8, !tbaa !7
  %55 = icmp eq i64* %54, null
  br i1 %55, label %56, label %58

; <label>:56:                                     ; preds = %53
  %57 = call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @str.89, i64 0, i64 0))
  call void @exit(i32 -1) #10
  unreachable

; <label>:58:                                     ; preds = %53, %24
  %59 = load i8*, i8** @fiStat, align 8, !tbaa !7
  %60 = call i32 @_Z11file_existsPKc(i8* %59)
  %61 = load i32, i32* @pfs, align 4
  %62 = or i32 %61, %60
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %58
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %65

; <label>:65:                                     ; preds = %58, %64
  call void @_Z11printParamsv()
  call void @_Z11checkParamsv()
  store i32 1, i32* @fidatardflag, align 4, !tbaa !5
  %66 = call i32 @fclose(%struct._IO_FILE* nonnull %8)
  call void @llvm.lifetime.end(i64 8, i8* %4) #3
  call void @llvm.lifetime.end(i64 8, i8* %3) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z9checkMaskPvi(i8*, i32) #0 comdat {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #3
  store i64 0, i64* %3, align 8, !tbaa !1
  %5 = sext i32 %1 to i64
  %6 = call i32 @memcmp(i8* %0, i8* %4, i64 %5) #12
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  call void @llvm.lifetime.end(i64 8, i8* %4) #3
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z13matchDynFSIdxv() #0 comdat {
  %1 = load i64, i64* @dynFSCounter, align 8, !tbaa !1
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @dynFSCounter, align 8, !tbaa !1
  %3 = tail call i32 @_Z14getIntervalIdxx(i64 %2)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %29, label %5

; <label>:5:                                      ; preds = %0
  %6 = sext i32 %3 to i64
  %7 = load i64, i64* @intvCount, align 8, !tbaa !1
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %29

; <label>:9:                                      ; preds = %5
  %10 = load i64, i64* @ef, align 8, !tbaa !1
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %29

; <label>:12:                                     ; preds = %9
  %13 = mul nsw i64 %10, %6
  %14 = load i64*, i64** @dynFSIdx, align 8, !tbaa !7
  %15 = load i64, i64* @dynFSCounter, align 8, !tbaa !1
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  br label %20

; <label>:18:                                     ; preds = %20
  %19 = icmp slt i64 %26, %10
  br i1 %19, label %20, label %27

; <label>:20:                                     ; preds = %12, %18
  %21 = phi i64 [ 0, %12 ], [ %26, %18 ]
  %22 = add nsw i64 %21, %17
  %23 = getelementptr inbounds i64, i64* %14, i64 %22
  %24 = load i64, i64* %23, align 8, !tbaa !1
  %25 = icmp eq i64 %24, %15
  %26 = add nuw nsw i64 %21, 1
  br i1 %25, label %27, label %18

; <label>:27:                                     ; preds = %18, %20
  %28 = phi i32 [ 1, %20 ], [ 0, %18 ]
  br label %29

; <label>:29:                                     ; preds = %27, %9, %0, %5
  %30 = phi i32 [ 0, %5 ], [ 0, %0 ], [ 0, %9 ], [ %28, %27 ]
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z7flipBitPvj8DataType6FIAlgo(i8*, i32, i32, i32) #0 comdat {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6)
  store i64 0, i64* %5, align 8
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %11, label %8

; <label>:8:                                      ; preds = %4
  %9 = tail call i32 @_Z9getBitPosj8DataType6FIAlgo(i32 %1, i32 %2, i32 %3)
  %10 = sext i32 %9 to i64
  br label %11

; <label>:11:                                     ; preds = %4, %8
  %12 = phi i64 [ %10, %8 ], [ 0, %4 ]
  %13 = zext i32 %1 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %0, i64 %13, i32 1, i1 false)
  %14 = load i64, i64* %5, align 8
  %15 = shl i64 1, %12
  %16 = and i64 %14, %15
  %17 = icmp eq i64 %16, 0
  %18 = or i64 %14, %15
  %19 = xor i64 %15, -1
  %20 = and i64 %14, %19
  %21 = select i1 %17, i64 %18, i64 %20
  store i64 %21, i64* %5, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %6, i64 %13, i32 1, i1 false)
  %22 = trunc i64 %12 to i32
  call void @llvm.lifetime.end(i64 8, i8* %6)
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8*, i8*, i8*, i8*, i32, i8*) #0 comdat {
  %7 = alloca [1024 x i8], align 16
  %8 = load i8*, i8** @fiStat, align 8, !tbaa !7
  %9 = tail call %struct._IO_FILE* @_Z5getFDPKcS0_(i8* %8, i8* %5)
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %10) #3
  %11 = tail call i64 @strlen(i8* %0) #12
  %12 = icmp eq i32 %4, 7
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %6
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %9)
  br label %18

; <label>:15:                                     ; preds = %6
  %16 = load i64, i64* @execKey, align 8, !tbaa !9
  %17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.75, i64 0, i64 0), i64 %16)
  br label %18

; <label>:18:                                     ; preds = %15, %13
  %19 = bitcast [1024 x i8]* %7 to i16*
  store i16 34, i16* %19, align 16
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 1
  %21 = and i64 %11, 4294967295
  %22 = call i8* @strncpy(i8* %20, i8* %0, i64 %21) #3
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %21
  %24 = bitcast i8* %23 to i16*
  store i16 34, i16* %24, align 1
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i8* %10)
  %26 = or i32 %4, 2
  %27 = icmp eq i32 %26, 2
  %28 = icmp eq i32 %4, 3
  %29 = or i1 %28, %27
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %18
  %31 = bitcast i8* %1 to i32*
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0), i32 %32)
  %34 = bitcast i8* %2 to i32*
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i64 0, i64 0), i32 %35)
  br label %72

; <label>:37:                                     ; preds = %18
  switch i32 %4, label %68 [
    i32 1, label %38
    i32 4, label %45
    i32 5, label %52
    i32 6, label %61
  ]

; <label>:38:                                     ; preds = %37
  %39 = load i8, i8* %1, align 1, !tbaa !13
  %40 = sext i8 %39 to i32
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i32 %40)
  %42 = load i8, i8* %2, align 1, !tbaa !13
  %43 = sext i8 %42 to i32
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i32 %43)
  br label %72

; <label>:45:                                     ; preds = %37
  %46 = bitcast i8* %1 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !1
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0), i64 %47)
  %49 = bitcast i8* %2 to i64*
  %50 = load i64, i64* %49, align 8, !tbaa !1
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i64 0, i64 0), i64 %50)
  br label %72

; <label>:52:                                     ; preds = %37
  %53 = bitcast i8* %1 to float*
  %54 = load float, float* %53, align 4, !tbaa !14
  %55 = fpext float %54 to double
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0), double %55)
  %57 = bitcast i8* %2 to float*
  %58 = load float, float* %57, align 4, !tbaa !14
  %59 = fpext float %58 to double
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.82, i64 0, i64 0), double %59)
  br label %72

; <label>:61:                                     ; preds = %37
  %62 = bitcast i8* %1 to double*
  %63 = load double, double* %62, align 8, !tbaa !16
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), double %63)
  %65 = bitcast i8* %2 to double*
  %66 = load double, double* %65, align 8, !tbaa !16
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i64 0, i64 0), double %66)
  br label %72

; <label>:68:                                     ; preds = %37
  br i1 %12, label %69, label %75

; <label>:69:                                     ; preds = %68
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i8* %1)
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i8* %2)
  br label %73

; <label>:72:                                     ; preds = %38, %52, %61, %45, %30
  br i1 %12, label %73, label %75

; <label>:73:                                     ; preds = %69, %72
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0), i8* %3)
  br label %79

; <label>:75:                                     ; preds = %68, %72
  %76 = bitcast i8* %3 to i32*
  %77 = load i32, i32* %76, align 4, !tbaa !5
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i64 0, i64 0), i32 %77)
  br label %79

; <label>:79:                                     ; preds = %75, %73
  %80 = icmp eq %struct._IO_FILE* %9, null
  br i1 %80, label %83, label %81

; <label>:81:                                     ; preds = %79
  %82 = call i32 @fclose(%struct._IO_FILE* nonnull %9)
  br label %83

; <label>:83:                                     ; preds = %79, %81
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %10) #3
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i64) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z9getBitPosj8DataType6FIAlgo(i32, i32, i32) #0 comdat {
  switch i32 %2, label %13 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %8
    i32 3, label %11
  ]

; <label>:4:                                      ; preds = %3
  %5 = tail call i32 @_Z12getBitPosCBRj(i32 %0)
  br label %13

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @_Z12getBitPosABR8DataType(i32 %1)
  br label %13

; <label>:8:                                      ; preds = %3
  %9 = shl i32 %0, 3
  %10 = add i32 %9, -1
  br label %13

; <label>:11:                                     ; preds = %3
  %12 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.90, i64 0, i64 0))
  tail call void @exit(i32 -1) #10
  unreachable

; <label>:13:                                     ; preds = %3, %8, %6, %4
  %14 = phi i32 [ -1, %3 ], [ %10, %8 ], [ %7, %6 ], [ %5, %4 ]
  ret i32 %14
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z12getBitPosCBRj(i32) #0 comdat {
  %2 = load i32, i32* @fid, align 4, !tbaa !18
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %12

; <label>:4:                                      ; preds = %1
  %5 = shl i32 %0, 3
  %6 = add i32 %5, -1
  %7 = load i32, i32* @fibr, align 4, !tbaa !20
  %8 = icmp ugt i32 %7, %0
  br i1 %8, label %21, label %9

; <label>:9:                                      ; preds = %4
  %10 = sub i32 %0, %7
  %11 = shl i32 %10, 3
  br label %21

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* @fibr, align 4, !tbaa !20
  %14 = icmp ugt i32 %13, %0
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %12
  %16 = shl i32 %13, 3
  %17 = add nsw i32 %16, -1
  br label %21

; <label>:18:                                     ; preds = %12
  %19 = shl i32 %0, 3
  %20 = add i32 %19, -1
  br label %21

; <label>:21:                                     ; preds = %4, %15, %18, %9
  %22 = phi i32 [ %6, %9 ], [ 0, %15 ], [ 0, %18 ], [ %6, %4 ]
  %23 = phi i32 [ %11, %9 ], [ %17, %15 ], [ %20, %18 ], [ 0, %4 ]
  %24 = icmp eq i32 %2, 0
  %25 = tail call i32 @rand() #3
  %26 = sub nsw i32 %22, %23
  %27 = icmp sgt i32 %26, -1
  %28 = sub i32 0, %26
  %29 = select i1 %27, i32 %26, i32 %28
  %30 = add nsw i32 %29, 1
  %31 = srem i32 %25, %30
  %32 = sub i32 0, %31
  %33 = select i1 %24, i32 %31, i32 %32
  %34 = add i32 %33, %22
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z12getBitPosABR8DataType(i32) #0 comdat {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 5
  br i1 %3, label %7, label %4

; <label>:4:                                      ; preds = %1
  %5 = icmp eq i32 %0, 6
  %6 = select i1 %5, i32 63, i32 -1
  br label %11

; <label>:7:                                      ; preds = %1
  %8 = sext i32 %2 to i64
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* @switch.table, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  br label %11

; <label>:11:                                     ; preds = %4, %7
  %12 = phi i32 [ %6, %4 ], [ %10, %7 ]
  %13 = load i32, i32* @bu, align 4, !tbaa !5
  %14 = icmp sgt i32 %13, %12
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* @bl, align 4, !tbaa !5
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %11, %15
  br label %19

; <label>:19:                                     ; preds = %15, %18
  %20 = phi i32 [ %12, %18 ], [ %13, %15 ]
  %21 = phi i32 [ 0, %18 ], [ %16, %15 ]
  %22 = tail call i32 @rand() #3
  %23 = sub nsw i32 %20, %21
  %24 = icmp sgt i32 %23, -1
  %25 = sub i32 0, %23
  %26 = select i1 %24, i32 %23, i32 %25
  %27 = add nsw i32 %26, 1
  %28 = srem i32 %22, %27
  %29 = add nsw i32 %28, %21
  ret i32 %29
}

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z14getIntervalIdxx(i64) #0 comdat {
  %2 = load i64, i64* @intvsz, align 8, !tbaa !1
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %9, label %4

; <label>:4:                                      ; preds = %1
  %5 = sdiv i64 %0, %2
  %6 = sitofp i64 %5 to double
  %7 = tail call double @floor(double %6) #11
  %8 = fptosi double %7 to i32
  br label %9

; <label>:9:                                      ; preds = %1, %4
  %10 = phi i32 [ %8, %4 ], [ -1, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind readnone
declare double @floor(double) #8

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #7

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z15updateTimeStampv() #0 comdat {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #3
  %3 = call i32 @gettimeofday(%struct.timeval* nonnull %1, %struct.timezone* null) #3
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = mul nsw i64 %5, 1000000
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !24
  %9 = add nsw i64 %6, %8
  store i64 %9, i64* @execKey, align 8, !tbaa !9
  call void @llvm.lifetime.end(i64 16, i8* %2) #3
  ret void
}

declare i64 @getline(i8**, i64*, %struct._IO_FILE*) #9

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i8* @_Z18getStrFieldByIndexPcPKci(i8*, i8*, i32) #0 comdat {
  %4 = alloca [1024 x i8], align 16
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %5) #3
  %6 = call i8* @strcpy(i8* %5, i8* %0) #3
  %7 = call i8* @strtok(i8* %5, i8* %1) #3
  %8 = icmp eq i8* %7, null
  br i1 %8, label %20, label %9

; <label>:9:                                      ; preds = %3
  br label %10

; <label>:10:                                     ; preds = %9, %15
  %11 = phi i32 [ %13, %15 ], [ -1, %9 ]
  %12 = phi i8* [ %16, %15 ], [ %7, %9 ]
  %13 = add nsw i32 %11, 1
  %14 = icmp eq i32 %13, %2
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %10
  %16 = call i8* @strtok(i8* null, i8* %1) #3
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %10

; <label>:18:                                     ; preds = %15, %10
  %19 = phi i8* [ null, %15 ], [ %12, %10 ]
  br label %20

; <label>:20:                                     ; preds = %18, %3
  %21 = phi i8* [ null, %3 ], [ %19, %18 ]
  call void @llvm.lifetime.end(i64 1024, i8* %5) #3
  ret i8* %21
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z13processParamsPKcS0_(i8*, i8*) #0 comdat {
  %3 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0)) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5
  store i32 0, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0)) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %9
  store i32 1, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:13:                                     ; preds = %9
  %14 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0)) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  store i32 2, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:17:                                     ; preds = %13
  store i32 3, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:18:                                     ; preds = %2
  %19 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0)) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %54

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0)) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21
  store i32 1, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i64 0, i64 0)) #12
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %25
  store i32 2, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:29:                                     ; preds = %25
  %30 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0)) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %29
  store i32 3, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:33:                                     ; preds = %29
  %34 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i64 0, i64 0)) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %33
  store i32 4, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:37:                                     ; preds = %33
  %38 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0)) #12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %37
  store i32 5, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:41:                                     ; preds = %37
  %42 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)) #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %41
  store i32 6, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:45:                                     ; preds = %41
  %46 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i64 0, i64 0)) #12
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %45
  store i32 7, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:49:                                     ; preds = %45
  %50 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)) #12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  store i32 8, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:53:                                     ; preds = %49
  store i32 9, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:54:                                     ; preds = %18
  %55 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0)) #12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

; <label>:57:                                     ; preds = %54
  %58 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0)) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  store i32 0, i32* @fid, align 4, !tbaa !18
  br label %96

; <label>:61:                                     ; preds = %57
  %62 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0)) #12
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %61
  store i32 1, i32* @fid, align 4, !tbaa !18
  br label %96

; <label>:65:                                     ; preds = %61
  store i32 2, i32* @fid, align 4, !tbaa !18
  br label %96

; <label>:66:                                     ; preds = %54
  %67 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0)) #12
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %66
  %70 = tail call i32 @atoi(i8* %1) #12
  store i32 %70, i32* @bu, align 4, !tbaa !5
  br label %96

; <label>:71:                                     ; preds = %66
  %72 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0)) #12
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

; <label>:74:                                     ; preds = %71
  %75 = tail call i32 @atoi(i8* %1) #12
  store i32 %75, i32* @bl, align 4, !tbaa !5
  br label %96

; <label>:76:                                     ; preds = %71
  %77 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0)) #12
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %76
  %80 = tail call i64 @atoll(i8* %1) #12
  store i64 %80, i64* @ef, align 8, !tbaa !1
  br label %96

; <label>:81:                                     ; preds = %76
  %82 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0)) #12
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

; <label>:84:                                     ; preds = %81
  %85 = tail call i64 @atoll(i8* %1) #12
  store i64 %85, i64* @tf, align 8, !tbaa !1
  br label %96

; <label>:86:                                     ; preds = %81
  %87 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0)) #12
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

; <label>:89:                                     ; preds = %86
  %90 = tail call i32 @atoi(i8* %1) #12
  store i32 %90, i32* @pfs, align 4, !tbaa !5
  br label %96

; <label>:91:                                     ; preds = %86
  %92 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i64 0, i64 0)) #12
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

; <label>:94:                                     ; preds = %91
  %95 = tail call i64 @atoll(i8* %1) #12
  store i64 %95, i64* @dynFSCount, align 8, !tbaa !1
  br label %96

; <label>:96:                                     ; preds = %91, %28, %36, %44, %52, %53, %48, %40, %32, %24, %69, %79, %89, %94, %84, %74, %60, %65, %64, %8, %16, %17, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z11updateFSIdxv() #0 comdat {
  %1 = load i64, i64* @intvCount, align 8, !tbaa !1
  %2 = icmp sgt i64 %1, 0
  %3 = load i64, i64* @ef, align 8
  %4 = icmp sgt i64 %3, 0
  %5 = and i1 %2, %4
  br i1 %5, label %6, label %10

; <label>:6:                                      ; preds = %0
  %7 = mul nsw i64 %3, %1
  %8 = tail call noalias i8* @calloc(i64 %7, i64 8) #3
  store i8* %8, i8** bitcast (i64** @dynFSIdx to i8**), align 8, !tbaa !7
  %9 = bitcast i8* %8 to i64*
  br label %12

; <label>:10:                                     ; preds = %0
  %11 = load i64*, i64** @dynFSIdx, align 8, !tbaa !7
  br label %12

; <label>:12:                                     ; preds = %10, %6
  %13 = phi i64* [ %11, %10 ], [ %9, %6 ]
  %14 = icmp eq i64* %13, null
  br i1 %14, label %17, label %15

; <label>:15:                                     ; preds = %12
  br i1 %2, label %16, label %56

; <label>:16:                                     ; preds = %15
  br label %19

; <label>:17:                                     ; preds = %12
  %18 = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @str.89, i64 0, i64 0))
  tail call void @exit(i32 -1) #10
  unreachable

; <label>:19:                                     ; preds = %16, %50
  %20 = phi i64 [ %51, %50 ], [ %1, %16 ]
  %21 = phi i64 [ %52, %50 ], [ %3, %16 ]
  %22 = phi i64 [ %53, %50 ], [ 0, %16 ]
  %23 = icmp sgt i64 %21, 0
  br i1 %23, label %24, label %50

; <label>:24:                                     ; preds = %19
  br label %25

; <label>:25:                                     ; preds = %24, %43
  %26 = phi i64 [ %44, %43 ], [ 0, %24 ]
  %27 = tail call i64 @_Z12gen64bitRandv()
  %28 = load i64, i64* @intvsz, align 8, !tbaa !1
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %43

; <label>:30:                                     ; preds = %25
  %31 = mul nsw i64 %28, %22
  %32 = srem i64 %27, %28
  %33 = icmp slt i64 %32, 0
  %34 = sub nsw i64 0, %32
  %35 = select i1 %33, i64 %34, i64 %32
  %36 = add i64 %31, 1
  %37 = add i64 %36, %35
  %38 = load i64, i64* @ef, align 8, !tbaa !1
  %39 = mul nsw i64 %38, %22
  %40 = add nsw i64 %39, %26
  %41 = load i64*, i64** @dynFSIdx, align 8, !tbaa !7
  %42 = getelementptr inbounds i64, i64* %41, i64 %40
  store i64 %37, i64* %42, align 8, !tbaa !1
  br label %43

; <label>:43:                                     ; preds = %25, %30
  %44 = add nuw nsw i64 %26, 1
  %45 = load i64, i64* @ef, align 8, !tbaa !1
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %25, label %47

; <label>:47:                                     ; preds = %43
  %48 = phi i64 [ %45, %43 ]
  %49 = load i64, i64* @intvCount, align 8, !tbaa !1
  br label %50

; <label>:50:                                     ; preds = %47, %19
  %51 = phi i64 [ %49, %47 ], [ %20, %19 ]
  %52 = phi i64 [ %48, %47 ], [ %21, %19 ]
  %53 = add nuw nsw i64 %22, 1
  %54 = icmp slt i64 %53, %51
  br i1 %54, label %19, label %55

; <label>:55:                                     ; preds = %50
  br label %56

; <label>:56:                                     ; preds = %55, %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z11file_existsPKc(i8*) #0 comdat {
  %2 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  %3 = icmp eq %struct._IO_FILE* %2, null
  br i1 %3, label %6, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %2)
  br label %6

; <label>:6:                                      ; preds = %1, %4
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z11printParamsv() #0 comdat {
  %1 = load i32, i32* @fialg, align 4, !tbaa !11
  %2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.60, i64 0, i64 0), i32 %1)
  %3 = load i32, i32* @fibr, align 4, !tbaa !20
  %4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @fid, align 4, !tbaa !18
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.62, i64 0, i64 0), i32 %5)
  %7 = load i64, i64* @ef, align 8, !tbaa !1
  %8 = load i64, i64* @tf, align 8, !tbaa !1
  %9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), i64 %7, i64 %8)
  %10 = load i32, i32* @bl, align 4, !tbaa !5
  %11 = load i32, i32* @bu, align 4, !tbaa !5
  %12 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.64, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* @pfs, align 4, !tbaa !5
  %14 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.65, i64 0, i64 0), i32 %13)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z11checkParamsv() #0 comdat {
  %1 = load i32, i32* @fialg, align 4, !tbaa !11
  %2 = icmp eq i32 %1, 3
  br i1 %2, label %3, label %4

; <label>:3:                                      ; preds = %0
  tail call void @__assert_fail(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.67, i64 0, i64 0), i32 288, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #10
  unreachable

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* @fibr, align 4, !tbaa !20
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %4
  tail call void @__assert_fail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.68, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.67, i64 0, i64 0), i32 289, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #10
  unreachable

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* @fid, align 4, !tbaa !18
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  tail call void @__assert_fail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.69, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.67, i64 0, i64 0), i32 290, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #10
  unreachable

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* @bu, align 4, !tbaa !5
  %14 = load i32, i32* @bl, align 4, !tbaa !5
  %15 = icmp sge i32 %13, %14
  %16 = icmp slt i32 %13, 64
  %17 = and i1 %16, %15
  %18 = icmp sgt i32 %14, -1
  %19 = and i1 %18, %17
  %20 = icmp ne i32 %1, 1
  %21 = or i1 %20, %19
  br i1 %21, label %23, label %22

; <label>:22:                                     ; preds = %12
  tail call void @__assert_fail(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.67, i64 0, i64 0), i32 291, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #10
  unreachable

; <label>:23:                                     ; preds = %12
  %24 = load i64, i64* @ef, align 8, !tbaa !1
  %25 = load i64, i64* @tf, align 8, !tbaa !1
  %26 = icmp sle i64 %24, %25
  %27 = icmp sgt i64 %24, 0
  %28 = and i1 %27, %26
  %29 = icmp sgt i64 %25, 0
  %30 = and i1 %29, %28
  br i1 %30, label %32, label %31

; <label>:31:                                     ; preds = %23
  tail call void @__assert_fail(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.67, i64 0, i64 0), i32 292, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #10
  unreachable

; <label>:32:                                     ; preds = %23
  %33 = load i32, i32* @pfs, align 4, !tbaa !5
  %34 = or i32 %33, 1
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %32
  tail call void @__assert_fail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.67, i64 0, i64 0), i32 293, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #10
  unreachable

; <label>:37:                                     ; preds = %32
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_Z12gen64bitRandv() #0 comdat {
  br label %1

; <label>:1:                                      ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %9, %1 ]
  %3 = phi i64 [ 0, %0 ], [ %8, %1 ]
  %4 = tail call i32 @rand() #3
  %5 = and i32 %4, 1
  %6 = zext i32 %5 to i64
  %7 = or i64 %6, %3
  %8 = shl i64 %7, 1
  %9 = add nuw nsw i32 %2, 1
  %10 = icmp eq i32 %9, 64
  br i1 %10, label %11, label %1

; <label>:11:                                     ; preds = %1
  %12 = phi i64 [ %8, %1 ]
  ret i64 %12
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #7

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) #7

; Function Attrs: nounwind readonly
declare i64 @atoll(i8* nocapture) #7

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #1

; Function Attrs: noinline uwtable
define i32 @_Z21injectSoftErrorIntTy8cPKcc(i8 signext, i8*, i8 signext) #5 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8 %0, i8* %4, align 1, !tbaa !13
  store i8 %2, i8* %5, align 1, !tbaa !13
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  call void @llvm.lifetime.start(i64 1, i8* nonnull %6) #3
  store i8 %0, i8* %6, align 1, !tbaa !13
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  store i32 -1, i32* %7, align 4, !tbaa !5
  %13 = call i32 @_Z9checkMaskPvi(i8* nonnull %5, i32 1)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %30, label %15

; <label>:15:                                     ; preds = %11
  %16 = load i64, i64* @fsIntTy8, align 8, !tbaa !1
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* @fsIntTy8, align 8, !tbaa !1
  %18 = load i32, i32* @pfs, align 4, !tbaa !5
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %30, label %20

; <label>:20:                                     ; preds = %15
  %21 = call i32 @_Z13matchDynFSIdxv()
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* @fialg, align 4, !tbaa !11
  %25 = call i32 @_Z7flipBitPvj8DataType6FIAlgo(i8* nonnull %4, i32 1, i32 1, i32 %24)
  store i32 %25, i32* %7, align 4, !tbaa !5
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %23
  %28 = load i64, i64* @fiIntTy8, align 8, !tbaa !1
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* @fiIntTy8, align 8, !tbaa !1
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* nonnull %6, i8* nonnull %4, i8* nonnull %12, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  br label %30

; <label>:30:                                     ; preds = %23, %27, %20, %15, %11
  %31 = load i8, i8* %4, align 1, !tbaa !13
  %32 = sext i8 %31 to i32
  call void @llvm.lifetime.end(i64 4, i8* %12) #3
  call void @llvm.lifetime.end(i64 1, i8* nonnull %6) #3
  ret i32 %32
}

; Function Attrs: noinline uwtable
define signext i16 @_Z22injectSoftErrorIntTy16sPKcs(i16 signext, i8*, i16 signext) #5 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store i16 %0, i16* %4, align 2, !tbaa !25
  store i16 %2, i16* %5, align 2, !tbaa !25
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast i16* %6 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #3
  store i16 %0, i16* %6, align 2, !tbaa !25
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  store i32 -1, i32* %7, align 4, !tbaa !5
  %14 = bitcast i16* %5 to i8*
  %15 = call i32 @_Z9checkMaskPvi(i8* %14, i32 2)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* @fsIntTy16, align 8, !tbaa !1
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @fsIntTy16, align 8, !tbaa !1
  %20 = load i32, i32* @pfs, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %33, label %22

; <label>:22:                                     ; preds = %17
  %23 = call i32 @_Z13matchDynFSIdxv()
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

; <label>:25:                                     ; preds = %22
  %26 = bitcast i16* %4 to i8*
  %27 = load i32, i32* @fialg, align 4, !tbaa !11
  %28 = call i32 @_Z7flipBitPvj8DataType6FIAlgo(i8* %26, i32 2, i32 2, i32 %27)
  store i32 %28, i32* %7, align 4, !tbaa !5
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* @fiIntTy16, align 8, !tbaa !1
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @fiIntTy16, align 8, !tbaa !1
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %26, i8* nonnull %13, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  br label %33

; <label>:33:                                     ; preds = %25, %30, %22, %17, %11
  %34 = load i16, i16* %4, align 2, !tbaa !25
  call void @llvm.lifetime.end(i64 4, i8* %13) #3
  call void @llvm.lifetime.end(i64 2, i8* %12) #3
  ret i16 %34
}

; Function Attrs: noinline uwtable
define i32 @_Z22injectSoftErrorIntTy32iPKci(i32, i8*, i32) #5 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !5
  store i32 %2, i32* %5, align 4, !tbaa !5
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  store i32 %0, i32* %6, align 4, !tbaa !5
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  store i32 -1, i32* %7, align 4, !tbaa !5
  %14 = bitcast i32* %5 to i8*
  %15 = call i32 @_Z9checkMaskPvi(i8* %14, i32 4)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* @fsIntTy32, align 8, !tbaa !1
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @fsIntTy32, align 8, !tbaa !1
  %20 = load i32, i32* @pfs, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %33, label %22

; <label>:22:                                     ; preds = %17
  %23 = call i32 @_Z13matchDynFSIdxv()
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

; <label>:25:                                     ; preds = %22
  %26 = bitcast i32* %4 to i8*
  %27 = load i32, i32* @fialg, align 4, !tbaa !11
  %28 = call i32 @_Z7flipBitPvj8DataType6FIAlgo(i8* %26, i32 4, i32 3, i32 %27)
  store i32 %28, i32* %7, align 4, !tbaa !5
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* @fiIntTy32, align 8, !tbaa !1
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @fiIntTy32, align 8, !tbaa !1
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %26, i8* nonnull %13, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  br label %33

; <label>:33:                                     ; preds = %25, %30, %22, %17, %11
  %34 = load i32, i32* %4, align 4, !tbaa !5
  call void @llvm.lifetime.end(i64 4, i8* %13) #3
  call void @llvm.lifetime.end(i64 4, i8* %12) #3
  ret i32 %34
}

; Function Attrs: noinline uwtable
define i64 @_Z22injectSoftErrorIntTy64xPKcx(i64, i8*, i64) #5 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8, !tbaa !1
  store i64 %2, i64* %5, align 8, !tbaa !1
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #3
  store i64 %0, i64* %6, align 8, !tbaa !1
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  store i32 -1, i32* %7, align 4, !tbaa !5
  %14 = bitcast i64* %5 to i8*
  %15 = call i32 @_Z9checkMaskPvi(i8* %14, i32 8)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* @fsIntTy64, align 8, !tbaa !1
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @fsIntTy64, align 8, !tbaa !1
  %20 = load i32, i32* @pfs, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %33, label %22

; <label>:22:                                     ; preds = %17
  %23 = call i32 @_Z13matchDynFSIdxv()
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

; <label>:25:                                     ; preds = %22
  %26 = bitcast i64* %4 to i8*
  %27 = load i32, i32* @fialg, align 4, !tbaa !11
  %28 = call i32 @_Z7flipBitPvj8DataType6FIAlgo(i8* %26, i32 8, i32 4, i32 %27)
  store i32 %28, i32* %7, align 4, !tbaa !5
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* @fiIntTy64, align 8, !tbaa !1
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @fiIntTy64, align 8, !tbaa !1
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %26, i8* nonnull %13, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  br label %33

; <label>:33:                                     ; preds = %25, %30, %22, %17, %11
  %34 = load i64, i64* %4, align 8, !tbaa !1
  call void @llvm.lifetime.end(i64 4, i8* %13) #3
  call void @llvm.lifetime.end(i64 8, i8* %12) #3
  ret i64 %34
}

; Function Attrs: noinline uwtable
define float @_Z22injectSoftErrorFloatTyfPKcf(float, i8*, float) #5 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %4, align 4, !tbaa !14
  store float %2, float* %5, align 4, !tbaa !14
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast float* %6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #3
  store float %0, float* %6, align 4, !tbaa !14
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  store i32 -1, i32* %7, align 4, !tbaa !5
  %14 = bitcast float* %5 to i8*
  %15 = call i32 @_Z9checkMaskPvi(i8* %14, i32 4)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* @fsFloatTy, align 8, !tbaa !1
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @fsFloatTy, align 8, !tbaa !1
  %20 = load i32, i32* @pfs, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %33, label %22

; <label>:22:                                     ; preds = %17
  %23 = call i32 @_Z13matchDynFSIdxv()
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

; <label>:25:                                     ; preds = %22
  %26 = bitcast float* %4 to i8*
  %27 = load i32, i32* @fialg, align 4, !tbaa !11
  %28 = call i32 @_Z7flipBitPvj8DataType6FIAlgo(i8* %26, i32 4, i32 5, i32 %27)
  store i32 %28, i32* %7, align 4, !tbaa !5
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* @fiFloatTy, align 8, !tbaa !1
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @fiFloatTy, align 8, !tbaa !1
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %26, i8* nonnull %13, i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  br label %33

; <label>:33:                                     ; preds = %25, %30, %22, %17, %11
  %34 = load float, float* %4, align 4, !tbaa !14
  call void @llvm.lifetime.end(i64 4, i8* %13) #3
  call void @llvm.lifetime.end(i64 4, i8* %12) #3
  ret float %34
}

; Function Attrs: noinline uwtable
define double @_Z23injectSoftErrorDoubleTydPKcd(double, i8*, double) #5 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8, !tbaa !16
  store double %2, double* %5, align 8, !tbaa !16
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast double* %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #3
  store double %0, double* %6, align 8, !tbaa !16
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #3
  store i32 -1, i32* %7, align 4, !tbaa !5
  %14 = bitcast double* %5 to i8*
  %15 = call i32 @_Z9checkMaskPvi(i8* %14, i32 8)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* @fsDoubleTy, align 8, !tbaa !1
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @fsDoubleTy, align 8, !tbaa !1
  %20 = load i32, i32* @pfs, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %33, label %22

; <label>:22:                                     ; preds = %17
  %23 = call i32 @_Z13matchDynFSIdxv()
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

; <label>:25:                                     ; preds = %22
  %26 = bitcast double* %4 to i8*
  %27 = load i32, i32* @fialg, align 4, !tbaa !11
  %28 = call i32 @_Z7flipBitPvj8DataType6FIAlgo(i8* %26, i32 8, i32 6, i32 %27)
  store i32 %28, i32* %7, align 4, !tbaa !5
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* @fiDoubleTy, align 8, !tbaa !1
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @fiDoubleTy, align 8, !tbaa !1
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %26, i8* nonnull %13, i32 6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  br label %33

; <label>:33:                                     ; preds = %25, %30, %22, %17, %11
  %34 = load double, double* %4, align 8, !tbaa !16
  call void @llvm.lifetime.end(i64 4, i8* %13) #3
  call void @llvm.lifetime.end(i64 8, i8* %12) #3
  ret double %34
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8** nocapture readonly) #0 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #3
  %6 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #3
  %7 = icmp slt i32 %0, 3
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.16, i64 0, i64 0))
  tail call void @exit(i32 -1) #10
  unreachable

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds i8*, i8** %1, i64 1
  %12 = load i8*, i8** %11, align 8, !tbaa !27
  %13 = tail call i32 @atoi(i8* %12) #12
  %14 = mul nsw i32 %13, %13
  %15 = mul nsw i32 %14, %13
  %16 = sext i32 %15 to i64
  %17 = tail call i8* @polybench_alloc_data(i64 %16, i32 8) #3
  %18 = bitcast i8* %17 to double*
  %19 = tail call i8* @polybench_alloc_data(i64 %16, i32 8) #3
  %20 = bitcast i8* %19 to double*
  tail call fastcc void @init_array(i32 %13, double* %18, double* %20)
  %21 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #3
  tail call fastcc void @kernel_heat_3d(i32 %13, double* %18, double* %20)
  %22 = call i32 @gettimeofday(%struct.timeval* nonnull %4, %struct.timezone* null) #3
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %24 = load i64, i64* %23, align 8, !tbaa !31
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  %26 = load i64, i64* %25, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %28 = load i64, i64* %27, align 8, !tbaa !31
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %30 = load i64, i64* %29, align 8, !tbaa !34
  %31 = sub i64 %24, %28
  %32 = mul i64 %31, 1000000
  %33 = sub i64 %26, %30
  %34 = add i64 %33, %32
  %35 = sitofp i64 %34 to double
  %36 = fdiv double %35, 1.000000e+06
  %37 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1.6, i64 0, i64 0), double %36)
  %38 = icmp eq i32 %0, 4
  br i1 %38, label %39, label %42

; <label>:39:                                     ; preds = %10
  %40 = getelementptr inbounds i8*, i8** %1, i64 3
  %41 = load i8*, i8** %40, align 8, !tbaa !27
  tail call fastcc void @print_data(i32 %13, double* %18, i8* %41)
  br label %52

; <label>:42:                                     ; preds = %10
  %43 = icmp sgt i32 %0, 4
  br i1 %43, label %44, label %52

; <label>:44:                                     ; preds = %42
  %45 = getelementptr inbounds i8*, i8** %1, i64 4
  %46 = load i8*, i8** %45, align 8, !tbaa !27
  tail call void @writeOVRData(i8* %46, double %36, i32 0) #3
  %47 = icmp sgt i32 %0, 5
  br i1 %47, label %48, label %52

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds i8*, i8** %1, i64 5
  %50 = load i8*, i8** %49, align 8, !tbaa !27
  %51 = load i64, i64* @detectCounter, align 8, !tbaa !35
  tail call void @writeFPRData(i8* %50, i64 %51, i32 0) #3
  br label %52

; <label>:52:                                     ; preds = %42, %39, %48, %44
  %53 = load i64, i64* @detectCounter, align 8, !tbaa !35
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %57, label %55

; <label>:55:                                     ; preds = %52
  %56 = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @str.15, i64 0, i64 0))
  br label %59

; <label>:57:                                     ; preds = %52
  %58 = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str, i64 0, i64 0))
  br label %59

; <label>:59:                                     ; preds = %57, %55
  %60 = icmp sgt i32 %0, 42
  br i1 %60, label %61, label %66

; <label>:61:                                     ; preds = %59
  %62 = load i8*, i8** %1, align 8, !tbaa !27
  %63 = load i8, i8* %62, align 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %61
  tail call fastcc void @print_array(i32 %13, double* %18)
  br label %66

; <label>:66:                                     ; preds = %61, %65, %59
  tail call void @free(i8* %17) #3
  call void @llvm.lifetime.end(i64 16, i8* %6) #3
  call void @llvm.lifetime.end(i64 16, i8* %5) #3
  ret i32 0
}

declare i8* @polybench_alloc_data(i64, i32) #9

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @init_array(i32, double* nocapture, double* nocapture) unnamed_addr #2 {
  %4 = zext i32 %0 to i64
  %5 = icmp sgt i32 %0, 0
  br i1 %5, label %6, label %72

; <label>:6:                                      ; preds = %3
  %7 = sitofp i32 %0 to double
  %8 = mul nuw i64 %4, %4
  %9 = and i32 %0, 1
  %10 = icmp eq i32 %9, %0
  %11 = sub i32 %0, %9
  %12 = icmp eq i32 %9, 0
  br label %13

; <label>:13:                                     ; preds = %6, %20
  %14 = phi i64 [ %21, %20 ], [ 0, %6 ]
  %15 = trunc i64 %14 to i32
  %16 = add i32 %15, %0
  %17 = mul nsw i64 %8, %14
  %18 = getelementptr inbounds double, double* %2, i64 %17
  %19 = getelementptr inbounds double, double* %1, i64 %17
  br label %24

; <label>:20:                                     ; preds = %46
  %21 = add nuw nsw i64 %14, 1
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %22, %0
  br i1 %23, label %71, label %13

; <label>:24:                                     ; preds = %46, %13
  %25 = phi i64 [ 0, %13 ], [ %47, %46 ]
  %26 = trunc i64 %25 to i32
  %27 = add i32 %16, %26
  %28 = mul nuw nsw i64 %25, %4
  %29 = getelementptr inbounds double, double* %18, i64 %28
  %30 = getelementptr inbounds double, double* %19, i64 %28
  br i1 %10, label %34, label %31

; <label>:31:                                     ; preds = %24
  br label %50

; <label>:32:                                     ; preds = %50
  %33 = phi i64 [ %68, %50 ]
  br label %34

; <label>:34:                                     ; preds = %24, %32
  %35 = phi i64 [ 0, %24 ], [ %33, %32 ]
  br i1 %12, label %46, label %36

; <label>:36:                                     ; preds = %34
  br label %37

; <label>:37:                                     ; preds = %36
  %38 = trunc i64 %35 to i32
  %39 = sub i32 %27, %38
  %40 = sitofp i32 %39 to double
  %41 = fmul double %40, 1.000000e+01
  %42 = fdiv double %41, %7
  %43 = getelementptr inbounds double, double* %29, i64 %35
  store double %42, double* %43, align 8, !tbaa !37
  %44 = getelementptr inbounds double, double* %30, i64 %35
  store double %42, double* %44, align 8, !tbaa !37
  br label %45

; <label>:45:                                     ; preds = %37
  br label %46

; <label>:46:                                     ; preds = %34, %45
  %47 = add nuw nsw i64 %25, 1
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %48, %0
  br i1 %49, label %20, label %24

; <label>:50:                                     ; preds = %50, %31
  %51 = phi i64 [ 0, %31 ], [ %68, %50 ]
  %52 = phi i32 [ %11, %31 ], [ %69, %50 ]
  %53 = trunc i64 %51 to i32
  %54 = sub i32 %27, %53
  %55 = sitofp i32 %54 to double
  %56 = fmul double %55, 1.000000e+01
  %57 = fdiv double %56, %7
  %58 = getelementptr inbounds double, double* %29, i64 %51
  store double %57, double* %58, align 8, !tbaa !37
  %59 = getelementptr inbounds double, double* %30, i64 %51
  store double %57, double* %59, align 8, !tbaa !37
  %60 = or i64 %51, 1
  %61 = trunc i64 %60 to i32
  %62 = sub i32 %27, %61
  %63 = sitofp i32 %62 to double
  %64 = fmul double %63, 1.000000e+01
  %65 = fdiv double %64, %7
  %66 = getelementptr inbounds double, double* %29, i64 %60
  store double %65, double* %66, align 8, !tbaa !37
  %67 = getelementptr inbounds double, double* %30, i64 %60
  store double %65, double* %67, align 8, !tbaa !37
  %68 = add nsw i64 %51, 2
  %69 = add i32 %52, -2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %32, label %50

; <label>:71:                                     ; preds = %20
  br label %72

; <label>:72:                                     ; preds = %71, %3
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @kernel_heat_3d(i32, double* nocapture, double* nocapture) unnamed_addr #2 {
  %orgbadr1143 = alloca double*
  store double* null, double** %orgbadr1143
  %lub1144 = alloca double*
  store double* null, double** %lub1144
  %lui1145 = alloca i64
  store i64 0, i64* %lui1145
  %orgbadr1126 = alloca double*
  store double* null, double** %orgbadr1126
  %lub1127 = alloca double*
  store double* null, double** %lub1127
  %lui1128 = alloca i64
  store i64 0, i64* %lui1128
  %orgbadr1109 = alloca double*
  store double* null, double** %orgbadr1109
  %lub1110 = alloca double*
  store double* null, double** %lub1110
  %lui1111 = alloca i64
  store i64 0, i64* %lui1111
  %orgbadr1092 = alloca double*
  store double* null, double** %orgbadr1092
  %lub1093 = alloca double*
  store double* null, double** %lub1093
  %lui1094 = alloca i64
  store i64 0, i64* %lui1094
  %orgbadr1075 = alloca double*
  store double* null, double** %orgbadr1075
  %lub1076 = alloca double*
  store double* null, double** %lub1076
  %lui1077 = alloca i64
  store i64 0, i64* %lui1077
  %orgbadr1058 = alloca double*
  store double* null, double** %orgbadr1058
  %lub1059 = alloca double*
  store double* null, double** %lub1059
  %lui1060 = alloca i64
  store i64 0, i64* %lui1060
  %orgbadr1041 = alloca double*
  store double* null, double** %orgbadr1041
  %lub1042 = alloca double*
  store double* null, double** %lub1042
  %lui1043 = alloca i64
  store i64 0, i64* %lui1043
  %orgbadr1024 = alloca double*
  store double* null, double** %orgbadr1024
  %lub1025 = alloca double*
  store double* null, double** %lub1025
  %lui1026 = alloca i64
  store i64 0, i64* %lui1026
  %orgbadr1007 = alloca double*
  store double* null, double** %orgbadr1007
  %lub1008 = alloca double*
  store double* null, double** %lub1008
  %lui1009 = alloca i64
  store i64 0, i64* %lui1009
  %orgbadr990 = alloca double*
  store double* null, double** %orgbadr990
  %lub991 = alloca double*
  store double* null, double** %lub991
  %lui992 = alloca i64
  store i64 0, i64* %lui992
  %orgbadr973 = alloca double*
  store double* null, double** %orgbadr973
  %lub974 = alloca double*
  store double* null, double** %lub974
  %lui975 = alloca i64
  store i64 0, i64* %lui975
  %orgbadr956 = alloca double*
  store double* null, double** %orgbadr956
  %lub957 = alloca double*
  store double* null, double** %lub957
  %lui958 = alloca i64
  store i64 0, i64* %lui958
  %orgbadr939 = alloca double*
  store double* null, double** %orgbadr939
  %lub940 = alloca double*
  store double* null, double** %lub940
  %lui941 = alloca i64
  store i64 0, i64* %lui941
  %orgbadr922 = alloca double*
  store double* null, double** %orgbadr922
  %lub923 = alloca double*
  store double* null, double** %lub923
  %lui924 = alloca i64
  store i64 0, i64* %lui924
  %orgbadr905 = alloca double*
  store double* null, double** %orgbadr905
  %lub906 = alloca double*
  store double* null, double** %lub906
  %lui907 = alloca i64
  store i64 0, i64* %lui907
  %orgbadr888 = alloca double*
  store double* null, double** %orgbadr888
  %lub889 = alloca double*
  store double* null, double** %lub889
  %lui890 = alloca i64
  store i64 0, i64* %lui890
  %orgbadr871 = alloca double*
  store double* null, double** %orgbadr871
  %lub872 = alloca double*
  store double* null, double** %lub872
  %lui873 = alloca i64
  store i64 0, i64* %lui873
  %orgbadr854 = alloca double*
  store double* null, double** %orgbadr854
  %lub855 = alloca double*
  store double* null, double** %lub855
  %lui856 = alloca i64
  store i64 0, i64* %lui856
  %orgbadr837 = alloca double*
  store double* null, double** %orgbadr837
  %lub838 = alloca double*
  store double* null, double** %lub838
  %lui839 = alloca i64
  store i64 0, i64* %lui839
  %orgbadr820 = alloca double*
  store double* null, double** %orgbadr820
  %lub821 = alloca double*
  store double* null, double** %lub821
  %lui822 = alloca i64
  store i64 0, i64* %lui822
  %orgbadr803 = alloca double*
  store double* null, double** %orgbadr803
  %lub804 = alloca double*
  store double* null, double** %lub804
  %lui805 = alloca i64
  store i64 0, i64* %lui805
  %orgbadr786 = alloca double*
  store double* null, double** %orgbadr786
  %lub787 = alloca double*
  store double* null, double** %lub787
  %lui788 = alloca i64
  store i64 0, i64* %lui788
  %orgbadr769 = alloca i8*
  store i8* null, i8** %orgbadr769
  %lub770 = alloca i8*
  store i8* null, i8** %lub770
  %lui771 = alloca i64
  store i64 0, i64* %lui771
  %orgbadr762 = alloca double*
  store double* null, double** %orgbadr762
  %lub763 = alloca double*
  store double* null, double** %lub763
  %lui764 = alloca i64
  store i64 0, i64* %lui764
  store double* %2, double** %orgbadr762
  store double* %2, double** %lub763
  %orgbadr745 = alloca i8*
  store i8* null, i8** %orgbadr745
  %lub746 = alloca i8*
  store i8* null, i8** %lub746
  %lui747 = alloca i64
  store i64 0, i64* %lui747
  %orgbadr738 = alloca double*
  store double* null, double** %orgbadr738
  %lub739 = alloca double*
  store double* null, double** %lub739
  %lui740 = alloca i64
  store i64 0, i64* %lui740
  store double* %2, double** %orgbadr738
  store double* %2, double** %lub739
  %orgbadr731 = alloca double*
  store double* null, double** %orgbadr731
  %lub732 = alloca double*
  store double* null, double** %lub732
  %lui733 = alloca i64
  store i64 0, i64* %lui733
  store double* %2, double** %orgbadr731
  store double* %2, double** %lub732
  %orgbadr724 = alloca double*
  store double* null, double** %orgbadr724
  %lub725 = alloca double*
  store double* null, double** %lub725
  %lui726 = alloca i64
  store i64 0, i64* %lui726
  store double* %2, double** %orgbadr724
  store double* %2, double** %lub725
  %orgbadr707 = alloca i8*
  store i8* null, i8** %orgbadr707
  %lub708 = alloca i8*
  store i8* null, i8** %lub708
  %lui709 = alloca i64
  store i64 0, i64* %lui709
  %orgbadr700 = alloca double*
  store double* null, double** %orgbadr700
  %lub701 = alloca double*
  store double* null, double** %lub701
  %lui702 = alloca i64
  store i64 0, i64* %lui702
  store double* %2, double** %orgbadr700
  store double* %2, double** %lub701
  %orgbadr683 = alloca i8*
  store i8* null, i8** %orgbadr683
  %lub684 = alloca i8*
  store i8* null, i8** %lub684
  %lui685 = alloca i64
  store i64 0, i64* %lui685
  %orgbadr676 = alloca double*
  store double* null, double** %orgbadr676
  %lub677 = alloca double*
  store double* null, double** %lub677
  %lui678 = alloca i64
  store i64 0, i64* %lui678
  store double* %2, double** %orgbadr676
  store double* %2, double** %lub677
  %orgbadr669 = alloca double*
  store double* null, double** %orgbadr669
  %lub670 = alloca double*
  store double* null, double** %lub670
  %lui671 = alloca i64
  store i64 0, i64* %lui671
  store double* %2, double** %orgbadr669
  store double* %2, double** %lub670
  %orgbadr662 = alloca double*
  store double* null, double** %orgbadr662
  %lub663 = alloca double*
  store double* null, double** %lub663
  %lui664 = alloca i64
  store i64 0, i64* %lui664
  store double* %2, double** %orgbadr662
  store double* %2, double** %lub663
  %orgbadr655 = alloca double*
  store double* null, double** %orgbadr655
  %lub656 = alloca double*
  store double* null, double** %lub656
  %lui657 = alloca i64
  store i64 0, i64* %lui657
  store double* %2, double** %orgbadr655
  store double* %2, double** %lub656
  %orgbadr648 = alloca double*
  store double* null, double** %orgbadr648
  %lub649 = alloca double*
  store double* null, double** %lub649
  %lui650 = alloca i64
  store i64 0, i64* %lui650
  store double* %2, double** %orgbadr648
  store double* %2, double** %lub649
  %orgbadr631 = alloca i8*
  store i8* null, i8** %orgbadr631
  %lub632 = alloca i8*
  store i8* null, i8** %lub632
  %lui633 = alloca i64
  store i64 0, i64* %lui633
  %orgbadr624 = alloca double*
  store double* null, double** %orgbadr624
  %lub625 = alloca double*
  store double* null, double** %lub625
  %lui626 = alloca i64
  store i64 0, i64* %lui626
  store double* %1, double** %orgbadr624
  store double* %1, double** %lub625
  %orgbadr607 = alloca i8*
  store i8* null, i8** %orgbadr607
  %lub608 = alloca i8*
  store i8* null, i8** %lub608
  %lui609 = alloca i64
  store i64 0, i64* %lui609
  %orgbadr600 = alloca double*
  store double* null, double** %orgbadr600
  %lub601 = alloca double*
  store double* null, double** %lub601
  %lui602 = alloca i64
  store i64 0, i64* %lui602
  store double* %1, double** %orgbadr600
  store double* %1, double** %lub601
  %orgbadr593 = alloca double*
  store double* null, double** %orgbadr593
  %lub594 = alloca double*
  store double* null, double** %lub594
  %lui595 = alloca i64
  store i64 0, i64* %lui595
  store double* %1, double** %orgbadr593
  store double* %1, double** %lub594
  %orgbadr586 = alloca double*
  store double* null, double** %orgbadr586
  %lub587 = alloca double*
  store double* null, double** %lub587
  %lui588 = alloca i64
  store i64 0, i64* %lui588
  store double* %2, double** %orgbadr586
  store double* %2, double** %lub587
  %orgbadr579 = alloca double*
  store double* null, double** %orgbadr579
  %lub580 = alloca double*
  store double* null, double** %lub580
  %lui581 = alloca i64
  store i64 0, i64* %lui581
  store double* %2, double** %orgbadr579
  store double* %2, double** %lub580
  %orgbadr572 = alloca double*
  store double* null, double** %orgbadr572
  %lub573 = alloca double*
  store double* null, double** %lub573
  %lui574 = alloca i64
  store i64 0, i64* %lui574
  store double* %2, double** %orgbadr572
  store double* %2, double** %lub573
  %orgbadr555 = alloca double*
  store double* null, double** %orgbadr555
  %lub556 = alloca double*
  store double* null, double** %lub556
  %lui557 = alloca i64
  store i64 0, i64* %lui557
  %orgbadr538 = alloca double*
  store double* null, double** %orgbadr538
  %lub539 = alloca double*
  store double* null, double** %lub539
  %lui540 = alloca i64
  store i64 0, i64* %lui540
  %orgbadr521 = alloca double*
  store double* null, double** %orgbadr521
  %lub522 = alloca double*
  store double* null, double** %lub522
  %lui523 = alloca i64
  store i64 0, i64* %lui523
  %orgbadr504 = alloca double*
  store double* null, double** %orgbadr504
  %lub505 = alloca double*
  store double* null, double** %lub505
  %lui506 = alloca i64
  store i64 0, i64* %lui506
  %orgbadr487 = alloca double*
  store double* null, double** %orgbadr487
  %lub488 = alloca double*
  store double* null, double** %lub488
  %lui489 = alloca i64
  store i64 0, i64* %lui489
  %orgbadr470 = alloca double*
  store double* null, double** %orgbadr470
  %lub471 = alloca double*
  store double* null, double** %lub471
  %lui472 = alloca i64
  store i64 0, i64* %lui472
  %orgbadr453 = alloca double*
  store double* null, double** %orgbadr453
  %lub454 = alloca double*
  store double* null, double** %lub454
  %lui455 = alloca i64
  store i64 0, i64* %lui455
  %orgbadr436 = alloca double*
  store double* null, double** %orgbadr436
  %lub437 = alloca double*
  store double* null, double** %lub437
  %lui438 = alloca i64
  store i64 0, i64* %lui438
  %orgbadr419 = alloca double*
  store double* null, double** %orgbadr419
  %lub420 = alloca double*
  store double* null, double** %lub420
  %lui421 = alloca i64
  store i64 0, i64* %lui421
  %orgbadr402 = alloca double*
  store double* null, double** %orgbadr402
  %lub403 = alloca double*
  store double* null, double** %lub403
  %lui404 = alloca i64
  store i64 0, i64* %lui404
  %orgbadr385 = alloca double*
  store double* null, double** %orgbadr385
  %lub386 = alloca double*
  store double* null, double** %lub386
  %lui387 = alloca i64
  store i64 0, i64* %lui387
  %orgbadr368 = alloca double*
  store double* null, double** %orgbadr368
  %lub369 = alloca double*
  store double* null, double** %lub369
  %lui370 = alloca i64
  store i64 0, i64* %lui370
  %orgbadr351 = alloca double*
  store double* null, double** %orgbadr351
  %lub352 = alloca double*
  store double* null, double** %lub352
  %lui353 = alloca i64
  store i64 0, i64* %lui353
  %orgbadr334 = alloca double*
  store double* null, double** %orgbadr334
  %lub335 = alloca double*
  store double* null, double** %lub335
  %lui336 = alloca i64
  store i64 0, i64* %lui336
  %orgbadr317 = alloca double*
  store double* null, double** %orgbadr317
  %lub318 = alloca double*
  store double* null, double** %lub318
  %lui319 = alloca i64
  store i64 0, i64* %lui319
  %orgbadr300 = alloca double*
  store double* null, double** %orgbadr300
  %lub301 = alloca double*
  store double* null, double** %lub301
  %lui302 = alloca i64
  store i64 0, i64* %lui302
  %orgbadr283 = alloca double*
  store double* null, double** %orgbadr283
  %lub284 = alloca double*
  store double* null, double** %lub284
  %lui285 = alloca i64
  store i64 0, i64* %lui285
  %orgbadr266 = alloca double*
  store double* null, double** %orgbadr266
  %lub267 = alloca double*
  store double* null, double** %lub267
  %lui268 = alloca i64
  store i64 0, i64* %lui268
  %orgbadr249 = alloca double*
  store double* null, double** %orgbadr249
  %lub250 = alloca double*
  store double* null, double** %lub250
  %lui251 = alloca i64
  store i64 0, i64* %lui251
  %orgbadr232 = alloca double*
  store double* null, double** %orgbadr232
  %lub233 = alloca double*
  store double* null, double** %lub233
  %lui234 = alloca i64
  store i64 0, i64* %lui234
  %orgbadr215 = alloca double*
  store double* null, double** %orgbadr215
  %lub216 = alloca double*
  store double* null, double** %lub216
  %lui217 = alloca i64
  store i64 0, i64* %lui217
  %orgbadr198 = alloca double*
  store double* null, double** %orgbadr198
  %lub199 = alloca double*
  store double* null, double** %lub199
  %lui200 = alloca i64
  store i64 0, i64* %lui200
  %orgbadr181 = alloca i8*
  store i8* null, i8** %orgbadr181
  %lub182 = alloca i8*
  store i8* null, i8** %lub182
  %lui183 = alloca i64
  store i64 0, i64* %lui183
  %orgbadr174 = alloca double*
  store double* null, double** %orgbadr174
  %lub175 = alloca double*
  store double* null, double** %lub175
  %lui176 = alloca i64
  store i64 0, i64* %lui176
  store double* %1, double** %orgbadr174
  store double* %1, double** %lub175
  %orgbadr157 = alloca i8*
  store i8* null, i8** %orgbadr157
  %lub158 = alloca i8*
  store i8* null, i8** %lub158
  %lui159 = alloca i64
  store i64 0, i64* %lui159
  %orgbadr150 = alloca double*
  store double* null, double** %orgbadr150
  %lub151 = alloca double*
  store double* null, double** %lub151
  %lui152 = alloca i64
  store i64 0, i64* %lui152
  store double* %1, double** %orgbadr150
  store double* %1, double** %lub151
  %orgbadr143 = alloca double*
  store double* null, double** %orgbadr143
  %lub144 = alloca double*
  store double* null, double** %lub144
  %lui145 = alloca i64
  store i64 0, i64* %lui145
  store double* %1, double** %orgbadr143
  store double* %1, double** %lub144
  %orgbadr136 = alloca double*
  store double* null, double** %orgbadr136
  %lub137 = alloca double*
  store double* null, double** %lub137
  %lui138 = alloca i64
  store i64 0, i64* %lui138
  store double* %1, double** %orgbadr136
  store double* %1, double** %lub137
  %orgbadr119 = alloca i8*
  store i8* null, i8** %orgbadr119
  %lub120 = alloca i8*
  store i8* null, i8** %lub120
  %lui121 = alloca i64
  store i64 0, i64* %lui121
  %orgbadr112 = alloca double*
  store double* null, double** %orgbadr112
  %lub113 = alloca double*
  store double* null, double** %lub113
  %lui114 = alloca i64
  store i64 0, i64* %lui114
  store double* %1, double** %orgbadr112
  store double* %1, double** %lub113
  %orgbadr95 = alloca i8*
  store i8* null, i8** %orgbadr95
  %lub96 = alloca i8*
  store i8* null, i8** %lub96
  %lui97 = alloca i64
  store i64 0, i64* %lui97
  %orgbadr88 = alloca double*
  store double* null, double** %orgbadr88
  %lub89 = alloca double*
  store double* null, double** %lub89
  %lui90 = alloca i64
  store i64 0, i64* %lui90
  store double* %1, double** %orgbadr88
  store double* %1, double** %lub89
  %orgbadr81 = alloca double*
  store double* null, double** %orgbadr81
  %lub82 = alloca double*
  store double* null, double** %lub82
  %lui83 = alloca i64
  store i64 0, i64* %lui83
  store double* %1, double** %orgbadr81
  store double* %1, double** %lub82
  %orgbadr74 = alloca double*
  store double* null, double** %orgbadr74
  %lub75 = alloca double*
  store double* null, double** %lub75
  %lui76 = alloca i64
  store i64 0, i64* %lui76
  store double* %1, double** %orgbadr74
  store double* %1, double** %lub75
  %orgbadr67 = alloca double*
  store double* null, double** %orgbadr67
  %lub68 = alloca double*
  store double* null, double** %lub68
  %lui69 = alloca i64
  store i64 0, i64* %lui69
  store double* %1, double** %orgbadr67
  store double* %1, double** %lub68
  %orgbadr60 = alloca double*
  store double* null, double** %orgbadr60
  %lub61 = alloca double*
  store double* null, double** %lub61
  %lui62 = alloca i64
  store i64 0, i64* %lui62
  store double* %1, double** %orgbadr60
  store double* %1, double** %lub61
  %orgbadr43 = alloca i8*
  store i8* null, i8** %orgbadr43
  %lub44 = alloca i8*
  store i8* null, i8** %lub44
  %lui45 = alloca i64
  store i64 0, i64* %lui45
  %orgbadr36 = alloca double*
  store double* null, double** %orgbadr36
  %lub37 = alloca double*
  store double* null, double** %lub37
  %lui38 = alloca i64
  store i64 0, i64* %lui38
  store double* %2, double** %orgbadr36
  store double* %2, double** %lub37
  %orgbadr29 = alloca i8*
  store i8* null, i8** %orgbadr29
  %lub30 = alloca i8*
  store i8* null, i8** %lub30
  %lui31 = alloca i64
  store i64 0, i64* %lui31
  %orgbadr22 = alloca double*
  store double* null, double** %orgbadr22
  %lub23 = alloca double*
  store double* null, double** %lub23
  %lui24 = alloca i64
  store i64 0, i64* %lui24
  store double* %2, double** %orgbadr22
  store double* %2, double** %lub23
  %orgbadr15 = alloca double*
  store double* null, double** %orgbadr15
  %lub16 = alloca double*
  store double* null, double** %lub16
  %lui17 = alloca i64
  store i64 0, i64* %lui17
  store double* %2, double** %orgbadr15
  store double* %2, double** %lub16
  %orgbadr8 = alloca double*
  store double* null, double** %orgbadr8
  %lub9 = alloca double*
  store double* null, double** %lub9
  %lui10 = alloca i64
  store i64 0, i64* %lui10
  store double* %1, double** %orgbadr8
  store double* %1, double** %lub9
  %orgbadr1 = alloca double*
  store double* null, double** %orgbadr1
  %lub2 = alloca double*
  store double* null, double** %lub2
  %lui3 = alloca i64
  store i64 0, i64* %lui3
  store double* %1, double** %orgbadr1
  store double* %1, double** %lub2
  %orgbadr = alloca double*
  store double* null, double** %orgbadr
  %lub = alloca double*
  store double* null, double** %lub
  %lui = alloca i64
  store i64 0, i64* %lui
  store double* %1, double** %orgbadr
  store double* %1, double** %lub
  %4 = zext i32 %0 to i64
  %5 = add nsw i32 %0, -1
  %6 = icmp sgt i32 %5, 1
  %7 = mul nuw i64 %4, %4
  %8 = add i32 %0, -3
  %9 = zext i32 %8 to i64
  %10 = add nuw nsw i64 %9, 1
  %11 = mul nuw i64 %4, %4
  %12 = shl nuw nsw i64 %4, 3
  %13 = add nuw nsw i64 %12, 8
  %14 = mul i64 %13, %4
  %15 = add i32 %0, -3
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i64 %16, 1
  %18 = add nuw nsw i64 %16, 2
  %19 = add i64 %7, 1
  %20 = add i64 %7, %16
  %21 = add i64 %20, 1
  %22 = add nuw nsw i64 %12, 16
  %23 = mul i64 %22, %4
  %24 = add nuw nsw i64 %4, 1
  %25 = add nuw nsw i64 %4, %16
  %26 = add nuw nsw i64 %25, 1
  %27 = shl nuw nsw i64 %4, 4
  %28 = or i64 %27, 8
  %29 = mul i64 %28, %4
  %30 = add i32 %0, -3
  %31 = zext i32 %30 to i64
  %32 = add nuw nsw i64 %31, 1
  %33 = mul nuw i64 %4, %4
  %34 = shl nuw nsw i64 %4, 3
  %35 = add nuw nsw i64 %34, 8
  %36 = mul i64 %35, %4
  %37 = add i32 %0, -3
  %38 = zext i32 %37 to i64
  %39 = add nuw nsw i64 %38, 1
  %40 = add nuw nsw i64 %38, 2
  %41 = add i64 %7, 1
  %42 = add i64 %7, %38
  %43 = add i64 %42, 1
  %44 = add nuw nsw i64 %34, 16
  %45 = mul i64 %44, %4
  %46 = add nuw nsw i64 %4, 1
  %47 = add nuw nsw i64 %4, %38
  %48 = add nuw nsw i64 %47, 1
  %49 = shl nuw nsw i64 %4, 4
  %50 = or i64 %49, 8
  %51 = mul i64 %50, %4
  %52 = icmp ult i64 %32, 2
  %53 = and i64 %32, 8589934590
  %54 = icmp eq i64 %53, 0
  %55 = or i64 %32, 1
  %56 = icmp eq i64 %32, %53
  %57 = icmp ult i64 %10, 2
  %58 = and i64 %10, 8589934590
  %59 = icmp eq i64 %58, 0
  %60 = or i64 %10, 1
  %61 = icmp eq i64 %10, %58
  br label %62

; <label>:62:                                     ; preds = %344, %3
  %63 = phi i32 [ 1, %3 ], [ %345, %344 ]
  br i1 %6, label %64, label %344

; <label>:64:                                     ; preds = %62
  br label %67

; <label>:65:                                     ; preds = %201
  br i1 %6, label %66, label %344

; <label>:66:                                     ; preds = %65
  br label %205

; <label>:67:                                     ; preds = %64, %201
  %68 = phi i64 [ %204, %201 ], [ 0, %64 ]
  %69 = phi i64 [ %78, %201 ], [ 1, %64 ]
  %70 = mul i64 %33, %68
  %71 = add i64 %70, 1
  %72 = add i64 %39, %70
  %73 = add i64 %40, %70
  %74 = add i64 %41, %70
  %75 = add i64 %43, %70
  %76 = add i64 %46, %70
  %77 = add i64 %48, %70
  %78 = add nuw nsw i64 %69, 1
  %79 = mul nsw i64 %78, %7
  %ldlub = load double*, double** %lub
  %ldlui = load i64, i64* %lui
  %relidx = sub i64 %79, %ldlui
  %newgep = getelementptr double, double* %ldlub, i64 %relidx
  %cldobadr201 = load double*, double** %orgbadr198
  %cldlui202 = load i64, i64* %lui200
  %chaingep203 = getelementptr double, double* %cldobadr201, i64 %cldlui202
  %cldlub204 = load double*, double** %lub199
  %cast1205 = ptrtoint double* %chaingep203 to i64
  %cast2206 = ptrtoint double* %cldlub204 to i64
  %cmpop207 = icmp ne i64 %cast1205, %cast2206
  %newdetval208 = zext i1 %cmpop207 to i64
  %ldolddetval209 = load i64, i64* @detectCounter
  %updetval210 = or i64 %newdetval208, %ldolddetval209
  store i64 %updetval210, i64* @detectCounter
  store double* %newgep, double** %orgbadr198
  store double* %newgep, double** %lub199
  store i64 0, i64* %lui200
  store double* %newgep, double** %lub
  store i64 %79, i64* %lui
  %80 = mul nsw i64 %69, %7
  %ldlub4 = load double*, double** %lub2
  %ldlui5 = load i64, i64* %lui3
  %relidx6 = sub i64 %80, %ldlui5
  %newgep7 = getelementptr double, double* %ldlub4, i64 %relidx6
  %cldobadr269 = load double*, double** %orgbadr266
  %cldlui270 = load i64, i64* %lui268
  %chaingep271 = getelementptr double, double* %cldobadr269, i64 %cldlui270
  %cldlub272 = load double*, double** %lub267
  %cast1273 = ptrtoint double* %chaingep271 to i64
  %cast2274 = ptrtoint double* %cldlub272 to i64
  %cmpop275 = icmp ne i64 %cast1273, %cast2274
  %newdetval276 = zext i1 %cmpop275 to i64
  %ldolddetval277 = load i64, i64* @detectCounter
  %updetval278 = or i64 %newdetval276, %ldolddetval277
  store i64 %updetval278, i64* @detectCounter
  store double* %newgep7, double** %orgbadr266
  store double* %newgep7, double** %lub267
  store i64 0, i64* %lui268
  %cldobadr252 = load double*, double** %orgbadr249
  %cldlui253 = load i64, i64* %lui251
  %chaingep254 = getelementptr double, double* %cldobadr252, i64 %cldlui253
  %cldlub255 = load double*, double** %lub250
  %cast1256 = ptrtoint double* %chaingep254 to i64
  %cast2257 = ptrtoint double* %cldlub255 to i64
  %cmpop258 = icmp ne i64 %cast1256, %cast2257
  %newdetval259 = zext i1 %cmpop258 to i64
  %ldolddetval260 = load i64, i64* @detectCounter
  %updetval261 = or i64 %newdetval259, %ldolddetval260
  store i64 %updetval261, i64* @detectCounter
  store double* %newgep7, double** %orgbadr249
  store double* %newgep7, double** %lub250
  store i64 0, i64* %lui251
  %cldobadr218 = load double*, double** %orgbadr215
  %cldlui219 = load i64, i64* %lui217
  %chaingep220 = getelementptr double, double* %cldobadr218, i64 %cldlui219
  %cldlub221 = load double*, double** %lub216
  %cast1222 = ptrtoint double* %chaingep220 to i64
  %cast2223 = ptrtoint double* %cldlub221 to i64
  %cmpop224 = icmp ne i64 %cast1222, %cast2223
  %newdetval225 = zext i1 %cmpop224 to i64
  %ldolddetval226 = load i64, i64* @detectCounter
  %updetval227 = or i64 %newdetval225, %ldolddetval226
  store i64 %updetval227, i64* @detectCounter
  store double* %newgep7, double** %orgbadr215
  store double* %newgep7, double** %lub216
  store i64 0, i64* %lui217
  store double* %newgep7, double** %lub2
  store i64 %80, i64* %lui3
  %81 = add nsw i64 %69, -1
  %82 = mul nsw i64 %81, %7
  %ldlub11 = load double*, double** %lub9
  %ldlui12 = load i64, i64* %lui10
  %relidx13 = sub i64 %82, %ldlui12
  %newgep14 = getelementptr double, double* %ldlub11, i64 %relidx13
  %cldobadr235 = load double*, double** %orgbadr232
  %cldlui236 = load i64, i64* %lui234
  %chaingep237 = getelementptr double, double* %cldobadr235, i64 %cldlui236
  %cldlub238 = load double*, double** %lub233
  %cast1239 = ptrtoint double* %chaingep237 to i64
  %cast2240 = ptrtoint double* %cldlub238 to i64
  %cmpop241 = icmp ne i64 %cast1239, %cast2240
  %newdetval242 = zext i1 %cmpop241 to i64
  %ldolddetval243 = load i64, i64* @detectCounter
  %updetval244 = or i64 %newdetval242, %ldolddetval243
  store i64 %updetval244, i64* @detectCounter
  store double* %newgep14, double** %orgbadr232
  store double* %newgep14, double** %lub233
  store i64 0, i64* %lui234
  store double* %newgep14, double** %lub9
  store i64 %82, i64* %lui10
  %ldlub18 = load double*, double** %lub16
  %ldlui19 = load i64, i64* %lui17
  %relidx20 = sub i64 %80, %ldlui19
  %newgep21 = getelementptr double, double* %ldlub18, i64 %relidx20
  %cldobadr286 = load double*, double** %orgbadr283
  %cldlui287 = load i64, i64* %lui285
  %chaingep288 = getelementptr double, double* %cldobadr286, i64 %cldlui287
  %cldlub289 = load double*, double** %lub284
  %cast1290 = ptrtoint double* %chaingep288 to i64
  %cast2291 = ptrtoint double* %cldlub289 to i64
  %cmpop292 = icmp ne i64 %cast1290, %cast2291
  %newdetval293 = zext i1 %cmpop292 to i64
  %ldolddetval294 = load i64, i64* @detectCounter
  %updetval295 = or i64 %newdetval293, %ldolddetval294
  store i64 %updetval295, i64* @detectCounter
  store double* %newgep21, double** %orgbadr283
  store double* %newgep21, double** %lub284
  store i64 0, i64* %lui285
  store double* %newgep21, double** %lub16
  store i64 %80, i64* %lui17
  br label %83

; <label>:83:                                     ; preds = %197, %67
  %84 = phi i64 [ %200, %197 ], [ 0, %67 ]
  %85 = phi i64 [ %106, %197 ], [ 1, %67 ]
  %86 = mul i64 %4, %84
  %87 = add i64 %71, %86
  %ldlub25 = load double*, double** %lub23
  %ldlui26 = load i64, i64* %lui24
  %relidx27 = sub i64 %87, %ldlui26
  %newgep28 = getelementptr double, double* %ldlub25, i64 %relidx27
  store double* %newgep28, double** %lub23
  store i64 %87, i64* %lui24
  %88 = bitcast double* %newgep28 to i8*
  %cldobadr = load i8*, i8** %orgbadr29
  %cldlui = load i64, i64* %lui31
  %chaingep = getelementptr i8, i8* %cldobadr, i64 %cldlui
  %cldlub = load i8*, i8** %lub30
  %cast1 = ptrtoint i8* %chaingep to i64
  %cast2 = ptrtoint i8* %cldlub to i64
  %cmpop = icmp ne i64 %cast1, %cast2
  %newdetval = zext i1 %cmpop to i64
  %ldolddetval = load i64, i64* @detectCounter
  %updetval = or i64 %newdetval, %ldolddetval
  store i64 %updetval, i64* @detectCounter
  store i8* %88, i8** %orgbadr29
  store i8* %88, i8** %lub30
  store i64 0, i64* %lui31
  %ldlub32 = load i8*, i8** %lub30
  %ldlui33 = load i64, i64* %lui31
  %relidx34 = sub i64 %36, %ldlui33
  %newgep35 = getelementptr i8, i8* %ldlub32, i64 %relidx34
  store i8* %newgep35, i8** %lub30
  store i64 %36, i64* %lui31
  %89 = add i64 %72, %86
  %ldlub39 = load double*, double** %lub37
  %ldlui40 = load i64, i64* %lui38
  %relidx41 = sub i64 %89, %ldlui40
  %newgep42 = getelementptr double, double* %ldlub39, i64 %relidx41
  store double* %newgep42, double** %lub37
  store i64 %89, i64* %lui38
  %90 = bitcast double* %newgep42 to i8*
  %cldobadr46 = load i8*, i8** %orgbadr43
  %cldlui47 = load i64, i64* %lui45
  %chaingep48 = getelementptr i8, i8* %cldobadr46, i64 %cldlui47
  %cldlub49 = load i8*, i8** %lub44
  %cast150 = ptrtoint i8* %chaingep48 to i64
  %cast251 = ptrtoint i8* %cldlub49 to i64
  %cmpop52 = icmp ne i64 %cast150, %cast251
  %newdetval53 = zext i1 %cmpop52 to i64
  %ldolddetval54 = load i64, i64* @detectCounter
  %updetval55 = or i64 %newdetval53, %ldolddetval54
  store i64 %updetval55, i64* @detectCounter
  store i8* %90, i8** %orgbadr43
  store i8* %90, i8** %lub44
  store i64 0, i64* %lui45
  %ldlub56 = load i8*, i8** %lub44
  %ldlui57 = load i64, i64* %lui45
  %relidx58 = sub i64 %36, %ldlui57
  %newgep59 = getelementptr i8, i8* %ldlub56, i64 %relidx58
  store i8* %newgep59, i8** %lub44
  store i64 %36, i64* %lui45
  %91 = add i64 %70, %86
  %ldlub63 = load double*, double** %lub61
  %ldlui64 = load i64, i64* %lui62
  %relidx65 = sub i64 %91, %ldlui64
  %newgep66 = getelementptr double, double* %ldlub63, i64 %relidx65
  store double* %newgep66, double** %lub61
  store i64 %91, i64* %lui62
  %92 = add i64 %73, %86
  %ldlub70 = load double*, double** %lub68
  %ldlui71 = load i64, i64* %lui69
  %relidx72 = sub i64 %92, %ldlui71
  %newgep73 = getelementptr double, double* %ldlub70, i64 %relidx72
  store double* %newgep73, double** %lub68
  store i64 %92, i64* %lui69
  %93 = add i64 %74, %86
  %ldlub77 = load double*, double** %lub75
  %ldlui78 = load i64, i64* %lui76
  %relidx79 = sub i64 %93, %ldlui78
  %newgep80 = getelementptr double, double* %ldlub77, i64 %relidx79
  store double* %newgep80, double** %lub75
  store i64 %93, i64* %lui76
  %94 = bitcast double* %newgep80 to i8*
  %95 = add i64 %75, %86
  %ldlub84 = load double*, double** %lub82
  %ldlui85 = load i64, i64* %lui83
  %relidx86 = sub i64 %95, %ldlui85
  %newgep87 = getelementptr double, double* %ldlub84, i64 %relidx86
  store double* %newgep87, double** %lub82
  store i64 %95, i64* %lui83
  %96 = bitcast double* %newgep87 to i8*
  %ldlub91 = load double*, double** %lub89
  %ldlui92 = load i64, i64* %lui90
  %relidx93 = sub i64 %87, %ldlui92
  %newgep94 = getelementptr double, double* %ldlub91, i64 %relidx93
  store double* %newgep94, double** %lub89
  store i64 %87, i64* %lui90
  %97 = bitcast double* %newgep94 to i8*
  %cldobadr98 = load i8*, i8** %orgbadr95
  %cldlui99 = load i64, i64* %lui97
  %chaingep100 = getelementptr i8, i8* %cldobadr98, i64 %cldlui99
  %cldlub101 = load i8*, i8** %lub96
  %cast1102 = ptrtoint i8* %chaingep100 to i64
  %cast2103 = ptrtoint i8* %cldlub101 to i64
  %cmpop104 = icmp ne i64 %cast1102, %cast2103
  %newdetval105 = zext i1 %cmpop104 to i64
  %ldolddetval106 = load i64, i64* @detectCounter
  %updetval107 = or i64 %newdetval105, %ldolddetval106
  store i64 %updetval107, i64* @detectCounter
  store i8* %97, i8** %orgbadr95
  store i8* %97, i8** %lub96
  store i64 0, i64* %lui97
  %ldlub108 = load i8*, i8** %lub96
  %ldlui109 = load i64, i64* %lui97
  %relidx110 = sub i64 %45, %ldlui109
  %newgep111 = getelementptr i8, i8* %ldlub108, i64 %relidx110
  store i8* %newgep111, i8** %lub96
  store i64 %45, i64* %lui97
  %ldlub115 = load double*, double** %lub113
  %ldlui116 = load i64, i64* %lui114
  %relidx117 = sub i64 %89, %ldlui116
  %newgep118 = getelementptr double, double* %ldlub115, i64 %relidx117
  store double* %newgep118, double** %lub113
  store i64 %89, i64* %lui114
  %98 = bitcast double* %newgep118 to i8*
  %cldobadr122 = load i8*, i8** %orgbadr119
  %cldlui123 = load i64, i64* %lui121
  %chaingep124 = getelementptr i8, i8* %cldobadr122, i64 %cldlui123
  %cldlub125 = load i8*, i8** %lub120
  %cast1126 = ptrtoint i8* %chaingep124 to i64
  %cast2127 = ptrtoint i8* %cldlub125 to i64
  %cmpop128 = icmp ne i64 %cast1126, %cast2127
  %newdetval129 = zext i1 %cmpop128 to i64
  %ldolddetval130 = load i64, i64* @detectCounter
  %updetval131 = or i64 %newdetval129, %ldolddetval130
  store i64 %updetval131, i64* @detectCounter
  store i8* %98, i8** %orgbadr119
  store i8* %98, i8** %lub120
  store i64 0, i64* %lui121
  %ldlub132 = load i8*, i8** %lub120
  %ldlui133 = load i64, i64* %lui121
  %relidx134 = sub i64 %45, %ldlui133
  %newgep135 = getelementptr i8, i8* %ldlub132, i64 %relidx134
  store i8* %newgep135, i8** %lub120
  store i64 %45, i64* %lui121
  %99 = add i64 %76, %86
  %ldlub139 = load double*, double** %lub137
  %ldlui140 = load i64, i64* %lui138
  %relidx141 = sub i64 %99, %ldlui140
  %newgep142 = getelementptr double, double* %ldlub139, i64 %relidx141
  store double* %newgep142, double** %lub137
  store i64 %99, i64* %lui138
  %100 = bitcast double* %newgep142 to i8*
  %101 = add i64 %77, %86
  %ldlub146 = load double*, double** %lub144
  %ldlui147 = load i64, i64* %lui145
  %relidx148 = sub i64 %101, %ldlui147
  %newgep149 = getelementptr double, double* %ldlub146, i64 %relidx148
  store double* %newgep149, double** %lub144
  store i64 %101, i64* %lui145
  %102 = bitcast double* %newgep149 to i8*
  %ldlub153 = load double*, double** %lub151
  %ldlui154 = load i64, i64* %lui152
  %relidx155 = sub i64 %87, %ldlui154
  %newgep156 = getelementptr double, double* %ldlub153, i64 %relidx155
  store double* %newgep156, double** %lub151
  store i64 %87, i64* %lui152
  %103 = bitcast double* %newgep156 to i8*
  %cldobadr160 = load i8*, i8** %orgbadr157
  %cldlui161 = load i64, i64* %lui159
  %chaingep162 = getelementptr i8, i8* %cldobadr160, i64 %cldlui161
  %cldlub163 = load i8*, i8** %lub158
  %cast1164 = ptrtoint i8* %chaingep162 to i64
  %cast2165 = ptrtoint i8* %cldlub163 to i64
  %cmpop166 = icmp ne i64 %cast1164, %cast2165
  %newdetval167 = zext i1 %cmpop166 to i64
  %ldolddetval168 = load i64, i64* @detectCounter
  %updetval169 = or i64 %newdetval167, %ldolddetval168
  store i64 %updetval169, i64* @detectCounter
  store i8* %103, i8** %orgbadr157
  store i8* %103, i8** %lub158
  store i64 0, i64* %lui159
  %ldlub170 = load i8*, i8** %lub158
  %ldlui171 = load i64, i64* %lui159
  %relidx172 = sub i64 %51, %ldlui171
  %newgep173 = getelementptr i8, i8* %ldlub170, i64 %relidx172
  store i8* %newgep173, i8** %lub158
  store i64 %51, i64* %lui159
  %ldlub177 = load double*, double** %lub175
  %ldlui178 = load i64, i64* %lui176
  %relidx179 = sub i64 %89, %ldlui178
  %newgep180 = getelementptr double, double* %ldlub177, i64 %relidx179
  store double* %newgep180, double** %lub175
  store i64 %89, i64* %lui176
  %104 = bitcast double* %newgep180 to i8*
  %cldobadr184 = load i8*, i8** %orgbadr181
  %cldlui185 = load i64, i64* %lui183
  %chaingep186 = getelementptr i8, i8* %cldobadr184, i64 %cldlui185
  %cldlub187 = load i8*, i8** %lub182
  %cast1188 = ptrtoint i8* %chaingep186 to i64
  %cast2189 = ptrtoint i8* %cldlub187 to i64
  %cmpop190 = icmp ne i64 %cast1188, %cast2189
  %newdetval191 = zext i1 %cmpop190 to i64
  %ldolddetval192 = load i64, i64* @detectCounter
  %updetval193 = or i64 %newdetval191, %ldolddetval192
  store i64 %updetval193, i64* @detectCounter
  store i8* %104, i8** %orgbadr181
  store i8* %104, i8** %lub182
  store i64 0, i64* %lui183
  %ldlub194 = load i8*, i8** %lub182
  %ldlui195 = load i64, i64* %lui183
  %relidx196 = sub i64 %51, %ldlui195
  %newgep197 = getelementptr i8, i8* %ldlub194, i64 %relidx196
  store i8* %newgep197, i8** %lub182
  store i64 %51, i64* %lui183
  %105 = mul nuw nsw i64 %85, %4
  %ldlub211 = load double*, double** %lub199
  %ldlui212 = load i64, i64* %lui200
  %relidx213 = sub i64 %105, %ldlui212
  %newgep214 = getelementptr double, double* %ldlub211, i64 %relidx213
  %cldobadr439 = load double*, double** %orgbadr436
  %cldlui440 = load i64, i64* %lui438
  %chaingep441 = getelementptr double, double* %cldobadr439, i64 %cldlui440
  %cldlub442 = load double*, double** %lub437
  %cast1443 = ptrtoint double* %chaingep441 to i64
  %cast2444 = ptrtoint double* %cldlub442 to i64
  %cmpop445 = icmp ne i64 %cast1443, %cast2444
  %newdetval446 = zext i1 %cmpop445 to i64
  %ldolddetval447 = load i64, i64* @detectCounter
  %updetval448 = or i64 %newdetval446, %ldolddetval447
  store i64 %updetval448, i64* @detectCounter
  store double* %newgep214, double** %orgbadr436
  store double* %newgep214, double** %lub437
  store i64 0, i64* %lui438
  %cldobadr303 = load double*, double** %orgbadr300
  %cldlui304 = load i64, i64* %lui302
  %chaingep305 = getelementptr double, double* %cldobadr303, i64 %cldlui304
  %cldlub306 = load double*, double** %lub301
  %cast1307 = ptrtoint double* %chaingep305 to i64
  %cast2308 = ptrtoint double* %cldlub306 to i64
  %cmpop309 = icmp ne i64 %cast1307, %cast2308
  %newdetval310 = zext i1 %cmpop309 to i64
  %ldolddetval311 = load i64, i64* @detectCounter
  %updetval312 = or i64 %newdetval310, %ldolddetval311
  store i64 %updetval312, i64* @detectCounter
  store double* %newgep214, double** %orgbadr300
  store double* %newgep214, double** %lub301
  store i64 0, i64* %lui302
  store double* %newgep214, double** %lub199
  store i64 %105, i64* %lui200
  %ldlub228 = load double*, double** %lub216
  %ldlui229 = load i64, i64* %lui217
  %relidx230 = sub i64 %105, %ldlui229
  %newgep231 = getelementptr double, double* %ldlub228, i64 %relidx230
  %cldobadr541 = load double*, double** %orgbadr538
  %cldlui542 = load i64, i64* %lui540
  %chaingep543 = getelementptr double, double* %cldobadr541, i64 %cldlui542
  %cldlub544 = load double*, double** %lub539
  %cast1545 = ptrtoint double* %chaingep543 to i64
  %cast2546 = ptrtoint double* %cldlub544 to i64
  %cmpop547 = icmp ne i64 %cast1545, %cast2546
  %newdetval548 = zext i1 %cmpop547 to i64
  %ldolddetval549 = load i64, i64* @detectCounter
  %updetval550 = or i64 %newdetval548, %ldolddetval549
  store i64 %updetval550, i64* @detectCounter
  store double* %newgep231, double** %orgbadr538
  store double* %newgep231, double** %lub539
  store i64 0, i64* %lui540
  %cldobadr524 = load double*, double** %orgbadr521
  %cldlui525 = load i64, i64* %lui523
  %chaingep526 = getelementptr double, double* %cldobadr524, i64 %cldlui525
  %cldlub527 = load double*, double** %lub522
  %cast1528 = ptrtoint double* %chaingep526 to i64
  %cast2529 = ptrtoint double* %cldlub527 to i64
  %cmpop530 = icmp ne i64 %cast1528, %cast2529
  %newdetval531 = zext i1 %cmpop530 to i64
  %ldolddetval532 = load i64, i64* @detectCounter
  %updetval533 = or i64 %newdetval531, %ldolddetval532
  store i64 %updetval533, i64* @detectCounter
  store double* %newgep231, double** %orgbadr521
  store double* %newgep231, double** %lub522
  store i64 0, i64* %lui523
  %cldobadr456 = load double*, double** %orgbadr453
  %cldlui457 = load i64, i64* %lui455
  %chaingep458 = getelementptr double, double* %cldobadr456, i64 %cldlui457
  %cldlub459 = load double*, double** %lub454
  %cast1460 = ptrtoint double* %chaingep458 to i64
  %cast2461 = ptrtoint double* %cldlub459 to i64
  %cmpop462 = icmp ne i64 %cast1460, %cast2461
  %newdetval463 = zext i1 %cmpop462 to i64
  %ldolddetval464 = load i64, i64* @detectCounter
  %updetval465 = or i64 %newdetval463, %ldolddetval464
  store i64 %updetval465, i64* @detectCounter
  store double* %newgep231, double** %orgbadr453
  store double* %newgep231, double** %lub454
  store i64 0, i64* %lui455
  %cldobadr405 = load double*, double** %orgbadr402
  %cldlui406 = load i64, i64* %lui404
  %chaingep407 = getelementptr double, double* %cldobadr405, i64 %cldlui406
  %cldlub408 = load double*, double** %lub403
  %cast1409 = ptrtoint double* %chaingep407 to i64
  %cast2410 = ptrtoint double* %cldlub408 to i64
  %cmpop411 = icmp ne i64 %cast1409, %cast2410
  %newdetval412 = zext i1 %cmpop411 to i64
  %ldolddetval413 = load i64, i64* @detectCounter
  %updetval414 = or i64 %newdetval412, %ldolddetval413
  store i64 %updetval414, i64* @detectCounter
  store double* %newgep231, double** %orgbadr402
  store double* %newgep231, double** %lub403
  store i64 0, i64* %lui404
  %cldobadr388 = load double*, double** %orgbadr385
  %cldlui389 = load i64, i64* %lui387
  %chaingep390 = getelementptr double, double* %cldobadr388, i64 %cldlui389
  %cldlub391 = load double*, double** %lub386
  %cast1392 = ptrtoint double* %chaingep390 to i64
  %cast2393 = ptrtoint double* %cldlub391 to i64
  %cmpop394 = icmp ne i64 %cast1392, %cast2393
  %newdetval395 = zext i1 %cmpop394 to i64
  %ldolddetval396 = load i64, i64* @detectCounter
  %updetval397 = or i64 %newdetval395, %ldolddetval396
  store i64 %updetval397, i64* @detectCounter
  store double* %newgep231, double** %orgbadr385
  store double* %newgep231, double** %lub386
  store i64 0, i64* %lui387
  %cldobadr320 = load double*, double** %orgbadr317
  %cldlui321 = load i64, i64* %lui319
  %chaingep322 = getelementptr double, double* %cldobadr320, i64 %cldlui321
  %cldlub323 = load double*, double** %lub318
  %cast1324 = ptrtoint double* %chaingep322 to i64
  %cast2325 = ptrtoint double* %cldlub323 to i64
  %cmpop326 = icmp ne i64 %cast1324, %cast2325
  %newdetval327 = zext i1 %cmpop326 to i64
  %ldolddetval328 = load i64, i64* @detectCounter
  %updetval329 = or i64 %newdetval327, %ldolddetval328
  store i64 %updetval329, i64* @detectCounter
  store double* %newgep231, double** %orgbadr317
  store double* %newgep231, double** %lub318
  store i64 0, i64* %lui319
  store double* %newgep231, double** %lub216
  store i64 %105, i64* %lui217
  %ldlub245 = load double*, double** %lub233
  %ldlui246 = load i64, i64* %lui234
  %relidx247 = sub i64 %105, %ldlui246
  %newgep248 = getelementptr double, double* %ldlub245, i64 %relidx247
  %cldobadr473 = load double*, double** %orgbadr470
  %cldlui474 = load i64, i64* %lui472
  %chaingep475 = getelementptr double, double* %cldobadr473, i64 %cldlui474
  %cldlub476 = load double*, double** %lub471
  %cast1477 = ptrtoint double* %chaingep475 to i64
  %cast2478 = ptrtoint double* %cldlub476 to i64
  %cmpop479 = icmp ne i64 %cast1477, %cast2478
  %newdetval480 = zext i1 %cmpop479 to i64
  %ldolddetval481 = load i64, i64* @detectCounter
  %updetval482 = or i64 %newdetval480, %ldolddetval481
  store i64 %updetval482, i64* @detectCounter
  store double* %newgep248, double** %orgbadr470
  store double* %newgep248, double** %lub471
  store i64 0, i64* %lui472
  %cldobadr337 = load double*, double** %orgbadr334
  %cldlui338 = load i64, i64* %lui336
  %chaingep339 = getelementptr double, double* %cldobadr337, i64 %cldlui338
  %cldlub340 = load double*, double** %lub335
  %cast1341 = ptrtoint double* %chaingep339 to i64
  %cast2342 = ptrtoint double* %cldlub340 to i64
  %cmpop343 = icmp ne i64 %cast1341, %cast2342
  %newdetval344 = zext i1 %cmpop343 to i64
  %ldolddetval345 = load i64, i64* @detectCounter
  %updetval346 = or i64 %newdetval344, %ldolddetval345
  store i64 %updetval346, i64* @detectCounter
  store double* %newgep248, double** %orgbadr334
  store double* %newgep248, double** %lub335
  store i64 0, i64* %lui336
  store double* %newgep248, double** %lub233
  store i64 %105, i64* %lui234
  %106 = add nuw nsw i64 %85, 1
  %107 = mul nsw i64 %106, %4
  %ldlub262 = load double*, double** %lub250
  %ldlui263 = load i64, i64* %lui251
  %relidx264 = sub i64 %107, %ldlui263
  %newgep265 = getelementptr double, double* %ldlub262, i64 %relidx264
  %cldobadr490 = load double*, double** %orgbadr487
  %cldlui491 = load i64, i64* %lui489
  %chaingep492 = getelementptr double, double* %cldobadr490, i64 %cldlui491
  %cldlub493 = load double*, double** %lub488
  %cast1494 = ptrtoint double* %chaingep492 to i64
  %cast2495 = ptrtoint double* %cldlub493 to i64
  %cmpop496 = icmp ne i64 %cast1494, %cast2495
  %newdetval497 = zext i1 %cmpop496 to i64
  %ldolddetval498 = load i64, i64* @detectCounter
  %updetval499 = or i64 %newdetval497, %ldolddetval498
  store i64 %updetval499, i64* @detectCounter
  store double* %newgep265, double** %orgbadr487
  store double* %newgep265, double** %lub488
  store i64 0, i64* %lui489
  %cldobadr354 = load double*, double** %orgbadr351
  %cldlui355 = load i64, i64* %lui353
  %chaingep356 = getelementptr double, double* %cldobadr354, i64 %cldlui355
  %cldlub357 = load double*, double** %lub352
  %cast1358 = ptrtoint double* %chaingep356 to i64
  %cast2359 = ptrtoint double* %cldlub357 to i64
  %cmpop360 = icmp ne i64 %cast1358, %cast2359
  %newdetval361 = zext i1 %cmpop360 to i64
  %ldolddetval362 = load i64, i64* @detectCounter
  %updetval363 = or i64 %newdetval361, %ldolddetval362
  store i64 %updetval363, i64* @detectCounter
  store double* %newgep265, double** %orgbadr351
  store double* %newgep265, double** %lub352
  store i64 0, i64* %lui353
  store double* %newgep265, double** %lub250
  store i64 %107, i64* %lui251
  %108 = add nsw i64 %85, -1
  %109 = mul nuw nsw i64 %108, %4
  %ldlub279 = load double*, double** %lub267
  %ldlui280 = load i64, i64* %lui268
  %relidx281 = sub i64 %109, %ldlui280
  %newgep282 = getelementptr double, double* %ldlub279, i64 %relidx281
  %cldobadr507 = load double*, double** %orgbadr504
  %cldlui508 = load i64, i64* %lui506
  %chaingep509 = getelementptr double, double* %cldobadr507, i64 %cldlui508
  %cldlub510 = load double*, double** %lub505
  %cast1511 = ptrtoint double* %chaingep509 to i64
  %cast2512 = ptrtoint double* %cldlub510 to i64
  %cmpop513 = icmp ne i64 %cast1511, %cast2512
  %newdetval514 = zext i1 %cmpop513 to i64
  %ldolddetval515 = load i64, i64* @detectCounter
  %updetval516 = or i64 %newdetval514, %ldolddetval515
  store i64 %updetval516, i64* @detectCounter
  store double* %newgep282, double** %orgbadr504
  store double* %newgep282, double** %lub505
  store i64 0, i64* %lui506
  %cldobadr371 = load double*, double** %orgbadr368
  %cldlui372 = load i64, i64* %lui370
  %chaingep373 = getelementptr double, double* %cldobadr371, i64 %cldlui372
  %cldlub374 = load double*, double** %lub369
  %cast1375 = ptrtoint double* %chaingep373 to i64
  %cast2376 = ptrtoint double* %cldlub374 to i64
  %cmpop377 = icmp ne i64 %cast1375, %cast2376
  %newdetval378 = zext i1 %cmpop377 to i64
  %ldolddetval379 = load i64, i64* @detectCounter
  %updetval380 = or i64 %newdetval378, %ldolddetval379
  store i64 %updetval380, i64* @detectCounter
  store double* %newgep282, double** %orgbadr368
  store double* %newgep282, double** %lub369
  store i64 0, i64* %lui370
  store double* %newgep282, double** %lub267
  store i64 %109, i64* %lui268
  %ldlub296 = load double*, double** %lub284
  %ldlui297 = load i64, i64* %lui285
  %relidx298 = sub i64 %105, %ldlui297
  %newgep299 = getelementptr double, double* %ldlub296, i64 %relidx298
  %cldobadr558 = load double*, double** %orgbadr555
  %cldlui559 = load i64, i64* %lui557
  %chaingep560 = getelementptr double, double* %cldobadr558, i64 %cldlui559
  %cldlub561 = load double*, double** %lub556
  %cast1562 = ptrtoint double* %chaingep560 to i64
  %cast2563 = ptrtoint double* %cldlub561 to i64
  %cmpop564 = icmp ne i64 %cast1562, %cast2563
  %newdetval565 = zext i1 %cmpop564 to i64
  %ldolddetval566 = load i64, i64* @detectCounter
  %updetval567 = or i64 %newdetval565, %ldolddetval566
  store i64 %updetval567, i64* @detectCounter
  store double* %newgep299, double** %orgbadr555
  store double* %newgep299, double** %lub556
  store i64 0, i64* %lui557
  %cldobadr422 = load double*, double** %orgbadr419
  %cldlui423 = load i64, i64* %lui421
  %chaingep424 = getelementptr double, double* %cldobadr422, i64 %cldlui423
  %cldlub425 = load double*, double** %lub420
  %cast1426 = ptrtoint double* %chaingep424 to i64
  %cast2427 = ptrtoint double* %cldlub425 to i64
  %cmpop428 = icmp ne i64 %cast1426, %cast2427
  %newdetval429 = zext i1 %cmpop428 to i64
  %ldolddetval430 = load i64, i64* @detectCounter
  %updetval431 = or i64 %newdetval429, %ldolddetval430
  store i64 %updetval431, i64* @detectCounter
  store double* %newgep299, double** %orgbadr419
  store double* %newgep299, double** %lub420
  store i64 0, i64* %lui421
  store double* %newgep299, double** %lub284
  store i64 %105, i64* %lui285
  br i1 %52, label %168, label %110

; <label>:110:                                    ; preds = %83
  br i1 %54, label %168, label %111

; <label>:111:                                    ; preds = %110
  %112 = icmp ule double* %newgep28, %newgep73
  %113 = icmp ule double* %newgep66, %newgep42
  %114 = and i1 %112, %113
  %115 = icmp ule i8* %newgep35, %96
  %116 = icmp ule i8* %94, %newgep59
  %117 = and i1 %115, %116
  %118 = or i1 %114, %117
  %119 = icmp ule i8* %newgep35, %newgep135
  %120 = icmp ule i8* %newgep111, %newgep59
  %121 = and i1 %119, %120
  %122 = or i1 %118, %121
  %123 = icmp ule i8* %newgep35, %102
  %124 = icmp ule i8* %100, %newgep59
  %125 = and i1 %123, %124
  %126 = or i1 %122, %125
  %127 = icmp ule i8* %newgep35, %newgep197
  %128 = icmp ule i8* %newgep173, %newgep59
  %129 = and i1 %127, %128
  %130 = or i1 %126, %129
  br i1 %130, label %168, label %131

; <label>:131:                                    ; preds = %111
  br label %132

; <label>:132:                                    ; preds = %131, %132
  %133 = phi i64 [ %165, %132 ], [ 0, %131 ]
  %134 = or i64 %133, 1
  %ldlub313 = load double*, double** %lub301
  %ldlui314 = load i64, i64* %lui302
  %relidx315 = sub i64 %134, %ldlui314
  %newgep316 = getelementptr double, double* %ldlub313, i64 %relidx315
  store double* %newgep316, double** %lub301
  store i64 %134, i64* %lui302
  %135 = bitcast double* %newgep316 to <2 x double>*
  %136 = load <2 x double>, <2 x double>* %135, align 8, !tbaa !37, !alias.scope !39
  %ldlub330 = load double*, double** %lub318
  %ldlui331 = load i64, i64* %lui319
  %relidx332 = sub i64 %134, %ldlui331
  %newgep333 = getelementptr double, double* %ldlub330, i64 %relidx332
  store double* %newgep333, double** %lub318
  store i64 %134, i64* %lui319
  %137 = bitcast double* %newgep333 to <2 x double>*
  %138 = load <2 x double>, <2 x double>* %137, align 8, !tbaa !37, !alias.scope !42
  %139 = fmul <2 x double> %138, <double 2.000000e+00, double 2.000000e+00>
  %140 = fsub <2 x double> %136, %139
  %ldlub347 = load double*, double** %lub335
  %ldlui348 = load i64, i64* %lui336
  %relidx349 = sub i64 %134, %ldlui348
  %newgep350 = getelementptr double, double* %ldlub347, i64 %relidx349
  store double* %newgep350, double** %lub335
  store i64 %134, i64* %lui336
  %141 = bitcast double* %newgep350 to <2 x double>*
  %142 = load <2 x double>, <2 x double>* %141, align 8, !tbaa !37, !alias.scope !44
  %143 = fadd <2 x double> %142, %140
  %144 = fmul <2 x double> %143, <double 1.250000e-01, double 1.250000e-01>
  %ldlub364 = load double*, double** %lub352
  %ldlui365 = load i64, i64* %lui353
  %relidx366 = sub i64 %134, %ldlui365
  %newgep367 = getelementptr double, double* %ldlub364, i64 %relidx366
  store double* %newgep367, double** %lub352
  store i64 %134, i64* %lui353
  %145 = bitcast double* %newgep367 to <2 x double>*
  %146 = load <2 x double>, <2 x double>* %145, align 8, !tbaa !37, !alias.scope !46
  %147 = fsub <2 x double> %146, %139
  %ldlub381 = load double*, double** %lub369
  %ldlui382 = load i64, i64* %lui370
  %relidx383 = sub i64 %134, %ldlui382
  %newgep384 = getelementptr double, double* %ldlub381, i64 %relidx383
  store double* %newgep384, double** %lub369
  store i64 %134, i64* %lui370
  %148 = bitcast double* %newgep384 to <2 x double>*
  %149 = load <2 x double>, <2 x double>* %148, align 8, !tbaa !37, !alias.scope !48
  %150 = fadd <2 x double> %147, %149
  %151 = fmul <2 x double> %150, <double 1.250000e-01, double 1.250000e-01>
  %152 = fadd <2 x double> %144, %151
  %153 = add i64 %134, 1
  %ldlub398 = load double*, double** %lub386
  %ldlui399 = load i64, i64* %lui387
  %relidx400 = sub i64 %153, %ldlui399
  %newgep401 = getelementptr double, double* %ldlub398, i64 %relidx400
  store double* %newgep401, double** %lub386
  store i64 %153, i64* %lui387
  %154 = bitcast double* %newgep401 to <2 x double>*
  %155 = load <2 x double>, <2 x double>* %154, align 8, !tbaa !37, !alias.scope !42
  %156 = fsub <2 x double> %155, %139
  %157 = add i64 %134, -1
  %ldlub415 = load double*, double** %lub403
  %ldlui416 = load i64, i64* %lui404
  %relidx417 = sub i64 %157, %ldlui416
  %newgep418 = getelementptr double, double* %ldlub415, i64 %relidx417
  store double* %newgep418, double** %lub403
  store i64 %157, i64* %lui404
  %158 = bitcast double* %newgep418 to <2 x double>*
  %159 = load <2 x double>, <2 x double>* %158, align 8, !tbaa !37, !alias.scope !42
  %160 = fadd <2 x double> %156, %159
  %161 = fmul <2 x double> %160, <double 1.250000e-01, double 1.250000e-01>
  %162 = fadd <2 x double> %152, %161
  %163 = fadd <2 x double> %138, %162
  %ldlub432 = load double*, double** %lub420
  %ldlui433 = load i64, i64* %lui421
  %relidx434 = sub i64 %134, %ldlui433
  %newgep435 = getelementptr double, double* %ldlub432, i64 %relidx434
  store double* %newgep435, double** %lub420
  store i64 %134, i64* %lui421
  %164 = bitcast double* %newgep435 to <2 x double>*
  store <2 x double> %163, <2 x double>* %164, align 8, !tbaa !37, !alias.scope !50, !noalias !52
  %165 = add i64 %133, 2
  %166 = icmp eq i64 %165, %53
  br i1 %166, label %167, label %132, !llvm.loop !53

; <label>:167:                                    ; preds = %132
  br i1 %56, label %197, label %168

; <label>:168:                                    ; preds = %167, %111, %110, %83
  %169 = phi i64 [ 1, %111 ], [ 1, %110 ], [ 1, %83 ], [ %55, %167 ]
  br label %170

; <label>:170:                                    ; preds = %168, %170
  %171 = phi i64 [ %185, %170 ], [ %169, %168 ]
  %ldlub449 = load double*, double** %lub437
  %ldlui450 = load i64, i64* %lui438
  %relidx451 = sub i64 %171, %ldlui450
  %newgep452 = getelementptr double, double* %ldlub449, i64 %relidx451
  store double* %newgep452, double** %lub437
  store i64 %171, i64* %lui438
  %172 = load double, double* %newgep452, align 8, !tbaa !37
  %ldlub466 = load double*, double** %lub454
  %ldlui467 = load i64, i64* %lui455
  %relidx468 = sub i64 %171, %ldlui467
  %newgep469 = getelementptr double, double* %ldlub466, i64 %relidx468
  store double* %newgep469, double** %lub454
  store i64 %171, i64* %lui455
  %173 = load double, double* %newgep469, align 8, !tbaa !37
  %174 = fmul double %173, 2.000000e+00
  %175 = fsub double %172, %174
  %ldlub483 = load double*, double** %lub471
  %ldlui484 = load i64, i64* %lui472
  %relidx485 = sub i64 %171, %ldlui484
  %newgep486 = getelementptr double, double* %ldlub483, i64 %relidx485
  store double* %newgep486, double** %lub471
  store i64 %171, i64* %lui472
  %176 = load double, double* %newgep486, align 8, !tbaa !37
  %177 = fadd double %176, %175
  %178 = fmul double %177, 1.250000e-01
  %ldlub500 = load double*, double** %lub488
  %ldlui501 = load i64, i64* %lui489
  %relidx502 = sub i64 %171, %ldlui501
  %newgep503 = getelementptr double, double* %ldlub500, i64 %relidx502
  store double* %newgep503, double** %lub488
  store i64 %171, i64* %lui489
  %179 = load double, double* %newgep503, align 8, !tbaa !37
  %180 = fsub double %179, %174
  %ldlub517 = load double*, double** %lub505
  %ldlui518 = load i64, i64* %lui506
  %relidx519 = sub i64 %171, %ldlui518
  %newgep520 = getelementptr double, double* %ldlub517, i64 %relidx519
  store double* %newgep520, double** %lub505
  store i64 %171, i64* %lui506
  %181 = load double, double* %newgep520, align 8, !tbaa !37
  %182 = fadd double %180, %181
  %183 = fmul double %182, 1.250000e-01
  %184 = fadd double %178, %183
  %185 = add nuw nsw i64 %171, 1
  %ldlub534 = load double*, double** %lub522
  %ldlui535 = load i64, i64* %lui523
  %relidx536 = sub i64 %185, %ldlui535
  %newgep537 = getelementptr double, double* %ldlub534, i64 %relidx536
  store double* %newgep537, double** %lub522
  store i64 %185, i64* %lui523
  %186 = load double, double* %newgep537, align 8, !tbaa !37
  %187 = fsub double %186, %174
  %188 = add nsw i64 %171, -1
  %ldlub551 = load double*, double** %lub539
  %ldlui552 = load i64, i64* %lui540
  %relidx553 = sub i64 %188, %ldlui552
  %newgep554 = getelementptr double, double* %ldlub551, i64 %relidx553
  store double* %newgep554, double** %lub539
  store i64 %188, i64* %lui540
  %189 = load double, double* %newgep554, align 8, !tbaa !37
  %190 = fadd double %187, %189
  %191 = fmul double %190, 1.250000e-01
  %192 = fadd double %184, %191
  %193 = fadd double %173, %192
  %ldlub568 = load double*, double** %lub556
  %ldlui569 = load i64, i64* %lui557
  %relidx570 = sub i64 %171, %ldlui569
  %newgep571 = getelementptr double, double* %ldlub568, i64 %relidx570
  store double* %newgep571, double** %lub556
  store i64 %171, i64* %lui557
  store double %193, double* %newgep571, align 8, !tbaa !37
  %194 = trunc i64 %185 to i32
  %195 = icmp eq i32 %194, %5
  br i1 %195, label %196, label %170, !llvm.loop !56

; <label>:196:                                    ; preds = %170
  br label %197

; <label>:197:                                    ; preds = %196, %167
  %198 = trunc i64 %106 to i32
  %199 = icmp eq i32 %198, %5
  %200 = add i64 %84, 1
  br i1 %199, label %201, label %83

; <label>:201:                                    ; preds = %197
  %202 = trunc i64 %78 to i32
  %203 = icmp eq i32 %202, %5
  %204 = add i64 %68, 1
  br i1 %203, label %65, label %67

; <label>:205:                                    ; preds = %66, %339
  %206 = phi i64 [ %342, %339 ], [ 0, %66 ]
  %207 = phi i64 [ %216, %339 ], [ 1, %66 ]
  %208 = mul i64 %11, %206
  %209 = add i64 %208, 1
  %210 = add i64 %17, %208
  %211 = add i64 %18, %208
  %212 = add i64 %19, %208
  %213 = add i64 %21, %208
  %214 = add i64 %24, %208
  %215 = add i64 %26, %208
  %216 = add nuw nsw i64 %207, 1
  %217 = mul nsw i64 %216, %7
  %ldlub575 = load double*, double** %lub573
  %ldlui576 = load i64, i64* %lui574
  %relidx577 = sub i64 %217, %ldlui576
  %newgep578 = getelementptr double, double* %ldlub575, i64 %relidx577
  %cldobadr789 = load double*, double** %orgbadr786
  %cldlui790 = load i64, i64* %lui788
  %chaingep791 = getelementptr double, double* %cldobadr789, i64 %cldlui790
  %cldlub792 = load double*, double** %lub787
  %cast1793 = ptrtoint double* %chaingep791 to i64
  %cast2794 = ptrtoint double* %cldlub792 to i64
  %cmpop795 = icmp ne i64 %cast1793, %cast2794
  %newdetval796 = zext i1 %cmpop795 to i64
  %ldolddetval797 = load i64, i64* @detectCounter
  %updetval798 = or i64 %newdetval796, %ldolddetval797
  store i64 %updetval798, i64* @detectCounter
  store double* %newgep578, double** %orgbadr786
  store double* %newgep578, double** %lub787
  store i64 0, i64* %lui788
  store double* %newgep578, double** %lub573
  store i64 %217, i64* %lui574
  %218 = mul nsw i64 %207, %7
  %ldlub582 = load double*, double** %lub580
  %ldlui583 = load i64, i64* %lui581
  %relidx584 = sub i64 %218, %ldlui583
  %newgep585 = getelementptr double, double* %ldlub582, i64 %relidx584
  %cldobadr857 = load double*, double** %orgbadr854
  %cldlui858 = load i64, i64* %lui856
  %chaingep859 = getelementptr double, double* %cldobadr857, i64 %cldlui858
  %cldlub860 = load double*, double** %lub855
  %cast1861 = ptrtoint double* %chaingep859 to i64
  %cast2862 = ptrtoint double* %cldlub860 to i64
  %cmpop863 = icmp ne i64 %cast1861, %cast2862
  %newdetval864 = zext i1 %cmpop863 to i64
  %ldolddetval865 = load i64, i64* @detectCounter
  %updetval866 = or i64 %newdetval864, %ldolddetval865
  store i64 %updetval866, i64* @detectCounter
  store double* %newgep585, double** %orgbadr854
  store double* %newgep585, double** %lub855
  store i64 0, i64* %lui856
  %cldobadr840 = load double*, double** %orgbadr837
  %cldlui841 = load i64, i64* %lui839
  %chaingep842 = getelementptr double, double* %cldobadr840, i64 %cldlui841
  %cldlub843 = load double*, double** %lub838
  %cast1844 = ptrtoint double* %chaingep842 to i64
  %cast2845 = ptrtoint double* %cldlub843 to i64
  %cmpop846 = icmp ne i64 %cast1844, %cast2845
  %newdetval847 = zext i1 %cmpop846 to i64
  %ldolddetval848 = load i64, i64* @detectCounter
  %updetval849 = or i64 %newdetval847, %ldolddetval848
  store i64 %updetval849, i64* @detectCounter
  store double* %newgep585, double** %orgbadr837
  store double* %newgep585, double** %lub838
  store i64 0, i64* %lui839
  %cldobadr806 = load double*, double** %orgbadr803
  %cldlui807 = load i64, i64* %lui805
  %chaingep808 = getelementptr double, double* %cldobadr806, i64 %cldlui807
  %cldlub809 = load double*, double** %lub804
  %cast1810 = ptrtoint double* %chaingep808 to i64
  %cast2811 = ptrtoint double* %cldlub809 to i64
  %cmpop812 = icmp ne i64 %cast1810, %cast2811
  %newdetval813 = zext i1 %cmpop812 to i64
  %ldolddetval814 = load i64, i64* @detectCounter
  %updetval815 = or i64 %newdetval813, %ldolddetval814
  store i64 %updetval815, i64* @detectCounter
  store double* %newgep585, double** %orgbadr803
  store double* %newgep585, double** %lub804
  store i64 0, i64* %lui805
  store double* %newgep585, double** %lub580
  store i64 %218, i64* %lui581
  %219 = add nsw i64 %207, -1
  %220 = mul nsw i64 %219, %7
  %ldlub589 = load double*, double** %lub587
  %ldlui590 = load i64, i64* %lui588
  %relidx591 = sub i64 %220, %ldlui590
  %newgep592 = getelementptr double, double* %ldlub589, i64 %relidx591
  %cldobadr823 = load double*, double** %orgbadr820
  %cldlui824 = load i64, i64* %lui822
  %chaingep825 = getelementptr double, double* %cldobadr823, i64 %cldlui824
  %cldlub826 = load double*, double** %lub821
  %cast1827 = ptrtoint double* %chaingep825 to i64
  %cast2828 = ptrtoint double* %cldlub826 to i64
  %cmpop829 = icmp ne i64 %cast1827, %cast2828
  %newdetval830 = zext i1 %cmpop829 to i64
  %ldolddetval831 = load i64, i64* @detectCounter
  %updetval832 = or i64 %newdetval830, %ldolddetval831
  store i64 %updetval832, i64* @detectCounter
  store double* %newgep592, double** %orgbadr820
  store double* %newgep592, double** %lub821
  store i64 0, i64* %lui822
  store double* %newgep592, double** %lub587
  store i64 %220, i64* %lui588
  %ldlub596 = load double*, double** %lub594
  %ldlui597 = load i64, i64* %lui595
  %relidx598 = sub i64 %218, %ldlui597
  %newgep599 = getelementptr double, double* %ldlub596, i64 %relidx598
  %cldobadr874 = load double*, double** %orgbadr871
  %cldlui875 = load i64, i64* %lui873
  %chaingep876 = getelementptr double, double* %cldobadr874, i64 %cldlui875
  %cldlub877 = load double*, double** %lub872
  %cast1878 = ptrtoint double* %chaingep876 to i64
  %cast2879 = ptrtoint double* %cldlub877 to i64
  %cmpop880 = icmp ne i64 %cast1878, %cast2879
  %newdetval881 = zext i1 %cmpop880 to i64
  %ldolddetval882 = load i64, i64* @detectCounter
  %updetval883 = or i64 %newdetval881, %ldolddetval882
  store i64 %updetval883, i64* @detectCounter
  store double* %newgep599, double** %orgbadr871
  store double* %newgep599, double** %lub872
  store i64 0, i64* %lui873
  store double* %newgep599, double** %lub594
  store i64 %218, i64* %lui595
  br label %221

; <label>:221:                                    ; preds = %335, %205
  %222 = phi i64 [ %338, %335 ], [ 0, %205 ]
  %223 = phi i64 [ %244, %335 ], [ 1, %205 ]
  %224 = mul i64 %4, %222
  %225 = add i64 %209, %224
  %ldlub603 = load double*, double** %lub601
  %ldlui604 = load i64, i64* %lui602
  %relidx605 = sub i64 %225, %ldlui604
  %newgep606 = getelementptr double, double* %ldlub603, i64 %relidx605
  store double* %newgep606, double** %lub601
  store i64 %225, i64* %lui602
  %226 = bitcast double* %newgep606 to i8*
  %cldobadr610 = load i8*, i8** %orgbadr607
  %cldlui611 = load i64, i64* %lui609
  %chaingep612 = getelementptr i8, i8* %cldobadr610, i64 %cldlui611
  %cldlub613 = load i8*, i8** %lub608
  %cast1614 = ptrtoint i8* %chaingep612 to i64
  %cast2615 = ptrtoint i8* %cldlub613 to i64
  %cmpop616 = icmp ne i64 %cast1614, %cast2615
  %newdetval617 = zext i1 %cmpop616 to i64
  %ldolddetval618 = load i64, i64* @detectCounter
  %updetval619 = or i64 %newdetval617, %ldolddetval618
  store i64 %updetval619, i64* @detectCounter
  store i8* %226, i8** %orgbadr607
  store i8* %226, i8** %lub608
  store i64 0, i64* %lui609
  %ldlub620 = load i8*, i8** %lub608
  %ldlui621 = load i64, i64* %lui609
  %relidx622 = sub i64 %14, %ldlui621
  %newgep623 = getelementptr i8, i8* %ldlub620, i64 %relidx622
  store i8* %newgep623, i8** %lub608
  store i64 %14, i64* %lui609
  %227 = add i64 %210, %224
  %ldlub627 = load double*, double** %lub625
  %ldlui628 = load i64, i64* %lui626
  %relidx629 = sub i64 %227, %ldlui628
  %newgep630 = getelementptr double, double* %ldlub627, i64 %relidx629
  store double* %newgep630, double** %lub625
  store i64 %227, i64* %lui626
  %228 = bitcast double* %newgep630 to i8*
  %cldobadr634 = load i8*, i8** %orgbadr631
  %cldlui635 = load i64, i64* %lui633
  %chaingep636 = getelementptr i8, i8* %cldobadr634, i64 %cldlui635
  %cldlub637 = load i8*, i8** %lub632
  %cast1638 = ptrtoint i8* %chaingep636 to i64
  %cast2639 = ptrtoint i8* %cldlub637 to i64
  %cmpop640 = icmp ne i64 %cast1638, %cast2639
  %newdetval641 = zext i1 %cmpop640 to i64
  %ldolddetval642 = load i64, i64* @detectCounter
  %updetval643 = or i64 %newdetval641, %ldolddetval642
  store i64 %updetval643, i64* @detectCounter
  store i8* %228, i8** %orgbadr631
  store i8* %228, i8** %lub632
  store i64 0, i64* %lui633
  %ldlub644 = load i8*, i8** %lub632
  %ldlui645 = load i64, i64* %lui633
  %relidx646 = sub i64 %14, %ldlui645
  %newgep647 = getelementptr i8, i8* %ldlub644, i64 %relidx646
  store i8* %newgep647, i8** %lub632
  store i64 %14, i64* %lui633
  %229 = add i64 %208, %224
  %ldlub651 = load double*, double** %lub649
  %ldlui652 = load i64, i64* %lui650
  %relidx653 = sub i64 %229, %ldlui652
  %newgep654 = getelementptr double, double* %ldlub651, i64 %relidx653
  store double* %newgep654, double** %lub649
  store i64 %229, i64* %lui650
  %230 = add i64 %211, %224
  %ldlub658 = load double*, double** %lub656
  %ldlui659 = load i64, i64* %lui657
  %relidx660 = sub i64 %230, %ldlui659
  %newgep661 = getelementptr double, double* %ldlub658, i64 %relidx660
  store double* %newgep661, double** %lub656
  store i64 %230, i64* %lui657
  %231 = add i64 %212, %224
  %ldlub665 = load double*, double** %lub663
  %ldlui666 = load i64, i64* %lui664
  %relidx667 = sub i64 %231, %ldlui666
  %newgep668 = getelementptr double, double* %ldlub665, i64 %relidx667
  store double* %newgep668, double** %lub663
  store i64 %231, i64* %lui664
  %232 = bitcast double* %newgep668 to i8*
  %233 = add i64 %213, %224
  %ldlub672 = load double*, double** %lub670
  %ldlui673 = load i64, i64* %lui671
  %relidx674 = sub i64 %233, %ldlui673
  %newgep675 = getelementptr double, double* %ldlub672, i64 %relidx674
  store double* %newgep675, double** %lub670
  store i64 %233, i64* %lui671
  %234 = bitcast double* %newgep675 to i8*
  %ldlub679 = load double*, double** %lub677
  %ldlui680 = load i64, i64* %lui678
  %relidx681 = sub i64 %225, %ldlui680
  %newgep682 = getelementptr double, double* %ldlub679, i64 %relidx681
  store double* %newgep682, double** %lub677
  store i64 %225, i64* %lui678
  %235 = bitcast double* %newgep682 to i8*
  %cldobadr686 = load i8*, i8** %orgbadr683
  %cldlui687 = load i64, i64* %lui685
  %chaingep688 = getelementptr i8, i8* %cldobadr686, i64 %cldlui687
  %cldlub689 = load i8*, i8** %lub684
  %cast1690 = ptrtoint i8* %chaingep688 to i64
  %cast2691 = ptrtoint i8* %cldlub689 to i64
  %cmpop692 = icmp ne i64 %cast1690, %cast2691
  %newdetval693 = zext i1 %cmpop692 to i64
  %ldolddetval694 = load i64, i64* @detectCounter
  %updetval695 = or i64 %newdetval693, %ldolddetval694
  store i64 %updetval695, i64* @detectCounter
  store i8* %235, i8** %orgbadr683
  store i8* %235, i8** %lub684
  store i64 0, i64* %lui685
  %ldlub696 = load i8*, i8** %lub684
  %ldlui697 = load i64, i64* %lui685
  %relidx698 = sub i64 %23, %ldlui697
  %newgep699 = getelementptr i8, i8* %ldlub696, i64 %relidx698
  store i8* %newgep699, i8** %lub684
  store i64 %23, i64* %lui685
  %ldlub703 = load double*, double** %lub701
  %ldlui704 = load i64, i64* %lui702
  %relidx705 = sub i64 %227, %ldlui704
  %newgep706 = getelementptr double, double* %ldlub703, i64 %relidx705
  store double* %newgep706, double** %lub701
  store i64 %227, i64* %lui702
  %236 = bitcast double* %newgep706 to i8*
  %cldobadr710 = load i8*, i8** %orgbadr707
  %cldlui711 = load i64, i64* %lui709
  %chaingep712 = getelementptr i8, i8* %cldobadr710, i64 %cldlui711
  %cldlub713 = load i8*, i8** %lub708
  %cast1714 = ptrtoint i8* %chaingep712 to i64
  %cast2715 = ptrtoint i8* %cldlub713 to i64
  %cmpop716 = icmp ne i64 %cast1714, %cast2715
  %newdetval717 = zext i1 %cmpop716 to i64
  %ldolddetval718 = load i64, i64* @detectCounter
  %updetval719 = or i64 %newdetval717, %ldolddetval718
  store i64 %updetval719, i64* @detectCounter
  store i8* %236, i8** %orgbadr707
  store i8* %236, i8** %lub708
  store i64 0, i64* %lui709
  %ldlub720 = load i8*, i8** %lub708
  %ldlui721 = load i64, i64* %lui709
  %relidx722 = sub i64 %23, %ldlui721
  %newgep723 = getelementptr i8, i8* %ldlub720, i64 %relidx722
  store i8* %newgep723, i8** %lub708
  store i64 %23, i64* %lui709
  %237 = add i64 %214, %224
  %ldlub727 = load double*, double** %lub725
  %ldlui728 = load i64, i64* %lui726
  %relidx729 = sub i64 %237, %ldlui728
  %newgep730 = getelementptr double, double* %ldlub727, i64 %relidx729
  store double* %newgep730, double** %lub725
  store i64 %237, i64* %lui726
  %238 = bitcast double* %newgep730 to i8*
  %239 = add i64 %215, %224
  %ldlub734 = load double*, double** %lub732
  %ldlui735 = load i64, i64* %lui733
  %relidx736 = sub i64 %239, %ldlui735
  %newgep737 = getelementptr double, double* %ldlub734, i64 %relidx736
  store double* %newgep737, double** %lub732
  store i64 %239, i64* %lui733
  %240 = bitcast double* %newgep737 to i8*
  %ldlub741 = load double*, double** %lub739
  %ldlui742 = load i64, i64* %lui740
  %relidx743 = sub i64 %225, %ldlui742
  %newgep744 = getelementptr double, double* %ldlub741, i64 %relidx743
  store double* %newgep744, double** %lub739
  store i64 %225, i64* %lui740
  %241 = bitcast double* %newgep744 to i8*
  %cldobadr748 = load i8*, i8** %orgbadr745
  %cldlui749 = load i64, i64* %lui747
  %chaingep750 = getelementptr i8, i8* %cldobadr748, i64 %cldlui749
  %cldlub751 = load i8*, i8** %lub746
  %cast1752 = ptrtoint i8* %chaingep750 to i64
  %cast2753 = ptrtoint i8* %cldlub751 to i64
  %cmpop754 = icmp ne i64 %cast1752, %cast2753
  %newdetval755 = zext i1 %cmpop754 to i64
  %ldolddetval756 = load i64, i64* @detectCounter
  %updetval757 = or i64 %newdetval755, %ldolddetval756
  store i64 %updetval757, i64* @detectCounter
  store i8* %241, i8** %orgbadr745
  store i8* %241, i8** %lub746
  store i64 0, i64* %lui747
  %ldlub758 = load i8*, i8** %lub746
  %ldlui759 = load i64, i64* %lui747
  %relidx760 = sub i64 %29, %ldlui759
  %newgep761 = getelementptr i8, i8* %ldlub758, i64 %relidx760
  store i8* %newgep761, i8** %lub746
  store i64 %29, i64* %lui747
  %ldlub765 = load double*, double** %lub763
  %ldlui766 = load i64, i64* %lui764
  %relidx767 = sub i64 %227, %ldlui766
  %newgep768 = getelementptr double, double* %ldlub765, i64 %relidx767
  store double* %newgep768, double** %lub763
  store i64 %227, i64* %lui764
  %242 = bitcast double* %newgep768 to i8*
  %cldobadr772 = load i8*, i8** %orgbadr769
  %cldlui773 = load i64, i64* %lui771
  %chaingep774 = getelementptr i8, i8* %cldobadr772, i64 %cldlui773
  %cldlub775 = load i8*, i8** %lub770
  %cast1776 = ptrtoint i8* %chaingep774 to i64
  %cast2777 = ptrtoint i8* %cldlub775 to i64
  %cmpop778 = icmp ne i64 %cast1776, %cast2777
  %newdetval779 = zext i1 %cmpop778 to i64
  %ldolddetval780 = load i64, i64* @detectCounter
  %updetval781 = or i64 %newdetval779, %ldolddetval780
  store i64 %updetval781, i64* @detectCounter
  store i8* %242, i8** %orgbadr769
  store i8* %242, i8** %lub770
  store i64 0, i64* %lui771
  %ldlub782 = load i8*, i8** %lub770
  %ldlui783 = load i64, i64* %lui771
  %relidx784 = sub i64 %29, %ldlui783
  %newgep785 = getelementptr i8, i8* %ldlub782, i64 %relidx784
  store i8* %newgep785, i8** %lub770
  store i64 %29, i64* %lui771
  %243 = mul nuw nsw i64 %223, %4
  %ldlub799 = load double*, double** %lub787
  %ldlui800 = load i64, i64* %lui788
  %relidx801 = sub i64 %243, %ldlui800
  %newgep802 = getelementptr double, double* %ldlub799, i64 %relidx801
  %cldobadr1027 = load double*, double** %orgbadr1024
  %cldlui1028 = load i64, i64* %lui1026
  %chaingep1029 = getelementptr double, double* %cldobadr1027, i64 %cldlui1028
  %cldlub1030 = load double*, double** %lub1025
  %cast11031 = ptrtoint double* %chaingep1029 to i64
  %cast21032 = ptrtoint double* %cldlub1030 to i64
  %cmpop1033 = icmp ne i64 %cast11031, %cast21032
  %newdetval1034 = zext i1 %cmpop1033 to i64
  %ldolddetval1035 = load i64, i64* @detectCounter
  %updetval1036 = or i64 %newdetval1034, %ldolddetval1035
  store i64 %updetval1036, i64* @detectCounter
  store double* %newgep802, double** %orgbadr1024
  store double* %newgep802, double** %lub1025
  store i64 0, i64* %lui1026
  %cldobadr891 = load double*, double** %orgbadr888
  %cldlui892 = load i64, i64* %lui890
  %chaingep893 = getelementptr double, double* %cldobadr891, i64 %cldlui892
  %cldlub894 = load double*, double** %lub889
  %cast1895 = ptrtoint double* %chaingep893 to i64
  %cast2896 = ptrtoint double* %cldlub894 to i64
  %cmpop897 = icmp ne i64 %cast1895, %cast2896
  %newdetval898 = zext i1 %cmpop897 to i64
  %ldolddetval899 = load i64, i64* @detectCounter
  %updetval900 = or i64 %newdetval898, %ldolddetval899
  store i64 %updetval900, i64* @detectCounter
  store double* %newgep802, double** %orgbadr888
  store double* %newgep802, double** %lub889
  store i64 0, i64* %lui890
  store double* %newgep802, double** %lub787
  store i64 %243, i64* %lui788
  %ldlub816 = load double*, double** %lub804
  %ldlui817 = load i64, i64* %lui805
  %relidx818 = sub i64 %243, %ldlui817
  %newgep819 = getelementptr double, double* %ldlub816, i64 %relidx818
  %cldobadr1129 = load double*, double** %orgbadr1126
  %cldlui1130 = load i64, i64* %lui1128
  %chaingep1131 = getelementptr double, double* %cldobadr1129, i64 %cldlui1130
  %cldlub1132 = load double*, double** %lub1127
  %cast11133 = ptrtoint double* %chaingep1131 to i64
  %cast21134 = ptrtoint double* %cldlub1132 to i64
  %cmpop1135 = icmp ne i64 %cast11133, %cast21134
  %newdetval1136 = zext i1 %cmpop1135 to i64
  %ldolddetval1137 = load i64, i64* @detectCounter
  %updetval1138 = or i64 %newdetval1136, %ldolddetval1137
  store i64 %updetval1138, i64* @detectCounter
  store double* %newgep819, double** %orgbadr1126
  store double* %newgep819, double** %lub1127
  store i64 0, i64* %lui1128
  %cldobadr1112 = load double*, double** %orgbadr1109
  %cldlui1113 = load i64, i64* %lui1111
  %chaingep1114 = getelementptr double, double* %cldobadr1112, i64 %cldlui1113
  %cldlub1115 = load double*, double** %lub1110
  %cast11116 = ptrtoint double* %chaingep1114 to i64
  %cast21117 = ptrtoint double* %cldlub1115 to i64
  %cmpop1118 = icmp ne i64 %cast11116, %cast21117
  %newdetval1119 = zext i1 %cmpop1118 to i64
  %ldolddetval1120 = load i64, i64* @detectCounter
  %updetval1121 = or i64 %newdetval1119, %ldolddetval1120
  store i64 %updetval1121, i64* @detectCounter
  store double* %newgep819, double** %orgbadr1109
  store double* %newgep819, double** %lub1110
  store i64 0, i64* %lui1111
  %cldobadr1044 = load double*, double** %orgbadr1041
  %cldlui1045 = load i64, i64* %lui1043
  %chaingep1046 = getelementptr double, double* %cldobadr1044, i64 %cldlui1045
  %cldlub1047 = load double*, double** %lub1042
  %cast11048 = ptrtoint double* %chaingep1046 to i64
  %cast21049 = ptrtoint double* %cldlub1047 to i64
  %cmpop1050 = icmp ne i64 %cast11048, %cast21049
  %newdetval1051 = zext i1 %cmpop1050 to i64
  %ldolddetval1052 = load i64, i64* @detectCounter
  %updetval1053 = or i64 %newdetval1051, %ldolddetval1052
  store i64 %updetval1053, i64* @detectCounter
  store double* %newgep819, double** %orgbadr1041
  store double* %newgep819, double** %lub1042
  store i64 0, i64* %lui1043
  %cldobadr993 = load double*, double** %orgbadr990
  %cldlui994 = load i64, i64* %lui992
  %chaingep995 = getelementptr double, double* %cldobadr993, i64 %cldlui994
  %cldlub996 = load double*, double** %lub991
  %cast1997 = ptrtoint double* %chaingep995 to i64
  %cast2998 = ptrtoint double* %cldlub996 to i64
  %cmpop999 = icmp ne i64 %cast1997, %cast2998
  %newdetval1000 = zext i1 %cmpop999 to i64
  %ldolddetval1001 = load i64, i64* @detectCounter
  %updetval1002 = or i64 %newdetval1000, %ldolddetval1001
  store i64 %updetval1002, i64* @detectCounter
  store double* %newgep819, double** %orgbadr990
  store double* %newgep819, double** %lub991
  store i64 0, i64* %lui992
  %cldobadr976 = load double*, double** %orgbadr973
  %cldlui977 = load i64, i64* %lui975
  %chaingep978 = getelementptr double, double* %cldobadr976, i64 %cldlui977
  %cldlub979 = load double*, double** %lub974
  %cast1980 = ptrtoint double* %chaingep978 to i64
  %cast2981 = ptrtoint double* %cldlub979 to i64
  %cmpop982 = icmp ne i64 %cast1980, %cast2981
  %newdetval983 = zext i1 %cmpop982 to i64
  %ldolddetval984 = load i64, i64* @detectCounter
  %updetval985 = or i64 %newdetval983, %ldolddetval984
  store i64 %updetval985, i64* @detectCounter
  store double* %newgep819, double** %orgbadr973
  store double* %newgep819, double** %lub974
  store i64 0, i64* %lui975
  %cldobadr908 = load double*, double** %orgbadr905
  %cldlui909 = load i64, i64* %lui907
  %chaingep910 = getelementptr double, double* %cldobadr908, i64 %cldlui909
  %cldlub911 = load double*, double** %lub906
  %cast1912 = ptrtoint double* %chaingep910 to i64
  %cast2913 = ptrtoint double* %cldlub911 to i64
  %cmpop914 = icmp ne i64 %cast1912, %cast2913
  %newdetval915 = zext i1 %cmpop914 to i64
  %ldolddetval916 = load i64, i64* @detectCounter
  %updetval917 = or i64 %newdetval915, %ldolddetval916
  store i64 %updetval917, i64* @detectCounter
  store double* %newgep819, double** %orgbadr905
  store double* %newgep819, double** %lub906
  store i64 0, i64* %lui907
  store double* %newgep819, double** %lub804
  store i64 %243, i64* %lui805
  %ldlub833 = load double*, double** %lub821
  %ldlui834 = load i64, i64* %lui822
  %relidx835 = sub i64 %243, %ldlui834
  %newgep836 = getelementptr double, double* %ldlub833, i64 %relidx835
  %cldobadr1061 = load double*, double** %orgbadr1058
  %cldlui1062 = load i64, i64* %lui1060
  %chaingep1063 = getelementptr double, double* %cldobadr1061, i64 %cldlui1062
  %cldlub1064 = load double*, double** %lub1059
  %cast11065 = ptrtoint double* %chaingep1063 to i64
  %cast21066 = ptrtoint double* %cldlub1064 to i64
  %cmpop1067 = icmp ne i64 %cast11065, %cast21066
  %newdetval1068 = zext i1 %cmpop1067 to i64
  %ldolddetval1069 = load i64, i64* @detectCounter
  %updetval1070 = or i64 %newdetval1068, %ldolddetval1069
  store i64 %updetval1070, i64* @detectCounter
  store double* %newgep836, double** %orgbadr1058
  store double* %newgep836, double** %lub1059
  store i64 0, i64* %lui1060
  %cldobadr925 = load double*, double** %orgbadr922
  %cldlui926 = load i64, i64* %lui924
  %chaingep927 = getelementptr double, double* %cldobadr925, i64 %cldlui926
  %cldlub928 = load double*, double** %lub923
  %cast1929 = ptrtoint double* %chaingep927 to i64
  %cast2930 = ptrtoint double* %cldlub928 to i64
  %cmpop931 = icmp ne i64 %cast1929, %cast2930
  %newdetval932 = zext i1 %cmpop931 to i64
  %ldolddetval933 = load i64, i64* @detectCounter
  %updetval934 = or i64 %newdetval932, %ldolddetval933
  store i64 %updetval934, i64* @detectCounter
  store double* %newgep836, double** %orgbadr922
  store double* %newgep836, double** %lub923
  store i64 0, i64* %lui924
  store double* %newgep836, double** %lub821
  store i64 %243, i64* %lui822
  %244 = add nuw nsw i64 %223, 1
  %245 = mul nsw i64 %244, %4
  %ldlub850 = load double*, double** %lub838
  %ldlui851 = load i64, i64* %lui839
  %relidx852 = sub i64 %245, %ldlui851
  %newgep853 = getelementptr double, double* %ldlub850, i64 %relidx852
  %cldobadr1078 = load double*, double** %orgbadr1075
  %cldlui1079 = load i64, i64* %lui1077
  %chaingep1080 = getelementptr double, double* %cldobadr1078, i64 %cldlui1079
  %cldlub1081 = load double*, double** %lub1076
  %cast11082 = ptrtoint double* %chaingep1080 to i64
  %cast21083 = ptrtoint double* %cldlub1081 to i64
  %cmpop1084 = icmp ne i64 %cast11082, %cast21083
  %newdetval1085 = zext i1 %cmpop1084 to i64
  %ldolddetval1086 = load i64, i64* @detectCounter
  %updetval1087 = or i64 %newdetval1085, %ldolddetval1086
  store i64 %updetval1087, i64* @detectCounter
  store double* %newgep853, double** %orgbadr1075
  store double* %newgep853, double** %lub1076
  store i64 0, i64* %lui1077
  %cldobadr942 = load double*, double** %orgbadr939
  %cldlui943 = load i64, i64* %lui941
  %chaingep944 = getelementptr double, double* %cldobadr942, i64 %cldlui943
  %cldlub945 = load double*, double** %lub940
  %cast1946 = ptrtoint double* %chaingep944 to i64
  %cast2947 = ptrtoint double* %cldlub945 to i64
  %cmpop948 = icmp ne i64 %cast1946, %cast2947
  %newdetval949 = zext i1 %cmpop948 to i64
  %ldolddetval950 = load i64, i64* @detectCounter
  %updetval951 = or i64 %newdetval949, %ldolddetval950
  store i64 %updetval951, i64* @detectCounter
  store double* %newgep853, double** %orgbadr939
  store double* %newgep853, double** %lub940
  store i64 0, i64* %lui941
  store double* %newgep853, double** %lub838
  store i64 %245, i64* %lui839
  %246 = add nsw i64 %223, -1
  %247 = mul nuw nsw i64 %246, %4
  %ldlub867 = load double*, double** %lub855
  %ldlui868 = load i64, i64* %lui856
  %relidx869 = sub i64 %247, %ldlui868
  %newgep870 = getelementptr double, double* %ldlub867, i64 %relidx869
  %cldobadr1095 = load double*, double** %orgbadr1092
  %cldlui1096 = load i64, i64* %lui1094
  %chaingep1097 = getelementptr double, double* %cldobadr1095, i64 %cldlui1096
  %cldlub1098 = load double*, double** %lub1093
  %cast11099 = ptrtoint double* %chaingep1097 to i64
  %cast21100 = ptrtoint double* %cldlub1098 to i64
  %cmpop1101 = icmp ne i64 %cast11099, %cast21100
  %newdetval1102 = zext i1 %cmpop1101 to i64
  %ldolddetval1103 = load i64, i64* @detectCounter
  %updetval1104 = or i64 %newdetval1102, %ldolddetval1103
  store i64 %updetval1104, i64* @detectCounter
  store double* %newgep870, double** %orgbadr1092
  store double* %newgep870, double** %lub1093
  store i64 0, i64* %lui1094
  %cldobadr959 = load double*, double** %orgbadr956
  %cldlui960 = load i64, i64* %lui958
  %chaingep961 = getelementptr double, double* %cldobadr959, i64 %cldlui960
  %cldlub962 = load double*, double** %lub957
  %cast1963 = ptrtoint double* %chaingep961 to i64
  %cast2964 = ptrtoint double* %cldlub962 to i64
  %cmpop965 = icmp ne i64 %cast1963, %cast2964
  %newdetval966 = zext i1 %cmpop965 to i64
  %ldolddetval967 = load i64, i64* @detectCounter
  %updetval968 = or i64 %newdetval966, %ldolddetval967
  store i64 %updetval968, i64* @detectCounter
  store double* %newgep870, double** %orgbadr956
  store double* %newgep870, double** %lub957
  store i64 0, i64* %lui958
  store double* %newgep870, double** %lub855
  store i64 %247, i64* %lui856
  %ldlub884 = load double*, double** %lub872
  %ldlui885 = load i64, i64* %lui873
  %relidx886 = sub i64 %243, %ldlui885
  %newgep887 = getelementptr double, double* %ldlub884, i64 %relidx886
  %cldobadr1146 = load double*, double** %orgbadr1143
  %cldlui1147 = load i64, i64* %lui1145
  %chaingep1148 = getelementptr double, double* %cldobadr1146, i64 %cldlui1147
  %cldlub1149 = load double*, double** %lub1144
  %cast11150 = ptrtoint double* %chaingep1148 to i64
  %cast21151 = ptrtoint double* %cldlub1149 to i64
  %cmpop1152 = icmp ne i64 %cast11150, %cast21151
  %newdetval1153 = zext i1 %cmpop1152 to i64
  %ldolddetval1154 = load i64, i64* @detectCounter
  %updetval1155 = or i64 %newdetval1153, %ldolddetval1154
  store i64 %updetval1155, i64* @detectCounter
  store double* %newgep887, double** %orgbadr1143
  store double* %newgep887, double** %lub1144
  store i64 0, i64* %lui1145
  %cldobadr1010 = load double*, double** %orgbadr1007
  %cldlui1011 = load i64, i64* %lui1009
  %chaingep1012 = getelementptr double, double* %cldobadr1010, i64 %cldlui1011
  %cldlub1013 = load double*, double** %lub1008
  %cast11014 = ptrtoint double* %chaingep1012 to i64
  %cast21015 = ptrtoint double* %cldlub1013 to i64
  %cmpop1016 = icmp ne i64 %cast11014, %cast21015
  %newdetval1017 = zext i1 %cmpop1016 to i64
  %ldolddetval1018 = load i64, i64* @detectCounter
  %updetval1019 = or i64 %newdetval1017, %ldolddetval1018
  store i64 %updetval1019, i64* @detectCounter
  store double* %newgep887, double** %orgbadr1007
  store double* %newgep887, double** %lub1008
  store i64 0, i64* %lui1009
  store double* %newgep887, double** %lub872
  store i64 %243, i64* %lui873
  br i1 %57, label %306, label %248

; <label>:248:                                    ; preds = %221
  br i1 %59, label %306, label %249

; <label>:249:                                    ; preds = %248
  %250 = icmp ule double* %newgep606, %newgep661
  %251 = icmp ule double* %newgep654, %newgep630
  %252 = and i1 %250, %251
  %253 = icmp ule i8* %newgep623, %234
  %254 = icmp ule i8* %232, %newgep647
  %255 = and i1 %253, %254
  %256 = or i1 %252, %255
  %257 = icmp ule i8* %newgep623, %newgep723
  %258 = icmp ule i8* %newgep699, %newgep647
  %259 = and i1 %257, %258
  %260 = or i1 %256, %259
  %261 = icmp ule i8* %newgep623, %240
  %262 = icmp ule i8* %238, %newgep647
  %263 = and i1 %261, %262
  %264 = or i1 %260, %263
  %265 = icmp ule i8* %newgep623, %newgep785
  %266 = icmp ule i8* %newgep761, %newgep647
  %267 = and i1 %265, %266
  %268 = or i1 %264, %267
  br i1 %268, label %306, label %269

; <label>:269:                                    ; preds = %249
  br label %270

; <label>:270:                                    ; preds = %269, %270
  %271 = phi i64 [ %303, %270 ], [ 0, %269 ]
  %272 = or i64 %271, 1
  %ldlub901 = load double*, double** %lub889
  %ldlui902 = load i64, i64* %lui890
  %relidx903 = sub i64 %272, %ldlui902
  %newgep904 = getelementptr double, double* %ldlub901, i64 %relidx903
  store double* %newgep904, double** %lub889
  store i64 %272, i64* %lui890
  %273 = bitcast double* %newgep904 to <2 x double>*
  %274 = load <2 x double>, <2 x double>* %273, align 8, !tbaa !37, !alias.scope !57
  %ldlub918 = load double*, double** %lub906
  %ldlui919 = load i64, i64* %lui907
  %relidx920 = sub i64 %272, %ldlui919
  %newgep921 = getelementptr double, double* %ldlub918, i64 %relidx920
  store double* %newgep921, double** %lub906
  store i64 %272, i64* %lui907
  %275 = bitcast double* %newgep921 to <2 x double>*
  %276 = load <2 x double>, <2 x double>* %275, align 8, !tbaa !37, !alias.scope !60
  %277 = fmul <2 x double> %276, <double 2.000000e+00, double 2.000000e+00>
  %278 = fsub <2 x double> %274, %277
  %ldlub935 = load double*, double** %lub923
  %ldlui936 = load i64, i64* %lui924
  %relidx937 = sub i64 %272, %ldlui936
  %newgep938 = getelementptr double, double* %ldlub935, i64 %relidx937
  store double* %newgep938, double** %lub923
  store i64 %272, i64* %lui924
  %279 = bitcast double* %newgep938 to <2 x double>*
  %280 = load <2 x double>, <2 x double>* %279, align 8, !tbaa !37, !alias.scope !62
  %281 = fadd <2 x double> %280, %278
  %282 = fmul <2 x double> %281, <double 1.250000e-01, double 1.250000e-01>
  %ldlub952 = load double*, double** %lub940
  %ldlui953 = load i64, i64* %lui941
  %relidx954 = sub i64 %272, %ldlui953
  %newgep955 = getelementptr double, double* %ldlub952, i64 %relidx954
  store double* %newgep955, double** %lub940
  store i64 %272, i64* %lui941
  %283 = bitcast double* %newgep955 to <2 x double>*
  %284 = load <2 x double>, <2 x double>* %283, align 8, !tbaa !37, !alias.scope !64
  %285 = fsub <2 x double> %284, %277
  %ldlub969 = load double*, double** %lub957
  %ldlui970 = load i64, i64* %lui958
  %relidx971 = sub i64 %272, %ldlui970
  %newgep972 = getelementptr double, double* %ldlub969, i64 %relidx971
  store double* %newgep972, double** %lub957
  store i64 %272, i64* %lui958
  %286 = bitcast double* %newgep972 to <2 x double>*
  %287 = load <2 x double>, <2 x double>* %286, align 8, !tbaa !37, !alias.scope !66
  %288 = fadd <2 x double> %285, %287
  %289 = fmul <2 x double> %288, <double 1.250000e-01, double 1.250000e-01>
  %290 = fadd <2 x double> %282, %289
  %291 = add i64 %272, 1
  %ldlub986 = load double*, double** %lub974
  %ldlui987 = load i64, i64* %lui975
  %relidx988 = sub i64 %291, %ldlui987
  %newgep989 = getelementptr double, double* %ldlub986, i64 %relidx988
  store double* %newgep989, double** %lub974
  store i64 %291, i64* %lui975
  %292 = bitcast double* %newgep989 to <2 x double>*
  %293 = load <2 x double>, <2 x double>* %292, align 8, !tbaa !37, !alias.scope !60
  %294 = fsub <2 x double> %293, %277
  %295 = add i64 %272, -1
  %ldlub1003 = load double*, double** %lub991
  %ldlui1004 = load i64, i64* %lui992
  %relidx1005 = sub i64 %295, %ldlui1004
  %newgep1006 = getelementptr double, double* %ldlub1003, i64 %relidx1005
  store double* %newgep1006, double** %lub991
  store i64 %295, i64* %lui992
  %296 = bitcast double* %newgep1006 to <2 x double>*
  %297 = load <2 x double>, <2 x double>* %296, align 8, !tbaa !37, !alias.scope !60
  %298 = fadd <2 x double> %294, %297
  %299 = fmul <2 x double> %298, <double 1.250000e-01, double 1.250000e-01>
  %300 = fadd <2 x double> %290, %299
  %301 = fadd <2 x double> %276, %300
  %ldlub1020 = load double*, double** %lub1008
  %ldlui1021 = load i64, i64* %lui1009
  %relidx1022 = sub i64 %272, %ldlui1021
  %newgep1023 = getelementptr double, double* %ldlub1020, i64 %relidx1022
  store double* %newgep1023, double** %lub1008
  store i64 %272, i64* %lui1009
  %302 = bitcast double* %newgep1023 to <2 x double>*
  store <2 x double> %301, <2 x double>* %302, align 8, !tbaa !37, !alias.scope !68, !noalias !70
  %303 = add i64 %271, 2
  %304 = icmp eq i64 %303, %58
  br i1 %304, label %305, label %270, !llvm.loop !71

; <label>:305:                                    ; preds = %270
  br i1 %61, label %335, label %306

; <label>:306:                                    ; preds = %305, %249, %248, %221
  %307 = phi i64 [ 1, %249 ], [ 1, %248 ], [ 1, %221 ], [ %60, %305 ]
  br label %308

; <label>:308:                                    ; preds = %306, %308
  %309 = phi i64 [ %323, %308 ], [ %307, %306 ]
  %ldlub1037 = load double*, double** %lub1025
  %ldlui1038 = load i64, i64* %lui1026
  %relidx1039 = sub i64 %309, %ldlui1038
  %newgep1040 = getelementptr double, double* %ldlub1037, i64 %relidx1039
  store double* %newgep1040, double** %lub1025
  store i64 %309, i64* %lui1026
  %310 = load double, double* %newgep1040, align 8, !tbaa !37
  %ldlub1054 = load double*, double** %lub1042
  %ldlui1055 = load i64, i64* %lui1043
  %relidx1056 = sub i64 %309, %ldlui1055
  %newgep1057 = getelementptr double, double* %ldlub1054, i64 %relidx1056
  store double* %newgep1057, double** %lub1042
  store i64 %309, i64* %lui1043
  %311 = load double, double* %newgep1057, align 8, !tbaa !37
  %312 = fmul double %311, 2.000000e+00
  %313 = fsub double %310, %312
  %ldlub1071 = load double*, double** %lub1059
  %ldlui1072 = load i64, i64* %lui1060
  %relidx1073 = sub i64 %309, %ldlui1072
  %newgep1074 = getelementptr double, double* %ldlub1071, i64 %relidx1073
  store double* %newgep1074, double** %lub1059
  store i64 %309, i64* %lui1060
  %314 = load double, double* %newgep1074, align 8, !tbaa !37
  %315 = fadd double %314, %313
  %316 = fmul double %315, 1.250000e-01
  %ldlub1088 = load double*, double** %lub1076
  %ldlui1089 = load i64, i64* %lui1077
  %relidx1090 = sub i64 %309, %ldlui1089
  %newgep1091 = getelementptr double, double* %ldlub1088, i64 %relidx1090
  store double* %newgep1091, double** %lub1076
  store i64 %309, i64* %lui1077
  %317 = load double, double* %newgep1091, align 8, !tbaa !37
  %318 = fsub double %317, %312
  %ldlub1105 = load double*, double** %lub1093
  %ldlui1106 = load i64, i64* %lui1094
  %relidx1107 = sub i64 %309, %ldlui1106
  %newgep1108 = getelementptr double, double* %ldlub1105, i64 %relidx1107
  store double* %newgep1108, double** %lub1093
  store i64 %309, i64* %lui1094
  %319 = load double, double* %newgep1108, align 8, !tbaa !37
  %320 = fadd double %318, %319
  %321 = fmul double %320, 1.250000e-01
  %322 = fadd double %316, %321
  %323 = add nuw nsw i64 %309, 1
  %ldlub1122 = load double*, double** %lub1110
  %ldlui1123 = load i64, i64* %lui1111
  %relidx1124 = sub i64 %323, %ldlui1123
  %newgep1125 = getelementptr double, double* %ldlub1122, i64 %relidx1124
  store double* %newgep1125, double** %lub1110
  store i64 %323, i64* %lui1111
  %324 = load double, double* %newgep1125, align 8, !tbaa !37
  %325 = fsub double %324, %312
  %326 = add nsw i64 %309, -1
  %ldlub1139 = load double*, double** %lub1127
  %ldlui1140 = load i64, i64* %lui1128
  %relidx1141 = sub i64 %326, %ldlui1140
  %newgep1142 = getelementptr double, double* %ldlub1139, i64 %relidx1141
  store double* %newgep1142, double** %lub1127
  store i64 %326, i64* %lui1128
  %327 = load double, double* %newgep1142, align 8, !tbaa !37
  %328 = fadd double %325, %327
  %329 = fmul double %328, 1.250000e-01
  %330 = fadd double %322, %329
  %331 = fadd double %311, %330
  %ldlub1156 = load double*, double** %lub1144
  %ldlui1157 = load i64, i64* %lui1145
  %relidx1158 = sub i64 %309, %ldlui1157
  %newgep1159 = getelementptr double, double* %ldlub1156, i64 %relidx1158
  store double* %newgep1159, double** %lub1144
  store i64 %309, i64* %lui1145
  store double %331, double* %newgep1159, align 8, !tbaa !37
  %332 = trunc i64 %323 to i32
  %333 = icmp eq i32 %332, %5
  br i1 %333, label %334, label %308, !llvm.loop !72

; <label>:334:                                    ; preds = %308
  br label %335

; <label>:335:                                    ; preds = %334, %305
  %336 = trunc i64 %244 to i32
  %337 = icmp eq i32 %336, %5
  %338 = add i64 %222, 1
  br i1 %337, label %339, label %221

; <label>:339:                                    ; preds = %335
  %340 = trunc i64 %216 to i32
  %341 = icmp eq i32 %340, %5
  %342 = add i64 %206, 1
  br i1 %341, label %343, label %205

; <label>:343:                                    ; preds = %339
  br label %344

; <label>:344:                                    ; preds = %343, %62, %65
  %345 = add nuw nsw i32 %63, 1
  %346 = icmp eq i32 %345, 501
  br i1 %346, label %347, label %62

; <label>:347:                                    ; preds = %344
  %org_badr = load double*, double** %orgbadr174
  %ldidx = load i64, i64* %lui176
  %org_gep = load double*, double** %lub175
  %castadr1 = ptrtoint double* %org_gep to i64
  %castadr2 = ptrtoint double* %org_badr to i64
  %reladr = sub i64 %castadr1, %castadr2
  call void @_Z14presageProfilexxPKc(i64 21, i64 %reladr, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname, i32 0, i32 0))
  %org_badr1160 = load double*, double** %orgbadr198
  %ldidx1161 = load i64, i64* %lui200
  %org_gep1162 = load double*, double** %lub199
  %castadr11163 = ptrtoint double* %org_gep1162 to i64
  %castadr21164 = ptrtoint double* %org_badr1160 to i64
  %reladr1165 = sub i64 %castadr11163, %castadr21164
  call void @_Z14presageProfilexxPKc(i64 23, i64 %reladr1165, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.1, i32 0, i32 0))
  %org_badr1166 = load double*, double** %orgbadr
  %ldidx1167 = load i64, i64* %lui
  %org_gep1168 = load double*, double** %lub
  %castadr11169 = ptrtoint double* %org_gep1168 to i64
  %castadr21170 = ptrtoint double* %org_badr1166 to i64
  %reladr1171 = sub i64 %castadr11169, %castadr21170
  call void @_Z14presageProfilexxPKc(i64 1, i64 %reladr1171, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.2, i32 0, i32 0))
  %org_badr1172 = load double*, double** %orgbadr1
  %ldidx1173 = load i64, i64* %lui3
  %org_gep1174 = load double*, double** %lub2
  %castadr11175 = ptrtoint double* %org_gep1174 to i64
  %castadr21176 = ptrtoint double* %org_badr1172 to i64
  %reladr1177 = sub i64 %castadr11175, %castadr21176
  call void @_Z14presageProfilexxPKc(i64 2, i64 %reladr1177, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.3, i32 0, i32 0))
  %org_badr1178 = load double*, double** %orgbadr8
  %ldidx1179 = load i64, i64* %lui10
  %org_gep1180 = load double*, double** %lub9
  %castadr11181 = ptrtoint double* %org_gep1180 to i64
  %castadr21182 = ptrtoint double* %org_badr1178 to i64
  %reladr1183 = sub i64 %castadr11181, %castadr21182
  call void @_Z14presageProfilexxPKc(i64 3, i64 %reladr1183, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.4, i32 0, i32 0))
  %org_badr1184 = load double*, double** %orgbadr15
  %ldidx1185 = load i64, i64* %lui17
  %org_gep1186 = load double*, double** %lub16
  %castadr11187 = ptrtoint double* %org_gep1186 to i64
  %castadr21188 = ptrtoint double* %org_badr1184 to i64
  %reladr1189 = sub i64 %castadr11187, %castadr21188
  call void @_Z14presageProfilexxPKc(i64 4, i64 %reladr1189, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.5, i32 0, i32 0))
  %org_badr1190 = load double*, double** %orgbadr22
  %ldidx1191 = load i64, i64* %lui24
  %org_gep1192 = load double*, double** %lub23
  %castadr11193 = ptrtoint double* %org_gep1192 to i64
  %castadr21194 = ptrtoint double* %org_badr1190 to i64
  %reladr1195 = sub i64 %castadr11193, %castadr21194
  call void @_Z14presageProfilexxPKc(i64 5, i64 %reladr1195, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.6, i32 0, i32 0))
  %org_badr1196 = load i8*, i8** %orgbadr29
  %ldidx1197 = load i64, i64* %lui31
  %org_gep1198 = load i8*, i8** %lub30
  %castadr11199 = ptrtoint i8* %org_gep1198 to i64
  %castadr21200 = ptrtoint i8* %org_badr1196 to i64
  %reladr1201 = sub i64 %castadr11199, %castadr21200
  call void @_Z14presageProfilexxPKc(i64 6, i64 %reladr1201, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.7, i32 0, i32 0))
  %org_badr1202 = load double*, double** %orgbadr81
  %ldidx1203 = load i64, i64* %lui83
  %org_gep1204 = load double*, double** %lub82
  %castadr11205 = ptrtoint double* %org_gep1204 to i64
  %castadr21206 = ptrtoint double* %org_badr1202 to i64
  %reladr1207 = sub i64 %castadr11205, %castadr21206
  call void @_Z14presageProfilexxPKc(i64 12, i64 %reladr1207, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.8, i32 0, i32 0))
  %org_badr1208 = load double*, double** %orgbadr36
  %ldidx1209 = load i64, i64* %lui38
  %org_gep1210 = load double*, double** %lub37
  %castadr11211 = ptrtoint double* %org_gep1210 to i64
  %castadr21212 = ptrtoint double* %org_badr1208 to i64
  %reladr1213 = sub i64 %castadr11211, %castadr21212
  call void @_Z14presageProfilexxPKc(i64 7, i64 %reladr1213, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.9, i32 0, i32 0))
  %org_badr1214 = load i8*, i8** %orgbadr43
  %ldidx1215 = load i64, i64* %lui45
  %org_gep1216 = load i8*, i8** %lub44
  %castadr11217 = ptrtoint i8* %org_gep1216 to i64
  %castadr21218 = ptrtoint i8* %org_badr1214 to i64
  %reladr1219 = sub i64 %castadr11217, %castadr21218
  call void @_Z14presageProfilexxPKc(i64 8, i64 %reladr1219, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.10, i32 0, i32 0))
  %org_badr1220 = load double*, double** %orgbadr60
  %ldidx1221 = load i64, i64* %lui62
  %org_gep1222 = load double*, double** %lub61
  %castadr11223 = ptrtoint double* %org_gep1222 to i64
  %castadr21224 = ptrtoint double* %org_badr1220 to i64
  %reladr1225 = sub i64 %castadr11223, %castadr21224
  call void @_Z14presageProfilexxPKc(i64 9, i64 %reladr1225, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.11, i32 0, i32 0))
  %org_badr1226 = load double*, double** %orgbadr67
  %ldidx1227 = load i64, i64* %lui69
  %org_gep1228 = load double*, double** %lub68
  %castadr11229 = ptrtoint double* %org_gep1228 to i64
  %castadr21230 = ptrtoint double* %org_badr1226 to i64
  %reladr1231 = sub i64 %castadr11229, %castadr21230
  call void @_Z14presageProfilexxPKc(i64 10, i64 %reladr1231, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.12, i32 0, i32 0))
  %org_badr1232 = load double*, double** %orgbadr74
  %ldidx1233 = load i64, i64* %lui76
  %org_gep1234 = load double*, double** %lub75
  %castadr11235 = ptrtoint double* %org_gep1234 to i64
  %castadr21236 = ptrtoint double* %org_badr1232 to i64
  %reladr1237 = sub i64 %castadr11235, %castadr21236
  call void @_Z14presageProfilexxPKc(i64 11, i64 %reladr1237, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.13, i32 0, i32 0))
  %org_badr1238 = load i8*, i8** %orgbadr181
  %ldidx1239 = load i64, i64* %lui183
  %org_gep1240 = load i8*, i8** %lub182
  %castadr11241 = ptrtoint i8* %org_gep1240 to i64
  %castadr21242 = ptrtoint i8* %org_badr1238 to i64
  %reladr1243 = sub i64 %castadr11241, %castadr21242
  call void @_Z14presageProfilexxPKc(i64 22, i64 %reladr1243, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.14, i32 0, i32 0))
  %org_badr1244 = load double*, double** %orgbadr88
  %ldidx1245 = load i64, i64* %lui90
  %org_gep1246 = load double*, double** %lub89
  %castadr11247 = ptrtoint double* %org_gep1246 to i64
  %castadr21248 = ptrtoint double* %org_badr1244 to i64
  %reladr1249 = sub i64 %castadr11247, %castadr21248
  call void @_Z14presageProfilexxPKc(i64 13, i64 %reladr1249, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.15, i32 0, i32 0))
  %org_badr1250 = load i8*, i8** %orgbadr95
  %ldidx1251 = load i64, i64* %lui97
  %org_gep1252 = load i8*, i8** %lub96
  %castadr11253 = ptrtoint i8* %org_gep1252 to i64
  %castadr21254 = ptrtoint i8* %org_badr1250 to i64
  %reladr1255 = sub i64 %castadr11253, %castadr21254
  call void @_Z14presageProfilexxPKc(i64 14, i64 %reladr1255, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.16, i32 0, i32 0))
  %org_badr1256 = load double*, double** %orgbadr112
  %ldidx1257 = load i64, i64* %lui114
  %org_gep1258 = load double*, double** %lub113
  %castadr11259 = ptrtoint double* %org_gep1258 to i64
  %castadr21260 = ptrtoint double* %org_badr1256 to i64
  %reladr1261 = sub i64 %castadr11259, %castadr21260
  call void @_Z14presageProfilexxPKc(i64 15, i64 %reladr1261, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.17, i32 0, i32 0))
  %org_badr1262 = load i8*, i8** %orgbadr119
  %ldidx1263 = load i64, i64* %lui121
  %org_gep1264 = load i8*, i8** %lub120
  %castadr11265 = ptrtoint i8* %org_gep1264 to i64
  %castadr21266 = ptrtoint i8* %org_badr1262 to i64
  %reladr1267 = sub i64 %castadr11265, %castadr21266
  call void @_Z14presageProfilexxPKc(i64 16, i64 %reladr1267, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.18, i32 0, i32 0))
  %org_badr1268 = load double*, double** %orgbadr136
  %ldidx1269 = load i64, i64* %lui138
  %org_gep1270 = load double*, double** %lub137
  %castadr11271 = ptrtoint double* %org_gep1270 to i64
  %castadr21272 = ptrtoint double* %org_badr1268 to i64
  %reladr1273 = sub i64 %castadr11271, %castadr21272
  call void @_Z14presageProfilexxPKc(i64 17, i64 %reladr1273, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.19, i32 0, i32 0))
  %org_badr1274 = load double*, double** %orgbadr385
  %ldidx1275 = load i64, i64* %lui387
  %org_gep1276 = load double*, double** %lub386
  %castadr11277 = ptrtoint double* %org_gep1276 to i64
  %castadr21278 = ptrtoint double* %org_badr1274 to i64
  %reladr1279 = sub i64 %castadr11277, %castadr21278
  call void @_Z14presageProfilexxPKc(i64 34, i64 %reladr1279, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.20, i32 0, i32 0))
  %org_badr1280 = load double*, double** %orgbadr143
  %ldidx1281 = load i64, i64* %lui145
  %org_gep1282 = load double*, double** %lub144
  %castadr11283 = ptrtoint double* %org_gep1282 to i64
  %castadr21284 = ptrtoint double* %org_badr1280 to i64
  %reladr1285 = sub i64 %castadr11283, %castadr21284
  call void @_Z14presageProfilexxPKc(i64 18, i64 %reladr1285, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.21, i32 0, i32 0))
  %org_badr1286 = load double*, double** %orgbadr150
  %ldidx1287 = load i64, i64* %lui152
  %org_gep1288 = load double*, double** %lub151
  %castadr11289 = ptrtoint double* %org_gep1288 to i64
  %castadr21290 = ptrtoint double* %org_badr1286 to i64
  %reladr1291 = sub i64 %castadr11289, %castadr21290
  call void @_Z14presageProfilexxPKc(i64 19, i64 %reladr1291, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.22, i32 0, i32 0))
  %org_badr1292 = load i8*, i8** %orgbadr157
  %ldidx1293 = load i64, i64* %lui159
  %org_gep1294 = load i8*, i8** %lub158
  %castadr11295 = ptrtoint i8* %org_gep1294 to i64
  %castadr21296 = ptrtoint i8* %org_badr1292 to i64
  %reladr1297 = sub i64 %castadr11295, %castadr21296
  call void @_Z14presageProfilexxPKc(i64 20, i64 %reladr1297, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.23, i32 0, i32 0))
  %org_badr1298 = load double*, double** %orgbadr555
  %ldidx1299 = load i64, i64* %lui557
  %org_gep1300 = load double*, double** %lub556
  %castadr11301 = ptrtoint double* %org_gep1300 to i64
  %castadr21302 = ptrtoint double* %org_badr1298 to i64
  %reladr1303 = sub i64 %castadr11301, %castadr21302
  call void @_Z14presageProfilexxPKc(i64 44, i64 %reladr1303, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.24, i32 0, i32 0))
  %org_badr1304 = load double*, double** %orgbadr572
  %ldidx1305 = load i64, i64* %lui574
  %org_gep1306 = load double*, double** %lub573
  %castadr11307 = ptrtoint double* %org_gep1306 to i64
  %castadr21308 = ptrtoint double* %org_badr1304 to i64
  %reladr1309 = sub i64 %castadr11307, %castadr21308
  call void @_Z14presageProfilexxPKc(i64 45, i64 %reladr1309, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.25, i32 0, i32 0))
  %org_badr1310 = load double*, double** %orgbadr579
  %ldidx1311 = load i64, i64* %lui581
  %org_gep1312 = load double*, double** %lub580
  %castadr11313 = ptrtoint double* %org_gep1312 to i64
  %castadr21314 = ptrtoint double* %org_badr1310 to i64
  %reladr1315 = sub i64 %castadr11313, %castadr21314
  call void @_Z14presageProfilexxPKc(i64 46, i64 %reladr1315, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.26, i32 0, i32 0))
  %org_badr1316 = load double*, double** %orgbadr586
  %ldidx1317 = load i64, i64* %lui588
  %org_gep1318 = load double*, double** %lub587
  %castadr11319 = ptrtoint double* %org_gep1318 to i64
  %castadr21320 = ptrtoint double* %org_badr1316 to i64
  %reladr1321 = sub i64 %castadr11319, %castadr21320
  call void @_Z14presageProfilexxPKc(i64 47, i64 %reladr1321, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.27, i32 0, i32 0))
  %org_badr1322 = load double*, double** %orgbadr593
  %ldidx1323 = load i64, i64* %lui595
  %org_gep1324 = load double*, double** %lub594
  %castadr11325 = ptrtoint double* %org_gep1324 to i64
  %castadr21326 = ptrtoint double* %org_badr1322 to i64
  %reladr1327 = sub i64 %castadr11325, %castadr21326
  call void @_Z14presageProfilexxPKc(i64 48, i64 %reladr1327, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.28, i32 0, i32 0))
  %org_badr1328 = load double*, double** %orgbadr600
  %ldidx1329 = load i64, i64* %lui602
  %org_gep1330 = load double*, double** %lub601
  %castadr11331 = ptrtoint double* %org_gep1330 to i64
  %castadr21332 = ptrtoint double* %org_badr1328 to i64
  %reladr1333 = sub i64 %castadr11331, %castadr21332
  call void @_Z14presageProfilexxPKc(i64 49, i64 %reladr1333, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.29, i32 0, i32 0))
  %org_badr1334 = load double*, double** %orgbadr368
  %ldidx1335 = load i64, i64* %lui370
  %org_gep1336 = load double*, double** %lub369
  %castadr11337 = ptrtoint double* %org_gep1336 to i64
  %castadr21338 = ptrtoint double* %org_badr1334 to i64
  %reladr1339 = sub i64 %castadr11337, %castadr21338
  call void @_Z14presageProfilexxPKc(i64 33, i64 %reladr1339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.30, i32 0, i32 0))
  %org_badr1340 = load i8*, i8** %orgbadr769
  %ldidx1341 = load i64, i64* %lui771
  %org_gep1342 = load i8*, i8** %lub770
  %castadr11343 = ptrtoint i8* %org_gep1342 to i64
  %castadr21344 = ptrtoint i8* %org_badr1340 to i64
  %reladr1345 = sub i64 %castadr11343, %castadr21344
  call void @_Z14presageProfilexxPKc(i64 66, i64 %reladr1345, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.31, i32 0, i32 0))
  %org_badr1346 = load double*, double** %orgbadr215
  %ldidx1347 = load i64, i64* %lui217
  %org_gep1348 = load double*, double** %lub216
  %castadr11349 = ptrtoint double* %org_gep1348 to i64
  %castadr21350 = ptrtoint double* %org_badr1346 to i64
  %reladr1351 = sub i64 %castadr11349, %castadr21350
  call void @_Z14presageProfilexxPKc(i64 24, i64 %reladr1351, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.32, i32 0, i32 0))
  %org_badr1352 = load double*, double** %orgbadr232
  %ldidx1353 = load i64, i64* %lui234
  %org_gep1354 = load double*, double** %lub233
  %castadr11355 = ptrtoint double* %org_gep1354 to i64
  %castadr21356 = ptrtoint double* %org_badr1352 to i64
  %reladr1357 = sub i64 %castadr11355, %castadr21356
  call void @_Z14presageProfilexxPKc(i64 25, i64 %reladr1357, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.33, i32 0, i32 0))
  %org_badr1358 = load double*, double** %orgbadr249
  %ldidx1359 = load i64, i64* %lui251
  %org_gep1360 = load double*, double** %lub250
  %castadr11361 = ptrtoint double* %org_gep1360 to i64
  %castadr21362 = ptrtoint double* %org_badr1358 to i64
  %reladr1363 = sub i64 %castadr11361, %castadr21362
  call void @_Z14presageProfilexxPKc(i64 26, i64 %reladr1363, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.34, i32 0, i32 0))
  %org_badr1364 = load double*, double** %orgbadr266
  %ldidx1365 = load i64, i64* %lui268
  %org_gep1366 = load double*, double** %lub267
  %castadr11367 = ptrtoint double* %org_gep1366 to i64
  %castadr21368 = ptrtoint double* %org_badr1364 to i64
  %reladr1369 = sub i64 %castadr11367, %castadr21368
  call void @_Z14presageProfilexxPKc(i64 27, i64 %reladr1369, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.35, i32 0, i32 0))
  %org_badr1370 = load double*, double** %orgbadr283
  %ldidx1371 = load i64, i64* %lui285
  %org_gep1372 = load double*, double** %lub284
  %castadr11373 = ptrtoint double* %org_gep1372 to i64
  %castadr21374 = ptrtoint double* %org_badr1370 to i64
  %reladr1375 = sub i64 %castadr11373, %castadr21374
  call void @_Z14presageProfilexxPKc(i64 28, i64 %reladr1375, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.36, i32 0, i32 0))
  %org_badr1376 = load double*, double** %orgbadr300
  %ldidx1377 = load i64, i64* %lui302
  %org_gep1378 = load double*, double** %lub301
  %castadr11379 = ptrtoint double* %org_gep1378 to i64
  %castadr21380 = ptrtoint double* %org_badr1376 to i64
  %reladr1381 = sub i64 %castadr11379, %castadr21380
  call void @_Z14presageProfilexxPKc(i64 29, i64 %reladr1381, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.37, i32 0, i32 0))
  %org_badr1382 = load double*, double** %orgbadr317
  %ldidx1383 = load i64, i64* %lui319
  %org_gep1384 = load double*, double** %lub318
  %castadr11385 = ptrtoint double* %org_gep1384 to i64
  %castadr21386 = ptrtoint double* %org_badr1382 to i64
  %reladr1387 = sub i64 %castadr11385, %castadr21386
  call void @_Z14presageProfilexxPKc(i64 30, i64 %reladr1387, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.38, i32 0, i32 0))
  %org_badr1388 = load double*, double** %orgbadr334
  %ldidx1389 = load i64, i64* %lui336
  %org_gep1390 = load double*, double** %lub335
  %castadr11391 = ptrtoint double* %org_gep1390 to i64
  %castadr21392 = ptrtoint double* %org_badr1388 to i64
  %reladr1393 = sub i64 %castadr11391, %castadr21392
  call void @_Z14presageProfilexxPKc(i64 31, i64 %reladr1393, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.39, i32 0, i32 0))
  %org_badr1394 = load double*, double** %orgbadr351
  %ldidx1395 = load i64, i64* %lui353
  %org_gep1396 = load double*, double** %lub352
  %castadr11397 = ptrtoint double* %org_gep1396 to i64
  %castadr21398 = ptrtoint double* %org_badr1394 to i64
  %reladr1399 = sub i64 %castadr11397, %castadr21398
  call void @_Z14presageProfilexxPKc(i64 32, i64 %reladr1399, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.40, i32 0, i32 0))
  %org_badr1400 = load double*, double** %orgbadr762
  %ldidx1401 = load i64, i64* %lui764
  %org_gep1402 = load double*, double** %lub763
  %castadr11403 = ptrtoint double* %org_gep1402 to i64
  %castadr21404 = ptrtoint double* %org_badr1400 to i64
  %reladr1405 = sub i64 %castadr11403, %castadr21404
  call void @_Z14presageProfilexxPKc(i64 65, i64 %reladr1405, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.41, i32 0, i32 0))
  %org_badr1406 = load double*, double** %orgbadr786
  %ldidx1407 = load i64, i64* %lui788
  %org_gep1408 = load double*, double** %lub787
  %castadr11409 = ptrtoint double* %org_gep1408 to i64
  %castadr21410 = ptrtoint double* %org_badr1406 to i64
  %reladr1411 = sub i64 %castadr11409, %castadr21410
  call void @_Z14presageProfilexxPKc(i64 67, i64 %reladr1411, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.42, i32 0, i32 0))
  %org_badr1412 = load double*, double** %orgbadr402
  %ldidx1413 = load i64, i64* %lui404
  %org_gep1414 = load double*, double** %lub403
  %castadr11415 = ptrtoint double* %org_gep1414 to i64
  %castadr21416 = ptrtoint double* %org_badr1412 to i64
  %reladr1417 = sub i64 %castadr11415, %castadr21416
  call void @_Z14presageProfilexxPKc(i64 35, i64 %reladr1417, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.43, i32 0, i32 0))
  %org_badr1418 = load double*, double** %orgbadr419
  %ldidx1419 = load i64, i64* %lui421
  %org_gep1420 = load double*, double** %lub420
  %castadr11421 = ptrtoint double* %org_gep1420 to i64
  %castadr21422 = ptrtoint double* %org_badr1418 to i64
  %reladr1423 = sub i64 %castadr11421, %castadr21422
  call void @_Z14presageProfilexxPKc(i64 36, i64 %reladr1423, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.44, i32 0, i32 0))
  %org_badr1424 = load double*, double** %orgbadr436
  %ldidx1425 = load i64, i64* %lui438
  %org_gep1426 = load double*, double** %lub437
  %castadr11427 = ptrtoint double* %org_gep1426 to i64
  %castadr21428 = ptrtoint double* %org_badr1424 to i64
  %reladr1429 = sub i64 %castadr11427, %castadr21428
  call void @_Z14presageProfilexxPKc(i64 37, i64 %reladr1429, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.45, i32 0, i32 0))
  %org_badr1430 = load double*, double** %orgbadr453
  %ldidx1431 = load i64, i64* %lui455
  %org_gep1432 = load double*, double** %lub454
  %castadr11433 = ptrtoint double* %org_gep1432 to i64
  %castadr21434 = ptrtoint double* %org_badr1430 to i64
  %reladr1435 = sub i64 %castadr11433, %castadr21434
  call void @_Z14presageProfilexxPKc(i64 38, i64 %reladr1435, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.46, i32 0, i32 0))
  %org_badr1436 = load double*, double** %orgbadr470
  %ldidx1437 = load i64, i64* %lui472
  %org_gep1438 = load double*, double** %lub471
  %castadr11439 = ptrtoint double* %org_gep1438 to i64
  %castadr21440 = ptrtoint double* %org_badr1436 to i64
  %reladr1441 = sub i64 %castadr11439, %castadr21440
  call void @_Z14presageProfilexxPKc(i64 39, i64 %reladr1441, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.47, i32 0, i32 0))
  %org_badr1442 = load double*, double** %orgbadr487
  %ldidx1443 = load i64, i64* %lui489
  %org_gep1444 = load double*, double** %lub488
  %castadr11445 = ptrtoint double* %org_gep1444 to i64
  %castadr21446 = ptrtoint double* %org_badr1442 to i64
  %reladr1447 = sub i64 %castadr11445, %castadr21446
  call void @_Z14presageProfilexxPKc(i64 40, i64 %reladr1447, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.48, i32 0, i32 0))
  %org_badr1448 = load double*, double** %orgbadr504
  %ldidx1449 = load i64, i64* %lui506
  %org_gep1450 = load double*, double** %lub505
  %castadr11451 = ptrtoint double* %org_gep1450 to i64
  %castadr21452 = ptrtoint double* %org_badr1448 to i64
  %reladr1453 = sub i64 %castadr11451, %castadr21452
  call void @_Z14presageProfilexxPKc(i64 41, i64 %reladr1453, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.49, i32 0, i32 0))
  %org_badr1454 = load double*, double** %orgbadr521
  %ldidx1455 = load i64, i64* %lui523
  %org_gep1456 = load double*, double** %lub522
  %castadr11457 = ptrtoint double* %org_gep1456 to i64
  %castadr21458 = ptrtoint double* %org_badr1454 to i64
  %reladr1459 = sub i64 %castadr11457, %castadr21458
  call void @_Z14presageProfilexxPKc(i64 42, i64 %reladr1459, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.50, i32 0, i32 0))
  %org_badr1460 = load double*, double** %orgbadr538
  %ldidx1461 = load i64, i64* %lui540
  %org_gep1462 = load double*, double** %lub539
  %castadr11463 = ptrtoint double* %org_gep1462 to i64
  %castadr21464 = ptrtoint double* %org_badr1460 to i64
  %reladr1465 = sub i64 %castadr11463, %castadr21464
  call void @_Z14presageProfilexxPKc(i64 43, i64 %reladr1465, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.51, i32 0, i32 0))
  %org_badr1466 = load i8*, i8** %orgbadr607
  %ldidx1467 = load i64, i64* %lui609
  %org_gep1468 = load i8*, i8** %lub608
  %castadr11469 = ptrtoint i8* %org_gep1468 to i64
  %castadr21470 = ptrtoint i8* %org_badr1466 to i64
  %reladr1471 = sub i64 %castadr11469, %castadr21470
  call void @_Z14presageProfilexxPKc(i64 50, i64 %reladr1471, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.52, i32 0, i32 0))
  %org_badr1472 = load double*, double** %orgbadr624
  %ldidx1473 = load i64, i64* %lui626
  %org_gep1474 = load double*, double** %lub625
  %castadr11475 = ptrtoint double* %org_gep1474 to i64
  %castadr21476 = ptrtoint double* %org_badr1472 to i64
  %reladr1477 = sub i64 %castadr11475, %castadr21476
  call void @_Z14presageProfilexxPKc(i64 51, i64 %reladr1477, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.53, i32 0, i32 0))
  %org_badr1478 = load i8*, i8** %orgbadr631
  %ldidx1479 = load i64, i64* %lui633
  %org_gep1480 = load i8*, i8** %lub632
  %castadr11481 = ptrtoint i8* %org_gep1480 to i64
  %castadr21482 = ptrtoint i8* %org_badr1478 to i64
  %reladr1483 = sub i64 %castadr11481, %castadr21482
  call void @_Z14presageProfilexxPKc(i64 52, i64 %reladr1483, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.54, i32 0, i32 0))
  %org_badr1484 = load double*, double** %orgbadr648
  %ldidx1485 = load i64, i64* %lui650
  %org_gep1486 = load double*, double** %lub649
  %castadr11487 = ptrtoint double* %org_gep1486 to i64
  %castadr21488 = ptrtoint double* %org_badr1484 to i64
  %reladr1489 = sub i64 %castadr11487, %castadr21488
  call void @_Z14presageProfilexxPKc(i64 53, i64 %reladr1489, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.55, i32 0, i32 0))
  %org_badr1490 = load double*, double** %orgbadr655
  %ldidx1491 = load i64, i64* %lui657
  %org_gep1492 = load double*, double** %lub656
  %castadr11493 = ptrtoint double* %org_gep1492 to i64
  %castadr21494 = ptrtoint double* %org_badr1490 to i64
  %reladr1495 = sub i64 %castadr11493, %castadr21494
  call void @_Z14presageProfilexxPKc(i64 54, i64 %reladr1495, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.56, i32 0, i32 0))
  %org_badr1496 = load double*, double** %orgbadr662
  %ldidx1497 = load i64, i64* %lui664
  %org_gep1498 = load double*, double** %lub663
  %castadr11499 = ptrtoint double* %org_gep1498 to i64
  %castadr21500 = ptrtoint double* %org_badr1496 to i64
  %reladr1501 = sub i64 %castadr11499, %castadr21500
  call void @_Z14presageProfilexxPKc(i64 55, i64 %reladr1501, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.57, i32 0, i32 0))
  %org_badr1502 = load double*, double** %orgbadr669
  %ldidx1503 = load i64, i64* %lui671
  %org_gep1504 = load double*, double** %lub670
  %castadr11505 = ptrtoint double* %org_gep1504 to i64
  %castadr21506 = ptrtoint double* %org_badr1502 to i64
  %reladr1507 = sub i64 %castadr11505, %castadr21506
  call void @_Z14presageProfilexxPKc(i64 56, i64 %reladr1507, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.58, i32 0, i32 0))
  %org_badr1508 = load double*, double** %orgbadr676
  %ldidx1509 = load i64, i64* %lui678
  %org_gep1510 = load double*, double** %lub677
  %castadr11511 = ptrtoint double* %org_gep1510 to i64
  %castadr21512 = ptrtoint double* %org_badr1508 to i64
  %reladr1513 = sub i64 %castadr11511, %castadr21512
  call void @_Z14presageProfilexxPKc(i64 57, i64 %reladr1513, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.59, i32 0, i32 0))
  %org_badr1514 = load i8*, i8** %orgbadr683
  %ldidx1515 = load i64, i64* %lui685
  %org_gep1516 = load i8*, i8** %lub684
  %castadr11517 = ptrtoint i8* %org_gep1516 to i64
  %castadr21518 = ptrtoint i8* %org_badr1514 to i64
  %reladr1519 = sub i64 %castadr11517, %castadr21518
  call void @_Z14presageProfilexxPKc(i64 58, i64 %reladr1519, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.60, i32 0, i32 0))
  %org_badr1520 = load double*, double** %orgbadr700
  %ldidx1521 = load i64, i64* %lui702
  %org_gep1522 = load double*, double** %lub701
  %castadr11523 = ptrtoint double* %org_gep1522 to i64
  %castadr21524 = ptrtoint double* %org_badr1520 to i64
  %reladr1525 = sub i64 %castadr11523, %castadr21524
  call void @_Z14presageProfilexxPKc(i64 59, i64 %reladr1525, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.61, i32 0, i32 0))
  %org_badr1526 = load i8*, i8** %orgbadr707
  %ldidx1527 = load i64, i64* %lui709
  %org_gep1528 = load i8*, i8** %lub708
  %castadr11529 = ptrtoint i8* %org_gep1528 to i64
  %castadr21530 = ptrtoint i8* %org_badr1526 to i64
  %reladr1531 = sub i64 %castadr11529, %castadr21530
  call void @_Z14presageProfilexxPKc(i64 60, i64 %reladr1531, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.62, i32 0, i32 0))
  %org_badr1532 = load double*, double** %orgbadr724
  %ldidx1533 = load i64, i64* %lui726
  %org_gep1534 = load double*, double** %lub725
  %castadr11535 = ptrtoint double* %org_gep1534 to i64
  %castadr21536 = ptrtoint double* %org_badr1532 to i64
  %reladr1537 = sub i64 %castadr11535, %castadr21536
  call void @_Z14presageProfilexxPKc(i64 61, i64 %reladr1537, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.63, i32 0, i32 0))
  %org_badr1538 = load double*, double** %orgbadr731
  %ldidx1539 = load i64, i64* %lui733
  %org_gep1540 = load double*, double** %lub732
  %castadr11541 = ptrtoint double* %org_gep1540 to i64
  %castadr21542 = ptrtoint double* %org_badr1538 to i64
  %reladr1543 = sub i64 %castadr11541, %castadr21542
  call void @_Z14presageProfilexxPKc(i64 62, i64 %reladr1543, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.64, i32 0, i32 0))
  %org_badr1544 = load double*, double** %orgbadr738
  %ldidx1545 = load i64, i64* %lui740
  %org_gep1546 = load double*, double** %lub739
  %castadr11547 = ptrtoint double* %org_gep1546 to i64
  %castadr21548 = ptrtoint double* %org_badr1544 to i64
  %reladr1549 = sub i64 %castadr11547, %castadr21548
  call void @_Z14presageProfilexxPKc(i64 63, i64 %reladr1549, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.65, i32 0, i32 0))
  %org_badr1550 = load i8*, i8** %orgbadr745
  %ldidx1551 = load i64, i64* %lui747
  %org_gep1552 = load i8*, i8** %lub746
  %castadr11553 = ptrtoint i8* %org_gep1552 to i64
  %castadr21554 = ptrtoint i8* %org_badr1550 to i64
  %reladr1555 = sub i64 %castadr11553, %castadr21554
  call void @_Z14presageProfilexxPKc(i64 64, i64 %reladr1555, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.66, i32 0, i32 0))
  %org_badr1556 = load double*, double** %orgbadr803
  %ldidx1557 = load i64, i64* %lui805
  %org_gep1558 = load double*, double** %lub804
  %castadr11559 = ptrtoint double* %org_gep1558 to i64
  %castadr21560 = ptrtoint double* %org_badr1556 to i64
  %reladr1561 = sub i64 %castadr11559, %castadr21560
  call void @_Z14presageProfilexxPKc(i64 68, i64 %reladr1561, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.67, i32 0, i32 0))
  %org_badr1562 = load double*, double** %orgbadr820
  %ldidx1563 = load i64, i64* %lui822
  %org_gep1564 = load double*, double** %lub821
  %castadr11565 = ptrtoint double* %org_gep1564 to i64
  %castadr21566 = ptrtoint double* %org_badr1562 to i64
  %reladr1567 = sub i64 %castadr11565, %castadr21566
  call void @_Z14presageProfilexxPKc(i64 69, i64 %reladr1567, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.68, i32 0, i32 0))
  %org_badr1568 = load double*, double** %orgbadr837
  %ldidx1569 = load i64, i64* %lui839
  %org_gep1570 = load double*, double** %lub838
  %castadr11571 = ptrtoint double* %org_gep1570 to i64
  %castadr21572 = ptrtoint double* %org_badr1568 to i64
  %reladr1573 = sub i64 %castadr11571, %castadr21572
  call void @_Z14presageProfilexxPKc(i64 70, i64 %reladr1573, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.69, i32 0, i32 0))
  %org_badr1574 = load double*, double** %orgbadr854
  %ldidx1575 = load i64, i64* %lui856
  %org_gep1576 = load double*, double** %lub855
  %castadr11577 = ptrtoint double* %org_gep1576 to i64
  %castadr21578 = ptrtoint double* %org_badr1574 to i64
  %reladr1579 = sub i64 %castadr11577, %castadr21578
  call void @_Z14presageProfilexxPKc(i64 71, i64 %reladr1579, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.70, i32 0, i32 0))
  %org_badr1580 = load double*, double** %orgbadr871
  %ldidx1581 = load i64, i64* %lui873
  %org_gep1582 = load double*, double** %lub872
  %castadr11583 = ptrtoint double* %org_gep1582 to i64
  %castadr21584 = ptrtoint double* %org_badr1580 to i64
  %reladr1585 = sub i64 %castadr11583, %castadr21584
  call void @_Z14presageProfilexxPKc(i64 72, i64 %reladr1585, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.71, i32 0, i32 0))
  %org_badr1586 = load double*, double** %orgbadr888
  %ldidx1587 = load i64, i64* %lui890
  %org_gep1588 = load double*, double** %lub889
  %castadr11589 = ptrtoint double* %org_gep1588 to i64
  %castadr21590 = ptrtoint double* %org_badr1586 to i64
  %reladr1591 = sub i64 %castadr11589, %castadr21590
  call void @_Z14presageProfilexxPKc(i64 73, i64 %reladr1591, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.72, i32 0, i32 0))
  %org_badr1592 = load double*, double** %orgbadr905
  %ldidx1593 = load i64, i64* %lui907
  %org_gep1594 = load double*, double** %lub906
  %castadr11595 = ptrtoint double* %org_gep1594 to i64
  %castadr21596 = ptrtoint double* %org_badr1592 to i64
  %reladr1597 = sub i64 %castadr11595, %castadr21596
  call void @_Z14presageProfilexxPKc(i64 74, i64 %reladr1597, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.73, i32 0, i32 0))
  %org_badr1598 = load double*, double** %orgbadr922
  %ldidx1599 = load i64, i64* %lui924
  %org_gep1600 = load double*, double** %lub923
  %castadr11601 = ptrtoint double* %org_gep1600 to i64
  %castadr21602 = ptrtoint double* %org_badr1598 to i64
  %reladr1603 = sub i64 %castadr11601, %castadr21602
  call void @_Z14presageProfilexxPKc(i64 75, i64 %reladr1603, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.74, i32 0, i32 0))
  %org_badr1604 = load double*, double** %orgbadr939
  %ldidx1605 = load i64, i64* %lui941
  %org_gep1606 = load double*, double** %lub940
  %castadr11607 = ptrtoint double* %org_gep1606 to i64
  %castadr21608 = ptrtoint double* %org_badr1604 to i64
  %reladr1609 = sub i64 %castadr11607, %castadr21608
  call void @_Z14presageProfilexxPKc(i64 76, i64 %reladr1609, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.75, i32 0, i32 0))
  %org_badr1610 = load double*, double** %orgbadr956
  %ldidx1611 = load i64, i64* %lui958
  %org_gep1612 = load double*, double** %lub957
  %castadr11613 = ptrtoint double* %org_gep1612 to i64
  %castadr21614 = ptrtoint double* %org_badr1610 to i64
  %reladr1615 = sub i64 %castadr11613, %castadr21614
  call void @_Z14presageProfilexxPKc(i64 77, i64 %reladr1615, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.76, i32 0, i32 0))
  %org_badr1616 = load double*, double** %orgbadr973
  %ldidx1617 = load i64, i64* %lui975
  %org_gep1618 = load double*, double** %lub974
  %castadr11619 = ptrtoint double* %org_gep1618 to i64
  %castadr21620 = ptrtoint double* %org_badr1616 to i64
  %reladr1621 = sub i64 %castadr11619, %castadr21620
  call void @_Z14presageProfilexxPKc(i64 78, i64 %reladr1621, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.77, i32 0, i32 0))
  %org_badr1622 = load double*, double** %orgbadr990
  %ldidx1623 = load i64, i64* %lui992
  %org_gep1624 = load double*, double** %lub991
  %castadr11625 = ptrtoint double* %org_gep1624 to i64
  %castadr21626 = ptrtoint double* %org_badr1622 to i64
  %reladr1627 = sub i64 %castadr11625, %castadr21626
  call void @_Z14presageProfilexxPKc(i64 79, i64 %reladr1627, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.78, i32 0, i32 0))
  %org_badr1628 = load double*, double** %orgbadr1007
  %ldidx1629 = load i64, i64* %lui1009
  %org_gep1630 = load double*, double** %lub1008
  %castadr11631 = ptrtoint double* %org_gep1630 to i64
  %castadr21632 = ptrtoint double* %org_badr1628 to i64
  %reladr1633 = sub i64 %castadr11631, %castadr21632
  call void @_Z14presageProfilexxPKc(i64 80, i64 %reladr1633, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.79, i32 0, i32 0))
  %org_badr1634 = load double*, double** %orgbadr1024
  %ldidx1635 = load i64, i64* %lui1026
  %org_gep1636 = load double*, double** %lub1025
  %castadr11637 = ptrtoint double* %org_gep1636 to i64
  %castadr21638 = ptrtoint double* %org_badr1634 to i64
  %reladr1639 = sub i64 %castadr11637, %castadr21638
  call void @_Z14presageProfilexxPKc(i64 81, i64 %reladr1639, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.80, i32 0, i32 0))
  %org_badr1640 = load double*, double** %orgbadr1041
  %ldidx1641 = load i64, i64* %lui1043
  %org_gep1642 = load double*, double** %lub1042
  %castadr11643 = ptrtoint double* %org_gep1642 to i64
  %castadr21644 = ptrtoint double* %org_badr1640 to i64
  %reladr1645 = sub i64 %castadr11643, %castadr21644
  call void @_Z14presageProfilexxPKc(i64 82, i64 %reladr1645, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.81, i32 0, i32 0))
  %org_badr1646 = load double*, double** %orgbadr1058
  %ldidx1647 = load i64, i64* %lui1060
  %org_gep1648 = load double*, double** %lub1059
  %castadr11649 = ptrtoint double* %org_gep1648 to i64
  %castadr21650 = ptrtoint double* %org_badr1646 to i64
  %reladr1651 = sub i64 %castadr11649, %castadr21650
  call void @_Z14presageProfilexxPKc(i64 83, i64 %reladr1651, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.82, i32 0, i32 0))
  %org_badr1652 = load double*, double** %orgbadr1075
  %ldidx1653 = load i64, i64* %lui1077
  %org_gep1654 = load double*, double** %lub1076
  %castadr11655 = ptrtoint double* %org_gep1654 to i64
  %castadr21656 = ptrtoint double* %org_badr1652 to i64
  %reladr1657 = sub i64 %castadr11655, %castadr21656
  call void @_Z14presageProfilexxPKc(i64 84, i64 %reladr1657, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.83, i32 0, i32 0))
  %org_badr1658 = load double*, double** %orgbadr1092
  %ldidx1659 = load i64, i64* %lui1094
  %org_gep1660 = load double*, double** %lub1093
  %castadr11661 = ptrtoint double* %org_gep1660 to i64
  %castadr21662 = ptrtoint double* %org_badr1658 to i64
  %reladr1663 = sub i64 %castadr11661, %castadr21662
  call void @_Z14presageProfilexxPKc(i64 85, i64 %reladr1663, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.84, i32 0, i32 0))
  %org_badr1664 = load double*, double** %orgbadr1109
  %ldidx1665 = load i64, i64* %lui1111
  %org_gep1666 = load double*, double** %lub1110
  %castadr11667 = ptrtoint double* %org_gep1666 to i64
  %castadr21668 = ptrtoint double* %org_badr1664 to i64
  %reladr1669 = sub i64 %castadr11667, %castadr21668
  call void @_Z14presageProfilexxPKc(i64 86, i64 %reladr1669, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.85, i32 0, i32 0))
  %org_badr1670 = load double*, double** %orgbadr1126
  %ldidx1671 = load i64, i64* %lui1128
  %org_gep1672 = load double*, double** %lub1127
  %castadr11673 = ptrtoint double* %org_gep1672 to i64
  %castadr21674 = ptrtoint double* %org_badr1670 to i64
  %reladr1675 = sub i64 %castadr11673, %castadr21674
  call void @_Z14presageProfilexxPKc(i64 87, i64 %reladr1675, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.86, i32 0, i32 0))
  %org_badr1676 = load double*, double** %orgbadr1143
  %ldidx1677 = load i64, i64* %lui1145
  %org_gep1678 = load double*, double** %lub1144
  %castadr11679 = ptrtoint double* %org_gep1678 to i64
  %castadr21680 = ptrtoint double* %org_badr1676 to i64
  %reladr1681 = sub i64 %castadr11679, %castadr21680
  call void @_Z14presageProfilexxPKc(i64 88, i64 %reladr1681, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @strname.87, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_data(i32, double* nocapture readonly, i8* nocapture readonly) unnamed_addr #0 {
  %4 = zext i32 %0 to i64
  %5 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.13, i64 0, i64 0))
  %6 = icmp sgt i32 %0, 0
  br i1 %6, label %7, label %34

; <label>:7:                                      ; preds = %3
  %8 = mul nuw i64 %4, %4
  br label %9

; <label>:9:                                      ; preds = %7, %13
  %10 = phi i64 [ %14, %13 ], [ 0, %7 ]
  %11 = mul nsw i64 %8, %10
  %12 = getelementptr inbounds double, double* %1, i64 %11
  br label %17

; <label>:13:                                     ; preds = %21
  %14 = add nuw nsw i64 %10, 1
  %15 = trunc i64 %14 to i32
  %16 = icmp eq i32 %15, %0
  br i1 %16, label %33, label %9

; <label>:17:                                     ; preds = %21, %9
  %18 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %19 = mul nuw nsw i64 %18, %4
  %20 = getelementptr inbounds double, double* %12, i64 %19
  br label %25

; <label>:21:                                     ; preds = %25
  %22 = add nuw nsw i64 %18, 1
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %23, %0
  br i1 %24, label %13, label %17

; <label>:25:                                     ; preds = %25, %17
  %26 = phi i64 [ %30, %25 ], [ 0, %17 ]
  %27 = getelementptr inbounds double, double* %20, i64 %26
  %28 = load double, double* %27, align 8, !tbaa !37
  %29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.14, i64 0, i64 0), double %28)
  %30 = add nuw nsw i64 %26, 1
  %31 = trunc i64 %30 to i32
  %32 = icmp eq i32 %31, %0
  br i1 %32, label %21, label %25

; <label>:33:                                     ; preds = %13
  br label %34

; <label>:34:                                     ; preds = %33, %3
  %35 = tail call i32 @fclose(%struct._IO_FILE* %5)
  ret void
}

declare void @writeOVRData(i8*, double, i32) #9

declare void @writeFPRData(i8*, i64, i32) #9

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @print_array(i32, double* nocapture readonly) unnamed_addr #0 {
  %3 = zext i32 %0 to i64
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %4) #13
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %7 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.9, i64 0, i64 0)) #13
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %52

; <label>:9:                                      ; preds = %2
  %10 = mul nuw i64 %3, %3
  %11 = sext i32 %0 to i64
  br label %12

; <label>:12:                                     ; preds = %9, %18
  %13 = phi i64 [ %19, %18 ], [ 0, %9 ]
  %14 = mul nsw i64 %13, %11
  %15 = mul nsw i64 %10, %13
  %16 = getelementptr inbounds double, double* %1, i64 %15
  %17 = trunc i64 %14 to i32
  br label %22

; <label>:18:                                     ; preds = %30
  %19 = add nuw nsw i64 %13, 1
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %20, %0
  br i1 %21, label %51, label %12

; <label>:22:                                     ; preds = %30, %12
  %23 = phi i64 [ 0, %12 ], [ %31, %30 ]
  %24 = trunc i64 %23 to i32
  %25 = add i32 %24, %17
  %26 = mul i32 %25, %0
  %27 = mul nuw nsw i64 %23, %3
  %28 = getelementptr inbounds double, double* %16, i64 %27
  %29 = zext i32 %26 to i64
  br label %34

; <label>:30:                                     ; preds = %43
  %31 = add nuw nsw i64 %23, 1
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %18, label %22

; <label>:34:                                     ; preds = %43, %22
  %35 = phi i64 [ %48, %43 ], [ 0, %22 ]
  %36 = add i64 %35, %29
  %37 = trunc i64 %36 to i32
  %38 = srem i32 %37, 20
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %34
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %42 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %41) #13
  br label %43

; <label>:43:                                     ; preds = %40, %34
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %45 = getelementptr inbounds double, double* %28, i64 %35
  %46 = load double, double* %45, align 8, !tbaa !37
  %47 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12.10, i64 0, i64 0), double %46) #13
  %48 = add nuw nsw i64 %35, 1
  %49 = trunc i64 %48 to i32
  %50 = icmp eq i32 %49, %0
  br i1 %50, label %30, label %34

; <label>:51:                                     ; preds = %18
  br label %52

; <label>:52:                                     ; preds = %51, %2
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %54 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.9, i64 0, i64 0)) #13
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %56 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14.12, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %55) #13
  ret void
}

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly }
attributes #13 = { cold }

!llvm.ident = !{!0, !0, !0}

!0 = !{!"clang version 3.9.0 (trunk 266339) (llvm/trunk 266338)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"long long", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !3, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !3, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"_ZTS6FIAlgo", !3, i64 0}
!13 = !{!3, !3, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !3, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !3, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"_ZTS11FIDirection", !3, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"_ZTS11FIByteRange", !3, i64 0}
!22 = !{!23, !10, i64 0}
!23 = !{!"_ZTS7timeval", !10, i64 0, !10, i64 8}
!24 = !{!23, !10, i64 8}
!25 = !{!26, !26, i64 0}
!26 = !{!"short", !3, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !{!32, !33, i64 0}
!32 = !{!"timeval", !33, i64 0, !33, i64 8}
!33 = !{!"long", !29, i64 0}
!34 = !{!32, !33, i64 8}
!35 = !{!36, !36, i64 0}
!36 = !{!"long long", !29, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"double", !29, i64 0}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = !{!45}
!45 = distinct !{!45, !41}
!46 = !{!47}
!47 = distinct !{!47, !41}
!48 = !{!49}
!49 = distinct !{!49, !41}
!50 = !{!51}
!51 = distinct !{!51, !41}
!52 = !{!43, !49, !47, !45, !40}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.vectorize.width", i32 1}
!55 = !{!"llvm.loop.interleave.count", i32 1}
!56 = distinct !{!56, !54, !55}
!57 = !{!58}
!58 = distinct !{!58, !59}
!59 = distinct !{!59, !"LVerDomain"}
!60 = !{!61}
!61 = distinct !{!61, !59}
!62 = !{!63}
!63 = distinct !{!63, !59}
!64 = !{!65}
!65 = distinct !{!65, !59}
!66 = !{!67}
!67 = distinct !{!67, !59}
!68 = !{!69}
!69 = distinct !{!69, !59}
!70 = !{!61, !67, !65, !63, !58}
!71 = distinct !{!71, !54, !55}
!72 = distinct !{!72, !54, !55}
