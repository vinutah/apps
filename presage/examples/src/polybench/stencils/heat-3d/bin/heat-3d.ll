; ModuleID = './bin/heat-3d.bc'
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

; <label>:62:                                     ; preds = %432, %3
  %63 = phi i32 [ 1, %3 ], [ %433, %432 ]
  br i1 %6, label %64, label %432

; <label>:64:                                     ; preds = %62
  br label %67

; <label>:65:                                     ; preds = %245
  br i1 %6, label %66, label %432

; <label>:66:                                     ; preds = %65
  br label %249

; <label>:67:                                     ; preds = %64, %245
  %68 = phi i64 [ %248, %245 ], [ 0, %64 ]
  %69 = phi i64 [ %78, %245 ], [ 1, %64 ]
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
  %80 = getelementptr inbounds double, double* %1, i64 %79
  %81 = mul nsw i64 %69, %7
  %82 = getelementptr inbounds double, double* %1, i64 %81
  %83 = add nsw i64 %69, -1
  %84 = mul nsw i64 %83, %7
  %85 = getelementptr inbounds double, double* %1, i64 %84
  %86 = getelementptr inbounds double, double* %2, i64 %81
  br label %87

; <label>:87:                                     ; preds = %241, %67
  %88 = phi i64 [ %244, %241 ], [ 0, %67 ]
  %89 = phi i64 [ %131, %241 ], [ 1, %67 ]
  %90 = mul i64 %4, %88
  %91 = add i64 %71, %90
  %92 = getelementptr double, double* %2, i64 %91
  %93 = bitcast double* %92 to i8*
  %94 = getelementptr i8, i8* %93, i64 %36
  %95 = add i64 %72, %90
  %96 = getelementptr double, double* %2, i64 %95
  %97 = bitcast double* %96 to i8*
  %98 = getelementptr i8, i8* %97, i64 %36
  %99 = add i64 %70, %90
  %100 = getelementptr double, double* %1, i64 %99
  %101 = add i64 %73, %90
  %102 = getelementptr double, double* %1, i64 %101
  %103 = add i64 %74, %90
  %104 = getelementptr double, double* %1, i64 %103
  %105 = bitcast double* %104 to i8*
  %106 = add i64 %75, %90
  %107 = getelementptr double, double* %1, i64 %106
  %108 = bitcast double* %107 to i8*
  %109 = getelementptr double, double* %1, i64 %91
  %110 = bitcast double* %109 to i8*
  %111 = getelementptr i8, i8* %110, i64 %45
  %112 = getelementptr double, double* %1, i64 %95
  %113 = bitcast double* %112 to i8*
  %114 = getelementptr i8, i8* %113, i64 %45
  %115 = add i64 %76, %90
  %116 = getelementptr double, double* %1, i64 %115
  %117 = bitcast double* %116 to i8*
  %118 = add i64 %77, %90
  %119 = getelementptr double, double* %1, i64 %118
  %120 = bitcast double* %119 to i8*
  %121 = getelementptr double, double* %1, i64 %91
  %122 = bitcast double* %121 to i8*
  %123 = getelementptr i8, i8* %122, i64 %51
  %124 = getelementptr double, double* %1, i64 %95
  %125 = bitcast double* %124 to i8*
  %126 = getelementptr i8, i8* %125, i64 %51
  %127 = mul nuw nsw i64 %89, %4
  %128 = getelementptr inbounds double, double* %80, i64 %127
  %129 = getelementptr inbounds double, double* %82, i64 %127
  %130 = getelementptr inbounds double, double* %85, i64 %127
  %131 = add nuw nsw i64 %89, 1
  %132 = mul nsw i64 %131, %4
  %133 = getelementptr inbounds double, double* %82, i64 %132
  %134 = add nsw i64 %89, -1
  %135 = mul nuw nsw i64 %134, %4
  %136 = getelementptr inbounds double, double* %82, i64 %135
  %137 = getelementptr inbounds double, double* %86, i64 %127
  br i1 %52, label %204, label %138

; <label>:138:                                    ; preds = %87
  br i1 %54, label %204, label %139

; <label>:139:                                    ; preds = %138
  %140 = icmp ule double* %92, %102
  %141 = icmp ule double* %100, %96
  %142 = and i1 %140, %141
  %143 = icmp ule i8* %94, %108
  %144 = icmp ule i8* %105, %98
  %145 = and i1 %143, %144
  %146 = or i1 %142, %145
  %147 = icmp ule i8* %94, %114
  %148 = icmp ule i8* %111, %98
  %149 = and i1 %147, %148
  %150 = or i1 %146, %149
  %151 = icmp ule i8* %94, %120
  %152 = icmp ule i8* %117, %98
  %153 = and i1 %151, %152
  %154 = or i1 %150, %153
  %155 = icmp ule i8* %94, %126
  %156 = icmp ule i8* %123, %98
  %157 = and i1 %155, %156
  %158 = or i1 %154, %157
  br i1 %158, label %204, label %159

; <label>:159:                                    ; preds = %139
  br label %160

; <label>:160:                                    ; preds = %159, %160
  %161 = phi i64 [ %201, %160 ], [ 0, %159 ]
  %162 = or i64 %161, 1
  %163 = getelementptr inbounds double, double* %128, i64 %162
  %164 = bitcast double* %163 to <2 x double>*
  %165 = load <2 x double>, <2 x double>* %164, align 8, !tbaa !37, !alias.scope !39
  %166 = getelementptr inbounds double, double* %129, i64 %162
  %167 = bitcast double* %166 to <2 x double>*
  %168 = load <2 x double>, <2 x double>* %167, align 8, !tbaa !37, !alias.scope !42
  %169 = fmul <2 x double> %168, <double 2.000000e+00, double 2.000000e+00>
  %170 = fsub <2 x double> %165, %169
  %171 = getelementptr inbounds double, double* %130, i64 %162
  %172 = bitcast double* %171 to <2 x double>*
  %173 = load <2 x double>, <2 x double>* %172, align 8, !tbaa !37, !alias.scope !44
  %174 = fadd <2 x double> %173, %170
  %175 = fmul <2 x double> %174, <double 1.250000e-01, double 1.250000e-01>
  %176 = getelementptr inbounds double, double* %133, i64 %162
  %177 = bitcast double* %176 to <2 x double>*
  %178 = load <2 x double>, <2 x double>* %177, align 8, !tbaa !37, !alias.scope !46
  %179 = fsub <2 x double> %178, %169
  %180 = getelementptr inbounds double, double* %136, i64 %162
  %181 = bitcast double* %180 to <2 x double>*
  %182 = load <2 x double>, <2 x double>* %181, align 8, !tbaa !37, !alias.scope !48
  %183 = fadd <2 x double> %179, %182
  %184 = fmul <2 x double> %183, <double 1.250000e-01, double 1.250000e-01>
  %185 = fadd <2 x double> %175, %184
  %186 = add i64 %162, 1
  %187 = getelementptr inbounds double, double* %129, i64 %186
  %188 = bitcast double* %187 to <2 x double>*
  %189 = load <2 x double>, <2 x double>* %188, align 8, !tbaa !37, !alias.scope !42
  %190 = fsub <2 x double> %189, %169
  %191 = add i64 %162, -1
  %192 = getelementptr inbounds double, double* %129, i64 %191
  %193 = bitcast double* %192 to <2 x double>*
  %194 = load <2 x double>, <2 x double>* %193, align 8, !tbaa !37, !alias.scope !42
  %195 = fadd <2 x double> %190, %194
  %196 = fmul <2 x double> %195, <double 1.250000e-01, double 1.250000e-01>
  %197 = fadd <2 x double> %185, %196
  %198 = fadd <2 x double> %168, %197
  %199 = getelementptr inbounds double, double* %137, i64 %162
  %200 = bitcast double* %199 to <2 x double>*
  store <2 x double> %198, <2 x double>* %200, align 8, !tbaa !37, !alias.scope !50, !noalias !52
  %201 = add i64 %161, 2
  %202 = icmp eq i64 %201, %53
  br i1 %202, label %203, label %160, !llvm.loop !53

; <label>:203:                                    ; preds = %160
  br i1 %56, label %241, label %204

; <label>:204:                                    ; preds = %203, %139, %138, %87
  %205 = phi i64 [ 1, %139 ], [ 1, %138 ], [ 1, %87 ], [ %55, %203 ]
  br label %206

; <label>:206:                                    ; preds = %204, %206
  %207 = phi i64 [ %226, %206 ], [ %205, %204 ]
  %208 = getelementptr inbounds double, double* %128, i64 %207
  %209 = load double, double* %208, align 8, !tbaa !37
  %210 = getelementptr inbounds double, double* %129, i64 %207
  %211 = load double, double* %210, align 8, !tbaa !37
  %212 = fmul double %211, 2.000000e+00
  %213 = fsub double %209, %212
  %214 = getelementptr inbounds double, double* %130, i64 %207
  %215 = load double, double* %214, align 8, !tbaa !37
  %216 = fadd double %215, %213
  %217 = fmul double %216, 1.250000e-01
  %218 = getelementptr inbounds double, double* %133, i64 %207
  %219 = load double, double* %218, align 8, !tbaa !37
  %220 = fsub double %219, %212
  %221 = getelementptr inbounds double, double* %136, i64 %207
  %222 = load double, double* %221, align 8, !tbaa !37
  %223 = fadd double %220, %222
  %224 = fmul double %223, 1.250000e-01
  %225 = fadd double %217, %224
  %226 = add nuw nsw i64 %207, 1
  %227 = getelementptr inbounds double, double* %129, i64 %226
  %228 = load double, double* %227, align 8, !tbaa !37
  %229 = fsub double %228, %212
  %230 = add nsw i64 %207, -1
  %231 = getelementptr inbounds double, double* %129, i64 %230
  %232 = load double, double* %231, align 8, !tbaa !37
  %233 = fadd double %229, %232
  %234 = fmul double %233, 1.250000e-01
  %235 = fadd double %225, %234
  %236 = fadd double %211, %235
  %237 = getelementptr inbounds double, double* %137, i64 %207
  store double %236, double* %237, align 8, !tbaa !37
  %238 = trunc i64 %226 to i32
  %239 = icmp eq i32 %238, %5
  br i1 %239, label %240, label %206, !llvm.loop !56

; <label>:240:                                    ; preds = %206
  br label %241

; <label>:241:                                    ; preds = %240, %203
  %242 = trunc i64 %131 to i32
  %243 = icmp eq i32 %242, %5
  %244 = add i64 %88, 1
  br i1 %243, label %245, label %87

; <label>:245:                                    ; preds = %241
  %246 = trunc i64 %78 to i32
  %247 = icmp eq i32 %246, %5
  %248 = add i64 %68, 1
  br i1 %247, label %65, label %67

; <label>:249:                                    ; preds = %66, %427
  %250 = phi i64 [ %430, %427 ], [ 0, %66 ]
  %251 = phi i64 [ %260, %427 ], [ 1, %66 ]
  %252 = mul i64 %11, %250
  %253 = add i64 %252, 1
  %254 = add i64 %17, %252
  %255 = add i64 %18, %252
  %256 = add i64 %19, %252
  %257 = add i64 %21, %252
  %258 = add i64 %24, %252
  %259 = add i64 %26, %252
  %260 = add nuw nsw i64 %251, 1
  %261 = mul nsw i64 %260, %7
  %262 = getelementptr inbounds double, double* %2, i64 %261
  %263 = mul nsw i64 %251, %7
  %264 = getelementptr inbounds double, double* %2, i64 %263
  %265 = add nsw i64 %251, -1
  %266 = mul nsw i64 %265, %7
  %267 = getelementptr inbounds double, double* %2, i64 %266
  %268 = getelementptr inbounds double, double* %1, i64 %263
  br label %269

; <label>:269:                                    ; preds = %423, %249
  %270 = phi i64 [ %426, %423 ], [ 0, %249 ]
  %271 = phi i64 [ %313, %423 ], [ 1, %249 ]
  %272 = mul i64 %4, %270
  %273 = add i64 %253, %272
  %274 = getelementptr double, double* %1, i64 %273
  %275 = bitcast double* %274 to i8*
  %276 = getelementptr i8, i8* %275, i64 %14
  %277 = add i64 %254, %272
  %278 = getelementptr double, double* %1, i64 %277
  %279 = bitcast double* %278 to i8*
  %280 = getelementptr i8, i8* %279, i64 %14
  %281 = add i64 %252, %272
  %282 = getelementptr double, double* %2, i64 %281
  %283 = add i64 %255, %272
  %284 = getelementptr double, double* %2, i64 %283
  %285 = add i64 %256, %272
  %286 = getelementptr double, double* %2, i64 %285
  %287 = bitcast double* %286 to i8*
  %288 = add i64 %257, %272
  %289 = getelementptr double, double* %2, i64 %288
  %290 = bitcast double* %289 to i8*
  %291 = getelementptr double, double* %2, i64 %273
  %292 = bitcast double* %291 to i8*
  %293 = getelementptr i8, i8* %292, i64 %23
  %294 = getelementptr double, double* %2, i64 %277
  %295 = bitcast double* %294 to i8*
  %296 = getelementptr i8, i8* %295, i64 %23
  %297 = add i64 %258, %272
  %298 = getelementptr double, double* %2, i64 %297
  %299 = bitcast double* %298 to i8*
  %300 = add i64 %259, %272
  %301 = getelementptr double, double* %2, i64 %300
  %302 = bitcast double* %301 to i8*
  %303 = getelementptr double, double* %2, i64 %273
  %304 = bitcast double* %303 to i8*
  %305 = getelementptr i8, i8* %304, i64 %29
  %306 = getelementptr double, double* %2, i64 %277
  %307 = bitcast double* %306 to i8*
  %308 = getelementptr i8, i8* %307, i64 %29
  %309 = mul nuw nsw i64 %271, %4
  %310 = getelementptr inbounds double, double* %262, i64 %309
  %311 = getelementptr inbounds double, double* %264, i64 %309
  %312 = getelementptr inbounds double, double* %267, i64 %309
  %313 = add nuw nsw i64 %271, 1
  %314 = mul nsw i64 %313, %4
  %315 = getelementptr inbounds double, double* %264, i64 %314
  %316 = add nsw i64 %271, -1
  %317 = mul nuw nsw i64 %316, %4
  %318 = getelementptr inbounds double, double* %264, i64 %317
  %319 = getelementptr inbounds double, double* %268, i64 %309
  br i1 %57, label %386, label %320

; <label>:320:                                    ; preds = %269
  br i1 %59, label %386, label %321

; <label>:321:                                    ; preds = %320
  %322 = icmp ule double* %274, %284
  %323 = icmp ule double* %282, %278
  %324 = and i1 %322, %323
  %325 = icmp ule i8* %276, %290
  %326 = icmp ule i8* %287, %280
  %327 = and i1 %325, %326
  %328 = or i1 %324, %327
  %329 = icmp ule i8* %276, %296
  %330 = icmp ule i8* %293, %280
  %331 = and i1 %329, %330
  %332 = or i1 %328, %331
  %333 = icmp ule i8* %276, %302
  %334 = icmp ule i8* %299, %280
  %335 = and i1 %333, %334
  %336 = or i1 %332, %335
  %337 = icmp ule i8* %276, %308
  %338 = icmp ule i8* %305, %280
  %339 = and i1 %337, %338
  %340 = or i1 %336, %339
  br i1 %340, label %386, label %341

; <label>:341:                                    ; preds = %321
  br label %342

; <label>:342:                                    ; preds = %341, %342
  %343 = phi i64 [ %383, %342 ], [ 0, %341 ]
  %344 = or i64 %343, 1
  %345 = getelementptr inbounds double, double* %310, i64 %344
  %346 = bitcast double* %345 to <2 x double>*
  %347 = load <2 x double>, <2 x double>* %346, align 8, !tbaa !37, !alias.scope !57
  %348 = getelementptr inbounds double, double* %311, i64 %344
  %349 = bitcast double* %348 to <2 x double>*
  %350 = load <2 x double>, <2 x double>* %349, align 8, !tbaa !37, !alias.scope !60
  %351 = fmul <2 x double> %350, <double 2.000000e+00, double 2.000000e+00>
  %352 = fsub <2 x double> %347, %351
  %353 = getelementptr inbounds double, double* %312, i64 %344
  %354 = bitcast double* %353 to <2 x double>*
  %355 = load <2 x double>, <2 x double>* %354, align 8, !tbaa !37, !alias.scope !62
  %356 = fadd <2 x double> %355, %352
  %357 = fmul <2 x double> %356, <double 1.250000e-01, double 1.250000e-01>
  %358 = getelementptr inbounds double, double* %315, i64 %344
  %359 = bitcast double* %358 to <2 x double>*
  %360 = load <2 x double>, <2 x double>* %359, align 8, !tbaa !37, !alias.scope !64
  %361 = fsub <2 x double> %360, %351
  %362 = getelementptr inbounds double, double* %318, i64 %344
  %363 = bitcast double* %362 to <2 x double>*
  %364 = load <2 x double>, <2 x double>* %363, align 8, !tbaa !37, !alias.scope !66
  %365 = fadd <2 x double> %361, %364
  %366 = fmul <2 x double> %365, <double 1.250000e-01, double 1.250000e-01>
  %367 = fadd <2 x double> %357, %366
  %368 = add i64 %344, 1
  %369 = getelementptr inbounds double, double* %311, i64 %368
  %370 = bitcast double* %369 to <2 x double>*
  %371 = load <2 x double>, <2 x double>* %370, align 8, !tbaa !37, !alias.scope !60
  %372 = fsub <2 x double> %371, %351
  %373 = add i64 %344, -1
  %374 = getelementptr inbounds double, double* %311, i64 %373
  %375 = bitcast double* %374 to <2 x double>*
  %376 = load <2 x double>, <2 x double>* %375, align 8, !tbaa !37, !alias.scope !60
  %377 = fadd <2 x double> %372, %376
  %378 = fmul <2 x double> %377, <double 1.250000e-01, double 1.250000e-01>
  %379 = fadd <2 x double> %367, %378
  %380 = fadd <2 x double> %350, %379
  %381 = getelementptr inbounds double, double* %319, i64 %344
  %382 = bitcast double* %381 to <2 x double>*
  store <2 x double> %380, <2 x double>* %382, align 8, !tbaa !37, !alias.scope !68, !noalias !70
  %383 = add i64 %343, 2
  %384 = icmp eq i64 %383, %58
  br i1 %384, label %385, label %342, !llvm.loop !71

; <label>:385:                                    ; preds = %342
  br i1 %61, label %423, label %386

; <label>:386:                                    ; preds = %385, %321, %320, %269
  %387 = phi i64 [ 1, %321 ], [ 1, %320 ], [ 1, %269 ], [ %60, %385 ]
  br label %388

; <label>:388:                                    ; preds = %386, %388
  %389 = phi i64 [ %408, %388 ], [ %387, %386 ]
  %390 = getelementptr inbounds double, double* %310, i64 %389
  %391 = load double, double* %390, align 8, !tbaa !37
  %392 = getelementptr inbounds double, double* %311, i64 %389
  %393 = load double, double* %392, align 8, !tbaa !37
  %394 = fmul double %393, 2.000000e+00
  %395 = fsub double %391, %394
  %396 = getelementptr inbounds double, double* %312, i64 %389
  %397 = load double, double* %396, align 8, !tbaa !37
  %398 = fadd double %397, %395
  %399 = fmul double %398, 1.250000e-01
  %400 = getelementptr inbounds double, double* %315, i64 %389
  %401 = load double, double* %400, align 8, !tbaa !37
  %402 = fsub double %401, %394
  %403 = getelementptr inbounds double, double* %318, i64 %389
  %404 = load double, double* %403, align 8, !tbaa !37
  %405 = fadd double %402, %404
  %406 = fmul double %405, 1.250000e-01
  %407 = fadd double %399, %406
  %408 = add nuw nsw i64 %389, 1
  %409 = getelementptr inbounds double, double* %311, i64 %408
  %410 = load double, double* %409, align 8, !tbaa !37
  %411 = fsub double %410, %394
  %412 = add nsw i64 %389, -1
  %413 = getelementptr inbounds double, double* %311, i64 %412
  %414 = load double, double* %413, align 8, !tbaa !37
  %415 = fadd double %411, %414
  %416 = fmul double %415, 1.250000e-01
  %417 = fadd double %407, %416
  %418 = fadd double %393, %417
  %419 = getelementptr inbounds double, double* %319, i64 %389
  store double %418, double* %419, align 8, !tbaa !37
  %420 = trunc i64 %408 to i32
  %421 = icmp eq i32 %420, %5
  br i1 %421, label %422, label %388, !llvm.loop !72

; <label>:422:                                    ; preds = %388
  br label %423

; <label>:423:                                    ; preds = %422, %385
  %424 = trunc i64 %313 to i32
  %425 = icmp eq i32 %424, %5
  %426 = add i64 %270, 1
  br i1 %425, label %427, label %269

; <label>:427:                                    ; preds = %423
  %428 = trunc i64 %260 to i32
  %429 = icmp eq i32 %428, %5
  %430 = add i64 %250, 1
  br i1 %429, label %431, label %249

; <label>:431:                                    ; preds = %427
  br label %432

; <label>:432:                                    ; preds = %431, %62, %65
  %433 = add nuw nsw i32 %63, 1
  %434 = icmp eq i32 %433, 501
  br i1 %434, label %435, label %62

; <label>:435:                                    ; preds = %432
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
