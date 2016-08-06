; ModuleID = './bin/heat-3d_psg_dtr.bc'
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
  %badr1 = load double*, double** %orgbadr1143
  %ldnewadr1 = load double*, double** %lub1144
  %castn1 = ptrtoint double* %ldnewadr1 to i64
  %castb1 = ptrtoint double* %badr1 to i64
  %reladr1 = sub i64 %castn1, %castb1
  %badr2 = load double*, double** %orgbadr1041
  %ldnewadr2 = load double*, double** %lub1042
  %castn2 = ptrtoint double* %ldnewadr2 to i64
  %castb2 = ptrtoint double* %badr2 to i64
  %reladr2 = sub i64 %castn2, %castb2
  %cmpop1160 = icmp ne i64 %reladr1, %reladr2
  %newdetval1161 = zext i1 %cmpop1160 to i64
  %ldolddetval1162 = load i64, i64* @detectCounter
  %updetval1163 = or i64 %newdetval1161, %ldolddetval1162
  store i64 %updetval1163, i64* @detectCounter
  %badr11164 = load double*, double** %orgbadr1143
  %ldnewadr11165 = load double*, double** %lub1144
  %castn11166 = ptrtoint double* %ldnewadr11165 to i64
  %castb11167 = ptrtoint double* %badr11164 to i64
  %reladr11168 = sub i64 %castn11166, %castb11167
  %badr21169 = load double*, double** %orgbadr1058
  %ldnewadr21170 = load double*, double** %lub1059
  %castn21171 = ptrtoint double* %ldnewadr21170 to i64
  %castb21172 = ptrtoint double* %badr21169 to i64
  %reladr21173 = sub i64 %castn21171, %castb21172
  %cmpop1174 = icmp ne i64 %reladr11168, %reladr21173
  %newdetval1175 = zext i1 %cmpop1174 to i64
  %ldolddetval1176 = load i64, i64* @detectCounter
  %updetval1177 = or i64 %newdetval1175, %ldolddetval1176
  store i64 %updetval1177, i64* @detectCounter
  %badr11178 = load double*, double** %orgbadr1143
  %ldnewadr11179 = load double*, double** %lub1144
  %castn11180 = ptrtoint double* %ldnewadr11179 to i64
  %castb11181 = ptrtoint double* %badr11178 to i64
  %reladr11182 = sub i64 %castn11180, %castb11181
  %badr21183 = load double*, double** %orgbadr1024
  %ldnewadr21184 = load double*, double** %lub1025
  %castn21185 = ptrtoint double* %ldnewadr21184 to i64
  %castb21186 = ptrtoint double* %badr21183 to i64
  %reladr21187 = sub i64 %castn21185, %castb21186
  %cmpop1188 = icmp ne i64 %reladr11182, %reladr21187
  %newdetval1189 = zext i1 %cmpop1188 to i64
  %ldolddetval1190 = load i64, i64* @detectCounter
  %updetval1191 = or i64 %newdetval1189, %ldolddetval1190
  store i64 %updetval1191, i64* @detectCounter
  %badr11192 = load double*, double** %orgbadr1143
  %ldnewadr11193 = load double*, double** %lub1144
  %castn11194 = ptrtoint double* %ldnewadr11193 to i64
  %castb11195 = ptrtoint double* %badr11192 to i64
  %reladr11196 = sub i64 %castn11194, %castb11195
  %badr21197 = load double*, double** %orgbadr1075
  %ldnewadr21198 = load double*, double** %lub1076
  %castn21199 = ptrtoint double* %ldnewadr21198 to i64
  %castb21200 = ptrtoint double* %badr21197 to i64
  %reladr21201 = sub i64 %castn21199, %castb21200
  %cmpop1202 = icmp ne i64 %reladr11196, %reladr21201
  %newdetval1203 = zext i1 %cmpop1202 to i64
  %ldolddetval1204 = load i64, i64* @detectCounter
  %updetval1205 = or i64 %newdetval1203, %ldolddetval1204
  store i64 %updetval1205, i64* @detectCounter
  %badr11206 = load double*, double** %orgbadr1143
  %ldnewadr11207 = load double*, double** %lub1144
  %castn11208 = ptrtoint double* %ldnewadr11207 to i64
  %castb11209 = ptrtoint double* %badr11206 to i64
  %reladr11210 = sub i64 %castn11208, %castb11209
  %badr21211 = load double*, double** %orgbadr1092
  %ldnewadr21212 = load double*, double** %lub1093
  %castn21213 = ptrtoint double* %ldnewadr21212 to i64
  %castb21214 = ptrtoint double* %badr21211 to i64
  %reladr21215 = sub i64 %castn21213, %castb21214
  %cmpop1216 = icmp ne i64 %reladr11210, %reladr21215
  %newdetval1217 = zext i1 %cmpop1216 to i64
  %ldolddetval1218 = load i64, i64* @detectCounter
  %updetval1219 = or i64 %newdetval1217, %ldolddetval1218
  store i64 %updetval1219, i64* @detectCounter
  %badr11220 = load double*, double** %orgbadr1143
  %ldnewadr11221 = load double*, double** %lub1144
  %castn11222 = ptrtoint double* %ldnewadr11221 to i64
  %castb11223 = ptrtoint double* %badr11220 to i64
  %reladr11224 = sub i64 %castn11222, %castb11223
  %badr21225 = load double*, double** %orgbadr555
  %ldnewadr21226 = load double*, double** %lub556
  %castn21227 = ptrtoint double* %ldnewadr21226 to i64
  %castb21228 = ptrtoint double* %badr21225 to i64
  %reladr21229 = sub i64 %castn21227, %castb21228
  %cmpop1230 = icmp ne i64 %reladr11224, %reladr21229
  %newdetval1231 = zext i1 %cmpop1230 to i64
  %ldolddetval1232 = load i64, i64* @detectCounter
  %updetval1233 = or i64 %newdetval1231, %ldolddetval1232
  store i64 %updetval1233, i64* @detectCounter
  %badr11234 = load double*, double** %orgbadr1143
  %ldnewadr11235 = load double*, double** %lub1144
  %castn11236 = ptrtoint double* %ldnewadr11235 to i64
  %castb11237 = ptrtoint double* %badr11234 to i64
  %reladr11238 = sub i64 %castn11236, %castb11237
  %badr21239 = load double*, double** %orgbadr487
  %ldnewadr21240 = load double*, double** %lub488
  %castn21241 = ptrtoint double* %ldnewadr21240 to i64
  %castb21242 = ptrtoint double* %badr21239 to i64
  %reladr21243 = sub i64 %castn21241, %castb21242
  %cmpop1244 = icmp ne i64 %reladr11238, %reladr21243
  %newdetval1245 = zext i1 %cmpop1244 to i64
  %ldolddetval1246 = load i64, i64* @detectCounter
  %updetval1247 = or i64 %newdetval1245, %ldolddetval1246
  store i64 %updetval1247, i64* @detectCounter
  %badr11248 = load double*, double** %orgbadr1143
  %ldnewadr11249 = load double*, double** %lub1144
  %castn11250 = ptrtoint double* %ldnewadr11249 to i64
  %castb11251 = ptrtoint double* %badr11248 to i64
  %reladr11252 = sub i64 %castn11250, %castb11251
  %badr21253 = load double*, double** %orgbadr504
  %ldnewadr21254 = load double*, double** %lub505
  %castn21255 = ptrtoint double* %ldnewadr21254 to i64
  %castb21256 = ptrtoint double* %badr21253 to i64
  %reladr21257 = sub i64 %castn21255, %castb21256
  %cmpop1258 = icmp ne i64 %reladr11252, %reladr21257
  %newdetval1259 = zext i1 %cmpop1258 to i64
  %ldolddetval1260 = load i64, i64* @detectCounter
  %updetval1261 = or i64 %newdetval1259, %ldolddetval1260
  store i64 %updetval1261, i64* @detectCounter
  %badr11262 = load double*, double** %orgbadr1143
  %ldnewadr11263 = load double*, double** %lub1144
  %castn11264 = ptrtoint double* %ldnewadr11263 to i64
  %castb11265 = ptrtoint double* %badr11262 to i64
  %reladr11266 = sub i64 %castn11264, %castb11265
  %badr21267 = load double*, double** %orgbadr470
  %ldnewadr21268 = load double*, double** %lub471
  %castn21269 = ptrtoint double* %ldnewadr21268 to i64
  %castb21270 = ptrtoint double* %badr21267 to i64
  %reladr21271 = sub i64 %castn21269, %castb21270
  %cmpop1272 = icmp ne i64 %reladr11266, %reladr21271
  %newdetval1273 = zext i1 %cmpop1272 to i64
  %ldolddetval1274 = load i64, i64* @detectCounter
  %updetval1275 = or i64 %newdetval1273, %ldolddetval1274
  store i64 %updetval1275, i64* @detectCounter
  %badr11276 = load double*, double** %orgbadr1143
  %ldnewadr11277 = load double*, double** %lub1144
  %castn11278 = ptrtoint double* %ldnewadr11277 to i64
  %castb11279 = ptrtoint double* %badr11276 to i64
  %reladr11280 = sub i64 %castn11278, %castb11279
  %badr21281 = load double*, double** %orgbadr453
  %ldnewadr21282 = load double*, double** %lub454
  %castn21283 = ptrtoint double* %ldnewadr21282 to i64
  %castb21284 = ptrtoint double* %badr21281 to i64
  %reladr21285 = sub i64 %castn21283, %castb21284
  %cmpop1286 = icmp ne i64 %reladr11280, %reladr21285
  %newdetval1287 = zext i1 %cmpop1286 to i64
  %ldolddetval1288 = load i64, i64* @detectCounter
  %updetval1289 = or i64 %newdetval1287, %ldolddetval1288
  store i64 %updetval1289, i64* @detectCounter
  %badr11290 = load double*, double** %orgbadr1143
  %ldnewadr11291 = load double*, double** %lub1144
  %castn11292 = ptrtoint double* %ldnewadr11291 to i64
  %castb11293 = ptrtoint double* %badr11290 to i64
  %reladr11294 = sub i64 %castn11292, %castb11293
  %badr21295 = load double*, double** %orgbadr436
  %ldnewadr21296 = load double*, double** %lub437
  %castn21297 = ptrtoint double* %ldnewadr21296 to i64
  %castb21298 = ptrtoint double* %badr21295 to i64
  %reladr21299 = sub i64 %castn21297, %castb21298
  %cmpop1300 = icmp ne i64 %reladr11294, %reladr21299
  %newdetval1301 = zext i1 %cmpop1300 to i64
  %ldolddetval1302 = load i64, i64* @detectCounter
  %updetval1303 = or i64 %newdetval1301, %ldolddetval1302
  store i64 %updetval1303, i64* @detectCounter
  %badr11304 = load double*, double** %orgbadr1041
  %ldnewadr11305 = load double*, double** %lub1042
  %castn11306 = ptrtoint double* %ldnewadr11305 to i64
  %castb11307 = ptrtoint double* %badr11304 to i64
  %reladr11308 = sub i64 %castn11306, %castb11307
  %badr21309 = load double*, double** %orgbadr1058
  %ldnewadr21310 = load double*, double** %lub1059
  %castn21311 = ptrtoint double* %ldnewadr21310 to i64
  %castb21312 = ptrtoint double* %badr21309 to i64
  %reladr21313 = sub i64 %castn21311, %castb21312
  %cmpop1314 = icmp ne i64 %reladr11308, %reladr21313
  %newdetval1315 = zext i1 %cmpop1314 to i64
  %ldolddetval1316 = load i64, i64* @detectCounter
  %updetval1317 = or i64 %newdetval1315, %ldolddetval1316
  store i64 %updetval1317, i64* @detectCounter
  %badr11318 = load double*, double** %orgbadr1041
  %ldnewadr11319 = load double*, double** %lub1042
  %castn11320 = ptrtoint double* %ldnewadr11319 to i64
  %castb11321 = ptrtoint double* %badr11318 to i64
  %reladr11322 = sub i64 %castn11320, %castb11321
  %badr21323 = load double*, double** %orgbadr1024
  %ldnewadr21324 = load double*, double** %lub1025
  %castn21325 = ptrtoint double* %ldnewadr21324 to i64
  %castb21326 = ptrtoint double* %badr21323 to i64
  %reladr21327 = sub i64 %castn21325, %castb21326
  %cmpop1328 = icmp ne i64 %reladr11322, %reladr21327
  %newdetval1329 = zext i1 %cmpop1328 to i64
  %ldolddetval1330 = load i64, i64* @detectCounter
  %updetval1331 = or i64 %newdetval1329, %ldolddetval1330
  store i64 %updetval1331, i64* @detectCounter
  %badr11332 = load double*, double** %orgbadr1041
  %ldnewadr11333 = load double*, double** %lub1042
  %castn11334 = ptrtoint double* %ldnewadr11333 to i64
  %castb11335 = ptrtoint double* %badr11332 to i64
  %reladr11336 = sub i64 %castn11334, %castb11335
  %badr21337 = load double*, double** %orgbadr1075
  %ldnewadr21338 = load double*, double** %lub1076
  %castn21339 = ptrtoint double* %ldnewadr21338 to i64
  %castb21340 = ptrtoint double* %badr21337 to i64
  %reladr21341 = sub i64 %castn21339, %castb21340
  %cmpop1342 = icmp ne i64 %reladr11336, %reladr21341
  %newdetval1343 = zext i1 %cmpop1342 to i64
  %ldolddetval1344 = load i64, i64* @detectCounter
  %updetval1345 = or i64 %newdetval1343, %ldolddetval1344
  store i64 %updetval1345, i64* @detectCounter
  %badr11346 = load double*, double** %orgbadr1041
  %ldnewadr11347 = load double*, double** %lub1042
  %castn11348 = ptrtoint double* %ldnewadr11347 to i64
  %castb11349 = ptrtoint double* %badr11346 to i64
  %reladr11350 = sub i64 %castn11348, %castb11349
  %badr21351 = load double*, double** %orgbadr1092
  %ldnewadr21352 = load double*, double** %lub1093
  %castn21353 = ptrtoint double* %ldnewadr21352 to i64
  %castb21354 = ptrtoint double* %badr21351 to i64
  %reladr21355 = sub i64 %castn21353, %castb21354
  %cmpop1356 = icmp ne i64 %reladr11350, %reladr21355
  %newdetval1357 = zext i1 %cmpop1356 to i64
  %ldolddetval1358 = load i64, i64* @detectCounter
  %updetval1359 = or i64 %newdetval1357, %ldolddetval1358
  store i64 %updetval1359, i64* @detectCounter
  %badr11360 = load double*, double** %orgbadr1041
  %ldnewadr11361 = load double*, double** %lub1042
  %castn11362 = ptrtoint double* %ldnewadr11361 to i64
  %castb11363 = ptrtoint double* %badr11360 to i64
  %reladr11364 = sub i64 %castn11362, %castb11363
  %badr21365 = load double*, double** %orgbadr555
  %ldnewadr21366 = load double*, double** %lub556
  %castn21367 = ptrtoint double* %ldnewadr21366 to i64
  %castb21368 = ptrtoint double* %badr21365 to i64
  %reladr21369 = sub i64 %castn21367, %castb21368
  %cmpop1370 = icmp ne i64 %reladr11364, %reladr21369
  %newdetval1371 = zext i1 %cmpop1370 to i64
  %ldolddetval1372 = load i64, i64* @detectCounter
  %updetval1373 = or i64 %newdetval1371, %ldolddetval1372
  store i64 %updetval1373, i64* @detectCounter
  %badr11374 = load double*, double** %orgbadr1041
  %ldnewadr11375 = load double*, double** %lub1042
  %castn11376 = ptrtoint double* %ldnewadr11375 to i64
  %castb11377 = ptrtoint double* %badr11374 to i64
  %reladr11378 = sub i64 %castn11376, %castb11377
  %badr21379 = load double*, double** %orgbadr487
  %ldnewadr21380 = load double*, double** %lub488
  %castn21381 = ptrtoint double* %ldnewadr21380 to i64
  %castb21382 = ptrtoint double* %badr21379 to i64
  %reladr21383 = sub i64 %castn21381, %castb21382
  %cmpop1384 = icmp ne i64 %reladr11378, %reladr21383
  %newdetval1385 = zext i1 %cmpop1384 to i64
  %ldolddetval1386 = load i64, i64* @detectCounter
  %updetval1387 = or i64 %newdetval1385, %ldolddetval1386
  store i64 %updetval1387, i64* @detectCounter
  %badr11388 = load double*, double** %orgbadr1041
  %ldnewadr11389 = load double*, double** %lub1042
  %castn11390 = ptrtoint double* %ldnewadr11389 to i64
  %castb11391 = ptrtoint double* %badr11388 to i64
  %reladr11392 = sub i64 %castn11390, %castb11391
  %badr21393 = load double*, double** %orgbadr504
  %ldnewadr21394 = load double*, double** %lub505
  %castn21395 = ptrtoint double* %ldnewadr21394 to i64
  %castb21396 = ptrtoint double* %badr21393 to i64
  %reladr21397 = sub i64 %castn21395, %castb21396
  %cmpop1398 = icmp ne i64 %reladr11392, %reladr21397
  %newdetval1399 = zext i1 %cmpop1398 to i64
  %ldolddetval1400 = load i64, i64* @detectCounter
  %updetval1401 = or i64 %newdetval1399, %ldolddetval1400
  store i64 %updetval1401, i64* @detectCounter
  %badr11402 = load double*, double** %orgbadr1041
  %ldnewadr11403 = load double*, double** %lub1042
  %castn11404 = ptrtoint double* %ldnewadr11403 to i64
  %castb11405 = ptrtoint double* %badr11402 to i64
  %reladr11406 = sub i64 %castn11404, %castb11405
  %badr21407 = load double*, double** %orgbadr470
  %ldnewadr21408 = load double*, double** %lub471
  %castn21409 = ptrtoint double* %ldnewadr21408 to i64
  %castb21410 = ptrtoint double* %badr21407 to i64
  %reladr21411 = sub i64 %castn21409, %castb21410
  %cmpop1412 = icmp ne i64 %reladr11406, %reladr21411
  %newdetval1413 = zext i1 %cmpop1412 to i64
  %ldolddetval1414 = load i64, i64* @detectCounter
  %updetval1415 = or i64 %newdetval1413, %ldolddetval1414
  store i64 %updetval1415, i64* @detectCounter
  %badr11416 = load double*, double** %orgbadr1041
  %ldnewadr11417 = load double*, double** %lub1042
  %castn11418 = ptrtoint double* %ldnewadr11417 to i64
  %castb11419 = ptrtoint double* %badr11416 to i64
  %reladr11420 = sub i64 %castn11418, %castb11419
  %badr21421 = load double*, double** %orgbadr453
  %ldnewadr21422 = load double*, double** %lub454
  %castn21423 = ptrtoint double* %ldnewadr21422 to i64
  %castb21424 = ptrtoint double* %badr21421 to i64
  %reladr21425 = sub i64 %castn21423, %castb21424
  %cmpop1426 = icmp ne i64 %reladr11420, %reladr21425
  %newdetval1427 = zext i1 %cmpop1426 to i64
  %ldolddetval1428 = load i64, i64* @detectCounter
  %updetval1429 = or i64 %newdetval1427, %ldolddetval1428
  store i64 %updetval1429, i64* @detectCounter
  %badr11430 = load double*, double** %orgbadr1041
  %ldnewadr11431 = load double*, double** %lub1042
  %castn11432 = ptrtoint double* %ldnewadr11431 to i64
  %castb11433 = ptrtoint double* %badr11430 to i64
  %reladr11434 = sub i64 %castn11432, %castb11433
  %badr21435 = load double*, double** %orgbadr436
  %ldnewadr21436 = load double*, double** %lub437
  %castn21437 = ptrtoint double* %ldnewadr21436 to i64
  %castb21438 = ptrtoint double* %badr21435 to i64
  %reladr21439 = sub i64 %castn21437, %castb21438
  %cmpop1440 = icmp ne i64 %reladr11434, %reladr21439
  %newdetval1441 = zext i1 %cmpop1440 to i64
  %ldolddetval1442 = load i64, i64* @detectCounter
  %updetval1443 = or i64 %newdetval1441, %ldolddetval1442
  store i64 %updetval1443, i64* @detectCounter
  %badr11444 = load double*, double** %orgbadr1058
  %ldnewadr11445 = load double*, double** %lub1059
  %castn11446 = ptrtoint double* %ldnewadr11445 to i64
  %castb11447 = ptrtoint double* %badr11444 to i64
  %reladr11448 = sub i64 %castn11446, %castb11447
  %badr21449 = load double*, double** %orgbadr1024
  %ldnewadr21450 = load double*, double** %lub1025
  %castn21451 = ptrtoint double* %ldnewadr21450 to i64
  %castb21452 = ptrtoint double* %badr21449 to i64
  %reladr21453 = sub i64 %castn21451, %castb21452
  %cmpop1454 = icmp ne i64 %reladr11448, %reladr21453
  %newdetval1455 = zext i1 %cmpop1454 to i64
  %ldolddetval1456 = load i64, i64* @detectCounter
  %updetval1457 = or i64 %newdetval1455, %ldolddetval1456
  store i64 %updetval1457, i64* @detectCounter
  %badr11458 = load double*, double** %orgbadr1058
  %ldnewadr11459 = load double*, double** %lub1059
  %castn11460 = ptrtoint double* %ldnewadr11459 to i64
  %castb11461 = ptrtoint double* %badr11458 to i64
  %reladr11462 = sub i64 %castn11460, %castb11461
  %badr21463 = load double*, double** %orgbadr1075
  %ldnewadr21464 = load double*, double** %lub1076
  %castn21465 = ptrtoint double* %ldnewadr21464 to i64
  %castb21466 = ptrtoint double* %badr21463 to i64
  %reladr21467 = sub i64 %castn21465, %castb21466
  %cmpop1468 = icmp ne i64 %reladr11462, %reladr21467
  %newdetval1469 = zext i1 %cmpop1468 to i64
  %ldolddetval1470 = load i64, i64* @detectCounter
  %updetval1471 = or i64 %newdetval1469, %ldolddetval1470
  store i64 %updetval1471, i64* @detectCounter
  %badr11472 = load double*, double** %orgbadr1058
  %ldnewadr11473 = load double*, double** %lub1059
  %castn11474 = ptrtoint double* %ldnewadr11473 to i64
  %castb11475 = ptrtoint double* %badr11472 to i64
  %reladr11476 = sub i64 %castn11474, %castb11475
  %badr21477 = load double*, double** %orgbadr1092
  %ldnewadr21478 = load double*, double** %lub1093
  %castn21479 = ptrtoint double* %ldnewadr21478 to i64
  %castb21480 = ptrtoint double* %badr21477 to i64
  %reladr21481 = sub i64 %castn21479, %castb21480
  %cmpop1482 = icmp ne i64 %reladr11476, %reladr21481
  %newdetval1483 = zext i1 %cmpop1482 to i64
  %ldolddetval1484 = load i64, i64* @detectCounter
  %updetval1485 = or i64 %newdetval1483, %ldolddetval1484
  store i64 %updetval1485, i64* @detectCounter
  %badr11486 = load double*, double** %orgbadr1058
  %ldnewadr11487 = load double*, double** %lub1059
  %castn11488 = ptrtoint double* %ldnewadr11487 to i64
  %castb11489 = ptrtoint double* %badr11486 to i64
  %reladr11490 = sub i64 %castn11488, %castb11489
  %badr21491 = load double*, double** %orgbadr555
  %ldnewadr21492 = load double*, double** %lub556
  %castn21493 = ptrtoint double* %ldnewadr21492 to i64
  %castb21494 = ptrtoint double* %badr21491 to i64
  %reladr21495 = sub i64 %castn21493, %castb21494
  %cmpop1496 = icmp ne i64 %reladr11490, %reladr21495
  %newdetval1497 = zext i1 %cmpop1496 to i64
  %ldolddetval1498 = load i64, i64* @detectCounter
  %updetval1499 = or i64 %newdetval1497, %ldolddetval1498
  store i64 %updetval1499, i64* @detectCounter
  %badr11500 = load double*, double** %orgbadr1058
  %ldnewadr11501 = load double*, double** %lub1059
  %castn11502 = ptrtoint double* %ldnewadr11501 to i64
  %castb11503 = ptrtoint double* %badr11500 to i64
  %reladr11504 = sub i64 %castn11502, %castb11503
  %badr21505 = load double*, double** %orgbadr487
  %ldnewadr21506 = load double*, double** %lub488
  %castn21507 = ptrtoint double* %ldnewadr21506 to i64
  %castb21508 = ptrtoint double* %badr21505 to i64
  %reladr21509 = sub i64 %castn21507, %castb21508
  %cmpop1510 = icmp ne i64 %reladr11504, %reladr21509
  %newdetval1511 = zext i1 %cmpop1510 to i64
  %ldolddetval1512 = load i64, i64* @detectCounter
  %updetval1513 = or i64 %newdetval1511, %ldolddetval1512
  store i64 %updetval1513, i64* @detectCounter
  %badr11514 = load double*, double** %orgbadr1058
  %ldnewadr11515 = load double*, double** %lub1059
  %castn11516 = ptrtoint double* %ldnewadr11515 to i64
  %castb11517 = ptrtoint double* %badr11514 to i64
  %reladr11518 = sub i64 %castn11516, %castb11517
  %badr21519 = load double*, double** %orgbadr504
  %ldnewadr21520 = load double*, double** %lub505
  %castn21521 = ptrtoint double* %ldnewadr21520 to i64
  %castb21522 = ptrtoint double* %badr21519 to i64
  %reladr21523 = sub i64 %castn21521, %castb21522
  %cmpop1524 = icmp ne i64 %reladr11518, %reladr21523
  %newdetval1525 = zext i1 %cmpop1524 to i64
  %ldolddetval1526 = load i64, i64* @detectCounter
  %updetval1527 = or i64 %newdetval1525, %ldolddetval1526
  store i64 %updetval1527, i64* @detectCounter
  %badr11528 = load double*, double** %orgbadr1058
  %ldnewadr11529 = load double*, double** %lub1059
  %castn11530 = ptrtoint double* %ldnewadr11529 to i64
  %castb11531 = ptrtoint double* %badr11528 to i64
  %reladr11532 = sub i64 %castn11530, %castb11531
  %badr21533 = load double*, double** %orgbadr470
  %ldnewadr21534 = load double*, double** %lub471
  %castn21535 = ptrtoint double* %ldnewadr21534 to i64
  %castb21536 = ptrtoint double* %badr21533 to i64
  %reladr21537 = sub i64 %castn21535, %castb21536
  %cmpop1538 = icmp ne i64 %reladr11532, %reladr21537
  %newdetval1539 = zext i1 %cmpop1538 to i64
  %ldolddetval1540 = load i64, i64* @detectCounter
  %updetval1541 = or i64 %newdetval1539, %ldolddetval1540
  store i64 %updetval1541, i64* @detectCounter
  %badr11542 = load double*, double** %orgbadr1058
  %ldnewadr11543 = load double*, double** %lub1059
  %castn11544 = ptrtoint double* %ldnewadr11543 to i64
  %castb11545 = ptrtoint double* %badr11542 to i64
  %reladr11546 = sub i64 %castn11544, %castb11545
  %badr21547 = load double*, double** %orgbadr453
  %ldnewadr21548 = load double*, double** %lub454
  %castn21549 = ptrtoint double* %ldnewadr21548 to i64
  %castb21550 = ptrtoint double* %badr21547 to i64
  %reladr21551 = sub i64 %castn21549, %castb21550
  %cmpop1552 = icmp ne i64 %reladr11546, %reladr21551
  %newdetval1553 = zext i1 %cmpop1552 to i64
  %ldolddetval1554 = load i64, i64* @detectCounter
  %updetval1555 = or i64 %newdetval1553, %ldolddetval1554
  store i64 %updetval1555, i64* @detectCounter
  %badr11556 = load double*, double** %orgbadr1058
  %ldnewadr11557 = load double*, double** %lub1059
  %castn11558 = ptrtoint double* %ldnewadr11557 to i64
  %castb11559 = ptrtoint double* %badr11556 to i64
  %reladr11560 = sub i64 %castn11558, %castb11559
  %badr21561 = load double*, double** %orgbadr436
  %ldnewadr21562 = load double*, double** %lub437
  %castn21563 = ptrtoint double* %ldnewadr21562 to i64
  %castb21564 = ptrtoint double* %badr21561 to i64
  %reladr21565 = sub i64 %castn21563, %castb21564
  %cmpop1566 = icmp ne i64 %reladr11560, %reladr21565
  %newdetval1567 = zext i1 %cmpop1566 to i64
  %ldolddetval1568 = load i64, i64* @detectCounter
  %updetval1569 = or i64 %newdetval1567, %ldolddetval1568
  store i64 %updetval1569, i64* @detectCounter
  %badr11570 = load double*, double** %orgbadr1024
  %ldnewadr11571 = load double*, double** %lub1025
  %castn11572 = ptrtoint double* %ldnewadr11571 to i64
  %castb11573 = ptrtoint double* %badr11570 to i64
  %reladr11574 = sub i64 %castn11572, %castb11573
  %badr21575 = load double*, double** %orgbadr1075
  %ldnewadr21576 = load double*, double** %lub1076
  %castn21577 = ptrtoint double* %ldnewadr21576 to i64
  %castb21578 = ptrtoint double* %badr21575 to i64
  %reladr21579 = sub i64 %castn21577, %castb21578
  %cmpop1580 = icmp ne i64 %reladr11574, %reladr21579
  %newdetval1581 = zext i1 %cmpop1580 to i64
  %ldolddetval1582 = load i64, i64* @detectCounter
  %updetval1583 = or i64 %newdetval1581, %ldolddetval1582
  store i64 %updetval1583, i64* @detectCounter
  %badr11584 = load double*, double** %orgbadr1024
  %ldnewadr11585 = load double*, double** %lub1025
  %castn11586 = ptrtoint double* %ldnewadr11585 to i64
  %castb11587 = ptrtoint double* %badr11584 to i64
  %reladr11588 = sub i64 %castn11586, %castb11587
  %badr21589 = load double*, double** %orgbadr1092
  %ldnewadr21590 = load double*, double** %lub1093
  %castn21591 = ptrtoint double* %ldnewadr21590 to i64
  %castb21592 = ptrtoint double* %badr21589 to i64
  %reladr21593 = sub i64 %castn21591, %castb21592
  %cmpop1594 = icmp ne i64 %reladr11588, %reladr21593
  %newdetval1595 = zext i1 %cmpop1594 to i64
  %ldolddetval1596 = load i64, i64* @detectCounter
  %updetval1597 = or i64 %newdetval1595, %ldolddetval1596
  store i64 %updetval1597, i64* @detectCounter
  %badr11598 = load double*, double** %orgbadr1024
  %ldnewadr11599 = load double*, double** %lub1025
  %castn11600 = ptrtoint double* %ldnewadr11599 to i64
  %castb11601 = ptrtoint double* %badr11598 to i64
  %reladr11602 = sub i64 %castn11600, %castb11601
  %badr21603 = load double*, double** %orgbadr555
  %ldnewadr21604 = load double*, double** %lub556
  %castn21605 = ptrtoint double* %ldnewadr21604 to i64
  %castb21606 = ptrtoint double* %badr21603 to i64
  %reladr21607 = sub i64 %castn21605, %castb21606
  %cmpop1608 = icmp ne i64 %reladr11602, %reladr21607
  %newdetval1609 = zext i1 %cmpop1608 to i64
  %ldolddetval1610 = load i64, i64* @detectCounter
  %updetval1611 = or i64 %newdetval1609, %ldolddetval1610
  store i64 %updetval1611, i64* @detectCounter
  %badr11612 = load double*, double** %orgbadr1024
  %ldnewadr11613 = load double*, double** %lub1025
  %castn11614 = ptrtoint double* %ldnewadr11613 to i64
  %castb11615 = ptrtoint double* %badr11612 to i64
  %reladr11616 = sub i64 %castn11614, %castb11615
  %badr21617 = load double*, double** %orgbadr487
  %ldnewadr21618 = load double*, double** %lub488
  %castn21619 = ptrtoint double* %ldnewadr21618 to i64
  %castb21620 = ptrtoint double* %badr21617 to i64
  %reladr21621 = sub i64 %castn21619, %castb21620
  %cmpop1622 = icmp ne i64 %reladr11616, %reladr21621
  %newdetval1623 = zext i1 %cmpop1622 to i64
  %ldolddetval1624 = load i64, i64* @detectCounter
  %updetval1625 = or i64 %newdetval1623, %ldolddetval1624
  store i64 %updetval1625, i64* @detectCounter
  %badr11626 = load double*, double** %orgbadr1024
  %ldnewadr11627 = load double*, double** %lub1025
  %castn11628 = ptrtoint double* %ldnewadr11627 to i64
  %castb11629 = ptrtoint double* %badr11626 to i64
  %reladr11630 = sub i64 %castn11628, %castb11629
  %badr21631 = load double*, double** %orgbadr504
  %ldnewadr21632 = load double*, double** %lub505
  %castn21633 = ptrtoint double* %ldnewadr21632 to i64
  %castb21634 = ptrtoint double* %badr21631 to i64
  %reladr21635 = sub i64 %castn21633, %castb21634
  %cmpop1636 = icmp ne i64 %reladr11630, %reladr21635
  %newdetval1637 = zext i1 %cmpop1636 to i64
  %ldolddetval1638 = load i64, i64* @detectCounter
  %updetval1639 = or i64 %newdetval1637, %ldolddetval1638
  store i64 %updetval1639, i64* @detectCounter
  %badr11640 = load double*, double** %orgbadr1024
  %ldnewadr11641 = load double*, double** %lub1025
  %castn11642 = ptrtoint double* %ldnewadr11641 to i64
  %castb11643 = ptrtoint double* %badr11640 to i64
  %reladr11644 = sub i64 %castn11642, %castb11643
  %badr21645 = load double*, double** %orgbadr470
  %ldnewadr21646 = load double*, double** %lub471
  %castn21647 = ptrtoint double* %ldnewadr21646 to i64
  %castb21648 = ptrtoint double* %badr21645 to i64
  %reladr21649 = sub i64 %castn21647, %castb21648
  %cmpop1650 = icmp ne i64 %reladr11644, %reladr21649
  %newdetval1651 = zext i1 %cmpop1650 to i64
  %ldolddetval1652 = load i64, i64* @detectCounter
  %updetval1653 = or i64 %newdetval1651, %ldolddetval1652
  store i64 %updetval1653, i64* @detectCounter
  %badr11654 = load double*, double** %orgbadr1024
  %ldnewadr11655 = load double*, double** %lub1025
  %castn11656 = ptrtoint double* %ldnewadr11655 to i64
  %castb11657 = ptrtoint double* %badr11654 to i64
  %reladr11658 = sub i64 %castn11656, %castb11657
  %badr21659 = load double*, double** %orgbadr453
  %ldnewadr21660 = load double*, double** %lub454
  %castn21661 = ptrtoint double* %ldnewadr21660 to i64
  %castb21662 = ptrtoint double* %badr21659 to i64
  %reladr21663 = sub i64 %castn21661, %castb21662
  %cmpop1664 = icmp ne i64 %reladr11658, %reladr21663
  %newdetval1665 = zext i1 %cmpop1664 to i64
  %ldolddetval1666 = load i64, i64* @detectCounter
  %updetval1667 = or i64 %newdetval1665, %ldolddetval1666
  store i64 %updetval1667, i64* @detectCounter
  %badr11668 = load double*, double** %orgbadr1024
  %ldnewadr11669 = load double*, double** %lub1025
  %castn11670 = ptrtoint double* %ldnewadr11669 to i64
  %castb11671 = ptrtoint double* %badr11668 to i64
  %reladr11672 = sub i64 %castn11670, %castb11671
  %badr21673 = load double*, double** %orgbadr436
  %ldnewadr21674 = load double*, double** %lub437
  %castn21675 = ptrtoint double* %ldnewadr21674 to i64
  %castb21676 = ptrtoint double* %badr21673 to i64
  %reladr21677 = sub i64 %castn21675, %castb21676
  %cmpop1678 = icmp ne i64 %reladr11672, %reladr21677
  %newdetval1679 = zext i1 %cmpop1678 to i64
  %ldolddetval1680 = load i64, i64* @detectCounter
  %updetval1681 = or i64 %newdetval1679, %ldolddetval1680
  store i64 %updetval1681, i64* @detectCounter
  %badr11682 = load double*, double** %orgbadr1075
  %ldnewadr11683 = load double*, double** %lub1076
  %castn11684 = ptrtoint double* %ldnewadr11683 to i64
  %castb11685 = ptrtoint double* %badr11682 to i64
  %reladr11686 = sub i64 %castn11684, %castb11685
  %badr21687 = load double*, double** %orgbadr1092
  %ldnewadr21688 = load double*, double** %lub1093
  %castn21689 = ptrtoint double* %ldnewadr21688 to i64
  %castb21690 = ptrtoint double* %badr21687 to i64
  %reladr21691 = sub i64 %castn21689, %castb21690
  %cmpop1692 = icmp ne i64 %reladr11686, %reladr21691
  %newdetval1693 = zext i1 %cmpop1692 to i64
  %ldolddetval1694 = load i64, i64* @detectCounter
  %updetval1695 = or i64 %newdetval1693, %ldolddetval1694
  store i64 %updetval1695, i64* @detectCounter
  %badr11696 = load double*, double** %orgbadr1075
  %ldnewadr11697 = load double*, double** %lub1076
  %castn11698 = ptrtoint double* %ldnewadr11697 to i64
  %castb11699 = ptrtoint double* %badr11696 to i64
  %reladr11700 = sub i64 %castn11698, %castb11699
  %badr21701 = load double*, double** %orgbadr555
  %ldnewadr21702 = load double*, double** %lub556
  %castn21703 = ptrtoint double* %ldnewadr21702 to i64
  %castb21704 = ptrtoint double* %badr21701 to i64
  %reladr21705 = sub i64 %castn21703, %castb21704
  %cmpop1706 = icmp ne i64 %reladr11700, %reladr21705
  %newdetval1707 = zext i1 %cmpop1706 to i64
  %ldolddetval1708 = load i64, i64* @detectCounter
  %updetval1709 = or i64 %newdetval1707, %ldolddetval1708
  store i64 %updetval1709, i64* @detectCounter
  %badr11710 = load double*, double** %orgbadr1075
  %ldnewadr11711 = load double*, double** %lub1076
  %castn11712 = ptrtoint double* %ldnewadr11711 to i64
  %castb11713 = ptrtoint double* %badr11710 to i64
  %reladr11714 = sub i64 %castn11712, %castb11713
  %badr21715 = load double*, double** %orgbadr487
  %ldnewadr21716 = load double*, double** %lub488
  %castn21717 = ptrtoint double* %ldnewadr21716 to i64
  %castb21718 = ptrtoint double* %badr21715 to i64
  %reladr21719 = sub i64 %castn21717, %castb21718
  %cmpop1720 = icmp ne i64 %reladr11714, %reladr21719
  %newdetval1721 = zext i1 %cmpop1720 to i64
  %ldolddetval1722 = load i64, i64* @detectCounter
  %updetval1723 = or i64 %newdetval1721, %ldolddetval1722
  store i64 %updetval1723, i64* @detectCounter
  %badr11724 = load double*, double** %orgbadr1075
  %ldnewadr11725 = load double*, double** %lub1076
  %castn11726 = ptrtoint double* %ldnewadr11725 to i64
  %castb11727 = ptrtoint double* %badr11724 to i64
  %reladr11728 = sub i64 %castn11726, %castb11727
  %badr21729 = load double*, double** %orgbadr504
  %ldnewadr21730 = load double*, double** %lub505
  %castn21731 = ptrtoint double* %ldnewadr21730 to i64
  %castb21732 = ptrtoint double* %badr21729 to i64
  %reladr21733 = sub i64 %castn21731, %castb21732
  %cmpop1734 = icmp ne i64 %reladr11728, %reladr21733
  %newdetval1735 = zext i1 %cmpop1734 to i64
  %ldolddetval1736 = load i64, i64* @detectCounter
  %updetval1737 = or i64 %newdetval1735, %ldolddetval1736
  store i64 %updetval1737, i64* @detectCounter
  %badr11738 = load double*, double** %orgbadr1075
  %ldnewadr11739 = load double*, double** %lub1076
  %castn11740 = ptrtoint double* %ldnewadr11739 to i64
  %castb11741 = ptrtoint double* %badr11738 to i64
  %reladr11742 = sub i64 %castn11740, %castb11741
  %badr21743 = load double*, double** %orgbadr470
  %ldnewadr21744 = load double*, double** %lub471
  %castn21745 = ptrtoint double* %ldnewadr21744 to i64
  %castb21746 = ptrtoint double* %badr21743 to i64
  %reladr21747 = sub i64 %castn21745, %castb21746
  %cmpop1748 = icmp ne i64 %reladr11742, %reladr21747
  %newdetval1749 = zext i1 %cmpop1748 to i64
  %ldolddetval1750 = load i64, i64* @detectCounter
  %updetval1751 = or i64 %newdetval1749, %ldolddetval1750
  store i64 %updetval1751, i64* @detectCounter
  %badr11752 = load double*, double** %orgbadr1075
  %ldnewadr11753 = load double*, double** %lub1076
  %castn11754 = ptrtoint double* %ldnewadr11753 to i64
  %castb11755 = ptrtoint double* %badr11752 to i64
  %reladr11756 = sub i64 %castn11754, %castb11755
  %badr21757 = load double*, double** %orgbadr453
  %ldnewadr21758 = load double*, double** %lub454
  %castn21759 = ptrtoint double* %ldnewadr21758 to i64
  %castb21760 = ptrtoint double* %badr21757 to i64
  %reladr21761 = sub i64 %castn21759, %castb21760
  %cmpop1762 = icmp ne i64 %reladr11756, %reladr21761
  %newdetval1763 = zext i1 %cmpop1762 to i64
  %ldolddetval1764 = load i64, i64* @detectCounter
  %updetval1765 = or i64 %newdetval1763, %ldolddetval1764
  store i64 %updetval1765, i64* @detectCounter
  %badr11766 = load double*, double** %orgbadr1075
  %ldnewadr11767 = load double*, double** %lub1076
  %castn11768 = ptrtoint double* %ldnewadr11767 to i64
  %castb11769 = ptrtoint double* %badr11766 to i64
  %reladr11770 = sub i64 %castn11768, %castb11769
  %badr21771 = load double*, double** %orgbadr436
  %ldnewadr21772 = load double*, double** %lub437
  %castn21773 = ptrtoint double* %ldnewadr21772 to i64
  %castb21774 = ptrtoint double* %badr21771 to i64
  %reladr21775 = sub i64 %castn21773, %castb21774
  %cmpop1776 = icmp ne i64 %reladr11770, %reladr21775
  %newdetval1777 = zext i1 %cmpop1776 to i64
  %ldolddetval1778 = load i64, i64* @detectCounter
  %updetval1779 = or i64 %newdetval1777, %ldolddetval1778
  store i64 %updetval1779, i64* @detectCounter
  %badr11780 = load double*, double** %orgbadr1092
  %ldnewadr11781 = load double*, double** %lub1093
  %castn11782 = ptrtoint double* %ldnewadr11781 to i64
  %castb11783 = ptrtoint double* %badr11780 to i64
  %reladr11784 = sub i64 %castn11782, %castb11783
  %badr21785 = load double*, double** %orgbadr555
  %ldnewadr21786 = load double*, double** %lub556
  %castn21787 = ptrtoint double* %ldnewadr21786 to i64
  %castb21788 = ptrtoint double* %badr21785 to i64
  %reladr21789 = sub i64 %castn21787, %castb21788
  %cmpop1790 = icmp ne i64 %reladr11784, %reladr21789
  %newdetval1791 = zext i1 %cmpop1790 to i64
  %ldolddetval1792 = load i64, i64* @detectCounter
  %updetval1793 = or i64 %newdetval1791, %ldolddetval1792
  store i64 %updetval1793, i64* @detectCounter
  %badr11794 = load double*, double** %orgbadr1092
  %ldnewadr11795 = load double*, double** %lub1093
  %castn11796 = ptrtoint double* %ldnewadr11795 to i64
  %castb11797 = ptrtoint double* %badr11794 to i64
  %reladr11798 = sub i64 %castn11796, %castb11797
  %badr21799 = load double*, double** %orgbadr487
  %ldnewadr21800 = load double*, double** %lub488
  %castn21801 = ptrtoint double* %ldnewadr21800 to i64
  %castb21802 = ptrtoint double* %badr21799 to i64
  %reladr21803 = sub i64 %castn21801, %castb21802
  %cmpop1804 = icmp ne i64 %reladr11798, %reladr21803
  %newdetval1805 = zext i1 %cmpop1804 to i64
  %ldolddetval1806 = load i64, i64* @detectCounter
  %updetval1807 = or i64 %newdetval1805, %ldolddetval1806
  store i64 %updetval1807, i64* @detectCounter
  %badr11808 = load double*, double** %orgbadr1092
  %ldnewadr11809 = load double*, double** %lub1093
  %castn11810 = ptrtoint double* %ldnewadr11809 to i64
  %castb11811 = ptrtoint double* %badr11808 to i64
  %reladr11812 = sub i64 %castn11810, %castb11811
  %badr21813 = load double*, double** %orgbadr504
  %ldnewadr21814 = load double*, double** %lub505
  %castn21815 = ptrtoint double* %ldnewadr21814 to i64
  %castb21816 = ptrtoint double* %badr21813 to i64
  %reladr21817 = sub i64 %castn21815, %castb21816
  %cmpop1818 = icmp ne i64 %reladr11812, %reladr21817
  %newdetval1819 = zext i1 %cmpop1818 to i64
  %ldolddetval1820 = load i64, i64* @detectCounter
  %updetval1821 = or i64 %newdetval1819, %ldolddetval1820
  store i64 %updetval1821, i64* @detectCounter
  %badr11822 = load double*, double** %orgbadr1092
  %ldnewadr11823 = load double*, double** %lub1093
  %castn11824 = ptrtoint double* %ldnewadr11823 to i64
  %castb11825 = ptrtoint double* %badr11822 to i64
  %reladr11826 = sub i64 %castn11824, %castb11825
  %badr21827 = load double*, double** %orgbadr470
  %ldnewadr21828 = load double*, double** %lub471
  %castn21829 = ptrtoint double* %ldnewadr21828 to i64
  %castb21830 = ptrtoint double* %badr21827 to i64
  %reladr21831 = sub i64 %castn21829, %castb21830
  %cmpop1832 = icmp ne i64 %reladr11826, %reladr21831
  %newdetval1833 = zext i1 %cmpop1832 to i64
  %ldolddetval1834 = load i64, i64* @detectCounter
  %updetval1835 = or i64 %newdetval1833, %ldolddetval1834
  store i64 %updetval1835, i64* @detectCounter
  %badr11836 = load double*, double** %orgbadr1092
  %ldnewadr11837 = load double*, double** %lub1093
  %castn11838 = ptrtoint double* %ldnewadr11837 to i64
  %castb11839 = ptrtoint double* %badr11836 to i64
  %reladr11840 = sub i64 %castn11838, %castb11839
  %badr21841 = load double*, double** %orgbadr453
  %ldnewadr21842 = load double*, double** %lub454
  %castn21843 = ptrtoint double* %ldnewadr21842 to i64
  %castb21844 = ptrtoint double* %badr21841 to i64
  %reladr21845 = sub i64 %castn21843, %castb21844
  %cmpop1846 = icmp ne i64 %reladr11840, %reladr21845
  %newdetval1847 = zext i1 %cmpop1846 to i64
  %ldolddetval1848 = load i64, i64* @detectCounter
  %updetval1849 = or i64 %newdetval1847, %ldolddetval1848
  store i64 %updetval1849, i64* @detectCounter
  %badr11850 = load double*, double** %orgbadr1092
  %ldnewadr11851 = load double*, double** %lub1093
  %castn11852 = ptrtoint double* %ldnewadr11851 to i64
  %castb11853 = ptrtoint double* %badr11850 to i64
  %reladr11854 = sub i64 %castn11852, %castb11853
  %badr21855 = load double*, double** %orgbadr436
  %ldnewadr21856 = load double*, double** %lub437
  %castn21857 = ptrtoint double* %ldnewadr21856 to i64
  %castb21858 = ptrtoint double* %badr21855 to i64
  %reladr21859 = sub i64 %castn21857, %castb21858
  %cmpop1860 = icmp ne i64 %reladr11854, %reladr21859
  %newdetval1861 = zext i1 %cmpop1860 to i64
  %ldolddetval1862 = load i64, i64* @detectCounter
  %updetval1863 = or i64 %newdetval1861, %ldolddetval1862
  store i64 %updetval1863, i64* @detectCounter
  %badr11864 = load double*, double** %orgbadr555
  %ldnewadr11865 = load double*, double** %lub556
  %castn11866 = ptrtoint double* %ldnewadr11865 to i64
  %castb11867 = ptrtoint double* %badr11864 to i64
  %reladr11868 = sub i64 %castn11866, %castb11867
  %badr21869 = load double*, double** %orgbadr487
  %ldnewadr21870 = load double*, double** %lub488
  %castn21871 = ptrtoint double* %ldnewadr21870 to i64
  %castb21872 = ptrtoint double* %badr21869 to i64
  %reladr21873 = sub i64 %castn21871, %castb21872
  %cmpop1874 = icmp ne i64 %reladr11868, %reladr21873
  %newdetval1875 = zext i1 %cmpop1874 to i64
  %ldolddetval1876 = load i64, i64* @detectCounter
  %updetval1877 = or i64 %newdetval1875, %ldolddetval1876
  store i64 %updetval1877, i64* @detectCounter
  %badr11878 = load double*, double** %orgbadr555
  %ldnewadr11879 = load double*, double** %lub556
  %castn11880 = ptrtoint double* %ldnewadr11879 to i64
  %castb11881 = ptrtoint double* %badr11878 to i64
  %reladr11882 = sub i64 %castn11880, %castb11881
  %badr21883 = load double*, double** %orgbadr504
  %ldnewadr21884 = load double*, double** %lub505
  %castn21885 = ptrtoint double* %ldnewadr21884 to i64
  %castb21886 = ptrtoint double* %badr21883 to i64
  %reladr21887 = sub i64 %castn21885, %castb21886
  %cmpop1888 = icmp ne i64 %reladr11882, %reladr21887
  %newdetval1889 = zext i1 %cmpop1888 to i64
  %ldolddetval1890 = load i64, i64* @detectCounter
  %updetval1891 = or i64 %newdetval1889, %ldolddetval1890
  store i64 %updetval1891, i64* @detectCounter
  %badr11892 = load double*, double** %orgbadr555
  %ldnewadr11893 = load double*, double** %lub556
  %castn11894 = ptrtoint double* %ldnewadr11893 to i64
  %castb11895 = ptrtoint double* %badr11892 to i64
  %reladr11896 = sub i64 %castn11894, %castb11895
  %badr21897 = load double*, double** %orgbadr470
  %ldnewadr21898 = load double*, double** %lub471
  %castn21899 = ptrtoint double* %ldnewadr21898 to i64
  %castb21900 = ptrtoint double* %badr21897 to i64
  %reladr21901 = sub i64 %castn21899, %castb21900
  %cmpop1902 = icmp ne i64 %reladr11896, %reladr21901
  %newdetval1903 = zext i1 %cmpop1902 to i64
  %ldolddetval1904 = load i64, i64* @detectCounter
  %updetval1905 = or i64 %newdetval1903, %ldolddetval1904
  store i64 %updetval1905, i64* @detectCounter
  %badr11906 = load double*, double** %orgbadr555
  %ldnewadr11907 = load double*, double** %lub556
  %castn11908 = ptrtoint double* %ldnewadr11907 to i64
  %castb11909 = ptrtoint double* %badr11906 to i64
  %reladr11910 = sub i64 %castn11908, %castb11909
  %badr21911 = load double*, double** %orgbadr453
  %ldnewadr21912 = load double*, double** %lub454
  %castn21913 = ptrtoint double* %ldnewadr21912 to i64
  %castb21914 = ptrtoint double* %badr21911 to i64
  %reladr21915 = sub i64 %castn21913, %castb21914
  %cmpop1916 = icmp ne i64 %reladr11910, %reladr21915
  %newdetval1917 = zext i1 %cmpop1916 to i64
  %ldolddetval1918 = load i64, i64* @detectCounter
  %updetval1919 = or i64 %newdetval1917, %ldolddetval1918
  store i64 %updetval1919, i64* @detectCounter
  %badr11920 = load double*, double** %orgbadr555
  %ldnewadr11921 = load double*, double** %lub556
  %castn11922 = ptrtoint double* %ldnewadr11921 to i64
  %castb11923 = ptrtoint double* %badr11920 to i64
  %reladr11924 = sub i64 %castn11922, %castb11923
  %badr21925 = load double*, double** %orgbadr436
  %ldnewadr21926 = load double*, double** %lub437
  %castn21927 = ptrtoint double* %ldnewadr21926 to i64
  %castb21928 = ptrtoint double* %badr21925 to i64
  %reladr21929 = sub i64 %castn21927, %castb21928
  %cmpop1930 = icmp ne i64 %reladr11924, %reladr21929
  %newdetval1931 = zext i1 %cmpop1930 to i64
  %ldolddetval1932 = load i64, i64* @detectCounter
  %updetval1933 = or i64 %newdetval1931, %ldolddetval1932
  store i64 %updetval1933, i64* @detectCounter
  %badr11934 = load double*, double** %orgbadr487
  %ldnewadr11935 = load double*, double** %lub488
  %castn11936 = ptrtoint double* %ldnewadr11935 to i64
  %castb11937 = ptrtoint double* %badr11934 to i64
  %reladr11938 = sub i64 %castn11936, %castb11937
  %badr21939 = load double*, double** %orgbadr504
  %ldnewadr21940 = load double*, double** %lub505
  %castn21941 = ptrtoint double* %ldnewadr21940 to i64
  %castb21942 = ptrtoint double* %badr21939 to i64
  %reladr21943 = sub i64 %castn21941, %castb21942
  %cmpop1944 = icmp ne i64 %reladr11938, %reladr21943
  %newdetval1945 = zext i1 %cmpop1944 to i64
  %ldolddetval1946 = load i64, i64* @detectCounter
  %updetval1947 = or i64 %newdetval1945, %ldolddetval1946
  store i64 %updetval1947, i64* @detectCounter
  %badr11948 = load double*, double** %orgbadr487
  %ldnewadr11949 = load double*, double** %lub488
  %castn11950 = ptrtoint double* %ldnewadr11949 to i64
  %castb11951 = ptrtoint double* %badr11948 to i64
  %reladr11952 = sub i64 %castn11950, %castb11951
  %badr21953 = load double*, double** %orgbadr470
  %ldnewadr21954 = load double*, double** %lub471
  %castn21955 = ptrtoint double* %ldnewadr21954 to i64
  %castb21956 = ptrtoint double* %badr21953 to i64
  %reladr21957 = sub i64 %castn21955, %castb21956
  %cmpop1958 = icmp ne i64 %reladr11952, %reladr21957
  %newdetval1959 = zext i1 %cmpop1958 to i64
  %ldolddetval1960 = load i64, i64* @detectCounter
  %updetval1961 = or i64 %newdetval1959, %ldolddetval1960
  store i64 %updetval1961, i64* @detectCounter
  %badr11962 = load double*, double** %orgbadr487
  %ldnewadr11963 = load double*, double** %lub488
  %castn11964 = ptrtoint double* %ldnewadr11963 to i64
  %castb11965 = ptrtoint double* %badr11962 to i64
  %reladr11966 = sub i64 %castn11964, %castb11965
  %badr21967 = load double*, double** %orgbadr453
  %ldnewadr21968 = load double*, double** %lub454
  %castn21969 = ptrtoint double* %ldnewadr21968 to i64
  %castb21970 = ptrtoint double* %badr21967 to i64
  %reladr21971 = sub i64 %castn21969, %castb21970
  %cmpop1972 = icmp ne i64 %reladr11966, %reladr21971
  %newdetval1973 = zext i1 %cmpop1972 to i64
  %ldolddetval1974 = load i64, i64* @detectCounter
  %updetval1975 = or i64 %newdetval1973, %ldolddetval1974
  store i64 %updetval1975, i64* @detectCounter
  %badr11976 = load double*, double** %orgbadr487
  %ldnewadr11977 = load double*, double** %lub488
  %castn11978 = ptrtoint double* %ldnewadr11977 to i64
  %castb11979 = ptrtoint double* %badr11976 to i64
  %reladr11980 = sub i64 %castn11978, %castb11979
  %badr21981 = load double*, double** %orgbadr436
  %ldnewadr21982 = load double*, double** %lub437
  %castn21983 = ptrtoint double* %ldnewadr21982 to i64
  %castb21984 = ptrtoint double* %badr21981 to i64
  %reladr21985 = sub i64 %castn21983, %castb21984
  %cmpop1986 = icmp ne i64 %reladr11980, %reladr21985
  %newdetval1987 = zext i1 %cmpop1986 to i64
  %ldolddetval1988 = load i64, i64* @detectCounter
  %updetval1989 = or i64 %newdetval1987, %ldolddetval1988
  store i64 %updetval1989, i64* @detectCounter
  %badr11990 = load double*, double** %orgbadr504
  %ldnewadr11991 = load double*, double** %lub505
  %castn11992 = ptrtoint double* %ldnewadr11991 to i64
  %castb11993 = ptrtoint double* %badr11990 to i64
  %reladr11994 = sub i64 %castn11992, %castb11993
  %badr21995 = load double*, double** %orgbadr470
  %ldnewadr21996 = load double*, double** %lub471
  %castn21997 = ptrtoint double* %ldnewadr21996 to i64
  %castb21998 = ptrtoint double* %badr21995 to i64
  %reladr21999 = sub i64 %castn21997, %castb21998
  %cmpop2000 = icmp ne i64 %reladr11994, %reladr21999
  %newdetval2001 = zext i1 %cmpop2000 to i64
  %ldolddetval2002 = load i64, i64* @detectCounter
  %updetval2003 = or i64 %newdetval2001, %ldolddetval2002
  store i64 %updetval2003, i64* @detectCounter
  %badr12004 = load double*, double** %orgbadr504
  %ldnewadr12005 = load double*, double** %lub505
  %castn12006 = ptrtoint double* %ldnewadr12005 to i64
  %castb12007 = ptrtoint double* %badr12004 to i64
  %reladr12008 = sub i64 %castn12006, %castb12007
  %badr22009 = load double*, double** %orgbadr453
  %ldnewadr22010 = load double*, double** %lub454
  %castn22011 = ptrtoint double* %ldnewadr22010 to i64
  %castb22012 = ptrtoint double* %badr22009 to i64
  %reladr22013 = sub i64 %castn22011, %castb22012
  %cmpop2014 = icmp ne i64 %reladr12008, %reladr22013
  %newdetval2015 = zext i1 %cmpop2014 to i64
  %ldolddetval2016 = load i64, i64* @detectCounter
  %updetval2017 = or i64 %newdetval2015, %ldolddetval2016
  store i64 %updetval2017, i64* @detectCounter
  %badr12018 = load double*, double** %orgbadr504
  %ldnewadr12019 = load double*, double** %lub505
  %castn12020 = ptrtoint double* %ldnewadr12019 to i64
  %castb12021 = ptrtoint double* %badr12018 to i64
  %reladr12022 = sub i64 %castn12020, %castb12021
  %badr22023 = load double*, double** %orgbadr436
  %ldnewadr22024 = load double*, double** %lub437
  %castn22025 = ptrtoint double* %ldnewadr22024 to i64
  %castb22026 = ptrtoint double* %badr22023 to i64
  %reladr22027 = sub i64 %castn22025, %castb22026
  %cmpop2028 = icmp ne i64 %reladr12022, %reladr22027
  %newdetval2029 = zext i1 %cmpop2028 to i64
  %ldolddetval2030 = load i64, i64* @detectCounter
  %updetval2031 = or i64 %newdetval2029, %ldolddetval2030
  store i64 %updetval2031, i64* @detectCounter
  %badr12032 = load double*, double** %orgbadr470
  %ldnewadr12033 = load double*, double** %lub471
  %castn12034 = ptrtoint double* %ldnewadr12033 to i64
  %castb12035 = ptrtoint double* %badr12032 to i64
  %reladr12036 = sub i64 %castn12034, %castb12035
  %badr22037 = load double*, double** %orgbadr453
  %ldnewadr22038 = load double*, double** %lub454
  %castn22039 = ptrtoint double* %ldnewadr22038 to i64
  %castb22040 = ptrtoint double* %badr22037 to i64
  %reladr22041 = sub i64 %castn22039, %castb22040
  %cmpop2042 = icmp ne i64 %reladr12036, %reladr22041
  %newdetval2043 = zext i1 %cmpop2042 to i64
  %ldolddetval2044 = load i64, i64* @detectCounter
  %updetval2045 = or i64 %newdetval2043, %ldolddetval2044
  store i64 %updetval2045, i64* @detectCounter
  %badr12046 = load double*, double** %orgbadr470
  %ldnewadr12047 = load double*, double** %lub471
  %castn12048 = ptrtoint double* %ldnewadr12047 to i64
  %castb12049 = ptrtoint double* %badr12046 to i64
  %reladr12050 = sub i64 %castn12048, %castb12049
  %badr22051 = load double*, double** %orgbadr436
  %ldnewadr22052 = load double*, double** %lub437
  %castn22053 = ptrtoint double* %ldnewadr22052 to i64
  %castb22054 = ptrtoint double* %badr22051 to i64
  %reladr22055 = sub i64 %castn22053, %castb22054
  %cmpop2056 = icmp ne i64 %reladr12050, %reladr22055
  %newdetval2057 = zext i1 %cmpop2056 to i64
  %ldolddetval2058 = load i64, i64* @detectCounter
  %updetval2059 = or i64 %newdetval2057, %ldolddetval2058
  store i64 %updetval2059, i64* @detectCounter
  %badr12060 = load double*, double** %orgbadr453
  %ldnewadr12061 = load double*, double** %lub454
  %castn12062 = ptrtoint double* %ldnewadr12061 to i64
  %castb12063 = ptrtoint double* %badr12060 to i64
  %reladr12064 = sub i64 %castn12062, %castb12063
  %badr22065 = load double*, double** %orgbadr436
  %ldnewadr22066 = load double*, double** %lub437
  %castn22067 = ptrtoint double* %ldnewadr22066 to i64
  %castb22068 = ptrtoint double* %badr22065 to i64
  %reladr22069 = sub i64 %castn22067, %castb22068
  %cmpop2070 = icmp ne i64 %reladr12064, %reladr22069
  %newdetval2071 = zext i1 %cmpop2070 to i64
  %ldolddetval2072 = load i64, i64* @detectCounter
  %updetval2073 = or i64 %newdetval2071, %ldolddetval2072
  store i64 %updetval2073, i64* @detectCounter
  %badr12074 = load double*, double** %orgbadr249
  %ldnewadr12075 = load double*, double** %lub250
  %castn12076 = ptrtoint double* %ldnewadr12075 to i64
  %castb12077 = ptrtoint double* %badr12074 to i64
  %reladr12078 = sub i64 %castn12076, %castb12077
  %badr22079 = load double*, double** %orgbadr837
  %ldnewadr22080 = load double*, double** %lub838
  %castn22081 = ptrtoint double* %ldnewadr22080 to i64
  %castb22082 = ptrtoint double* %badr22079 to i64
  %reladr22083 = sub i64 %castn22081, %castb22082
  %cmpop2084 = icmp ne i64 %reladr12078, %reladr22083
  %newdetval2085 = zext i1 %cmpop2084 to i64
  %ldolddetval2086 = load i64, i64* @detectCounter
  %updetval2087 = or i64 %newdetval2085, %ldolddetval2086
  store i64 %updetval2087, i64* @detectCounter
  %badr12088 = load double*, double** %orgbadr648
  %ldnewadr12089 = load double*, double** %lub649
  %castn12090 = ptrtoint double* %ldnewadr12089 to i64
  %castb12091 = ptrtoint double* %badr12088 to i64
  %reladr12092 = sub i64 %castn12090, %castb12091
  %badr22093 = load double*, double** %orgbadr60
  %ldnewadr22094 = load double*, double** %lub61
  %castn22095 = ptrtoint double* %ldnewadr22094 to i64
  %castb22096 = ptrtoint double* %badr22093 to i64
  %reladr22097 = sub i64 %castn22095, %castb22096
  %cmpop2098 = icmp ne i64 %reladr12092, %reladr22097
  %newdetval2099 = zext i1 %cmpop2098 to i64
  %ldolddetval2100 = load i64, i64* @detectCounter
  %updetval2101 = or i64 %newdetval2099, %ldolddetval2100
  store i64 %updetval2101, i64* @detectCounter
  %badr12102 = load double*, double** %orgbadr1
  %ldnewadr12103 = load double*, double** %lub2
  %castn12104 = ptrtoint double* %ldnewadr12103 to i64
  %castb12105 = ptrtoint double* %badr12102 to i64
  %reladr12106 = sub i64 %castn12104, %castb12105
  %badr22107 = load double*, double** %orgbadr15
  %ldnewadr22108 = load double*, double** %lub16
  %castn22109 = ptrtoint double* %ldnewadr22108 to i64
  %castb22110 = ptrtoint double* %badr22107 to i64
  %reladr22111 = sub i64 %castn22109, %castb22110
  %cmpop2112 = icmp ne i64 %reladr12106, %reladr22111
  %newdetval2113 = zext i1 %cmpop2112 to i64
  %ldolddetval2114 = load i64, i64* @detectCounter
  %updetval2115 = or i64 %newdetval2113, %ldolddetval2114
  store i64 %updetval2115, i64* @detectCounter
  %badr12116 = load double*, double** %orgbadr1
  %ldnewadr12117 = load double*, double** %lub2
  %castn12118 = ptrtoint double* %ldnewadr12117 to i64
  %castb12119 = ptrtoint double* %badr12116 to i64
  %reladr12120 = sub i64 %castn12118, %castb12119
  %badr22121 = load double*, double** %orgbadr593
  %ldnewadr22122 = load double*, double** %lub594
  %castn22123 = ptrtoint double* %ldnewadr22122 to i64
  %castb22124 = ptrtoint double* %badr22121 to i64
  %reladr22125 = sub i64 %castn22123, %castb22124
  %cmpop2126 = icmp ne i64 %reladr12120, %reladr22125
  %newdetval2127 = zext i1 %cmpop2126 to i64
  %ldolddetval2128 = load i64, i64* @detectCounter
  %updetval2129 = or i64 %newdetval2127, %ldolddetval2128
  store i64 %updetval2129, i64* @detectCounter
  %badr12130 = load double*, double** %orgbadr1
  %ldnewadr12131 = load double*, double** %lub2
  %castn12132 = ptrtoint double* %ldnewadr12131 to i64
  %castb12133 = ptrtoint double* %badr12130 to i64
  %reladr12134 = sub i64 %castn12132, %castb12133
  %badr22135 = load double*, double** %orgbadr579
  %ldnewadr22136 = load double*, double** %lub580
  %castn22137 = ptrtoint double* %ldnewadr22136 to i64
  %castb22138 = ptrtoint double* %badr22135 to i64
  %reladr22139 = sub i64 %castn22137, %castb22138
  %cmpop2140 = icmp ne i64 %reladr12134, %reladr22139
  %newdetval2141 = zext i1 %cmpop2140 to i64
  %ldolddetval2142 = load i64, i64* @detectCounter
  %updetval2143 = or i64 %newdetval2141, %ldolddetval2142
  store i64 %updetval2143, i64* @detectCounter
  %badr12144 = load double*, double** %orgbadr15
  %ldnewadr12145 = load double*, double** %lub16
  %castn12146 = ptrtoint double* %ldnewadr12145 to i64
  %castb12147 = ptrtoint double* %badr12144 to i64
  %reladr12148 = sub i64 %castn12146, %castb12147
  %badr22149 = load double*, double** %orgbadr593
  %ldnewadr22150 = load double*, double** %lub594
  %castn22151 = ptrtoint double* %ldnewadr22150 to i64
  %castb22152 = ptrtoint double* %badr22149 to i64
  %reladr22153 = sub i64 %castn22151, %castb22152
  %cmpop2154 = icmp ne i64 %reladr12148, %reladr22153
  %newdetval2155 = zext i1 %cmpop2154 to i64
  %ldolddetval2156 = load i64, i64* @detectCounter
  %updetval2157 = or i64 %newdetval2155, %ldolddetval2156
  store i64 %updetval2157, i64* @detectCounter
  %badr12158 = load double*, double** %orgbadr15
  %ldnewadr12159 = load double*, double** %lub16
  %castn12160 = ptrtoint double* %ldnewadr12159 to i64
  %castb12161 = ptrtoint double* %badr12158 to i64
  %reladr12162 = sub i64 %castn12160, %castb12161
  %badr22163 = load double*, double** %orgbadr579
  %ldnewadr22164 = load double*, double** %lub580
  %castn22165 = ptrtoint double* %ldnewadr22164 to i64
  %castb22166 = ptrtoint double* %badr22163 to i64
  %reladr22167 = sub i64 %castn22165, %castb22166
  %cmpop2168 = icmp ne i64 %reladr12162, %reladr22167
  %newdetval2169 = zext i1 %cmpop2168 to i64
  %ldolddetval2170 = load i64, i64* @detectCounter
  %updetval2171 = or i64 %newdetval2169, %ldolddetval2170
  store i64 %updetval2171, i64* @detectCounter
  %badr12172 = load double*, double** %orgbadr593
  %ldnewadr12173 = load double*, double** %lub594
  %castn12174 = ptrtoint double* %ldnewadr12173 to i64
  %castb12175 = ptrtoint double* %badr12172 to i64
  %reladr12176 = sub i64 %castn12174, %castb12175
  %badr22177 = load double*, double** %orgbadr579
  %ldnewadr22178 = load double*, double** %lub580
  %castn22179 = ptrtoint double* %ldnewadr22178 to i64
  %castb22180 = ptrtoint double* %badr22177 to i64
  %reladr22181 = sub i64 %castn22179, %castb22180
  %cmpop2182 = icmp ne i64 %reladr12176, %reladr22181
  %newdetval2183 = zext i1 %cmpop2182 to i64
  %ldolddetval2184 = load i64, i64* @detectCounter
  %updetval2185 = or i64 %newdetval2183, %ldolddetval2184
  store i64 %updetval2185, i64* @detectCounter
  %badr12186 = load double*, double** %orgbadr973
  %ldnewadr12187 = load double*, double** %lub974
  %castn12188 = ptrtoint double* %ldnewadr12187 to i64
  %castb12189 = ptrtoint double* %badr12186 to i64
  %reladr12190 = sub i64 %castn12188, %castb12189
  %badr22191 = load double*, double** %orgbadr385
  %ldnewadr22192 = load double*, double** %lub386
  %castn22193 = ptrtoint double* %ldnewadr22192 to i64
  %castb22194 = ptrtoint double* %badr22191 to i64
  %reladr22195 = sub i64 %castn22193, %castb22194
  %cmpop2196 = icmp ne i64 %reladr12190, %reladr22195
  %newdetval2197 = zext i1 %cmpop2196 to i64
  %ldolddetval2198 = load i64, i64* @detectCounter
  %updetval2199 = or i64 %newdetval2197, %ldolddetval2198
  store i64 %updetval2199, i64* @detectCounter
  %badr12200 = load double*, double** %orgbadr786
  %ldnewadr12201 = load double*, double** %lub787
  %castn12202 = ptrtoint double* %ldnewadr12201 to i64
  %castb12203 = ptrtoint double* %badr12200 to i64
  %reladr12204 = sub i64 %castn12202, %castb12203
  %badr22205 = load double*, double** %orgbadr803
  %ldnewadr22206 = load double*, double** %lub804
  %castn22207 = ptrtoint double* %ldnewadr22206 to i64
  %castb22208 = ptrtoint double* %badr22205 to i64
  %reladr22209 = sub i64 %castn22207, %castb22208
  %cmpop2210 = icmp ne i64 %reladr12204, %reladr22209
  %newdetval2211 = zext i1 %cmpop2210 to i64
  %ldolddetval2212 = load i64, i64* @detectCounter
  %updetval2213 = or i64 %newdetval2211, %ldolddetval2212
  store i64 %updetval2213, i64* @detectCounter
  %badr12214 = load double*, double** %orgbadr786
  %ldnewadr12215 = load double*, double** %lub787
  %castn12216 = ptrtoint double* %ldnewadr12215 to i64
  %castb12217 = ptrtoint double* %badr12214 to i64
  %reladr12218 = sub i64 %castn12216, %castb12217
  %badr22219 = load double*, double** %orgbadr820
  %ldnewadr22220 = load double*, double** %lub821
  %castn22221 = ptrtoint double* %ldnewadr22220 to i64
  %castb22222 = ptrtoint double* %badr22219 to i64
  %reladr22223 = sub i64 %castn22221, %castb22222
  %cmpop2224 = icmp ne i64 %reladr12218, %reladr22223
  %newdetval2225 = zext i1 %cmpop2224 to i64
  %ldolddetval2226 = load i64, i64* @detectCounter
  %updetval2227 = or i64 %newdetval2225, %ldolddetval2226
  store i64 %updetval2227, i64* @detectCounter
  %badr12228 = load double*, double** %orgbadr786
  %ldnewadr12229 = load double*, double** %lub787
  %castn12230 = ptrtoint double* %ldnewadr12229 to i64
  %castb12231 = ptrtoint double* %badr12228 to i64
  %reladr12232 = sub i64 %castn12230, %castb12231
  %badr22233 = load double*, double** %orgbadr215
  %ldnewadr22234 = load double*, double** %lub216
  %castn22235 = ptrtoint double* %ldnewadr22234 to i64
  %castb22236 = ptrtoint double* %badr22233 to i64
  %reladr22237 = sub i64 %castn22235, %castb22236
  %cmpop2238 = icmp ne i64 %reladr12232, %reladr22237
  %newdetval2239 = zext i1 %cmpop2238 to i64
  %ldolddetval2240 = load i64, i64* @detectCounter
  %updetval2241 = or i64 %newdetval2239, %ldolddetval2240
  store i64 %updetval2241, i64* @detectCounter
  %badr12242 = load double*, double** %orgbadr786
  %ldnewadr12243 = load double*, double** %lub787
  %castn12244 = ptrtoint double* %ldnewadr12243 to i64
  %castb12245 = ptrtoint double* %badr12242 to i64
  %reladr12246 = sub i64 %castn12244, %castb12245
  %badr22247 = load double*, double** %orgbadr232
  %ldnewadr22248 = load double*, double** %lub233
  %castn22249 = ptrtoint double* %ldnewadr22248 to i64
  %castb22250 = ptrtoint double* %badr22247 to i64
  %reladr22251 = sub i64 %castn22249, %castb22250
  %cmpop2252 = icmp ne i64 %reladr12246, %reladr22251
  %newdetval2253 = zext i1 %cmpop2252 to i64
  %ldolddetval2254 = load i64, i64* @detectCounter
  %updetval2255 = or i64 %newdetval2253, %ldolddetval2254
  store i64 %updetval2255, i64* @detectCounter
  %badr12256 = load double*, double** %orgbadr786
  %ldnewadr12257 = load double*, double** %lub787
  %castn12258 = ptrtoint double* %ldnewadr12257 to i64
  %castb12259 = ptrtoint double* %badr12256 to i64
  %reladr12260 = sub i64 %castn12258, %castb12259
  %badr22261 = load double*, double** %orgbadr198
  %ldnewadr22262 = load double*, double** %lub199
  %castn22263 = ptrtoint double* %ldnewadr22262 to i64
  %castb22264 = ptrtoint double* %badr22261 to i64
  %reladr22265 = sub i64 %castn22263, %castb22264
  %cmpop2266 = icmp ne i64 %reladr12260, %reladr22265
  %newdetval2267 = zext i1 %cmpop2266 to i64
  %ldolddetval2268 = load i64, i64* @detectCounter
  %updetval2269 = or i64 %newdetval2267, %ldolddetval2268
  store i64 %updetval2269, i64* @detectCounter
  %badr12270 = load double*, double** %orgbadr786
  %ldnewadr12271 = load double*, double** %lub787
  %castn12272 = ptrtoint double* %ldnewadr12271 to i64
  %castb12273 = ptrtoint double* %badr12270 to i64
  %reladr12274 = sub i64 %castn12272, %castb12273
  %badr22275 = load double*, double** %orgbadr283
  %ldnewadr22276 = load double*, double** %lub284
  %castn22277 = ptrtoint double* %ldnewadr22276 to i64
  %castb22278 = ptrtoint double* %badr22275 to i64
  %reladr22279 = sub i64 %castn22277, %castb22278
  %cmpop2280 = icmp ne i64 %reladr12274, %reladr22279
  %newdetval2281 = zext i1 %cmpop2280 to i64
  %ldolddetval2282 = load i64, i64* @detectCounter
  %updetval2283 = or i64 %newdetval2281, %ldolddetval2282
  store i64 %updetval2283, i64* @detectCounter
  %badr12284 = load double*, double** %orgbadr786
  %ldnewadr12285 = load double*, double** %lub787
  %castn12286 = ptrtoint double* %ldnewadr12285 to i64
  %castb12287 = ptrtoint double* %badr12284 to i64
  %reladr12288 = sub i64 %castn12286, %castb12287
  %badr22289 = load double*, double** %orgbadr871
  %ldnewadr22290 = load double*, double** %lub872
  %castn22291 = ptrtoint double* %ldnewadr22290 to i64
  %castb22292 = ptrtoint double* %badr22289 to i64
  %reladr22293 = sub i64 %castn22291, %castb22292
  %cmpop2294 = icmp ne i64 %reladr12288, %reladr22293
  %newdetval2295 = zext i1 %cmpop2294 to i64
  %ldolddetval2296 = load i64, i64* @detectCounter
  %updetval2297 = or i64 %newdetval2295, %ldolddetval2296
  store i64 %updetval2297, i64* @detectCounter
  %badr12298 = load double*, double** %orgbadr803
  %ldnewadr12299 = load double*, double** %lub804
  %castn12300 = ptrtoint double* %ldnewadr12299 to i64
  %castb12301 = ptrtoint double* %badr12298 to i64
  %reladr12302 = sub i64 %castn12300, %castb12301
  %badr22303 = load double*, double** %orgbadr820
  %ldnewadr22304 = load double*, double** %lub821
  %castn22305 = ptrtoint double* %ldnewadr22304 to i64
  %castb22306 = ptrtoint double* %badr22303 to i64
  %reladr22307 = sub i64 %castn22305, %castb22306
  %cmpop2308 = icmp ne i64 %reladr12302, %reladr22307
  %newdetval2309 = zext i1 %cmpop2308 to i64
  %ldolddetval2310 = load i64, i64* @detectCounter
  %updetval2311 = or i64 %newdetval2309, %ldolddetval2310
  store i64 %updetval2311, i64* @detectCounter
  %badr12312 = load double*, double** %orgbadr803
  %ldnewadr12313 = load double*, double** %lub804
  %castn12314 = ptrtoint double* %ldnewadr12313 to i64
  %castb12315 = ptrtoint double* %badr12312 to i64
  %reladr12316 = sub i64 %castn12314, %castb12315
  %badr22317 = load double*, double** %orgbadr215
  %ldnewadr22318 = load double*, double** %lub216
  %castn22319 = ptrtoint double* %ldnewadr22318 to i64
  %castb22320 = ptrtoint double* %badr22317 to i64
  %reladr22321 = sub i64 %castn22319, %castb22320
  %cmpop2322 = icmp ne i64 %reladr12316, %reladr22321
  %newdetval2323 = zext i1 %cmpop2322 to i64
  %ldolddetval2324 = load i64, i64* @detectCounter
  %updetval2325 = or i64 %newdetval2323, %ldolddetval2324
  store i64 %updetval2325, i64* @detectCounter
  %badr12326 = load double*, double** %orgbadr803
  %ldnewadr12327 = load double*, double** %lub804
  %castn12328 = ptrtoint double* %ldnewadr12327 to i64
  %castb12329 = ptrtoint double* %badr12326 to i64
  %reladr12330 = sub i64 %castn12328, %castb12329
  %badr22331 = load double*, double** %orgbadr232
  %ldnewadr22332 = load double*, double** %lub233
  %castn22333 = ptrtoint double* %ldnewadr22332 to i64
  %castb22334 = ptrtoint double* %badr22331 to i64
  %reladr22335 = sub i64 %castn22333, %castb22334
  %cmpop2336 = icmp ne i64 %reladr12330, %reladr22335
  %newdetval2337 = zext i1 %cmpop2336 to i64
  %ldolddetval2338 = load i64, i64* @detectCounter
  %updetval2339 = or i64 %newdetval2337, %ldolddetval2338
  store i64 %updetval2339, i64* @detectCounter
  %badr12340 = load double*, double** %orgbadr803
  %ldnewadr12341 = load double*, double** %lub804
  %castn12342 = ptrtoint double* %ldnewadr12341 to i64
  %castb12343 = ptrtoint double* %badr12340 to i64
  %reladr12344 = sub i64 %castn12342, %castb12343
  %badr22345 = load double*, double** %orgbadr198
  %ldnewadr22346 = load double*, double** %lub199
  %castn22347 = ptrtoint double* %ldnewadr22346 to i64
  %castb22348 = ptrtoint double* %badr22345 to i64
  %reladr22349 = sub i64 %castn22347, %castb22348
  %cmpop2350 = icmp ne i64 %reladr12344, %reladr22349
  %newdetval2351 = zext i1 %cmpop2350 to i64
  %ldolddetval2352 = load i64, i64* @detectCounter
  %updetval2353 = or i64 %newdetval2351, %ldolddetval2352
  store i64 %updetval2353, i64* @detectCounter
  %badr12354 = load double*, double** %orgbadr803
  %ldnewadr12355 = load double*, double** %lub804
  %castn12356 = ptrtoint double* %ldnewadr12355 to i64
  %castb12357 = ptrtoint double* %badr12354 to i64
  %reladr12358 = sub i64 %castn12356, %castb12357
  %badr22359 = load double*, double** %orgbadr283
  %ldnewadr22360 = load double*, double** %lub284
  %castn22361 = ptrtoint double* %ldnewadr22360 to i64
  %castb22362 = ptrtoint double* %badr22359 to i64
  %reladr22363 = sub i64 %castn22361, %castb22362
  %cmpop2364 = icmp ne i64 %reladr12358, %reladr22363
  %newdetval2365 = zext i1 %cmpop2364 to i64
  %ldolddetval2366 = load i64, i64* @detectCounter
  %updetval2367 = or i64 %newdetval2365, %ldolddetval2366
  store i64 %updetval2367, i64* @detectCounter
  %badr12368 = load double*, double** %orgbadr803
  %ldnewadr12369 = load double*, double** %lub804
  %castn12370 = ptrtoint double* %ldnewadr12369 to i64
  %castb12371 = ptrtoint double* %badr12368 to i64
  %reladr12372 = sub i64 %castn12370, %castb12371
  %badr22373 = load double*, double** %orgbadr871
  %ldnewadr22374 = load double*, double** %lub872
  %castn22375 = ptrtoint double* %ldnewadr22374 to i64
  %castb22376 = ptrtoint double* %badr22373 to i64
  %reladr22377 = sub i64 %castn22375, %castb22376
  %cmpop2378 = icmp ne i64 %reladr12372, %reladr22377
  %newdetval2379 = zext i1 %cmpop2378 to i64
  %ldolddetval2380 = load i64, i64* @detectCounter
  %updetval2381 = or i64 %newdetval2379, %ldolddetval2380
  store i64 %updetval2381, i64* @detectCounter
  %badr12382 = load double*, double** %orgbadr820
  %ldnewadr12383 = load double*, double** %lub821
  %castn12384 = ptrtoint double* %ldnewadr12383 to i64
  %castb12385 = ptrtoint double* %badr12382 to i64
  %reladr12386 = sub i64 %castn12384, %castb12385
  %badr22387 = load double*, double** %orgbadr215
  %ldnewadr22388 = load double*, double** %lub216
  %castn22389 = ptrtoint double* %ldnewadr22388 to i64
  %castb22390 = ptrtoint double* %badr22387 to i64
  %reladr22391 = sub i64 %castn22389, %castb22390
  %cmpop2392 = icmp ne i64 %reladr12386, %reladr22391
  %newdetval2393 = zext i1 %cmpop2392 to i64
  %ldolddetval2394 = load i64, i64* @detectCounter
  %updetval2395 = or i64 %newdetval2393, %ldolddetval2394
  store i64 %updetval2395, i64* @detectCounter
  %badr12396 = load double*, double** %orgbadr820
  %ldnewadr12397 = load double*, double** %lub821
  %castn12398 = ptrtoint double* %ldnewadr12397 to i64
  %castb12399 = ptrtoint double* %badr12396 to i64
  %reladr12400 = sub i64 %castn12398, %castb12399
  %badr22401 = load double*, double** %orgbadr232
  %ldnewadr22402 = load double*, double** %lub233
  %castn22403 = ptrtoint double* %ldnewadr22402 to i64
  %castb22404 = ptrtoint double* %badr22401 to i64
  %reladr22405 = sub i64 %castn22403, %castb22404
  %cmpop2406 = icmp ne i64 %reladr12400, %reladr22405
  %newdetval2407 = zext i1 %cmpop2406 to i64
  %ldolddetval2408 = load i64, i64* @detectCounter
  %updetval2409 = or i64 %newdetval2407, %ldolddetval2408
  store i64 %updetval2409, i64* @detectCounter
  %badr12410 = load double*, double** %orgbadr820
  %ldnewadr12411 = load double*, double** %lub821
  %castn12412 = ptrtoint double* %ldnewadr12411 to i64
  %castb12413 = ptrtoint double* %badr12410 to i64
  %reladr12414 = sub i64 %castn12412, %castb12413
  %badr22415 = load double*, double** %orgbadr198
  %ldnewadr22416 = load double*, double** %lub199
  %castn22417 = ptrtoint double* %ldnewadr22416 to i64
  %castb22418 = ptrtoint double* %badr22415 to i64
  %reladr22419 = sub i64 %castn22417, %castb22418
  %cmpop2420 = icmp ne i64 %reladr12414, %reladr22419
  %newdetval2421 = zext i1 %cmpop2420 to i64
  %ldolddetval2422 = load i64, i64* @detectCounter
  %updetval2423 = or i64 %newdetval2421, %ldolddetval2422
  store i64 %updetval2423, i64* @detectCounter
  %badr12424 = load double*, double** %orgbadr820
  %ldnewadr12425 = load double*, double** %lub821
  %castn12426 = ptrtoint double* %ldnewadr12425 to i64
  %castb12427 = ptrtoint double* %badr12424 to i64
  %reladr12428 = sub i64 %castn12426, %castb12427
  %badr22429 = load double*, double** %orgbadr283
  %ldnewadr22430 = load double*, double** %lub284
  %castn22431 = ptrtoint double* %ldnewadr22430 to i64
  %castb22432 = ptrtoint double* %badr22429 to i64
  %reladr22433 = sub i64 %castn22431, %castb22432
  %cmpop2434 = icmp ne i64 %reladr12428, %reladr22433
  %newdetval2435 = zext i1 %cmpop2434 to i64
  %ldolddetval2436 = load i64, i64* @detectCounter
  %updetval2437 = or i64 %newdetval2435, %ldolddetval2436
  store i64 %updetval2437, i64* @detectCounter
  %badr12438 = load double*, double** %orgbadr820
  %ldnewadr12439 = load double*, double** %lub821
  %castn12440 = ptrtoint double* %ldnewadr12439 to i64
  %castb12441 = ptrtoint double* %badr12438 to i64
  %reladr12442 = sub i64 %castn12440, %castb12441
  %badr22443 = load double*, double** %orgbadr871
  %ldnewadr22444 = load double*, double** %lub872
  %castn22445 = ptrtoint double* %ldnewadr22444 to i64
  %castb22446 = ptrtoint double* %badr22443 to i64
  %reladr22447 = sub i64 %castn22445, %castb22446
  %cmpop2448 = icmp ne i64 %reladr12442, %reladr22447
  %newdetval2449 = zext i1 %cmpop2448 to i64
  %ldolddetval2450 = load i64, i64* @detectCounter
  %updetval2451 = or i64 %newdetval2449, %ldolddetval2450
  store i64 %updetval2451, i64* @detectCounter
  %badr12452 = load double*, double** %orgbadr215
  %ldnewadr12453 = load double*, double** %lub216
  %castn12454 = ptrtoint double* %ldnewadr12453 to i64
  %castb12455 = ptrtoint double* %badr12452 to i64
  %reladr12456 = sub i64 %castn12454, %castb12455
  %badr22457 = load double*, double** %orgbadr232
  %ldnewadr22458 = load double*, double** %lub233
  %castn22459 = ptrtoint double* %ldnewadr22458 to i64
  %castb22460 = ptrtoint double* %badr22457 to i64
  %reladr22461 = sub i64 %castn22459, %castb22460
  %cmpop2462 = icmp ne i64 %reladr12456, %reladr22461
  %newdetval2463 = zext i1 %cmpop2462 to i64
  %ldolddetval2464 = load i64, i64* @detectCounter
  %updetval2465 = or i64 %newdetval2463, %ldolddetval2464
  store i64 %updetval2465, i64* @detectCounter
  %badr12466 = load double*, double** %orgbadr215
  %ldnewadr12467 = load double*, double** %lub216
  %castn12468 = ptrtoint double* %ldnewadr12467 to i64
  %castb12469 = ptrtoint double* %badr12466 to i64
  %reladr12470 = sub i64 %castn12468, %castb12469
  %badr22471 = load double*, double** %orgbadr198
  %ldnewadr22472 = load double*, double** %lub199
  %castn22473 = ptrtoint double* %ldnewadr22472 to i64
  %castb22474 = ptrtoint double* %badr22471 to i64
  %reladr22475 = sub i64 %castn22473, %castb22474
  %cmpop2476 = icmp ne i64 %reladr12470, %reladr22475
  %newdetval2477 = zext i1 %cmpop2476 to i64
  %ldolddetval2478 = load i64, i64* @detectCounter
  %updetval2479 = or i64 %newdetval2477, %ldolddetval2478
  store i64 %updetval2479, i64* @detectCounter
  %badr12480 = load double*, double** %orgbadr215
  %ldnewadr12481 = load double*, double** %lub216
  %castn12482 = ptrtoint double* %ldnewadr12481 to i64
  %castb12483 = ptrtoint double* %badr12480 to i64
  %reladr12484 = sub i64 %castn12482, %castb12483
  %badr22485 = load double*, double** %orgbadr283
  %ldnewadr22486 = load double*, double** %lub284
  %castn22487 = ptrtoint double* %ldnewadr22486 to i64
  %castb22488 = ptrtoint double* %badr22485 to i64
  %reladr22489 = sub i64 %castn22487, %castb22488
  %cmpop2490 = icmp ne i64 %reladr12484, %reladr22489
  %newdetval2491 = zext i1 %cmpop2490 to i64
  %ldolddetval2492 = load i64, i64* @detectCounter
  %updetval2493 = or i64 %newdetval2491, %ldolddetval2492
  store i64 %updetval2493, i64* @detectCounter
  %badr12494 = load double*, double** %orgbadr215
  %ldnewadr12495 = load double*, double** %lub216
  %castn12496 = ptrtoint double* %ldnewadr12495 to i64
  %castb12497 = ptrtoint double* %badr12494 to i64
  %reladr12498 = sub i64 %castn12496, %castb12497
  %badr22499 = load double*, double** %orgbadr871
  %ldnewadr22500 = load double*, double** %lub872
  %castn22501 = ptrtoint double* %ldnewadr22500 to i64
  %castb22502 = ptrtoint double* %badr22499 to i64
  %reladr22503 = sub i64 %castn22501, %castb22502
  %cmpop2504 = icmp ne i64 %reladr12498, %reladr22503
  %newdetval2505 = zext i1 %cmpop2504 to i64
  %ldolddetval2506 = load i64, i64* @detectCounter
  %updetval2507 = or i64 %newdetval2505, %ldolddetval2506
  store i64 %updetval2507, i64* @detectCounter
  %badr12508 = load double*, double** %orgbadr232
  %ldnewadr12509 = load double*, double** %lub233
  %castn12510 = ptrtoint double* %ldnewadr12509 to i64
  %castb12511 = ptrtoint double* %badr12508 to i64
  %reladr12512 = sub i64 %castn12510, %castb12511
  %badr22513 = load double*, double** %orgbadr198
  %ldnewadr22514 = load double*, double** %lub199
  %castn22515 = ptrtoint double* %ldnewadr22514 to i64
  %castb22516 = ptrtoint double* %badr22513 to i64
  %reladr22517 = sub i64 %castn22515, %castb22516
  %cmpop2518 = icmp ne i64 %reladr12512, %reladr22517
  %newdetval2519 = zext i1 %cmpop2518 to i64
  %ldolddetval2520 = load i64, i64* @detectCounter
  %updetval2521 = or i64 %newdetval2519, %ldolddetval2520
  store i64 %updetval2521, i64* @detectCounter
  %badr12522 = load double*, double** %orgbadr232
  %ldnewadr12523 = load double*, double** %lub233
  %castn12524 = ptrtoint double* %ldnewadr12523 to i64
  %castb12525 = ptrtoint double* %badr12522 to i64
  %reladr12526 = sub i64 %castn12524, %castb12525
  %badr22527 = load double*, double** %orgbadr283
  %ldnewadr22528 = load double*, double** %lub284
  %castn22529 = ptrtoint double* %ldnewadr22528 to i64
  %castb22530 = ptrtoint double* %badr22527 to i64
  %reladr22531 = sub i64 %castn22529, %castb22530
  %cmpop2532 = icmp ne i64 %reladr12526, %reladr22531
  %newdetval2533 = zext i1 %cmpop2532 to i64
  %ldolddetval2534 = load i64, i64* @detectCounter
  %updetval2535 = or i64 %newdetval2533, %ldolddetval2534
  store i64 %updetval2535, i64* @detectCounter
  %badr12536 = load double*, double** %orgbadr232
  %ldnewadr12537 = load double*, double** %lub233
  %castn12538 = ptrtoint double* %ldnewadr12537 to i64
  %castb12539 = ptrtoint double* %badr12536 to i64
  %reladr12540 = sub i64 %castn12538, %castb12539
  %badr22541 = load double*, double** %orgbadr871
  %ldnewadr22542 = load double*, double** %lub872
  %castn22543 = ptrtoint double* %ldnewadr22542 to i64
  %castb22544 = ptrtoint double* %badr22541 to i64
  %reladr22545 = sub i64 %castn22543, %castb22544
  %cmpop2546 = icmp ne i64 %reladr12540, %reladr22545
  %newdetval2547 = zext i1 %cmpop2546 to i64
  %ldolddetval2548 = load i64, i64* @detectCounter
  %updetval2549 = or i64 %newdetval2547, %ldolddetval2548
  store i64 %updetval2549, i64* @detectCounter
  %badr12550 = load double*, double** %orgbadr198
  %ldnewadr12551 = load double*, double** %lub199
  %castn12552 = ptrtoint double* %ldnewadr12551 to i64
  %castb12553 = ptrtoint double* %badr12550 to i64
  %reladr12554 = sub i64 %castn12552, %castb12553
  %badr22555 = load double*, double** %orgbadr283
  %ldnewadr22556 = load double*, double** %lub284
  %castn22557 = ptrtoint double* %ldnewadr22556 to i64
  %castb22558 = ptrtoint double* %badr22555 to i64
  %reladr22559 = sub i64 %castn22557, %castb22558
  %cmpop2560 = icmp ne i64 %reladr12554, %reladr22559
  %newdetval2561 = zext i1 %cmpop2560 to i64
  %ldolddetval2562 = load i64, i64* @detectCounter
  %updetval2563 = or i64 %newdetval2561, %ldolddetval2562
  store i64 %updetval2563, i64* @detectCounter
  %badr12564 = load double*, double** %orgbadr198
  %ldnewadr12565 = load double*, double** %lub199
  %castn12566 = ptrtoint double* %ldnewadr12565 to i64
  %castb12567 = ptrtoint double* %badr12564 to i64
  %reladr12568 = sub i64 %castn12566, %castb12567
  %badr22569 = load double*, double** %orgbadr871
  %ldnewadr22570 = load double*, double** %lub872
  %castn22571 = ptrtoint double* %ldnewadr22570 to i64
  %castb22572 = ptrtoint double* %badr22569 to i64
  %reladr22573 = sub i64 %castn22571, %castb22572
  %cmpop2574 = icmp ne i64 %reladr12568, %reladr22573
  %newdetval2575 = zext i1 %cmpop2574 to i64
  %ldolddetval2576 = load i64, i64* @detectCounter
  %updetval2577 = or i64 %newdetval2575, %ldolddetval2576
  store i64 %updetval2577, i64* @detectCounter
  %badr12578 = load double*, double** %orgbadr283
  %ldnewadr12579 = load double*, double** %lub284
  %castn12580 = ptrtoint double* %ldnewadr12579 to i64
  %castb12581 = ptrtoint double* %badr12578 to i64
  %reladr12582 = sub i64 %castn12580, %castb12581
  %badr22583 = load double*, double** %orgbadr871
  %ldnewadr22584 = load double*, double** %lub872
  %castn22585 = ptrtoint double* %ldnewadr22584 to i64
  %castb22586 = ptrtoint double* %badr22583 to i64
  %reladr22587 = sub i64 %castn22585, %castb22586
  %cmpop2588 = icmp ne i64 %reladr12582, %reladr22587
  %newdetval2589 = zext i1 %cmpop2588 to i64
  %ldolddetval2590 = load i64, i64* @detectCounter
  %updetval2591 = or i64 %newdetval2589, %ldolddetval2590
  store i64 %updetval2591, i64* @detectCounter
  %badr12592 = load double*, double** %orgbadr81
  %ldnewadr12593 = load double*, double** %lub82
  %castn12594 = ptrtoint double* %ldnewadr12593 to i64
  %castb12595 = ptrtoint double* %badr12592 to i64
  %reladr12596 = sub i64 %castn12594, %castb12595
  %badr22597 = load double*, double** %orgbadr669
  %ldnewadr22598 = load double*, double** %lub670
  %castn22599 = ptrtoint double* %ldnewadr22598 to i64
  %castb22600 = ptrtoint double* %badr22597 to i64
  %reladr22601 = sub i64 %castn22599, %castb22600
  %cmpop2602 = icmp ne i64 %reladr12596, %reladr22601
  %newdetval2603 = zext i1 %cmpop2602 to i64
  %ldolddetval2604 = load i64, i64* @detectCounter
  %updetval2605 = or i64 %newdetval2603, %ldolddetval2604
  store i64 %updetval2605, i64* @detectCounter
  %badr12606 = load double*, double** %orgbadr67
  %ldnewadr12607 = load double*, double** %lub68
  %castn12608 = ptrtoint double* %ldnewadr12607 to i64
  %castb12609 = ptrtoint double* %badr12606 to i64
  %reladr12610 = sub i64 %castn12608, %castb12609
  %badr22611 = load double*, double** %orgbadr655
  %ldnewadr22612 = load double*, double** %lub656
  %castn22613 = ptrtoint double* %ldnewadr22612 to i64
  %castb22614 = ptrtoint double* %badr22611 to i64
  %reladr22615 = sub i64 %castn22613, %castb22614
  %cmpop2616 = icmp ne i64 %reladr12610, %reladr22615
  %newdetval2617 = zext i1 %cmpop2616 to i64
  %ldolddetval2618 = load i64, i64* @detectCounter
  %updetval2619 = or i64 %newdetval2617, %ldolddetval2618
  store i64 %updetval2619, i64* @detectCounter
  %badr12620 = load double*, double** %orgbadr74
  %ldnewadr12621 = load double*, double** %lub75
  %castn12622 = ptrtoint double* %ldnewadr12621 to i64
  %castb12623 = ptrtoint double* %badr12620 to i64
  %reladr12624 = sub i64 %castn12622, %castb12623
  %badr22625 = load double*, double** %orgbadr662
  %ldnewadr22626 = load double*, double** %lub663
  %castn22627 = ptrtoint double* %ldnewadr22626 to i64
  %castb22628 = ptrtoint double* %badr22625 to i64
  %reladr22629 = sub i64 %castn22627, %castb22628
  %cmpop2630 = icmp ne i64 %reladr12624, %reladr22629
  %newdetval2631 = zext i1 %cmpop2630 to i64
  %ldolddetval2632 = load i64, i64* @detectCounter
  %updetval2633 = or i64 %newdetval2631, %ldolddetval2632
  store i64 %updetval2633, i64* @detectCounter
  %badr12634 = load double*, double** %orgbadr300
  %ldnewadr12635 = load double*, double** %lub301
  %castn12636 = ptrtoint double* %ldnewadr12635 to i64
  %castb12637 = ptrtoint double* %badr12634 to i64
  %reladr12638 = sub i64 %castn12636, %castb12637
  %badr22639 = load double*, double** %orgbadr1007
  %ldnewadr22640 = load double*, double** %lub1008
  %castn22641 = ptrtoint double* %ldnewadr22640 to i64
  %castb22642 = ptrtoint double* %badr22639 to i64
  %reladr22643 = sub i64 %castn22641, %castb22642
  %cmpop2644 = icmp ne i64 %reladr12638, %reladr22643
  %newdetval2645 = zext i1 %cmpop2644 to i64
  %ldolddetval2646 = load i64, i64* @detectCounter
  %updetval2647 = or i64 %newdetval2645, %ldolddetval2646
  store i64 %updetval2647, i64* @detectCounter
  %badr12648 = load double*, double** %orgbadr300
  %ldnewadr12649 = load double*, double** %lub301
  %castn12650 = ptrtoint double* %ldnewadr12649 to i64
  %castb12651 = ptrtoint double* %badr12648 to i64
  %reladr12652 = sub i64 %castn12650, %castb12651
  %badr22653 = load double*, double** %orgbadr956
  %ldnewadr22654 = load double*, double** %lub957
  %castn22655 = ptrtoint double* %ldnewadr22654 to i64
  %castb22656 = ptrtoint double* %badr22653 to i64
  %reladr22657 = sub i64 %castn22655, %castb22656
  %cmpop2658 = icmp ne i64 %reladr12652, %reladr22657
  %newdetval2659 = zext i1 %cmpop2658 to i64
  %ldolddetval2660 = load i64, i64* @detectCounter
  %updetval2661 = or i64 %newdetval2659, %ldolddetval2660
  store i64 %updetval2661, i64* @detectCounter
  %badr12662 = load double*, double** %orgbadr300
  %ldnewadr12663 = load double*, double** %lub301
  %castn12664 = ptrtoint double* %ldnewadr12663 to i64
  %castb12665 = ptrtoint double* %badr12662 to i64
  %reladr12666 = sub i64 %castn12664, %castb12665
  %badr22667 = load double*, double** %orgbadr939
  %ldnewadr22668 = load double*, double** %lub940
  %castn22669 = ptrtoint double* %ldnewadr22668 to i64
  %castb22670 = ptrtoint double* %badr22667 to i64
  %reladr22671 = sub i64 %castn22669, %castb22670
  %cmpop2672 = icmp ne i64 %reladr12666, %reladr22671
  %newdetval2673 = zext i1 %cmpop2672 to i64
  %ldolddetval2674 = load i64, i64* @detectCounter
  %updetval2675 = or i64 %newdetval2673, %ldolddetval2674
  store i64 %updetval2675, i64* @detectCounter
  %badr12676 = load double*, double** %orgbadr300
  %ldnewadr12677 = load double*, double** %lub301
  %castn12678 = ptrtoint double* %ldnewadr12677 to i64
  %castb12679 = ptrtoint double* %badr12676 to i64
  %reladr12680 = sub i64 %castn12678, %castb12679
  %badr22681 = load double*, double** %orgbadr922
  %ldnewadr22682 = load double*, double** %lub923
  %castn22683 = ptrtoint double* %ldnewadr22682 to i64
  %castb22684 = ptrtoint double* %badr22681 to i64
  %reladr22685 = sub i64 %castn22683, %castb22684
  %cmpop2686 = icmp ne i64 %reladr12680, %reladr22685
  %newdetval2687 = zext i1 %cmpop2686 to i64
  %ldolddetval2688 = load i64, i64* @detectCounter
  %updetval2689 = or i64 %newdetval2687, %ldolddetval2688
  store i64 %updetval2689, i64* @detectCounter
  %badr12690 = load double*, double** %orgbadr300
  %ldnewadr12691 = load double*, double** %lub301
  %castn12692 = ptrtoint double* %ldnewadr12691 to i64
  %castb12693 = ptrtoint double* %badr12690 to i64
  %reladr12694 = sub i64 %castn12692, %castb12693
  %badr22695 = load double*, double** %orgbadr905
  %ldnewadr22696 = load double*, double** %lub906
  %castn22697 = ptrtoint double* %ldnewadr22696 to i64
  %castb22698 = ptrtoint double* %badr22695 to i64
  %reladr22699 = sub i64 %castn22697, %castb22698
  %cmpop2700 = icmp ne i64 %reladr12694, %reladr22699
  %newdetval2701 = zext i1 %cmpop2700 to i64
  %ldolddetval2702 = load i64, i64* @detectCounter
  %updetval2703 = or i64 %newdetval2701, %ldolddetval2702
  store i64 %updetval2703, i64* @detectCounter
  %badr12704 = load double*, double** %orgbadr300
  %ldnewadr12705 = load double*, double** %lub301
  %castn12706 = ptrtoint double* %ldnewadr12705 to i64
  %castb12707 = ptrtoint double* %badr12704 to i64
  %reladr12708 = sub i64 %castn12706, %castb12707
  %badr22709 = load double*, double** %orgbadr888
  %ldnewadr22710 = load double*, double** %lub889
  %castn22711 = ptrtoint double* %ldnewadr22710 to i64
  %castb22712 = ptrtoint double* %badr22709 to i64
  %reladr22713 = sub i64 %castn22711, %castb22712
  %cmpop2714 = icmp ne i64 %reladr12708, %reladr22713
  %newdetval2715 = zext i1 %cmpop2714 to i64
  %ldolddetval2716 = load i64, i64* @detectCounter
  %updetval2717 = or i64 %newdetval2715, %ldolddetval2716
  store i64 %updetval2717, i64* @detectCounter
  %badr12718 = load double*, double** %orgbadr300
  %ldnewadr12719 = load double*, double** %lub301
  %castn12720 = ptrtoint double* %ldnewadr12719 to i64
  %castb12721 = ptrtoint double* %badr12718 to i64
  %reladr12722 = sub i64 %castn12720, %castb12721
  %badr22723 = load double*, double** %orgbadr368
  %ldnewadr22724 = load double*, double** %lub369
  %castn22725 = ptrtoint double* %ldnewadr22724 to i64
  %castb22726 = ptrtoint double* %badr22723 to i64
  %reladr22727 = sub i64 %castn22725, %castb22726
  %cmpop2728 = icmp ne i64 %reladr12722, %reladr22727
  %newdetval2729 = zext i1 %cmpop2728 to i64
  %ldolddetval2730 = load i64, i64* @detectCounter
  %updetval2731 = or i64 %newdetval2729, %ldolddetval2730
  store i64 %updetval2731, i64* @detectCounter
  %badr12732 = load double*, double** %orgbadr300
  %ldnewadr12733 = load double*, double** %lub301
  %castn12734 = ptrtoint double* %ldnewadr12733 to i64
  %castb12735 = ptrtoint double* %badr12732 to i64
  %reladr12736 = sub i64 %castn12734, %castb12735
  %badr22737 = load double*, double** %orgbadr351
  %ldnewadr22738 = load double*, double** %lub352
  %castn22739 = ptrtoint double* %ldnewadr22738 to i64
  %castb22740 = ptrtoint double* %badr22737 to i64
  %reladr22741 = sub i64 %castn22739, %castb22740
  %cmpop2742 = icmp ne i64 %reladr12736, %reladr22741
  %newdetval2743 = zext i1 %cmpop2742 to i64
  %ldolddetval2744 = load i64, i64* @detectCounter
  %updetval2745 = or i64 %newdetval2743, %ldolddetval2744
  store i64 %updetval2745, i64* @detectCounter
  %badr12746 = load double*, double** %orgbadr300
  %ldnewadr12747 = load double*, double** %lub301
  %castn12748 = ptrtoint double* %ldnewadr12747 to i64
  %castb12749 = ptrtoint double* %badr12746 to i64
  %reladr12750 = sub i64 %castn12748, %castb12749
  %badr22751 = load double*, double** %orgbadr334
  %ldnewadr22752 = load double*, double** %lub335
  %castn22753 = ptrtoint double* %ldnewadr22752 to i64
  %castb22754 = ptrtoint double* %badr22751 to i64
  %reladr22755 = sub i64 %castn22753, %castb22754
  %cmpop2756 = icmp ne i64 %reladr12750, %reladr22755
  %newdetval2757 = zext i1 %cmpop2756 to i64
  %ldolddetval2758 = load i64, i64* @detectCounter
  %updetval2759 = or i64 %newdetval2757, %ldolddetval2758
  store i64 %updetval2759, i64* @detectCounter
  %badr12760 = load double*, double** %orgbadr300
  %ldnewadr12761 = load double*, double** %lub301
  %castn12762 = ptrtoint double* %ldnewadr12761 to i64
  %castb12763 = ptrtoint double* %badr12760 to i64
  %reladr12764 = sub i64 %castn12762, %castb12763
  %badr22765 = load double*, double** %orgbadr317
  %ldnewadr22766 = load double*, double** %lub318
  %castn22767 = ptrtoint double* %ldnewadr22766 to i64
  %castb22768 = ptrtoint double* %badr22765 to i64
  %reladr22769 = sub i64 %castn22767, %castb22768
  %cmpop2770 = icmp ne i64 %reladr12764, %reladr22769
  %newdetval2771 = zext i1 %cmpop2770 to i64
  %ldolddetval2772 = load i64, i64* @detectCounter
  %updetval2773 = or i64 %newdetval2771, %ldolddetval2772
  store i64 %updetval2773, i64* @detectCounter
  %badr12774 = load double*, double** %orgbadr300
  %ldnewadr12775 = load double*, double** %lub301
  %castn12776 = ptrtoint double* %ldnewadr12775 to i64
  %castb12777 = ptrtoint double* %badr12774 to i64
  %reladr12778 = sub i64 %castn12776, %castb12777
  %badr22779 = load double*, double** %orgbadr419
  %ldnewadr22780 = load double*, double** %lub420
  %castn22781 = ptrtoint double* %ldnewadr22780 to i64
  %castb22782 = ptrtoint double* %badr22779 to i64
  %reladr22783 = sub i64 %castn22781, %castb22782
  %cmpop2784 = icmp ne i64 %reladr12778, %reladr22783
  %newdetval2785 = zext i1 %cmpop2784 to i64
  %ldolddetval2786 = load i64, i64* @detectCounter
  %updetval2787 = or i64 %newdetval2785, %ldolddetval2786
  store i64 %updetval2787, i64* @detectCounter
  %badr12788 = load double*, double** %orgbadr1007
  %ldnewadr12789 = load double*, double** %lub1008
  %castn12790 = ptrtoint double* %ldnewadr12789 to i64
  %castb12791 = ptrtoint double* %badr12788 to i64
  %reladr12792 = sub i64 %castn12790, %castb12791
  %badr22793 = load double*, double** %orgbadr956
  %ldnewadr22794 = load double*, double** %lub957
  %castn22795 = ptrtoint double* %ldnewadr22794 to i64
  %castb22796 = ptrtoint double* %badr22793 to i64
  %reladr22797 = sub i64 %castn22795, %castb22796
  %cmpop2798 = icmp ne i64 %reladr12792, %reladr22797
  %newdetval2799 = zext i1 %cmpop2798 to i64
  %ldolddetval2800 = load i64, i64* @detectCounter
  %updetval2801 = or i64 %newdetval2799, %ldolddetval2800
  store i64 %updetval2801, i64* @detectCounter
  %badr12802 = load double*, double** %orgbadr1007
  %ldnewadr12803 = load double*, double** %lub1008
  %castn12804 = ptrtoint double* %ldnewadr12803 to i64
  %castb12805 = ptrtoint double* %badr12802 to i64
  %reladr12806 = sub i64 %castn12804, %castb12805
  %badr22807 = load double*, double** %orgbadr939
  %ldnewadr22808 = load double*, double** %lub940
  %castn22809 = ptrtoint double* %ldnewadr22808 to i64
  %castb22810 = ptrtoint double* %badr22807 to i64
  %reladr22811 = sub i64 %castn22809, %castb22810
  %cmpop2812 = icmp ne i64 %reladr12806, %reladr22811
  %newdetval2813 = zext i1 %cmpop2812 to i64
  %ldolddetval2814 = load i64, i64* @detectCounter
  %updetval2815 = or i64 %newdetval2813, %ldolddetval2814
  store i64 %updetval2815, i64* @detectCounter
  %badr12816 = load double*, double** %orgbadr1007
  %ldnewadr12817 = load double*, double** %lub1008
  %castn12818 = ptrtoint double* %ldnewadr12817 to i64
  %castb12819 = ptrtoint double* %badr12816 to i64
  %reladr12820 = sub i64 %castn12818, %castb12819
  %badr22821 = load double*, double** %orgbadr922
  %ldnewadr22822 = load double*, double** %lub923
  %castn22823 = ptrtoint double* %ldnewadr22822 to i64
  %castb22824 = ptrtoint double* %badr22821 to i64
  %reladr22825 = sub i64 %castn22823, %castb22824
  %cmpop2826 = icmp ne i64 %reladr12820, %reladr22825
  %newdetval2827 = zext i1 %cmpop2826 to i64
  %ldolddetval2828 = load i64, i64* @detectCounter
  %updetval2829 = or i64 %newdetval2827, %ldolddetval2828
  store i64 %updetval2829, i64* @detectCounter
  %badr12830 = load double*, double** %orgbadr1007
  %ldnewadr12831 = load double*, double** %lub1008
  %castn12832 = ptrtoint double* %ldnewadr12831 to i64
  %castb12833 = ptrtoint double* %badr12830 to i64
  %reladr12834 = sub i64 %castn12832, %castb12833
  %badr22835 = load double*, double** %orgbadr905
  %ldnewadr22836 = load double*, double** %lub906
  %castn22837 = ptrtoint double* %ldnewadr22836 to i64
  %castb22838 = ptrtoint double* %badr22835 to i64
  %reladr22839 = sub i64 %castn22837, %castb22838
  %cmpop2840 = icmp ne i64 %reladr12834, %reladr22839
  %newdetval2841 = zext i1 %cmpop2840 to i64
  %ldolddetval2842 = load i64, i64* @detectCounter
  %updetval2843 = or i64 %newdetval2841, %ldolddetval2842
  store i64 %updetval2843, i64* @detectCounter
  %badr12844 = load double*, double** %orgbadr1007
  %ldnewadr12845 = load double*, double** %lub1008
  %castn12846 = ptrtoint double* %ldnewadr12845 to i64
  %castb12847 = ptrtoint double* %badr12844 to i64
  %reladr12848 = sub i64 %castn12846, %castb12847
  %badr22849 = load double*, double** %orgbadr888
  %ldnewadr22850 = load double*, double** %lub889
  %castn22851 = ptrtoint double* %ldnewadr22850 to i64
  %castb22852 = ptrtoint double* %badr22849 to i64
  %reladr22853 = sub i64 %castn22851, %castb22852
  %cmpop2854 = icmp ne i64 %reladr12848, %reladr22853
  %newdetval2855 = zext i1 %cmpop2854 to i64
  %ldolddetval2856 = load i64, i64* @detectCounter
  %updetval2857 = or i64 %newdetval2855, %ldolddetval2856
  store i64 %updetval2857, i64* @detectCounter
  %badr12858 = load double*, double** %orgbadr1007
  %ldnewadr12859 = load double*, double** %lub1008
  %castn12860 = ptrtoint double* %ldnewadr12859 to i64
  %castb12861 = ptrtoint double* %badr12858 to i64
  %reladr12862 = sub i64 %castn12860, %castb12861
  %badr22863 = load double*, double** %orgbadr368
  %ldnewadr22864 = load double*, double** %lub369
  %castn22865 = ptrtoint double* %ldnewadr22864 to i64
  %castb22866 = ptrtoint double* %badr22863 to i64
  %reladr22867 = sub i64 %castn22865, %castb22866
  %cmpop2868 = icmp ne i64 %reladr12862, %reladr22867
  %newdetval2869 = zext i1 %cmpop2868 to i64
  %ldolddetval2870 = load i64, i64* @detectCounter
  %updetval2871 = or i64 %newdetval2869, %ldolddetval2870
  store i64 %updetval2871, i64* @detectCounter
  %badr12872 = load double*, double** %orgbadr1007
  %ldnewadr12873 = load double*, double** %lub1008
  %castn12874 = ptrtoint double* %ldnewadr12873 to i64
  %castb12875 = ptrtoint double* %badr12872 to i64
  %reladr12876 = sub i64 %castn12874, %castb12875
  %badr22877 = load double*, double** %orgbadr351
  %ldnewadr22878 = load double*, double** %lub352
  %castn22879 = ptrtoint double* %ldnewadr22878 to i64
  %castb22880 = ptrtoint double* %badr22877 to i64
  %reladr22881 = sub i64 %castn22879, %castb22880
  %cmpop2882 = icmp ne i64 %reladr12876, %reladr22881
  %newdetval2883 = zext i1 %cmpop2882 to i64
  %ldolddetval2884 = load i64, i64* @detectCounter
  %updetval2885 = or i64 %newdetval2883, %ldolddetval2884
  store i64 %updetval2885, i64* @detectCounter
  %badr12886 = load double*, double** %orgbadr1007
  %ldnewadr12887 = load double*, double** %lub1008
  %castn12888 = ptrtoint double* %ldnewadr12887 to i64
  %castb12889 = ptrtoint double* %badr12886 to i64
  %reladr12890 = sub i64 %castn12888, %castb12889
  %badr22891 = load double*, double** %orgbadr334
  %ldnewadr22892 = load double*, double** %lub335
  %castn22893 = ptrtoint double* %ldnewadr22892 to i64
  %castb22894 = ptrtoint double* %badr22891 to i64
  %reladr22895 = sub i64 %castn22893, %castb22894
  %cmpop2896 = icmp ne i64 %reladr12890, %reladr22895
  %newdetval2897 = zext i1 %cmpop2896 to i64
  %ldolddetval2898 = load i64, i64* @detectCounter
  %updetval2899 = or i64 %newdetval2897, %ldolddetval2898
  store i64 %updetval2899, i64* @detectCounter
  %badr12900 = load double*, double** %orgbadr1007
  %ldnewadr12901 = load double*, double** %lub1008
  %castn12902 = ptrtoint double* %ldnewadr12901 to i64
  %castb12903 = ptrtoint double* %badr12900 to i64
  %reladr12904 = sub i64 %castn12902, %castb12903
  %badr22905 = load double*, double** %orgbadr317
  %ldnewadr22906 = load double*, double** %lub318
  %castn22907 = ptrtoint double* %ldnewadr22906 to i64
  %castb22908 = ptrtoint double* %badr22905 to i64
  %reladr22909 = sub i64 %castn22907, %castb22908
  %cmpop2910 = icmp ne i64 %reladr12904, %reladr22909
  %newdetval2911 = zext i1 %cmpop2910 to i64
  %ldolddetval2912 = load i64, i64* @detectCounter
  %updetval2913 = or i64 %newdetval2911, %ldolddetval2912
  store i64 %updetval2913, i64* @detectCounter
  %badr12914 = load double*, double** %orgbadr1007
  %ldnewadr12915 = load double*, double** %lub1008
  %castn12916 = ptrtoint double* %ldnewadr12915 to i64
  %castb12917 = ptrtoint double* %badr12914 to i64
  %reladr12918 = sub i64 %castn12916, %castb12917
  %badr22919 = load double*, double** %orgbadr419
  %ldnewadr22920 = load double*, double** %lub420
  %castn22921 = ptrtoint double* %ldnewadr22920 to i64
  %castb22922 = ptrtoint double* %badr22919 to i64
  %reladr22923 = sub i64 %castn22921, %castb22922
  %cmpop2924 = icmp ne i64 %reladr12918, %reladr22923
  %newdetval2925 = zext i1 %cmpop2924 to i64
  %ldolddetval2926 = load i64, i64* @detectCounter
  %updetval2927 = or i64 %newdetval2925, %ldolddetval2926
  store i64 %updetval2927, i64* @detectCounter
  %badr12928 = load double*, double** %orgbadr956
  %ldnewadr12929 = load double*, double** %lub957
  %castn12930 = ptrtoint double* %ldnewadr12929 to i64
  %castb12931 = ptrtoint double* %badr12928 to i64
  %reladr12932 = sub i64 %castn12930, %castb12931
  %badr22933 = load double*, double** %orgbadr939
  %ldnewadr22934 = load double*, double** %lub940
  %castn22935 = ptrtoint double* %ldnewadr22934 to i64
  %castb22936 = ptrtoint double* %badr22933 to i64
  %reladr22937 = sub i64 %castn22935, %castb22936
  %cmpop2938 = icmp ne i64 %reladr12932, %reladr22937
  %newdetval2939 = zext i1 %cmpop2938 to i64
  %ldolddetval2940 = load i64, i64* @detectCounter
  %updetval2941 = or i64 %newdetval2939, %ldolddetval2940
  store i64 %updetval2941, i64* @detectCounter
  %badr12942 = load double*, double** %orgbadr956
  %ldnewadr12943 = load double*, double** %lub957
  %castn12944 = ptrtoint double* %ldnewadr12943 to i64
  %castb12945 = ptrtoint double* %badr12942 to i64
  %reladr12946 = sub i64 %castn12944, %castb12945
  %badr22947 = load double*, double** %orgbadr922
  %ldnewadr22948 = load double*, double** %lub923
  %castn22949 = ptrtoint double* %ldnewadr22948 to i64
  %castb22950 = ptrtoint double* %badr22947 to i64
  %reladr22951 = sub i64 %castn22949, %castb22950
  %cmpop2952 = icmp ne i64 %reladr12946, %reladr22951
  %newdetval2953 = zext i1 %cmpop2952 to i64
  %ldolddetval2954 = load i64, i64* @detectCounter
  %updetval2955 = or i64 %newdetval2953, %ldolddetval2954
  store i64 %updetval2955, i64* @detectCounter
  %badr12956 = load double*, double** %orgbadr956
  %ldnewadr12957 = load double*, double** %lub957
  %castn12958 = ptrtoint double* %ldnewadr12957 to i64
  %castb12959 = ptrtoint double* %badr12956 to i64
  %reladr12960 = sub i64 %castn12958, %castb12959
  %badr22961 = load double*, double** %orgbadr905
  %ldnewadr22962 = load double*, double** %lub906
  %castn22963 = ptrtoint double* %ldnewadr22962 to i64
  %castb22964 = ptrtoint double* %badr22961 to i64
  %reladr22965 = sub i64 %castn22963, %castb22964
  %cmpop2966 = icmp ne i64 %reladr12960, %reladr22965
  %newdetval2967 = zext i1 %cmpop2966 to i64
  %ldolddetval2968 = load i64, i64* @detectCounter
  %updetval2969 = or i64 %newdetval2967, %ldolddetval2968
  store i64 %updetval2969, i64* @detectCounter
  %badr12970 = load double*, double** %orgbadr956
  %ldnewadr12971 = load double*, double** %lub957
  %castn12972 = ptrtoint double* %ldnewadr12971 to i64
  %castb12973 = ptrtoint double* %badr12970 to i64
  %reladr12974 = sub i64 %castn12972, %castb12973
  %badr22975 = load double*, double** %orgbadr888
  %ldnewadr22976 = load double*, double** %lub889
  %castn22977 = ptrtoint double* %ldnewadr22976 to i64
  %castb22978 = ptrtoint double* %badr22975 to i64
  %reladr22979 = sub i64 %castn22977, %castb22978
  %cmpop2980 = icmp ne i64 %reladr12974, %reladr22979
  %newdetval2981 = zext i1 %cmpop2980 to i64
  %ldolddetval2982 = load i64, i64* @detectCounter
  %updetval2983 = or i64 %newdetval2981, %ldolddetval2982
  store i64 %updetval2983, i64* @detectCounter
  %badr12984 = load double*, double** %orgbadr956
  %ldnewadr12985 = load double*, double** %lub957
  %castn12986 = ptrtoint double* %ldnewadr12985 to i64
  %castb12987 = ptrtoint double* %badr12984 to i64
  %reladr12988 = sub i64 %castn12986, %castb12987
  %badr22989 = load double*, double** %orgbadr368
  %ldnewadr22990 = load double*, double** %lub369
  %castn22991 = ptrtoint double* %ldnewadr22990 to i64
  %castb22992 = ptrtoint double* %badr22989 to i64
  %reladr22993 = sub i64 %castn22991, %castb22992
  %cmpop2994 = icmp ne i64 %reladr12988, %reladr22993
  %newdetval2995 = zext i1 %cmpop2994 to i64
  %ldolddetval2996 = load i64, i64* @detectCounter
  %updetval2997 = or i64 %newdetval2995, %ldolddetval2996
  store i64 %updetval2997, i64* @detectCounter
  %badr12998 = load double*, double** %orgbadr956
  %ldnewadr12999 = load double*, double** %lub957
  %castn13000 = ptrtoint double* %ldnewadr12999 to i64
  %castb13001 = ptrtoint double* %badr12998 to i64
  %reladr13002 = sub i64 %castn13000, %castb13001
  %badr23003 = load double*, double** %orgbadr351
  %ldnewadr23004 = load double*, double** %lub352
  %castn23005 = ptrtoint double* %ldnewadr23004 to i64
  %castb23006 = ptrtoint double* %badr23003 to i64
  %reladr23007 = sub i64 %castn23005, %castb23006
  %cmpop3008 = icmp ne i64 %reladr13002, %reladr23007
  %newdetval3009 = zext i1 %cmpop3008 to i64
  %ldolddetval3010 = load i64, i64* @detectCounter
  %updetval3011 = or i64 %newdetval3009, %ldolddetval3010
  store i64 %updetval3011, i64* @detectCounter
  %badr13012 = load double*, double** %orgbadr956
  %ldnewadr13013 = load double*, double** %lub957
  %castn13014 = ptrtoint double* %ldnewadr13013 to i64
  %castb13015 = ptrtoint double* %badr13012 to i64
  %reladr13016 = sub i64 %castn13014, %castb13015
  %badr23017 = load double*, double** %orgbadr334
  %ldnewadr23018 = load double*, double** %lub335
  %castn23019 = ptrtoint double* %ldnewadr23018 to i64
  %castb23020 = ptrtoint double* %badr23017 to i64
  %reladr23021 = sub i64 %castn23019, %castb23020
  %cmpop3022 = icmp ne i64 %reladr13016, %reladr23021
  %newdetval3023 = zext i1 %cmpop3022 to i64
  %ldolddetval3024 = load i64, i64* @detectCounter
  %updetval3025 = or i64 %newdetval3023, %ldolddetval3024
  store i64 %updetval3025, i64* @detectCounter
  %badr13026 = load double*, double** %orgbadr956
  %ldnewadr13027 = load double*, double** %lub957
  %castn13028 = ptrtoint double* %ldnewadr13027 to i64
  %castb13029 = ptrtoint double* %badr13026 to i64
  %reladr13030 = sub i64 %castn13028, %castb13029
  %badr23031 = load double*, double** %orgbadr317
  %ldnewadr23032 = load double*, double** %lub318
  %castn23033 = ptrtoint double* %ldnewadr23032 to i64
  %castb23034 = ptrtoint double* %badr23031 to i64
  %reladr23035 = sub i64 %castn23033, %castb23034
  %cmpop3036 = icmp ne i64 %reladr13030, %reladr23035
  %newdetval3037 = zext i1 %cmpop3036 to i64
  %ldolddetval3038 = load i64, i64* @detectCounter
  %updetval3039 = or i64 %newdetval3037, %ldolddetval3038
  store i64 %updetval3039, i64* @detectCounter
  %badr13040 = load double*, double** %orgbadr956
  %ldnewadr13041 = load double*, double** %lub957
  %castn13042 = ptrtoint double* %ldnewadr13041 to i64
  %castb13043 = ptrtoint double* %badr13040 to i64
  %reladr13044 = sub i64 %castn13042, %castb13043
  %badr23045 = load double*, double** %orgbadr419
  %ldnewadr23046 = load double*, double** %lub420
  %castn23047 = ptrtoint double* %ldnewadr23046 to i64
  %castb23048 = ptrtoint double* %badr23045 to i64
  %reladr23049 = sub i64 %castn23047, %castb23048
  %cmpop3050 = icmp ne i64 %reladr13044, %reladr23049
  %newdetval3051 = zext i1 %cmpop3050 to i64
  %ldolddetval3052 = load i64, i64* @detectCounter
  %updetval3053 = or i64 %newdetval3051, %ldolddetval3052
  store i64 %updetval3053, i64* @detectCounter
  %badr13054 = load double*, double** %orgbadr939
  %ldnewadr13055 = load double*, double** %lub940
  %castn13056 = ptrtoint double* %ldnewadr13055 to i64
  %castb13057 = ptrtoint double* %badr13054 to i64
  %reladr13058 = sub i64 %castn13056, %castb13057
  %badr23059 = load double*, double** %orgbadr922
  %ldnewadr23060 = load double*, double** %lub923
  %castn23061 = ptrtoint double* %ldnewadr23060 to i64
  %castb23062 = ptrtoint double* %badr23059 to i64
  %reladr23063 = sub i64 %castn23061, %castb23062
  %cmpop3064 = icmp ne i64 %reladr13058, %reladr23063
  %newdetval3065 = zext i1 %cmpop3064 to i64
  %ldolddetval3066 = load i64, i64* @detectCounter
  %updetval3067 = or i64 %newdetval3065, %ldolddetval3066
  store i64 %updetval3067, i64* @detectCounter
  %badr13068 = load double*, double** %orgbadr939
  %ldnewadr13069 = load double*, double** %lub940
  %castn13070 = ptrtoint double* %ldnewadr13069 to i64
  %castb13071 = ptrtoint double* %badr13068 to i64
  %reladr13072 = sub i64 %castn13070, %castb13071
  %badr23073 = load double*, double** %orgbadr905
  %ldnewadr23074 = load double*, double** %lub906
  %castn23075 = ptrtoint double* %ldnewadr23074 to i64
  %castb23076 = ptrtoint double* %badr23073 to i64
  %reladr23077 = sub i64 %castn23075, %castb23076
  %cmpop3078 = icmp ne i64 %reladr13072, %reladr23077
  %newdetval3079 = zext i1 %cmpop3078 to i64
  %ldolddetval3080 = load i64, i64* @detectCounter
  %updetval3081 = or i64 %newdetval3079, %ldolddetval3080
  store i64 %updetval3081, i64* @detectCounter
  %badr13082 = load double*, double** %orgbadr939
  %ldnewadr13083 = load double*, double** %lub940
  %castn13084 = ptrtoint double* %ldnewadr13083 to i64
  %castb13085 = ptrtoint double* %badr13082 to i64
  %reladr13086 = sub i64 %castn13084, %castb13085
  %badr23087 = load double*, double** %orgbadr888
  %ldnewadr23088 = load double*, double** %lub889
  %castn23089 = ptrtoint double* %ldnewadr23088 to i64
  %castb23090 = ptrtoint double* %badr23087 to i64
  %reladr23091 = sub i64 %castn23089, %castb23090
  %cmpop3092 = icmp ne i64 %reladr13086, %reladr23091
  %newdetval3093 = zext i1 %cmpop3092 to i64
  %ldolddetval3094 = load i64, i64* @detectCounter
  %updetval3095 = or i64 %newdetval3093, %ldolddetval3094
  store i64 %updetval3095, i64* @detectCounter
  %badr13096 = load double*, double** %orgbadr939
  %ldnewadr13097 = load double*, double** %lub940
  %castn13098 = ptrtoint double* %ldnewadr13097 to i64
  %castb13099 = ptrtoint double* %badr13096 to i64
  %reladr13100 = sub i64 %castn13098, %castb13099
  %badr23101 = load double*, double** %orgbadr368
  %ldnewadr23102 = load double*, double** %lub369
  %castn23103 = ptrtoint double* %ldnewadr23102 to i64
  %castb23104 = ptrtoint double* %badr23101 to i64
  %reladr23105 = sub i64 %castn23103, %castb23104
  %cmpop3106 = icmp ne i64 %reladr13100, %reladr23105
  %newdetval3107 = zext i1 %cmpop3106 to i64
  %ldolddetval3108 = load i64, i64* @detectCounter
  %updetval3109 = or i64 %newdetval3107, %ldolddetval3108
  store i64 %updetval3109, i64* @detectCounter
  %badr13110 = load double*, double** %orgbadr939
  %ldnewadr13111 = load double*, double** %lub940
  %castn13112 = ptrtoint double* %ldnewadr13111 to i64
  %castb13113 = ptrtoint double* %badr13110 to i64
  %reladr13114 = sub i64 %castn13112, %castb13113
  %badr23115 = load double*, double** %orgbadr351
  %ldnewadr23116 = load double*, double** %lub352
  %castn23117 = ptrtoint double* %ldnewadr23116 to i64
  %castb23118 = ptrtoint double* %badr23115 to i64
  %reladr23119 = sub i64 %castn23117, %castb23118
  %cmpop3120 = icmp ne i64 %reladr13114, %reladr23119
  %newdetval3121 = zext i1 %cmpop3120 to i64
  %ldolddetval3122 = load i64, i64* @detectCounter
  %updetval3123 = or i64 %newdetval3121, %ldolddetval3122
  store i64 %updetval3123, i64* @detectCounter
  %badr13124 = load double*, double** %orgbadr939
  %ldnewadr13125 = load double*, double** %lub940
  %castn13126 = ptrtoint double* %ldnewadr13125 to i64
  %castb13127 = ptrtoint double* %badr13124 to i64
  %reladr13128 = sub i64 %castn13126, %castb13127
  %badr23129 = load double*, double** %orgbadr334
  %ldnewadr23130 = load double*, double** %lub335
  %castn23131 = ptrtoint double* %ldnewadr23130 to i64
  %castb23132 = ptrtoint double* %badr23129 to i64
  %reladr23133 = sub i64 %castn23131, %castb23132
  %cmpop3134 = icmp ne i64 %reladr13128, %reladr23133
  %newdetval3135 = zext i1 %cmpop3134 to i64
  %ldolddetval3136 = load i64, i64* @detectCounter
  %updetval3137 = or i64 %newdetval3135, %ldolddetval3136
  store i64 %updetval3137, i64* @detectCounter
  %badr13138 = load double*, double** %orgbadr939
  %ldnewadr13139 = load double*, double** %lub940
  %castn13140 = ptrtoint double* %ldnewadr13139 to i64
  %castb13141 = ptrtoint double* %badr13138 to i64
  %reladr13142 = sub i64 %castn13140, %castb13141
  %badr23143 = load double*, double** %orgbadr317
  %ldnewadr23144 = load double*, double** %lub318
  %castn23145 = ptrtoint double* %ldnewadr23144 to i64
  %castb23146 = ptrtoint double* %badr23143 to i64
  %reladr23147 = sub i64 %castn23145, %castb23146
  %cmpop3148 = icmp ne i64 %reladr13142, %reladr23147
  %newdetval3149 = zext i1 %cmpop3148 to i64
  %ldolddetval3150 = load i64, i64* @detectCounter
  %updetval3151 = or i64 %newdetval3149, %ldolddetval3150
  store i64 %updetval3151, i64* @detectCounter
  %badr13152 = load double*, double** %orgbadr939
  %ldnewadr13153 = load double*, double** %lub940
  %castn13154 = ptrtoint double* %ldnewadr13153 to i64
  %castb13155 = ptrtoint double* %badr13152 to i64
  %reladr13156 = sub i64 %castn13154, %castb13155
  %badr23157 = load double*, double** %orgbadr419
  %ldnewadr23158 = load double*, double** %lub420
  %castn23159 = ptrtoint double* %ldnewadr23158 to i64
  %castb23160 = ptrtoint double* %badr23157 to i64
  %reladr23161 = sub i64 %castn23159, %castb23160
  %cmpop3162 = icmp ne i64 %reladr13156, %reladr23161
  %newdetval3163 = zext i1 %cmpop3162 to i64
  %ldolddetval3164 = load i64, i64* @detectCounter
  %updetval3165 = or i64 %newdetval3163, %ldolddetval3164
  store i64 %updetval3165, i64* @detectCounter
  %badr13166 = load double*, double** %orgbadr922
  %ldnewadr13167 = load double*, double** %lub923
  %castn13168 = ptrtoint double* %ldnewadr13167 to i64
  %castb13169 = ptrtoint double* %badr13166 to i64
  %reladr13170 = sub i64 %castn13168, %castb13169
  %badr23171 = load double*, double** %orgbadr905
  %ldnewadr23172 = load double*, double** %lub906
  %castn23173 = ptrtoint double* %ldnewadr23172 to i64
  %castb23174 = ptrtoint double* %badr23171 to i64
  %reladr23175 = sub i64 %castn23173, %castb23174
  %cmpop3176 = icmp ne i64 %reladr13170, %reladr23175
  %newdetval3177 = zext i1 %cmpop3176 to i64
  %ldolddetval3178 = load i64, i64* @detectCounter
  %updetval3179 = or i64 %newdetval3177, %ldolddetval3178
  store i64 %updetval3179, i64* @detectCounter
  %badr13180 = load double*, double** %orgbadr922
  %ldnewadr13181 = load double*, double** %lub923
  %castn13182 = ptrtoint double* %ldnewadr13181 to i64
  %castb13183 = ptrtoint double* %badr13180 to i64
  %reladr13184 = sub i64 %castn13182, %castb13183
  %badr23185 = load double*, double** %orgbadr888
  %ldnewadr23186 = load double*, double** %lub889
  %castn23187 = ptrtoint double* %ldnewadr23186 to i64
  %castb23188 = ptrtoint double* %badr23185 to i64
  %reladr23189 = sub i64 %castn23187, %castb23188
  %cmpop3190 = icmp ne i64 %reladr13184, %reladr23189
  %newdetval3191 = zext i1 %cmpop3190 to i64
  %ldolddetval3192 = load i64, i64* @detectCounter
  %updetval3193 = or i64 %newdetval3191, %ldolddetval3192
  store i64 %updetval3193, i64* @detectCounter
  %badr13194 = load double*, double** %orgbadr922
  %ldnewadr13195 = load double*, double** %lub923
  %castn13196 = ptrtoint double* %ldnewadr13195 to i64
  %castb13197 = ptrtoint double* %badr13194 to i64
  %reladr13198 = sub i64 %castn13196, %castb13197
  %badr23199 = load double*, double** %orgbadr368
  %ldnewadr23200 = load double*, double** %lub369
  %castn23201 = ptrtoint double* %ldnewadr23200 to i64
  %castb23202 = ptrtoint double* %badr23199 to i64
  %reladr23203 = sub i64 %castn23201, %castb23202
  %cmpop3204 = icmp ne i64 %reladr13198, %reladr23203
  %newdetval3205 = zext i1 %cmpop3204 to i64
  %ldolddetval3206 = load i64, i64* @detectCounter
  %updetval3207 = or i64 %newdetval3205, %ldolddetval3206
  store i64 %updetval3207, i64* @detectCounter
  %badr13208 = load double*, double** %orgbadr922
  %ldnewadr13209 = load double*, double** %lub923
  %castn13210 = ptrtoint double* %ldnewadr13209 to i64
  %castb13211 = ptrtoint double* %badr13208 to i64
  %reladr13212 = sub i64 %castn13210, %castb13211
  %badr23213 = load double*, double** %orgbadr351
  %ldnewadr23214 = load double*, double** %lub352
  %castn23215 = ptrtoint double* %ldnewadr23214 to i64
  %castb23216 = ptrtoint double* %badr23213 to i64
  %reladr23217 = sub i64 %castn23215, %castb23216
  %cmpop3218 = icmp ne i64 %reladr13212, %reladr23217
  %newdetval3219 = zext i1 %cmpop3218 to i64
  %ldolddetval3220 = load i64, i64* @detectCounter
  %updetval3221 = or i64 %newdetval3219, %ldolddetval3220
  store i64 %updetval3221, i64* @detectCounter
  %badr13222 = load double*, double** %orgbadr922
  %ldnewadr13223 = load double*, double** %lub923
  %castn13224 = ptrtoint double* %ldnewadr13223 to i64
  %castb13225 = ptrtoint double* %badr13222 to i64
  %reladr13226 = sub i64 %castn13224, %castb13225
  %badr23227 = load double*, double** %orgbadr334
  %ldnewadr23228 = load double*, double** %lub335
  %castn23229 = ptrtoint double* %ldnewadr23228 to i64
  %castb23230 = ptrtoint double* %badr23227 to i64
  %reladr23231 = sub i64 %castn23229, %castb23230
  %cmpop3232 = icmp ne i64 %reladr13226, %reladr23231
  %newdetval3233 = zext i1 %cmpop3232 to i64
  %ldolddetval3234 = load i64, i64* @detectCounter
  %updetval3235 = or i64 %newdetval3233, %ldolddetval3234
  store i64 %updetval3235, i64* @detectCounter
  %badr13236 = load double*, double** %orgbadr922
  %ldnewadr13237 = load double*, double** %lub923
  %castn13238 = ptrtoint double* %ldnewadr13237 to i64
  %castb13239 = ptrtoint double* %badr13236 to i64
  %reladr13240 = sub i64 %castn13238, %castb13239
  %badr23241 = load double*, double** %orgbadr317
  %ldnewadr23242 = load double*, double** %lub318
  %castn23243 = ptrtoint double* %ldnewadr23242 to i64
  %castb23244 = ptrtoint double* %badr23241 to i64
  %reladr23245 = sub i64 %castn23243, %castb23244
  %cmpop3246 = icmp ne i64 %reladr13240, %reladr23245
  %newdetval3247 = zext i1 %cmpop3246 to i64
  %ldolddetval3248 = load i64, i64* @detectCounter
  %updetval3249 = or i64 %newdetval3247, %ldolddetval3248
  store i64 %updetval3249, i64* @detectCounter
  %badr13250 = load double*, double** %orgbadr922
  %ldnewadr13251 = load double*, double** %lub923
  %castn13252 = ptrtoint double* %ldnewadr13251 to i64
  %castb13253 = ptrtoint double* %badr13250 to i64
  %reladr13254 = sub i64 %castn13252, %castb13253
  %badr23255 = load double*, double** %orgbadr419
  %ldnewadr23256 = load double*, double** %lub420
  %castn23257 = ptrtoint double* %ldnewadr23256 to i64
  %castb23258 = ptrtoint double* %badr23255 to i64
  %reladr23259 = sub i64 %castn23257, %castb23258
  %cmpop3260 = icmp ne i64 %reladr13254, %reladr23259
  %newdetval3261 = zext i1 %cmpop3260 to i64
  %ldolddetval3262 = load i64, i64* @detectCounter
  %updetval3263 = or i64 %newdetval3261, %ldolddetval3262
  store i64 %updetval3263, i64* @detectCounter
  %badr13264 = load double*, double** %orgbadr905
  %ldnewadr13265 = load double*, double** %lub906
  %castn13266 = ptrtoint double* %ldnewadr13265 to i64
  %castb13267 = ptrtoint double* %badr13264 to i64
  %reladr13268 = sub i64 %castn13266, %castb13267
  %badr23269 = load double*, double** %orgbadr888
  %ldnewadr23270 = load double*, double** %lub889
  %castn23271 = ptrtoint double* %ldnewadr23270 to i64
  %castb23272 = ptrtoint double* %badr23269 to i64
  %reladr23273 = sub i64 %castn23271, %castb23272
  %cmpop3274 = icmp ne i64 %reladr13268, %reladr23273
  %newdetval3275 = zext i1 %cmpop3274 to i64
  %ldolddetval3276 = load i64, i64* @detectCounter
  %updetval3277 = or i64 %newdetval3275, %ldolddetval3276
  store i64 %updetval3277, i64* @detectCounter
  %badr13278 = load double*, double** %orgbadr905
  %ldnewadr13279 = load double*, double** %lub906
  %castn13280 = ptrtoint double* %ldnewadr13279 to i64
  %castb13281 = ptrtoint double* %badr13278 to i64
  %reladr13282 = sub i64 %castn13280, %castb13281
  %badr23283 = load double*, double** %orgbadr368
  %ldnewadr23284 = load double*, double** %lub369
  %castn23285 = ptrtoint double* %ldnewadr23284 to i64
  %castb23286 = ptrtoint double* %badr23283 to i64
  %reladr23287 = sub i64 %castn23285, %castb23286
  %cmpop3288 = icmp ne i64 %reladr13282, %reladr23287
  %newdetval3289 = zext i1 %cmpop3288 to i64
  %ldolddetval3290 = load i64, i64* @detectCounter
  %updetval3291 = or i64 %newdetval3289, %ldolddetval3290
  store i64 %updetval3291, i64* @detectCounter
  %badr13292 = load double*, double** %orgbadr905
  %ldnewadr13293 = load double*, double** %lub906
  %castn13294 = ptrtoint double* %ldnewadr13293 to i64
  %castb13295 = ptrtoint double* %badr13292 to i64
  %reladr13296 = sub i64 %castn13294, %castb13295
  %badr23297 = load double*, double** %orgbadr351
  %ldnewadr23298 = load double*, double** %lub352
  %castn23299 = ptrtoint double* %ldnewadr23298 to i64
  %castb23300 = ptrtoint double* %badr23297 to i64
  %reladr23301 = sub i64 %castn23299, %castb23300
  %cmpop3302 = icmp ne i64 %reladr13296, %reladr23301
  %newdetval3303 = zext i1 %cmpop3302 to i64
  %ldolddetval3304 = load i64, i64* @detectCounter
  %updetval3305 = or i64 %newdetval3303, %ldolddetval3304
  store i64 %updetval3305, i64* @detectCounter
  %badr13306 = load double*, double** %orgbadr905
  %ldnewadr13307 = load double*, double** %lub906
  %castn13308 = ptrtoint double* %ldnewadr13307 to i64
  %castb13309 = ptrtoint double* %badr13306 to i64
  %reladr13310 = sub i64 %castn13308, %castb13309
  %badr23311 = load double*, double** %orgbadr334
  %ldnewadr23312 = load double*, double** %lub335
  %castn23313 = ptrtoint double* %ldnewadr23312 to i64
  %castb23314 = ptrtoint double* %badr23311 to i64
  %reladr23315 = sub i64 %castn23313, %castb23314
  %cmpop3316 = icmp ne i64 %reladr13310, %reladr23315
  %newdetval3317 = zext i1 %cmpop3316 to i64
  %ldolddetval3318 = load i64, i64* @detectCounter
  %updetval3319 = or i64 %newdetval3317, %ldolddetval3318
  store i64 %updetval3319, i64* @detectCounter
  %badr13320 = load double*, double** %orgbadr905
  %ldnewadr13321 = load double*, double** %lub906
  %castn13322 = ptrtoint double* %ldnewadr13321 to i64
  %castb13323 = ptrtoint double* %badr13320 to i64
  %reladr13324 = sub i64 %castn13322, %castb13323
  %badr23325 = load double*, double** %orgbadr317
  %ldnewadr23326 = load double*, double** %lub318
  %castn23327 = ptrtoint double* %ldnewadr23326 to i64
  %castb23328 = ptrtoint double* %badr23325 to i64
  %reladr23329 = sub i64 %castn23327, %castb23328
  %cmpop3330 = icmp ne i64 %reladr13324, %reladr23329
  %newdetval3331 = zext i1 %cmpop3330 to i64
  %ldolddetval3332 = load i64, i64* @detectCounter
  %updetval3333 = or i64 %newdetval3331, %ldolddetval3332
  store i64 %updetval3333, i64* @detectCounter
  %badr13334 = load double*, double** %orgbadr905
  %ldnewadr13335 = load double*, double** %lub906
  %castn13336 = ptrtoint double* %ldnewadr13335 to i64
  %castb13337 = ptrtoint double* %badr13334 to i64
  %reladr13338 = sub i64 %castn13336, %castb13337
  %badr23339 = load double*, double** %orgbadr419
  %ldnewadr23340 = load double*, double** %lub420
  %castn23341 = ptrtoint double* %ldnewadr23340 to i64
  %castb23342 = ptrtoint double* %badr23339 to i64
  %reladr23343 = sub i64 %castn23341, %castb23342
  %cmpop3344 = icmp ne i64 %reladr13338, %reladr23343
  %newdetval3345 = zext i1 %cmpop3344 to i64
  %ldolddetval3346 = load i64, i64* @detectCounter
  %updetval3347 = or i64 %newdetval3345, %ldolddetval3346
  store i64 %updetval3347, i64* @detectCounter
  %badr13348 = load double*, double** %orgbadr888
  %ldnewadr13349 = load double*, double** %lub889
  %castn13350 = ptrtoint double* %ldnewadr13349 to i64
  %castb13351 = ptrtoint double* %badr13348 to i64
  %reladr13352 = sub i64 %castn13350, %castb13351
  %badr23353 = load double*, double** %orgbadr368
  %ldnewadr23354 = load double*, double** %lub369
  %castn23355 = ptrtoint double* %ldnewadr23354 to i64
  %castb23356 = ptrtoint double* %badr23353 to i64
  %reladr23357 = sub i64 %castn23355, %castb23356
  %cmpop3358 = icmp ne i64 %reladr13352, %reladr23357
  %newdetval3359 = zext i1 %cmpop3358 to i64
  %ldolddetval3360 = load i64, i64* @detectCounter
  %updetval3361 = or i64 %newdetval3359, %ldolddetval3360
  store i64 %updetval3361, i64* @detectCounter
  %badr13362 = load double*, double** %orgbadr888
  %ldnewadr13363 = load double*, double** %lub889
  %castn13364 = ptrtoint double* %ldnewadr13363 to i64
  %castb13365 = ptrtoint double* %badr13362 to i64
  %reladr13366 = sub i64 %castn13364, %castb13365
  %badr23367 = load double*, double** %orgbadr351
  %ldnewadr23368 = load double*, double** %lub352
  %castn23369 = ptrtoint double* %ldnewadr23368 to i64
  %castb23370 = ptrtoint double* %badr23367 to i64
  %reladr23371 = sub i64 %castn23369, %castb23370
  %cmpop3372 = icmp ne i64 %reladr13366, %reladr23371
  %newdetval3373 = zext i1 %cmpop3372 to i64
  %ldolddetval3374 = load i64, i64* @detectCounter
  %updetval3375 = or i64 %newdetval3373, %ldolddetval3374
  store i64 %updetval3375, i64* @detectCounter
  %badr13376 = load double*, double** %orgbadr888
  %ldnewadr13377 = load double*, double** %lub889
  %castn13378 = ptrtoint double* %ldnewadr13377 to i64
  %castb13379 = ptrtoint double* %badr13376 to i64
  %reladr13380 = sub i64 %castn13378, %castb13379
  %badr23381 = load double*, double** %orgbadr334
  %ldnewadr23382 = load double*, double** %lub335
  %castn23383 = ptrtoint double* %ldnewadr23382 to i64
  %castb23384 = ptrtoint double* %badr23381 to i64
  %reladr23385 = sub i64 %castn23383, %castb23384
  %cmpop3386 = icmp ne i64 %reladr13380, %reladr23385
  %newdetval3387 = zext i1 %cmpop3386 to i64
  %ldolddetval3388 = load i64, i64* @detectCounter
  %updetval3389 = or i64 %newdetval3387, %ldolddetval3388
  store i64 %updetval3389, i64* @detectCounter
  %badr13390 = load double*, double** %orgbadr888
  %ldnewadr13391 = load double*, double** %lub889
  %castn13392 = ptrtoint double* %ldnewadr13391 to i64
  %castb13393 = ptrtoint double* %badr13390 to i64
  %reladr13394 = sub i64 %castn13392, %castb13393
  %badr23395 = load double*, double** %orgbadr317
  %ldnewadr23396 = load double*, double** %lub318
  %castn23397 = ptrtoint double* %ldnewadr23396 to i64
  %castb23398 = ptrtoint double* %badr23395 to i64
  %reladr23399 = sub i64 %castn23397, %castb23398
  %cmpop3400 = icmp ne i64 %reladr13394, %reladr23399
  %newdetval3401 = zext i1 %cmpop3400 to i64
  %ldolddetval3402 = load i64, i64* @detectCounter
  %updetval3403 = or i64 %newdetval3401, %ldolddetval3402
  store i64 %updetval3403, i64* @detectCounter
  %badr13404 = load double*, double** %orgbadr888
  %ldnewadr13405 = load double*, double** %lub889
  %castn13406 = ptrtoint double* %ldnewadr13405 to i64
  %castb13407 = ptrtoint double* %badr13404 to i64
  %reladr13408 = sub i64 %castn13406, %castb13407
  %badr23409 = load double*, double** %orgbadr419
  %ldnewadr23410 = load double*, double** %lub420
  %castn23411 = ptrtoint double* %ldnewadr23410 to i64
  %castb23412 = ptrtoint double* %badr23409 to i64
  %reladr23413 = sub i64 %castn23411, %castb23412
  %cmpop3414 = icmp ne i64 %reladr13408, %reladr23413
  %newdetval3415 = zext i1 %cmpop3414 to i64
  %ldolddetval3416 = load i64, i64* @detectCounter
  %updetval3417 = or i64 %newdetval3415, %ldolddetval3416
  store i64 %updetval3417, i64* @detectCounter
  %badr13418 = load double*, double** %orgbadr368
  %ldnewadr13419 = load double*, double** %lub369
  %castn13420 = ptrtoint double* %ldnewadr13419 to i64
  %castb13421 = ptrtoint double* %badr13418 to i64
  %reladr13422 = sub i64 %castn13420, %castb13421
  %badr23423 = load double*, double** %orgbadr351
  %ldnewadr23424 = load double*, double** %lub352
  %castn23425 = ptrtoint double* %ldnewadr23424 to i64
  %castb23426 = ptrtoint double* %badr23423 to i64
  %reladr23427 = sub i64 %castn23425, %castb23426
  %cmpop3428 = icmp ne i64 %reladr13422, %reladr23427
  %newdetval3429 = zext i1 %cmpop3428 to i64
  %ldolddetval3430 = load i64, i64* @detectCounter
  %updetval3431 = or i64 %newdetval3429, %ldolddetval3430
  store i64 %updetval3431, i64* @detectCounter
  %badr13432 = load double*, double** %orgbadr368
  %ldnewadr13433 = load double*, double** %lub369
  %castn13434 = ptrtoint double* %ldnewadr13433 to i64
  %castb13435 = ptrtoint double* %badr13432 to i64
  %reladr13436 = sub i64 %castn13434, %castb13435
  %badr23437 = load double*, double** %orgbadr334
  %ldnewadr23438 = load double*, double** %lub335
  %castn23439 = ptrtoint double* %ldnewadr23438 to i64
  %castb23440 = ptrtoint double* %badr23437 to i64
  %reladr23441 = sub i64 %castn23439, %castb23440
  %cmpop3442 = icmp ne i64 %reladr13436, %reladr23441
  %newdetval3443 = zext i1 %cmpop3442 to i64
  %ldolddetval3444 = load i64, i64* @detectCounter
  %updetval3445 = or i64 %newdetval3443, %ldolddetval3444
  store i64 %updetval3445, i64* @detectCounter
  %badr13446 = load double*, double** %orgbadr368
  %ldnewadr13447 = load double*, double** %lub369
  %castn13448 = ptrtoint double* %ldnewadr13447 to i64
  %castb13449 = ptrtoint double* %badr13446 to i64
  %reladr13450 = sub i64 %castn13448, %castb13449
  %badr23451 = load double*, double** %orgbadr317
  %ldnewadr23452 = load double*, double** %lub318
  %castn23453 = ptrtoint double* %ldnewadr23452 to i64
  %castb23454 = ptrtoint double* %badr23451 to i64
  %reladr23455 = sub i64 %castn23453, %castb23454
  %cmpop3456 = icmp ne i64 %reladr13450, %reladr23455
  %newdetval3457 = zext i1 %cmpop3456 to i64
  %ldolddetval3458 = load i64, i64* @detectCounter
  %updetval3459 = or i64 %newdetval3457, %ldolddetval3458
  store i64 %updetval3459, i64* @detectCounter
  %badr13460 = load double*, double** %orgbadr368
  %ldnewadr13461 = load double*, double** %lub369
  %castn13462 = ptrtoint double* %ldnewadr13461 to i64
  %castb13463 = ptrtoint double* %badr13460 to i64
  %reladr13464 = sub i64 %castn13462, %castb13463
  %badr23465 = load double*, double** %orgbadr419
  %ldnewadr23466 = load double*, double** %lub420
  %castn23467 = ptrtoint double* %ldnewadr23466 to i64
  %castb23468 = ptrtoint double* %badr23465 to i64
  %reladr23469 = sub i64 %castn23467, %castb23468
  %cmpop3470 = icmp ne i64 %reladr13464, %reladr23469
  %newdetval3471 = zext i1 %cmpop3470 to i64
  %ldolddetval3472 = load i64, i64* @detectCounter
  %updetval3473 = or i64 %newdetval3471, %ldolddetval3472
  store i64 %updetval3473, i64* @detectCounter
  %badr13474 = load double*, double** %orgbadr351
  %ldnewadr13475 = load double*, double** %lub352
  %castn13476 = ptrtoint double* %ldnewadr13475 to i64
  %castb13477 = ptrtoint double* %badr13474 to i64
  %reladr13478 = sub i64 %castn13476, %castb13477
  %badr23479 = load double*, double** %orgbadr334
  %ldnewadr23480 = load double*, double** %lub335
  %castn23481 = ptrtoint double* %ldnewadr23480 to i64
  %castb23482 = ptrtoint double* %badr23479 to i64
  %reladr23483 = sub i64 %castn23481, %castb23482
  %cmpop3484 = icmp ne i64 %reladr13478, %reladr23483
  %newdetval3485 = zext i1 %cmpop3484 to i64
  %ldolddetval3486 = load i64, i64* @detectCounter
  %updetval3487 = or i64 %newdetval3485, %ldolddetval3486
  store i64 %updetval3487, i64* @detectCounter
  %badr13488 = load double*, double** %orgbadr351
  %ldnewadr13489 = load double*, double** %lub352
  %castn13490 = ptrtoint double* %ldnewadr13489 to i64
  %castb13491 = ptrtoint double* %badr13488 to i64
  %reladr13492 = sub i64 %castn13490, %castb13491
  %badr23493 = load double*, double** %orgbadr317
  %ldnewadr23494 = load double*, double** %lub318
  %castn23495 = ptrtoint double* %ldnewadr23494 to i64
  %castb23496 = ptrtoint double* %badr23493 to i64
  %reladr23497 = sub i64 %castn23495, %castb23496
  %cmpop3498 = icmp ne i64 %reladr13492, %reladr23497
  %newdetval3499 = zext i1 %cmpop3498 to i64
  %ldolddetval3500 = load i64, i64* @detectCounter
  %updetval3501 = or i64 %newdetval3499, %ldolddetval3500
  store i64 %updetval3501, i64* @detectCounter
  %badr13502 = load double*, double** %orgbadr351
  %ldnewadr13503 = load double*, double** %lub352
  %castn13504 = ptrtoint double* %ldnewadr13503 to i64
  %castb13505 = ptrtoint double* %badr13502 to i64
  %reladr13506 = sub i64 %castn13504, %castb13505
  %badr23507 = load double*, double** %orgbadr419
  %ldnewadr23508 = load double*, double** %lub420
  %castn23509 = ptrtoint double* %ldnewadr23508 to i64
  %castb23510 = ptrtoint double* %badr23507 to i64
  %reladr23511 = sub i64 %castn23509, %castb23510
  %cmpop3512 = icmp ne i64 %reladr13506, %reladr23511
  %newdetval3513 = zext i1 %cmpop3512 to i64
  %ldolddetval3514 = load i64, i64* @detectCounter
  %updetval3515 = or i64 %newdetval3513, %ldolddetval3514
  store i64 %updetval3515, i64* @detectCounter
  %badr13516 = load double*, double** %orgbadr334
  %ldnewadr13517 = load double*, double** %lub335
  %castn13518 = ptrtoint double* %ldnewadr13517 to i64
  %castb13519 = ptrtoint double* %badr13516 to i64
  %reladr13520 = sub i64 %castn13518, %castb13519
  %badr23521 = load double*, double** %orgbadr317
  %ldnewadr23522 = load double*, double** %lub318
  %castn23523 = ptrtoint double* %ldnewadr23522 to i64
  %castb23524 = ptrtoint double* %badr23521 to i64
  %reladr23525 = sub i64 %castn23523, %castb23524
  %cmpop3526 = icmp ne i64 %reladr13520, %reladr23525
  %newdetval3527 = zext i1 %cmpop3526 to i64
  %ldolddetval3528 = load i64, i64* @detectCounter
  %updetval3529 = or i64 %newdetval3527, %ldolddetval3528
  store i64 %updetval3529, i64* @detectCounter
  %badr13530 = load double*, double** %orgbadr334
  %ldnewadr13531 = load double*, double** %lub335
  %castn13532 = ptrtoint double* %ldnewadr13531 to i64
  %castb13533 = ptrtoint double* %badr13530 to i64
  %reladr13534 = sub i64 %castn13532, %castb13533
  %badr23535 = load double*, double** %orgbadr419
  %ldnewadr23536 = load double*, double** %lub420
  %castn23537 = ptrtoint double* %ldnewadr23536 to i64
  %castb23538 = ptrtoint double* %badr23535 to i64
  %reladr23539 = sub i64 %castn23537, %castb23538
  %cmpop3540 = icmp ne i64 %reladr13534, %reladr23539
  %newdetval3541 = zext i1 %cmpop3540 to i64
  %ldolddetval3542 = load i64, i64* @detectCounter
  %updetval3543 = or i64 %newdetval3541, %ldolddetval3542
  store i64 %updetval3543, i64* @detectCounter
  %badr13544 = load double*, double** %orgbadr317
  %ldnewadr13545 = load double*, double** %lub318
  %castn13546 = ptrtoint double* %ldnewadr13545 to i64
  %castb13547 = ptrtoint double* %badr13544 to i64
  %reladr13548 = sub i64 %castn13546, %castb13547
  %badr23549 = load double*, double** %orgbadr419
  %ldnewadr23550 = load double*, double** %lub420
  %castn23551 = ptrtoint double* %ldnewadr23550 to i64
  %castb23552 = ptrtoint double* %badr23549 to i64
  %reladr23553 = sub i64 %castn23551, %castb23552
  %cmpop3554 = icmp ne i64 %reladr13548, %reladr23553
  %newdetval3555 = zext i1 %cmpop3554 to i64
  %ldolddetval3556 = load i64, i64* @detectCounter
  %updetval3557 = or i64 %newdetval3555, %ldolddetval3556
  store i64 %updetval3557, i64* @detectCounter
  %badr13558 = load double*, double** %orgbadr724
  %ldnewadr13559 = load double*, double** %lub725
  %castn13560 = ptrtoint double* %ldnewadr13559 to i64
  %castb13561 = ptrtoint double* %badr13558 to i64
  %reladr13562 = sub i64 %castn13560, %castb13561
  %badr23563 = load double*, double** %orgbadr136
  %ldnewadr23564 = load double*, double** %lub137
  %castn23565 = ptrtoint double* %ldnewadr23564 to i64
  %castb23566 = ptrtoint double* %badr23563 to i64
  %reladr23567 = sub i64 %castn23565, %castb23566
  %cmpop3568 = icmp ne i64 %reladr13562, %reladr23567
  %newdetval3569 = zext i1 %cmpop3568 to i64
  %ldolddetval3570 = load i64, i64* @detectCounter
  %updetval3571 = or i64 %newdetval3569, %ldolddetval3570
  store i64 %updetval3571, i64* @detectCounter
  %badr13572 = load double*, double** %orgbadr738
  %ldnewadr13573 = load double*, double** %lub739
  %castn13574 = ptrtoint double* %ldnewadr13573 to i64
  %castb13575 = ptrtoint double* %badr13572 to i64
  %reladr13576 = sub i64 %castn13574, %castb13575
  %badr23577 = load double*, double** %orgbadr88
  %ldnewadr23578 = load double*, double** %lub89
  %castn23579 = ptrtoint double* %ldnewadr23578 to i64
  %castb23580 = ptrtoint double* %badr23577 to i64
  %reladr23581 = sub i64 %castn23579, %castb23580
  %cmpop3582 = icmp ne i64 %reladr13576, %reladr23581
  %newdetval3583 = zext i1 %cmpop3582 to i64
  %ldolddetval3584 = load i64, i64* @detectCounter
  %updetval3585 = or i64 %newdetval3583, %ldolddetval3584
  store i64 %updetval3585, i64* @detectCounter
  %badr13586 = load double*, double** %orgbadr738
  %ldnewadr13587 = load double*, double** %lub739
  %castn13588 = ptrtoint double* %ldnewadr13587 to i64
  %castb13589 = ptrtoint double* %badr13586 to i64
  %reladr13590 = sub i64 %castn13588, %castb13589
  %badr23591 = load double*, double** %orgbadr150
  %ldnewadr23592 = load double*, double** %lub151
  %castn23593 = ptrtoint double* %ldnewadr23592 to i64
  %castb23594 = ptrtoint double* %badr23591 to i64
  %reladr23595 = sub i64 %castn23593, %castb23594
  %cmpop3596 = icmp ne i64 %reladr13590, %reladr23595
  %newdetval3597 = zext i1 %cmpop3596 to i64
  %ldolddetval3598 = load i64, i64* @detectCounter
  %updetval3599 = or i64 %newdetval3597, %ldolddetval3598
  store i64 %updetval3599, i64* @detectCounter
  %badr13600 = load double*, double** %orgbadr738
  %ldnewadr13601 = load double*, double** %lub739
  %castn13602 = ptrtoint double* %ldnewadr13601 to i64
  %castb13603 = ptrtoint double* %badr13600 to i64
  %reladr13604 = sub i64 %castn13602, %castb13603
  %badr23605 = load double*, double** %orgbadr676
  %ldnewadr23606 = load double*, double** %lub677
  %castn23607 = ptrtoint double* %ldnewadr23606 to i64
  %castb23608 = ptrtoint double* %badr23605 to i64
  %reladr23609 = sub i64 %castn23607, %castb23608
  %cmpop3610 = icmp ne i64 %reladr13604, %reladr23609
  %newdetval3611 = zext i1 %cmpop3610 to i64
  %ldolddetval3612 = load i64, i64* @detectCounter
  %updetval3613 = or i64 %newdetval3611, %ldolddetval3612
  store i64 %updetval3613, i64* @detectCounter
  %badr13614 = load double*, double** %orgbadr738
  %ldnewadr13615 = load double*, double** %lub739
  %castn13616 = ptrtoint double* %ldnewadr13615 to i64
  %castb13617 = ptrtoint double* %badr13614 to i64
  %reladr13618 = sub i64 %castn13616, %castb13617
  %badr23619 = load double*, double** %orgbadr600
  %ldnewadr23620 = load double*, double** %lub601
  %castn23621 = ptrtoint double* %ldnewadr23620 to i64
  %castb23622 = ptrtoint double* %badr23619 to i64
  %reladr23623 = sub i64 %castn23621, %castb23622
  %cmpop3624 = icmp ne i64 %reladr13618, %reladr23623
  %newdetval3625 = zext i1 %cmpop3624 to i64
  %ldolddetval3626 = load i64, i64* @detectCounter
  %updetval3627 = or i64 %newdetval3625, %ldolddetval3626
  store i64 %updetval3627, i64* @detectCounter
  %badr13628 = load double*, double** %orgbadr738
  %ldnewadr13629 = load double*, double** %lub739
  %castn13630 = ptrtoint double* %ldnewadr13629 to i64
  %castb13631 = ptrtoint double* %badr13628 to i64
  %reladr13632 = sub i64 %castn13630, %castb13631
  %badr23633 = load double*, double** %orgbadr22
  %ldnewadr23634 = load double*, double** %lub23
  %castn23635 = ptrtoint double* %ldnewadr23634 to i64
  %castb23636 = ptrtoint double* %badr23633 to i64
  %reladr23637 = sub i64 %castn23635, %castb23636
  %cmpop3638 = icmp ne i64 %reladr13632, %reladr23637
  %newdetval3639 = zext i1 %cmpop3638 to i64
  %ldolddetval3640 = load i64, i64* @detectCounter
  %updetval3641 = or i64 %newdetval3639, %ldolddetval3640
  store i64 %updetval3641, i64* @detectCounter
  %badr13642 = load double*, double** %orgbadr88
  %ldnewadr13643 = load double*, double** %lub89
  %castn13644 = ptrtoint double* %ldnewadr13643 to i64
  %castb13645 = ptrtoint double* %badr13642 to i64
  %reladr13646 = sub i64 %castn13644, %castb13645
  %badr23647 = load double*, double** %orgbadr150
  %ldnewadr23648 = load double*, double** %lub151
  %castn23649 = ptrtoint double* %ldnewadr23648 to i64
  %castb23650 = ptrtoint double* %badr23647 to i64
  %reladr23651 = sub i64 %castn23649, %castb23650
  %cmpop3652 = icmp ne i64 %reladr13646, %reladr23651
  %newdetval3653 = zext i1 %cmpop3652 to i64
  %ldolddetval3654 = load i64, i64* @detectCounter
  %updetval3655 = or i64 %newdetval3653, %ldolddetval3654
  store i64 %updetval3655, i64* @detectCounter
  %badr13656 = load double*, double** %orgbadr88
  %ldnewadr13657 = load double*, double** %lub89
  %castn13658 = ptrtoint double* %ldnewadr13657 to i64
  %castb13659 = ptrtoint double* %badr13656 to i64
  %reladr13660 = sub i64 %castn13658, %castb13659
  %badr23661 = load double*, double** %orgbadr676
  %ldnewadr23662 = load double*, double** %lub677
  %castn23663 = ptrtoint double* %ldnewadr23662 to i64
  %castb23664 = ptrtoint double* %badr23661 to i64
  %reladr23665 = sub i64 %castn23663, %castb23664
  %cmpop3666 = icmp ne i64 %reladr13660, %reladr23665
  %newdetval3667 = zext i1 %cmpop3666 to i64
  %ldolddetval3668 = load i64, i64* @detectCounter
  %updetval3669 = or i64 %newdetval3667, %ldolddetval3668
  store i64 %updetval3669, i64* @detectCounter
  %badr13670 = load double*, double** %orgbadr88
  %ldnewadr13671 = load double*, double** %lub89
  %castn13672 = ptrtoint double* %ldnewadr13671 to i64
  %castb13673 = ptrtoint double* %badr13670 to i64
  %reladr13674 = sub i64 %castn13672, %castb13673
  %badr23675 = load double*, double** %orgbadr600
  %ldnewadr23676 = load double*, double** %lub601
  %castn23677 = ptrtoint double* %ldnewadr23676 to i64
  %castb23678 = ptrtoint double* %badr23675 to i64
  %reladr23679 = sub i64 %castn23677, %castb23678
  %cmpop3680 = icmp ne i64 %reladr13674, %reladr23679
  %newdetval3681 = zext i1 %cmpop3680 to i64
  %ldolddetval3682 = load i64, i64* @detectCounter
  %updetval3683 = or i64 %newdetval3681, %ldolddetval3682
  store i64 %updetval3683, i64* @detectCounter
  %badr13684 = load double*, double** %orgbadr88
  %ldnewadr13685 = load double*, double** %lub89
  %castn13686 = ptrtoint double* %ldnewadr13685 to i64
  %castb13687 = ptrtoint double* %badr13684 to i64
  %reladr13688 = sub i64 %castn13686, %castb13687
  %badr23689 = load double*, double** %orgbadr22
  %ldnewadr23690 = load double*, double** %lub23
  %castn23691 = ptrtoint double* %ldnewadr23690 to i64
  %castb23692 = ptrtoint double* %badr23689 to i64
  %reladr23693 = sub i64 %castn23691, %castb23692
  %cmpop3694 = icmp ne i64 %reladr13688, %reladr23693
  %newdetval3695 = zext i1 %cmpop3694 to i64
  %ldolddetval3696 = load i64, i64* @detectCounter
  %updetval3697 = or i64 %newdetval3695, %ldolddetval3696
  store i64 %updetval3697, i64* @detectCounter
  %badr13698 = load double*, double** %orgbadr150
  %ldnewadr13699 = load double*, double** %lub151
  %castn13700 = ptrtoint double* %ldnewadr13699 to i64
  %castb13701 = ptrtoint double* %badr13698 to i64
  %reladr13702 = sub i64 %castn13700, %castb13701
  %badr23703 = load double*, double** %orgbadr676
  %ldnewadr23704 = load double*, double** %lub677
  %castn23705 = ptrtoint double* %ldnewadr23704 to i64
  %castb23706 = ptrtoint double* %badr23703 to i64
  %reladr23707 = sub i64 %castn23705, %castb23706
  %cmpop3708 = icmp ne i64 %reladr13702, %reladr23707
  %newdetval3709 = zext i1 %cmpop3708 to i64
  %ldolddetval3710 = load i64, i64* @detectCounter
  %updetval3711 = or i64 %newdetval3709, %ldolddetval3710
  store i64 %updetval3711, i64* @detectCounter
  %badr13712 = load double*, double** %orgbadr150
  %ldnewadr13713 = load double*, double** %lub151
  %castn13714 = ptrtoint double* %ldnewadr13713 to i64
  %castb13715 = ptrtoint double* %badr13712 to i64
  %reladr13716 = sub i64 %castn13714, %castb13715
  %badr23717 = load double*, double** %orgbadr600
  %ldnewadr23718 = load double*, double** %lub601
  %castn23719 = ptrtoint double* %ldnewadr23718 to i64
  %castb23720 = ptrtoint double* %badr23717 to i64
  %reladr23721 = sub i64 %castn23719, %castb23720
  %cmpop3722 = icmp ne i64 %reladr13716, %reladr23721
  %newdetval3723 = zext i1 %cmpop3722 to i64
  %ldolddetval3724 = load i64, i64* @detectCounter
  %updetval3725 = or i64 %newdetval3723, %ldolddetval3724
  store i64 %updetval3725, i64* @detectCounter
  %badr13726 = load double*, double** %orgbadr150
  %ldnewadr13727 = load double*, double** %lub151
  %castn13728 = ptrtoint double* %ldnewadr13727 to i64
  %castb13729 = ptrtoint double* %badr13726 to i64
  %reladr13730 = sub i64 %castn13728, %castb13729
  %badr23731 = load double*, double** %orgbadr22
  %ldnewadr23732 = load double*, double** %lub23
  %castn23733 = ptrtoint double* %ldnewadr23732 to i64
  %castb23734 = ptrtoint double* %badr23731 to i64
  %reladr23735 = sub i64 %castn23733, %castb23734
  %cmpop3736 = icmp ne i64 %reladr13730, %reladr23735
  %newdetval3737 = zext i1 %cmpop3736 to i64
  %ldolddetval3738 = load i64, i64* @detectCounter
  %updetval3739 = or i64 %newdetval3737, %ldolddetval3738
  store i64 %updetval3739, i64* @detectCounter
  %badr13740 = load double*, double** %orgbadr676
  %ldnewadr13741 = load double*, double** %lub677
  %castn13742 = ptrtoint double* %ldnewadr13741 to i64
  %castb13743 = ptrtoint double* %badr13740 to i64
  %reladr13744 = sub i64 %castn13742, %castb13743
  %badr23745 = load double*, double** %orgbadr600
  %ldnewadr23746 = load double*, double** %lub601
  %castn23747 = ptrtoint double* %ldnewadr23746 to i64
  %castb23748 = ptrtoint double* %badr23745 to i64
  %reladr23749 = sub i64 %castn23747, %castb23748
  %cmpop3750 = icmp ne i64 %reladr13744, %reladr23749
  %newdetval3751 = zext i1 %cmpop3750 to i64
  %ldolddetval3752 = load i64, i64* @detectCounter
  %updetval3753 = or i64 %newdetval3751, %ldolddetval3752
  store i64 %updetval3753, i64* @detectCounter
  %badr13754 = load double*, double** %orgbadr676
  %ldnewadr13755 = load double*, double** %lub677
  %castn13756 = ptrtoint double* %ldnewadr13755 to i64
  %castb13757 = ptrtoint double* %badr13754 to i64
  %reladr13758 = sub i64 %castn13756, %castb13757
  %badr23759 = load double*, double** %orgbadr22
  %ldnewadr23760 = load double*, double** %lub23
  %castn23761 = ptrtoint double* %ldnewadr23760 to i64
  %castb23762 = ptrtoint double* %badr23759 to i64
  %reladr23763 = sub i64 %castn23761, %castb23762
  %cmpop3764 = icmp ne i64 %reladr13758, %reladr23763
  %newdetval3765 = zext i1 %cmpop3764 to i64
  %ldolddetval3766 = load i64, i64* @detectCounter
  %updetval3767 = or i64 %newdetval3765, %ldolddetval3766
  store i64 %updetval3767, i64* @detectCounter
  %badr13768 = load double*, double** %orgbadr600
  %ldnewadr13769 = load double*, double** %lub601
  %castn13770 = ptrtoint double* %ldnewadr13769 to i64
  %castb13771 = ptrtoint double* %badr13768 to i64
  %reladr13772 = sub i64 %castn13770, %castb13771
  %badr23773 = load double*, double** %orgbadr22
  %ldnewadr23774 = load double*, double** %lub23
  %castn23775 = ptrtoint double* %ldnewadr23774 to i64
  %castb23776 = ptrtoint double* %badr23773 to i64
  %reladr23777 = sub i64 %castn23775, %castb23776
  %cmpop3778 = icmp ne i64 %reladr13772, %reladr23777
  %newdetval3779 = zext i1 %cmpop3778 to i64
  %ldolddetval3780 = load i64, i64* @detectCounter
  %updetval3781 = or i64 %newdetval3779, %ldolddetval3780
  store i64 %updetval3781, i64* @detectCounter
  %badr13782 = load double*, double** %orgbadr586
  %ldnewadr13783 = load double*, double** %lub587
  %castn13784 = ptrtoint double* %ldnewadr13783 to i64
  %castb13785 = ptrtoint double* %badr13782 to i64
  %reladr13786 = sub i64 %castn13784, %castb13785
  %badr23787 = load double*, double** %orgbadr8
  %ldnewadr23788 = load double*, double** %lub9
  %castn23789 = ptrtoint double* %ldnewadr23788 to i64
  %castb23790 = ptrtoint double* %badr23787 to i64
  %reladr23791 = sub i64 %castn23789, %castb23790
  %cmpop3792 = icmp ne i64 %reladr13786, %reladr23791
  %newdetval3793 = zext i1 %cmpop3792 to i64
  %ldolddetval3794 = load i64, i64* @detectCounter
  %updetval3795 = or i64 %newdetval3793, %ldolddetval3794
  store i64 %updetval3795, i64* @detectCounter
  %badr13796 = load i8*, i8** %orgbadr745
  %ldnewadr13797 = load i8*, i8** %lub746
  %castn13798 = ptrtoint i8* %ldnewadr13797 to i64
  %castb13799 = ptrtoint i8* %badr13796 to i64
  %reladr13800 = sub i64 %castn13798, %castb13799
  %badr23801 = load i8*, i8** %orgbadr769
  %ldnewadr23802 = load i8*, i8** %lub770
  %castn23803 = ptrtoint i8* %ldnewadr23802 to i64
  %castb23804 = ptrtoint i8* %badr23801 to i64
  %reladr23805 = sub i64 %castn23803, %castb23804
  %cmpop3806 = icmp ne i64 %reladr13800, %reladr23805
  %newdetval3807 = zext i1 %cmpop3806 to i64
  %ldolddetval3808 = load i64, i64* @detectCounter
  %updetval3809 = or i64 %newdetval3807, %ldolddetval3808
  store i64 %updetval3809, i64* @detectCounter
  %badr13810 = load i8*, i8** %orgbadr745
  %ldnewadr13811 = load i8*, i8** %lub746
  %castn13812 = ptrtoint i8* %ldnewadr13811 to i64
  %castb13813 = ptrtoint i8* %badr13810 to i64
  %reladr13814 = sub i64 %castn13812, %castb13813
  %badr23815 = load i8*, i8** %orgbadr157
  %ldnewadr23816 = load i8*, i8** %lub158
  %castn23817 = ptrtoint i8* %ldnewadr23816 to i64
  %castb23818 = ptrtoint i8* %badr23815 to i64
  %reladr23819 = sub i64 %castn23817, %castb23818
  %cmpop3820 = icmp ne i64 %reladr13814, %reladr23819
  %newdetval3821 = zext i1 %cmpop3820 to i64
  %ldolddetval3822 = load i64, i64* @detectCounter
  %updetval3823 = or i64 %newdetval3821, %ldolddetval3822
  store i64 %updetval3823, i64* @detectCounter
  %badr13824 = load i8*, i8** %orgbadr745
  %ldnewadr13825 = load i8*, i8** %lub746
  %castn13826 = ptrtoint i8* %ldnewadr13825 to i64
  %castb13827 = ptrtoint i8* %badr13824 to i64
  %reladr13828 = sub i64 %castn13826, %castb13827
  %badr23829 = load i8*, i8** %orgbadr181
  %ldnewadr23830 = load i8*, i8** %lub182
  %castn23831 = ptrtoint i8* %ldnewadr23830 to i64
  %castb23832 = ptrtoint i8* %badr23829 to i64
  %reladr23833 = sub i64 %castn23831, %castb23832
  %cmpop3834 = icmp ne i64 %reladr13828, %reladr23833
  %newdetval3835 = zext i1 %cmpop3834 to i64
  %ldolddetval3836 = load i64, i64* @detectCounter
  %updetval3837 = or i64 %newdetval3835, %ldolddetval3836
  store i64 %updetval3837, i64* @detectCounter
  %badr13838 = load i8*, i8** %orgbadr769
  %ldnewadr13839 = load i8*, i8** %lub770
  %castn13840 = ptrtoint i8* %ldnewadr13839 to i64
  %castb13841 = ptrtoint i8* %badr13838 to i64
  %reladr13842 = sub i64 %castn13840, %castb13841
  %badr23843 = load i8*, i8** %orgbadr157
  %ldnewadr23844 = load i8*, i8** %lub158
  %castn23845 = ptrtoint i8* %ldnewadr23844 to i64
  %castb23846 = ptrtoint i8* %badr23843 to i64
  %reladr23847 = sub i64 %castn23845, %castb23846
  %cmpop3848 = icmp ne i64 %reladr13842, %reladr23847
  %newdetval3849 = zext i1 %cmpop3848 to i64
  %ldolddetval3850 = load i64, i64* @detectCounter
  %updetval3851 = or i64 %newdetval3849, %ldolddetval3850
  store i64 %updetval3851, i64* @detectCounter
  %badr13852 = load i8*, i8** %orgbadr769
  %ldnewadr13853 = load i8*, i8** %lub770
  %castn13854 = ptrtoint i8* %ldnewadr13853 to i64
  %castb13855 = ptrtoint i8* %badr13852 to i64
  %reladr13856 = sub i64 %castn13854, %castb13855
  %badr23857 = load i8*, i8** %orgbadr181
  %ldnewadr23858 = load i8*, i8** %lub182
  %castn23859 = ptrtoint i8* %ldnewadr23858 to i64
  %castb23860 = ptrtoint i8* %badr23857 to i64
  %reladr23861 = sub i64 %castn23859, %castb23860
  %cmpop3862 = icmp ne i64 %reladr13856, %reladr23861
  %newdetval3863 = zext i1 %cmpop3862 to i64
  %ldolddetval3864 = load i64, i64* @detectCounter
  %updetval3865 = or i64 %newdetval3863, %ldolddetval3864
  store i64 %updetval3865, i64* @detectCounter
  %badr13866 = load i8*, i8** %orgbadr157
  %ldnewadr13867 = load i8*, i8** %lub158
  %castn13868 = ptrtoint i8* %ldnewadr13867 to i64
  %castb13869 = ptrtoint i8* %badr13866 to i64
  %reladr13870 = sub i64 %castn13868, %castb13869
  %badr23871 = load i8*, i8** %orgbadr181
  %ldnewadr23872 = load i8*, i8** %lub182
  %castn23873 = ptrtoint i8* %ldnewadr23872 to i64
  %castb23874 = ptrtoint i8* %badr23871 to i64
  %reladr23875 = sub i64 %castn23873, %castb23874
  %cmpop3876 = icmp ne i64 %reladr13870, %reladr23875
  %newdetval3877 = zext i1 %cmpop3876 to i64
  %ldolddetval3878 = load i64, i64* @detectCounter
  %updetval3879 = or i64 %newdetval3877, %ldolddetval3878
  store i64 %updetval3879, i64* @detectCounter
  %badr13880 = load double*, double** %orgbadr572
  %ldnewadr13881 = load double*, double** %lub573
  %castn13882 = ptrtoint double* %ldnewadr13881 to i64
  %castb13883 = ptrtoint double* %badr13880 to i64
  %reladr13884 = sub i64 %castn13882, %castb13883
  %badr23885 = load double*, double** %orgbadr
  %ldnewadr23886 = load double*, double** %lub
  %castn23887 = ptrtoint double* %ldnewadr23886 to i64
  %castb23888 = ptrtoint double* %badr23885 to i64
  %reladr23889 = sub i64 %castn23887, %castb23888
  %cmpop3890 = icmp ne i64 %reladr13884, %reladr23889
  %newdetval3891 = zext i1 %cmpop3890 to i64
  %ldolddetval3892 = load i64, i64* @detectCounter
  %updetval3893 = or i64 %newdetval3891, %ldolddetval3892
  store i64 %updetval3893, i64* @detectCounter
  %badr13894 = load i8*, i8** %orgbadr707
  %ldnewadr13895 = load i8*, i8** %lub708
  %castn13896 = ptrtoint i8* %ldnewadr13895 to i64
  %castb13897 = ptrtoint i8* %badr13894 to i64
  %reladr13898 = sub i64 %castn13896, %castb13897
  %badr23899 = load i8*, i8** %orgbadr95
  %ldnewadr23900 = load i8*, i8** %lub96
  %castn23901 = ptrtoint i8* %ldnewadr23900 to i64
  %castb23902 = ptrtoint i8* %badr23899 to i64
  %reladr23903 = sub i64 %castn23901, %castb23902
  %cmpop3904 = icmp ne i64 %reladr13898, %reladr23903
  %newdetval3905 = zext i1 %cmpop3904 to i64
  %ldolddetval3906 = load i64, i64* @detectCounter
  %updetval3907 = or i64 %newdetval3905, %ldolddetval3906
  store i64 %updetval3907, i64* @detectCounter
  %badr13908 = load i8*, i8** %orgbadr707
  %ldnewadr13909 = load i8*, i8** %lub708
  %castn13910 = ptrtoint i8* %ldnewadr13909 to i64
  %castb13911 = ptrtoint i8* %badr13908 to i64
  %reladr13912 = sub i64 %castn13910, %castb13911
  %badr23913 = load i8*, i8** %orgbadr683
  %ldnewadr23914 = load i8*, i8** %lub684
  %castn23915 = ptrtoint i8* %ldnewadr23914 to i64
  %castb23916 = ptrtoint i8* %badr23913 to i64
  %reladr23917 = sub i64 %castn23915, %castb23916
  %cmpop3918 = icmp ne i64 %reladr13912, %reladr23917
  %newdetval3919 = zext i1 %cmpop3918 to i64
  %ldolddetval3920 = load i64, i64* @detectCounter
  %updetval3921 = or i64 %newdetval3919, %ldolddetval3920
  store i64 %updetval3921, i64* @detectCounter
  %badr13922 = load i8*, i8** %orgbadr707
  %ldnewadr13923 = load i8*, i8** %lub708
  %castn13924 = ptrtoint i8* %ldnewadr13923 to i64
  %castb13925 = ptrtoint i8* %badr13922 to i64
  %reladr13926 = sub i64 %castn13924, %castb13925
  %badr23927 = load i8*, i8** %orgbadr119
  %ldnewadr23928 = load i8*, i8** %lub120
  %castn23929 = ptrtoint i8* %ldnewadr23928 to i64
  %castb23930 = ptrtoint i8* %badr23927 to i64
  %reladr23931 = sub i64 %castn23929, %castb23930
  %cmpop3932 = icmp ne i64 %reladr13926, %reladr23931
  %newdetval3933 = zext i1 %cmpop3932 to i64
  %ldolddetval3934 = load i64, i64* @detectCounter
  %updetval3935 = or i64 %newdetval3933, %ldolddetval3934
  store i64 %updetval3935, i64* @detectCounter
  %badr13936 = load i8*, i8** %orgbadr95
  %ldnewadr13937 = load i8*, i8** %lub96
  %castn13938 = ptrtoint i8* %ldnewadr13937 to i64
  %castb13939 = ptrtoint i8* %badr13936 to i64
  %reladr13940 = sub i64 %castn13938, %castb13939
  %badr23941 = load i8*, i8** %orgbadr683
  %ldnewadr23942 = load i8*, i8** %lub684
  %castn23943 = ptrtoint i8* %ldnewadr23942 to i64
  %castb23944 = ptrtoint i8* %badr23941 to i64
  %reladr23945 = sub i64 %castn23943, %castb23944
  %cmpop3946 = icmp ne i64 %reladr13940, %reladr23945
  %newdetval3947 = zext i1 %cmpop3946 to i64
  %ldolddetval3948 = load i64, i64* @detectCounter
  %updetval3949 = or i64 %newdetval3947, %ldolddetval3948
  store i64 %updetval3949, i64* @detectCounter
  %badr13950 = load i8*, i8** %orgbadr95
  %ldnewadr13951 = load i8*, i8** %lub96
  %castn13952 = ptrtoint i8* %ldnewadr13951 to i64
  %castb13953 = ptrtoint i8* %badr13950 to i64
  %reladr13954 = sub i64 %castn13952, %castb13953
  %badr23955 = load i8*, i8** %orgbadr119
  %ldnewadr23956 = load i8*, i8** %lub120
  %castn23957 = ptrtoint i8* %ldnewadr23956 to i64
  %castb23958 = ptrtoint i8* %badr23955 to i64
  %reladr23959 = sub i64 %castn23957, %castb23958
  %cmpop3960 = icmp ne i64 %reladr13954, %reladr23959
  %newdetval3961 = zext i1 %cmpop3960 to i64
  %ldolddetval3962 = load i64, i64* @detectCounter
  %updetval3963 = or i64 %newdetval3961, %ldolddetval3962
  store i64 %updetval3963, i64* @detectCounter
  %badr13964 = load i8*, i8** %orgbadr683
  %ldnewadr13965 = load i8*, i8** %lub684
  %castn13966 = ptrtoint i8* %ldnewadr13965 to i64
  %castb13967 = ptrtoint i8* %badr13964 to i64
  %reladr13968 = sub i64 %castn13966, %castb13967
  %badr23969 = load i8*, i8** %orgbadr119
  %ldnewadr23970 = load i8*, i8** %lub120
  %castn23971 = ptrtoint i8* %ldnewadr23970 to i64
  %castb23972 = ptrtoint i8* %badr23969 to i64
  %reladr23973 = sub i64 %castn23971, %castb23972
  %cmpop3974 = icmp ne i64 %reladr13968, %reladr23973
  %newdetval3975 = zext i1 %cmpop3974 to i64
  %ldolddetval3976 = load i64, i64* @detectCounter
  %updetval3977 = or i64 %newdetval3975, %ldolddetval3976
  store i64 %updetval3977, i64* @detectCounter
  %badr13978 = load double*, double** %orgbadr762
  %ldnewadr13979 = load double*, double** %lub763
  %castn13980 = ptrtoint double* %ldnewadr13979 to i64
  %castb13981 = ptrtoint double* %badr13978 to i64
  %reladr13982 = sub i64 %castn13980, %castb13981
  %badr23983 = load double*, double** %orgbadr174
  %ldnewadr23984 = load double*, double** %lub175
  %castn23985 = ptrtoint double* %ldnewadr23984 to i64
  %castb23986 = ptrtoint double* %badr23983 to i64
  %reladr23987 = sub i64 %castn23985, %castb23986
  %cmpop3988 = icmp ne i64 %reladr13982, %reladr23987
  %newdetval3989 = zext i1 %cmpop3988 to i64
  %ldolddetval3990 = load i64, i64* @detectCounter
  %updetval3991 = or i64 %newdetval3989, %ldolddetval3990
  store i64 %updetval3991, i64* @detectCounter
  %badr13992 = load double*, double** %orgbadr762
  %ldnewadr13993 = load double*, double** %lub763
  %castn13994 = ptrtoint double* %ldnewadr13993 to i64
  %castb13995 = ptrtoint double* %badr13992 to i64
  %reladr13996 = sub i64 %castn13994, %castb13995
  %badr23997 = load double*, double** %orgbadr112
  %ldnewadr23998 = load double*, double** %lub113
  %castn23999 = ptrtoint double* %ldnewadr23998 to i64
  %castb24000 = ptrtoint double* %badr23997 to i64
  %reladr24001 = sub i64 %castn23999, %castb24000
  %cmpop4002 = icmp ne i64 %reladr13996, %reladr24001
  %newdetval4003 = zext i1 %cmpop4002 to i64
  %ldolddetval4004 = load i64, i64* @detectCounter
  %updetval4005 = or i64 %newdetval4003, %ldolddetval4004
  store i64 %updetval4005, i64* @detectCounter
  %badr14006 = load double*, double** %orgbadr762
  %ldnewadr14007 = load double*, double** %lub763
  %castn14008 = ptrtoint double* %ldnewadr14007 to i64
  %castb14009 = ptrtoint double* %badr14006 to i64
  %reladr14010 = sub i64 %castn14008, %castb14009
  %badr24011 = load double*, double** %orgbadr700
  %ldnewadr24012 = load double*, double** %lub701
  %castn24013 = ptrtoint double* %ldnewadr24012 to i64
  %castb24014 = ptrtoint double* %badr24011 to i64
  %reladr24015 = sub i64 %castn24013, %castb24014
  %cmpop4016 = icmp ne i64 %reladr14010, %reladr24015
  %newdetval4017 = zext i1 %cmpop4016 to i64
  %ldolddetval4018 = load i64, i64* @detectCounter
  %updetval4019 = or i64 %newdetval4017, %ldolddetval4018
  store i64 %updetval4019, i64* @detectCounter
  %badr14020 = load double*, double** %orgbadr762
  %ldnewadr14021 = load double*, double** %lub763
  %castn14022 = ptrtoint double* %ldnewadr14021 to i64
  %castb14023 = ptrtoint double* %badr14020 to i64
  %reladr14024 = sub i64 %castn14022, %castb14023
  %badr24025 = load double*, double** %orgbadr624
  %ldnewadr24026 = load double*, double** %lub625
  %castn24027 = ptrtoint double* %ldnewadr24026 to i64
  %castb24028 = ptrtoint double* %badr24025 to i64
  %reladr24029 = sub i64 %castn24027, %castb24028
  %cmpop4030 = icmp ne i64 %reladr14024, %reladr24029
  %newdetval4031 = zext i1 %cmpop4030 to i64
  %ldolddetval4032 = load i64, i64* @detectCounter
  %updetval4033 = or i64 %newdetval4031, %ldolddetval4032
  store i64 %updetval4033, i64* @detectCounter
  %badr14034 = load double*, double** %orgbadr762
  %ldnewadr14035 = load double*, double** %lub763
  %castn14036 = ptrtoint double* %ldnewadr14035 to i64
  %castb14037 = ptrtoint double* %badr14034 to i64
  %reladr14038 = sub i64 %castn14036, %castb14037
  %badr24039 = load double*, double** %orgbadr36
  %ldnewadr24040 = load double*, double** %lub37
  %castn24041 = ptrtoint double* %ldnewadr24040 to i64
  %castb24042 = ptrtoint double* %badr24039 to i64
  %reladr24043 = sub i64 %castn24041, %castb24042
  %cmpop4044 = icmp ne i64 %reladr14038, %reladr24043
  %newdetval4045 = zext i1 %cmpop4044 to i64
  %ldolddetval4046 = load i64, i64* @detectCounter
  %updetval4047 = or i64 %newdetval4045, %ldolddetval4046
  store i64 %updetval4047, i64* @detectCounter
  %badr14048 = load double*, double** %orgbadr174
  %ldnewadr14049 = load double*, double** %lub175
  %castn14050 = ptrtoint double* %ldnewadr14049 to i64
  %castb14051 = ptrtoint double* %badr14048 to i64
  %reladr14052 = sub i64 %castn14050, %castb14051
  %badr24053 = load double*, double** %orgbadr112
  %ldnewadr24054 = load double*, double** %lub113
  %castn24055 = ptrtoint double* %ldnewadr24054 to i64
  %castb24056 = ptrtoint double* %badr24053 to i64
  %reladr24057 = sub i64 %castn24055, %castb24056
  %cmpop4058 = icmp ne i64 %reladr14052, %reladr24057
  %newdetval4059 = zext i1 %cmpop4058 to i64
  %ldolddetval4060 = load i64, i64* @detectCounter
  %updetval4061 = or i64 %newdetval4059, %ldolddetval4060
  store i64 %updetval4061, i64* @detectCounter
  %badr14062 = load double*, double** %orgbadr174
  %ldnewadr14063 = load double*, double** %lub175
  %castn14064 = ptrtoint double* %ldnewadr14063 to i64
  %castb14065 = ptrtoint double* %badr14062 to i64
  %reladr14066 = sub i64 %castn14064, %castb14065
  %badr24067 = load double*, double** %orgbadr700
  %ldnewadr24068 = load double*, double** %lub701
  %castn24069 = ptrtoint double* %ldnewadr24068 to i64
  %castb24070 = ptrtoint double* %badr24067 to i64
  %reladr24071 = sub i64 %castn24069, %castb24070
  %cmpop4072 = icmp ne i64 %reladr14066, %reladr24071
  %newdetval4073 = zext i1 %cmpop4072 to i64
  %ldolddetval4074 = load i64, i64* @detectCounter
  %updetval4075 = or i64 %newdetval4073, %ldolddetval4074
  store i64 %updetval4075, i64* @detectCounter
  %badr14076 = load double*, double** %orgbadr174
  %ldnewadr14077 = load double*, double** %lub175
  %castn14078 = ptrtoint double* %ldnewadr14077 to i64
  %castb14079 = ptrtoint double* %badr14076 to i64
  %reladr14080 = sub i64 %castn14078, %castb14079
  %badr24081 = load double*, double** %orgbadr624
  %ldnewadr24082 = load double*, double** %lub625
  %castn24083 = ptrtoint double* %ldnewadr24082 to i64
  %castb24084 = ptrtoint double* %badr24081 to i64
  %reladr24085 = sub i64 %castn24083, %castb24084
  %cmpop4086 = icmp ne i64 %reladr14080, %reladr24085
  %newdetval4087 = zext i1 %cmpop4086 to i64
  %ldolddetval4088 = load i64, i64* @detectCounter
  %updetval4089 = or i64 %newdetval4087, %ldolddetval4088
  store i64 %updetval4089, i64* @detectCounter
  %badr14090 = load double*, double** %orgbadr174
  %ldnewadr14091 = load double*, double** %lub175
  %castn14092 = ptrtoint double* %ldnewadr14091 to i64
  %castb14093 = ptrtoint double* %badr14090 to i64
  %reladr14094 = sub i64 %castn14092, %castb14093
  %badr24095 = load double*, double** %orgbadr36
  %ldnewadr24096 = load double*, double** %lub37
  %castn24097 = ptrtoint double* %ldnewadr24096 to i64
  %castb24098 = ptrtoint double* %badr24095 to i64
  %reladr24099 = sub i64 %castn24097, %castb24098
  %cmpop4100 = icmp ne i64 %reladr14094, %reladr24099
  %newdetval4101 = zext i1 %cmpop4100 to i64
  %ldolddetval4102 = load i64, i64* @detectCounter
  %updetval4103 = or i64 %newdetval4101, %ldolddetval4102
  store i64 %updetval4103, i64* @detectCounter
  %badr14104 = load double*, double** %orgbadr112
  %ldnewadr14105 = load double*, double** %lub113
  %castn14106 = ptrtoint double* %ldnewadr14105 to i64
  %castb14107 = ptrtoint double* %badr14104 to i64
  %reladr14108 = sub i64 %castn14106, %castb14107
  %badr24109 = load double*, double** %orgbadr700
  %ldnewadr24110 = load double*, double** %lub701
  %castn24111 = ptrtoint double* %ldnewadr24110 to i64
  %castb24112 = ptrtoint double* %badr24109 to i64
  %reladr24113 = sub i64 %castn24111, %castb24112
  %cmpop4114 = icmp ne i64 %reladr14108, %reladr24113
  %newdetval4115 = zext i1 %cmpop4114 to i64
  %ldolddetval4116 = load i64, i64* @detectCounter
  %updetval4117 = or i64 %newdetval4115, %ldolddetval4116
  store i64 %updetval4117, i64* @detectCounter
  %badr14118 = load double*, double** %orgbadr112
  %ldnewadr14119 = load double*, double** %lub113
  %castn14120 = ptrtoint double* %ldnewadr14119 to i64
  %castb14121 = ptrtoint double* %badr14118 to i64
  %reladr14122 = sub i64 %castn14120, %castb14121
  %badr24123 = load double*, double** %orgbadr624
  %ldnewadr24124 = load double*, double** %lub625
  %castn24125 = ptrtoint double* %ldnewadr24124 to i64
  %castb24126 = ptrtoint double* %badr24123 to i64
  %reladr24127 = sub i64 %castn24125, %castb24126
  %cmpop4128 = icmp ne i64 %reladr14122, %reladr24127
  %newdetval4129 = zext i1 %cmpop4128 to i64
  %ldolddetval4130 = load i64, i64* @detectCounter
  %updetval4131 = or i64 %newdetval4129, %ldolddetval4130
  store i64 %updetval4131, i64* @detectCounter
  %badr14132 = load double*, double** %orgbadr112
  %ldnewadr14133 = load double*, double** %lub113
  %castn14134 = ptrtoint double* %ldnewadr14133 to i64
  %castb14135 = ptrtoint double* %badr14132 to i64
  %reladr14136 = sub i64 %castn14134, %castb14135
  %badr24137 = load double*, double** %orgbadr36
  %ldnewadr24138 = load double*, double** %lub37
  %castn24139 = ptrtoint double* %ldnewadr24138 to i64
  %castb24140 = ptrtoint double* %badr24137 to i64
  %reladr24141 = sub i64 %castn24139, %castb24140
  %cmpop4142 = icmp ne i64 %reladr14136, %reladr24141
  %newdetval4143 = zext i1 %cmpop4142 to i64
  %ldolddetval4144 = load i64, i64* @detectCounter
  %updetval4145 = or i64 %newdetval4143, %ldolddetval4144
  store i64 %updetval4145, i64* @detectCounter
  %badr14146 = load double*, double** %orgbadr700
  %ldnewadr14147 = load double*, double** %lub701
  %castn14148 = ptrtoint double* %ldnewadr14147 to i64
  %castb14149 = ptrtoint double* %badr14146 to i64
  %reladr14150 = sub i64 %castn14148, %castb14149
  %badr24151 = load double*, double** %orgbadr624
  %ldnewadr24152 = load double*, double** %lub625
  %castn24153 = ptrtoint double* %ldnewadr24152 to i64
  %castb24154 = ptrtoint double* %badr24151 to i64
  %reladr24155 = sub i64 %castn24153, %castb24154
  %cmpop4156 = icmp ne i64 %reladr14150, %reladr24155
  %newdetval4157 = zext i1 %cmpop4156 to i64
  %ldolddetval4158 = load i64, i64* @detectCounter
  %updetval4159 = or i64 %newdetval4157, %ldolddetval4158
  store i64 %updetval4159, i64* @detectCounter
  %badr14160 = load double*, double** %orgbadr700
  %ldnewadr14161 = load double*, double** %lub701
  %castn14162 = ptrtoint double* %ldnewadr14161 to i64
  %castb14163 = ptrtoint double* %badr14160 to i64
  %reladr14164 = sub i64 %castn14162, %castb14163
  %badr24165 = load double*, double** %orgbadr36
  %ldnewadr24166 = load double*, double** %lub37
  %castn24167 = ptrtoint double* %ldnewadr24166 to i64
  %castb24168 = ptrtoint double* %badr24165 to i64
  %reladr24169 = sub i64 %castn24167, %castb24168
  %cmpop4170 = icmp ne i64 %reladr14164, %reladr24169
  %newdetval4171 = zext i1 %cmpop4170 to i64
  %ldolddetval4172 = load i64, i64* @detectCounter
  %updetval4173 = or i64 %newdetval4171, %ldolddetval4172
  store i64 %updetval4173, i64* @detectCounter
  %badr14174 = load double*, double** %orgbadr624
  %ldnewadr14175 = load double*, double** %lub625
  %castn14176 = ptrtoint double* %ldnewadr14175 to i64
  %castb14177 = ptrtoint double* %badr14174 to i64
  %reladr14178 = sub i64 %castn14176, %castb14177
  %badr24179 = load double*, double** %orgbadr36
  %ldnewadr24180 = load double*, double** %lub37
  %castn24181 = ptrtoint double* %ldnewadr24180 to i64
  %castb24182 = ptrtoint double* %badr24179 to i64
  %reladr24183 = sub i64 %castn24181, %castb24182
  %cmpop4184 = icmp ne i64 %reladr14178, %reladr24183
  %newdetval4185 = zext i1 %cmpop4184 to i64
  %ldolddetval4186 = load i64, i64* @detectCounter
  %updetval4187 = or i64 %newdetval4185, %ldolddetval4186
  store i64 %updetval4187, i64* @detectCounter
  %badr14188 = load double*, double** %orgbadr731
  %ldnewadr14189 = load double*, double** %lub732
  %castn14190 = ptrtoint double* %ldnewadr14189 to i64
  %castb14191 = ptrtoint double* %badr14188 to i64
  %reladr14192 = sub i64 %castn14190, %castb14191
  %badr24193 = load double*, double** %orgbadr143
  %ldnewadr24194 = load double*, double** %lub144
  %castn24195 = ptrtoint double* %ldnewadr24194 to i64
  %castb24196 = ptrtoint double* %badr24193 to i64
  %reladr24197 = sub i64 %castn24195, %castb24196
  %cmpop4198 = icmp ne i64 %reladr14192, %reladr24197
  %newdetval4199 = zext i1 %cmpop4198 to i64
  %ldolddetval4200 = load i64, i64* @detectCounter
  %updetval4201 = or i64 %newdetval4199, %ldolddetval4200
  store i64 %updetval4201, i64* @detectCounter
  %badr14202 = load double*, double** %orgbadr1109
  %ldnewadr14203 = load double*, double** %lub1110
  %castn14204 = ptrtoint double* %ldnewadr14203 to i64
  %castb14205 = ptrtoint double* %badr14202 to i64
  %reladr14206 = sub i64 %castn14204, %castb14205
  %badr24207 = load double*, double** %orgbadr521
  %ldnewadr24208 = load double*, double** %lub522
  %castn24209 = ptrtoint double* %ldnewadr24208 to i64
  %castb24210 = ptrtoint double* %badr24207 to i64
  %reladr24211 = sub i64 %castn24209, %castb24210
  %cmpop4212 = icmp ne i64 %reladr14206, %reladr24211
  %newdetval4213 = zext i1 %cmpop4212 to i64
  %ldolddetval4214 = load i64, i64* @detectCounter
  %updetval4215 = or i64 %newdetval4213, %ldolddetval4214
  store i64 %updetval4215, i64* @detectCounter
  %badr14216 = load double*, double** %orgbadr990
  %ldnewadr14217 = load double*, double** %lub991
  %castn14218 = ptrtoint double* %ldnewadr14217 to i64
  %castb14219 = ptrtoint double* %badr14216 to i64
  %reladr14220 = sub i64 %castn14218, %castb14219
  %badr24221 = load double*, double** %orgbadr402
  %ldnewadr24222 = load double*, double** %lub403
  %castn24223 = ptrtoint double* %ldnewadr24222 to i64
  %castb24224 = ptrtoint double* %badr24221 to i64
  %reladr24225 = sub i64 %castn24223, %castb24224
  %cmpop4226 = icmp ne i64 %reladr14220, %reladr24225
  %newdetval4227 = zext i1 %cmpop4226 to i64
  %ldolddetval4228 = load i64, i64* @detectCounter
  %updetval4229 = or i64 %newdetval4227, %ldolddetval4228
  store i64 %updetval4229, i64* @detectCounter
  %badr14230 = load double*, double** %orgbadr266
  %ldnewadr14231 = load double*, double** %lub267
  %castn14232 = ptrtoint double* %ldnewadr14231 to i64
  %castb14233 = ptrtoint double* %badr14230 to i64
  %reladr14234 = sub i64 %castn14232, %castb14233
  %badr24235 = load double*, double** %orgbadr854
  %ldnewadr24236 = load double*, double** %lub855
  %castn24237 = ptrtoint double* %ldnewadr24236 to i64
  %castb24238 = ptrtoint double* %badr24235 to i64
  %reladr24239 = sub i64 %castn24237, %castb24238
  %cmpop4240 = icmp ne i64 %reladr14234, %reladr24239
  %newdetval4241 = zext i1 %cmpop4240 to i64
  %ldolddetval4242 = load i64, i64* @detectCounter
  %updetval4243 = or i64 %newdetval4241, %ldolddetval4242
  store i64 %updetval4243, i64* @detectCounter
  %badr14244 = load i8*, i8** %orgbadr29
  %ldnewadr14245 = load i8*, i8** %lub30
  %castn14246 = ptrtoint i8* %ldnewadr14245 to i64
  %castb14247 = ptrtoint i8* %badr14244 to i64
  %reladr14248 = sub i64 %castn14246, %castb14247
  %badr24249 = load i8*, i8** %orgbadr43
  %ldnewadr24250 = load i8*, i8** %lub44
  %castn24251 = ptrtoint i8* %ldnewadr24250 to i64
  %castb24252 = ptrtoint i8* %badr24249 to i64
  %reladr24253 = sub i64 %castn24251, %castb24252
  %cmpop4254 = icmp ne i64 %reladr14248, %reladr24253
  %newdetval4255 = zext i1 %cmpop4254 to i64
  %ldolddetval4256 = load i64, i64* @detectCounter
  %updetval4257 = or i64 %newdetval4255, %ldolddetval4256
  store i64 %updetval4257, i64* @detectCounter
  %badr14258 = load i8*, i8** %orgbadr29
  %ldnewadr14259 = load i8*, i8** %lub30
  %castn14260 = ptrtoint i8* %ldnewadr14259 to i64
  %castb14261 = ptrtoint i8* %badr14258 to i64
  %reladr14262 = sub i64 %castn14260, %castb14261
  %badr24263 = load i8*, i8** %orgbadr607
  %ldnewadr24264 = load i8*, i8** %lub608
  %castn24265 = ptrtoint i8* %ldnewadr24264 to i64
  %castb24266 = ptrtoint i8* %badr24263 to i64
  %reladr24267 = sub i64 %castn24265, %castb24266
  %cmpop4268 = icmp ne i64 %reladr14262, %reladr24267
  %newdetval4269 = zext i1 %cmpop4268 to i64
  %ldolddetval4270 = load i64, i64* @detectCounter
  %updetval4271 = or i64 %newdetval4269, %ldolddetval4270
  store i64 %updetval4271, i64* @detectCounter
  %badr14272 = load i8*, i8** %orgbadr29
  %ldnewadr14273 = load i8*, i8** %lub30
  %castn14274 = ptrtoint i8* %ldnewadr14273 to i64
  %castb14275 = ptrtoint i8* %badr14272 to i64
  %reladr14276 = sub i64 %castn14274, %castb14275
  %badr24277 = load i8*, i8** %orgbadr631
  %ldnewadr24278 = load i8*, i8** %lub632
  %castn24279 = ptrtoint i8* %ldnewadr24278 to i64
  %castb24280 = ptrtoint i8* %badr24277 to i64
  %reladr24281 = sub i64 %castn24279, %castb24280
  %cmpop4282 = icmp ne i64 %reladr14276, %reladr24281
  %newdetval4283 = zext i1 %cmpop4282 to i64
  %ldolddetval4284 = load i64, i64* @detectCounter
  %updetval4285 = or i64 %newdetval4283, %ldolddetval4284
  store i64 %updetval4285, i64* @detectCounter
  %badr14286 = load i8*, i8** %orgbadr43
  %ldnewadr14287 = load i8*, i8** %lub44
  %castn14288 = ptrtoint i8* %ldnewadr14287 to i64
  %castb14289 = ptrtoint i8* %badr14286 to i64
  %reladr14290 = sub i64 %castn14288, %castb14289
  %badr24291 = load i8*, i8** %orgbadr607
  %ldnewadr24292 = load i8*, i8** %lub608
  %castn24293 = ptrtoint i8* %ldnewadr24292 to i64
  %castb24294 = ptrtoint i8* %badr24291 to i64
  %reladr24295 = sub i64 %castn24293, %castb24294
  %cmpop4296 = icmp ne i64 %reladr14290, %reladr24295
  %newdetval4297 = zext i1 %cmpop4296 to i64
  %ldolddetval4298 = load i64, i64* @detectCounter
  %updetval4299 = or i64 %newdetval4297, %ldolddetval4298
  store i64 %updetval4299, i64* @detectCounter
  %badr14300 = load i8*, i8** %orgbadr43
  %ldnewadr14301 = load i8*, i8** %lub44
  %castn14302 = ptrtoint i8* %ldnewadr14301 to i64
  %castb14303 = ptrtoint i8* %badr14300 to i64
  %reladr14304 = sub i64 %castn14302, %castb14303
  %badr24305 = load i8*, i8** %orgbadr631
  %ldnewadr24306 = load i8*, i8** %lub632
  %castn24307 = ptrtoint i8* %ldnewadr24306 to i64
  %castb24308 = ptrtoint i8* %badr24305 to i64
  %reladr24309 = sub i64 %castn24307, %castb24308
  %cmpop4310 = icmp ne i64 %reladr14304, %reladr24309
  %newdetval4311 = zext i1 %cmpop4310 to i64
  %ldolddetval4312 = load i64, i64* @detectCounter
  %updetval4313 = or i64 %newdetval4311, %ldolddetval4312
  store i64 %updetval4313, i64* @detectCounter
  %badr14314 = load i8*, i8** %orgbadr607
  %ldnewadr14315 = load i8*, i8** %lub608
  %castn14316 = ptrtoint i8* %ldnewadr14315 to i64
  %castb14317 = ptrtoint i8* %badr14314 to i64
  %reladr14318 = sub i64 %castn14316, %castb14317
  %badr24319 = load i8*, i8** %orgbadr631
  %ldnewadr24320 = load i8*, i8** %lub632
  %castn24321 = ptrtoint i8* %ldnewadr24320 to i64
  %castb24322 = ptrtoint i8* %badr24319 to i64
  %reladr24323 = sub i64 %castn24321, %castb24322
  %cmpop4324 = icmp ne i64 %reladr14318, %reladr24323
  %newdetval4325 = zext i1 %cmpop4324 to i64
  %ldolddetval4326 = load i64, i64* @detectCounter
  %updetval4327 = or i64 %newdetval4325, %ldolddetval4326
  store i64 %updetval4327, i64* @detectCounter
  %badr14328 = load double*, double** %orgbadr1126
  %ldnewadr14329 = load double*, double** %lub1127
  %castn14330 = ptrtoint double* %ldnewadr14329 to i64
  %castb14331 = ptrtoint double* %badr14328 to i64
  %reladr14332 = sub i64 %castn14330, %castb14331
  %badr24333 = load double*, double** %orgbadr538
  %ldnewadr24334 = load double*, double** %lub539
  %castn24335 = ptrtoint double* %ldnewadr24334 to i64
  %castb24336 = ptrtoint double* %badr24333 to i64
  %reladr24337 = sub i64 %castn24335, %castb24336
  %cmpop4338 = icmp ne i64 %reladr14332, %reladr24337
  %newdetval4339 = zext i1 %cmpop4338 to i64
  %ldolddetval4340 = load i64, i64* @detectCounter
  %updetval4341 = or i64 %newdetval4339, %ldolddetval4340
  store i64 %updetval4341, i64* @detectCounter
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
