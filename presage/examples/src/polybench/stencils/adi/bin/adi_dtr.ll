; ModuleID = 'adi_dtr.bc'
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
@fiParams = global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), align 8
@.str = private unnamed_addr constant [6 x i8] c"fi.in\00", align 1
@fiStat = global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"fi.csv\00", align 1
@fiCount = global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"fi.out\00", align 1
@fsStat = global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"fs.out\00", align 1
@execKey = global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"fault site count:%lld\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"\0AError:Coudn't find the file: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"fault injection count:%lld\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"\0Atimestamp:%lu\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"\0Aerror detection count:%lld\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Time;\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"%ld;\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"%s;\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"%d;\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"%c;\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"%lld;\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"%f;\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"%lf;\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str.63 = private unnamed_addr constant [44 x i8] c"\0AError: Invalid value provided for FI Algo!\00"
@switch.table = private unnamed_addr constant [5 x i32] [i32 7, i32 15, i32 31, i32 63, i32 31]
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@str.61 = private unnamed_addr constant [42 x i8] c"\0AError:Coudn't find fi param file \22fi.in\22\00"
@.str.13 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@str.62 = private unnamed_addr constant [47 x i8] c"\0AError:memory allocation failed for dynFSIdx!!\00"
@.str.15 = private unnamed_addr constant [11 x i8] c"Instr_Name\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Original_Value\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Corrupted_Value\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Bit_Position\00", align 1
@.str.41 = private unnamed_addr constant [57 x i8] c"fialg!=FI_ERROR && \22Invalid fault injection algorithm!!\22\00", align 1
@.str.42 = private unnamed_addr constant [57 x i8] c"/home/vcsharma/apps/tools/vulfi/master/runtime/Corrupt.C\00", align 1
@__PRETTY_FUNCTION__._Z11checkParamsv = private unnamed_addr constant [19 x i8] c"void checkParams()\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"fibr!=FIBR_ERROR && \22Invalid byte range!!\22\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"fid!=FID_ERROR && \22Invalid byte direction!!\22\00", align 1
@.str.45 = private unnamed_addr constant [71 x i8] c"((bu>=bl && bu<=63 && bl >=0)||fialg!=FI_ABR) && \22Invalid bit range!!\22\00", align 1
@.str.46 = private unnamed_addr constant [62 x i8] c"ef<=tf&&ef>0&&tf>0 && \22Invalid fault injection probability!!\22\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"(pfs==0||pfs==1) && \22Invalid value for pfs flag!!\22\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"fia\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"CBR\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"ABR\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"MSK\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"fib\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"fid\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"LSB\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"MSB\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"fiu\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"fil\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"pn\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"pd\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"pfs\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"fc\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1.13 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2.14 = private unnamed_addr constant [7 x i8] c"%lld,\0A\00", align 1
@.str.3.15 = private unnamed_addr constant [6 x i8] c"%lf,\0A\00", align 1
@.str.4.16 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@init_flag = global i32 0, align 4
@dimcount = global i32 0, align 4
@psgdim = global [10 x i32] zeroinitializer, align 16
@prf_data = global [512 x [20 x i64]] zeroinitializer, align 16
@dim0 = global i64 0, align 8
@dim1 = global i64 0, align 8
@dim2 = global i64 0, align 8
@.str.48 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1.49 = private unnamed_addr constant [27 x i8] c"MAX_UNIQUE_COUNT_EXCEEDED\0A\00", align 1
@.str.2.50 = private unnamed_addr constant [9 x i8] c"%u:%lld \00", align 1
@.str.3.51 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.4.52 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.5.53 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.6.54 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str.5 = private unnamed_addr constant [32 x i8] c"\0AINFO: Insufficient arguments!\0A\00"
@.str.1.55 = private unnamed_addr constant [53 x i8] c"Total time taken to execute the kernel: %lf seconds\0A\00", align 1
@str.4 = private unnamed_addr constant [27 x i8] c"\0AINFO: Soft error detected\00"
@str = private unnamed_addr constant [31 x i8] c"\0AINFO: No Soft errors detected\00"

; Function Attrs: noinline nounwind uwtable
define i32 @printFaultSitesData() #0 {
  %1 = load i32, i32* @pfs, align 4, !tbaa !1
  switch i32 %1, label %2 [
    i32 -1, label %25
    i32 0, label %25
  ]

; <label>:2:                                      ; preds = %0
  %3 = load i64, i64* @fsIntTy1, align 8, !tbaa !5
  %4 = load i64, i64* @fsIntTy16, align 8, !tbaa !5
  %5 = add nsw i64 %4, %3
  %6 = load i64, i64* @fsIntTy32, align 8, !tbaa !5
  %7 = add nsw i64 %5, %6
  %8 = load i64, i64* @fsIntTy64, align 8, !tbaa !5
  %9 = add nsw i64 %7, %8
  %10 = load i64, i64* @fsFloatTy, align 8, !tbaa !5
  %11 = add nsw i64 %9, %10
  %12 = load i64, i64* @fsDoubleTy, align 8, !tbaa !5
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
  tail call void @free(i8* %24) #6
  store i64* null, i64** @dynFSIdx, align 8, !tbaa !7
  br label %25

; <label>:25:                                     ; preds = %23, %20, %0, %0
  %26 = phi i32 [ -1, %0 ], [ -1, %0 ], [ 0, %20 ], [ 0, %23 ]
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr %struct._IO_FILE* @_Z5getFDPKcS0_(i8*, i8*) #0 comdat {
  %3 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* %1)
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %0)
  tail call void @exit(i32 -1) #11
  unreachable

; <label>:7:                                      ; preds = %2
  ret %struct._IO_FILE* %3
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: noinline nounwind uwtable
define i32 @printFaultInjectionData() #0 {
  %1 = load i32, i32* @pfs, align 4, !tbaa !1
  switch i32 %1, label %2 [
    i32 -1, label %29
    i32 1, label %29
  ]

; <label>:2:                                      ; preds = %0
  %3 = load i64, i64* @fiIntTy1, align 8, !tbaa !5
  %4 = load i64, i64* @fiIntTy16, align 8, !tbaa !5
  %5 = add nsw i64 %4, %3
  %6 = load i64, i64* @fiIntTy32, align 8, !tbaa !5
  %7 = add nsw i64 %5, %6
  %8 = load i64, i64* @fiIntTy64, align 8, !tbaa !5
  %9 = add nsw i64 %7, %8
  %10 = load i64, i64* @fiFloatTy, align 8, !tbaa !5
  %11 = add nsw i64 %9, %10
  %12 = load i64, i64* @fiDoubleTy, align 8, !tbaa !5
  %13 = add nsw i64 %11, %12
  %14 = load i8*, i8** @fiCount, align 8, !tbaa !7
  %15 = tail call %struct._IO_FILE* @_Z5getFDPKcS0_(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %16 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i64 %13)
  %17 = load i64, i64* @execKey, align 8, !tbaa !9
  %18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* @detectCounter, align 8, !tbaa !5
  %20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 %19)
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
  tail call void @free(i8* %28) #6
  store i64* null, i64** @dynFSIdx, align 8, !tbaa !7
  br label %29

; <label>:29:                                     ; preds = %27, %24, %0, %0
  %30 = phi i32 [ -1, %0 ], [ -1, %0 ], [ 0, %24 ], [ 0, %27 ]
  ret i32 %30
}

; Function Attrs: noinline uwtable
define i32 @_Z21injectSoftErrorIntTy1iPKci(i32, i8*, i32) #3 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !1
  store i32 %2, i32* %5, align 4, !tbaa !1
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #6
  store i32 %0, i32* %6, align 4, !tbaa !1
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #6
  store i32 -1, i32* %7, align 4, !tbaa !1
  %14 = bitcast i32* %5 to i8*
  %15 = call i32 @_Z9checkMaskPvi(i8* %14, i32 4)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* @fsIntTy1, align 8, !tbaa !5
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @fsIntTy1, align 8, !tbaa !5
  %20 = load i32, i32* @pfs, align 4, !tbaa !1
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
  store i32 %28, i32* %7, align 4, !tbaa !1
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* @fiIntTy1, align 8, !tbaa !5
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @fiIntTy1, align 8, !tbaa !5
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %26, i8* nonnull %13, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %33

; <label>:33:                                     ; preds = %25, %30, %22, %17, %11
  %34 = load i32, i32* %4, align 4, !tbaa !1
  call void @llvm.lifetime.end(i64 4, i8* %13) #6
  call void @llvm.lifetime.end(i64 4, i8* %12) #6
  ret i32 %34
}

; Function Attrs: noinline uwtable
define linkonce_odr void @_Z14updateFIParamsv() #3 comdat {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = bitcast i8** %1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #6
  store i8* null, i8** %1, align 8, !tbaa !7
  %4 = bitcast i64* %2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #6
  store i64 0, i64* %2, align 8, !tbaa !9
  %5 = tail call i64 @time(i64* null) #6
  %6 = trunc i64 %5 to i32
  tail call void @srand(i32 %6) #6
  tail call void @_Z15updateTimeStampv()
  %7 = load i8*, i8** @fiParams, align 8, !tbaa !7
  %8 = tail call %struct._IO_FILE* @fopen(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %9 = icmp eq %struct._IO_FILE* %8, null
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %0
  %11 = call i64 @getline(i8** nonnull %1, i64* nonnull %2, %struct._IO_FILE* nonnull %8)
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %24, label %13

; <label>:13:                                     ; preds = %10
  br label %16

; <label>:14:                                     ; preds = %0
  %15 = tail call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @str.61, i64 0, i64 0))
  tail call void @exit(i32 -1) #11
  unreachable

; <label>:16:                                     ; preds = %13, %16
  %17 = load i8*, i8** %1, align 8, !tbaa !7
  %18 = call i8* @_Z18getStrFieldByIndexPcPKci(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 0)
  %19 = load i8*, i8** %1, align 8, !tbaa !7
  %20 = call i8* @_Z18getStrFieldByIndexPcPKci(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 1)
  call void @_Z13processParamsPKcS0_(i8* %18, i8* %20)
  %21 = call i64 @getline(i8** nonnull %1, i64* nonnull %2, %struct._IO_FILE* nonnull %8)
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %16

; <label>:23:                                     ; preds = %16
  br label %24

; <label>:24:                                     ; preds = %23, %10
  %25 = load i32, i32* @pfs, align 4, !tbaa !1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %58

; <label>:27:                                     ; preds = %24
  %28 = load i64, i64* @tf, align 8, !tbaa !5
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %32, label %30

; <label>:30:                                     ; preds = %27
  %31 = load i64, i64* @intvsz, align 8
  br label %33

; <label>:32:                                     ; preds = %27
  store i64 %28, i64* @intvsz, align 8, !tbaa !5
  br label %33

; <label>:33:                                     ; preds = %30, %32
  %34 = phi i64 [ %31, %30 ], [ %28, %32 ]
  %35 = load i64, i64* @dynFSCount, align 8, !tbaa !5
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
  store i64 %42, i64* @intvCount, align 8, !tbaa !5
  br label %49

; <label>:44:                                     ; preds = %39
  %45 = sitofp i64 %42 to double
  %46 = call double @floor(double %45) #12
  %47 = fadd double %46, 1.000000e+00
  %48 = fptosi double %47 to i64
  store i64 %48, i64* @intvCount, align 8, !tbaa !5
  br label %49

; <label>:49:                                     ; preds = %43, %44, %33
  %50 = load i32, i32* @fidatardflag, align 4, !tbaa !1
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
  %57 = call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @str.62, i64 0, i64 0))
  call void @exit(i32 -1) #11
  unreachable

; <label>:58:                                     ; preds = %53, %24
  %59 = load i8*, i8** @fiStat, align 8, !tbaa !7
  %60 = call i32 @_Z11file_existsPKc(i8* %59)
  %61 = load i32, i32* @pfs, align 4
  %62 = or i32 %61, %60
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %58
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %65

; <label>:65:                                     ; preds = %58, %64
  call void @_Z11printParamsv()
  call void @_Z11checkParamsv()
  store i32 1, i32* @fidatardflag, align 4, !tbaa !1
  %66 = call i32 @fclose(%struct._IO_FILE* nonnull %8)
  call void @llvm.lifetime.end(i64 8, i8* %4) #6
  call void @llvm.lifetime.end(i64 8, i8* %3) #6
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z9checkMaskPvi(i8*, i32) #0 comdat {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #6
  store i64 0, i64* %3, align 8, !tbaa !5
  %5 = sext i32 %1 to i64
  %6 = call i32 @memcmp(i8* %0, i8* %4, i64 %5) #13
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  call void @llvm.lifetime.end(i64 8, i8* %4) #6
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z13matchDynFSIdxv() #0 comdat {
  %1 = load i64, i64* @dynFSCounter, align 8, !tbaa !5
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @dynFSCounter, align 8, !tbaa !5
  %3 = tail call i32 @_Z14getIntervalIdxx(i64 %2)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %29, label %5

; <label>:5:                                      ; preds = %0
  %6 = sext i32 %3 to i64
  %7 = load i64, i64* @intvCount, align 8, !tbaa !5
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %29

; <label>:9:                                      ; preds = %5
  %10 = load i64, i64* @ef, align 8, !tbaa !5
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %29

; <label>:12:                                     ; preds = %9
  %13 = mul nsw i64 %10, %6
  %14 = load i64*, i64** @dynFSIdx, align 8, !tbaa !7
  %15 = load i64, i64* @dynFSCounter, align 8, !tbaa !5
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
  %24 = load i64, i64* %23, align 8, !tbaa !5
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
  call void @llvm.lifetime.start(i64 1024, i8* %10) #6
  %11 = tail call i64 @strlen(i8* %0) #13
  %12 = icmp eq i32 %4, 7
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %6
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %9)
  br label %18

; <label>:15:                                     ; preds = %6
  %16 = load i64, i64* @execKey, align 8, !tbaa !9
  %17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i64 %16)
  br label %18

; <label>:18:                                     ; preds = %15, %13
  %19 = bitcast [1024 x i8]* %7 to i16*
  store i16 34, i16* %19, align 16
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 1
  %21 = and i64 %11, 4294967295
  %22 = call i8* @strncpy(i8* %20, i8* %0, i64 %21) #6
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %21
  %24 = bitcast i8* %23 to i16*
  store i16 34, i16* %24, align 1
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* %10)
  %26 = or i32 %4, 2
  %27 = icmp eq i32 %26, 2
  %28 = icmp eq i32 %4, 3
  %29 = or i1 %28, %27
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %18
  %31 = bitcast i8* %1 to i32*
  %32 = load i32, i32* %31, align 4, !tbaa !1
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %32)
  %34 = bitcast i8* %2 to i32*
  %35 = load i32, i32* %34, align 4, !tbaa !1
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %35)
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
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i32 %40)
  %42 = load i8, i8* %2, align 1, !tbaa !13
  %43 = sext i8 %42 to i32
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0), i32 %43)
  br label %72

; <label>:45:                                     ; preds = %37
  %46 = bitcast i8* %1 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !5
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i64 %47)
  %49 = bitcast i8* %2 to i64*
  %50 = load i64, i64* %49, align 8, !tbaa !5
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i64 %50)
  br label %72

; <label>:52:                                     ; preds = %37
  %53 = bitcast i8* %1 to float*
  %54 = load float, float* %53, align 4, !tbaa !14
  %55 = fpext float %54 to double
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), double %55)
  %57 = bitcast i8* %2 to float*
  %58 = load float, float* %57, align 4, !tbaa !14
  %59 = fpext float %58 to double
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), double %59)
  br label %72

; <label>:61:                                     ; preds = %37
  %62 = bitcast i8* %1 to double*
  %63 = load double, double* %62, align 8, !tbaa !16
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), double %63)
  %65 = bitcast i8* %2 to double*
  %66 = load double, double* %65, align 8, !tbaa !16
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), double %66)
  br label %72

; <label>:68:                                     ; preds = %37
  br i1 %12, label %69, label %75

; <label>:69:                                     ; preds = %68
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* %1)
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i8* %2)
  br label %73

; <label>:72:                                     ; preds = %38, %52, %61, %45, %30
  br i1 %12, label %73, label %75

; <label>:73:                                     ; preds = %69, %72
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), i8* %3)
  br label %79

; <label>:75:                                     ; preds = %68, %72
  %76 = bitcast i8* %3 to i32*
  %77 = load i32, i32* %76, align 4, !tbaa !1
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i32 %77)
  br label %79

; <label>:79:                                     ; preds = %75, %73
  %80 = icmp eq %struct._IO_FILE* %9, null
  br i1 %80, label %83, label %81

; <label>:81:                                     ; preds = %79
  %82 = call i32 @fclose(%struct._IO_FILE* nonnull %9)
  br label %83

; <label>:83:                                     ; preds = %79, %81
  call void @llvm.lifetime.end(i64 1024, i8* nonnull %10) #6
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #6

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
  %12 = tail call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @str.63, i64 0, i64 0))
  tail call void @exit(i32 -1) #11
  unreachable

; <label>:13:                                     ; preds = %3, %8, %6, %4
  %14 = phi i32 [ -1, %3 ], [ %10, %8 ], [ %7, %6 ], [ %5, %4 ]
  ret i32 %14
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

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
  %25 = tail call i32 @rand() #6
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
  %13 = load i32, i32* @bu, align 4, !tbaa !1
  %14 = icmp sgt i32 %13, %12
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* @bl, align 4, !tbaa !1
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %19, label %18

; <label>:18:                                     ; preds = %11, %15
  br label %19

; <label>:19:                                     ; preds = %15, %18
  %20 = phi i32 [ %12, %18 ], [ %13, %15 ]
  %21 = phi i32 [ 0, %18 ], [ %16, %15 ]
  %22 = tail call i32 @rand() #6
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
declare i32 @puts(i8* nocapture) #6

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i32 @_Z14getIntervalIdxx(i64) #0 comdat {
  %2 = load i64, i64* @intvsz, align 8, !tbaa !5
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %9, label %4

; <label>:4:                                      ; preds = %1
  %5 = sdiv i64 %0, %2
  %6 = sitofp i64 %5 to double
  %7 = tail call double @floor(double %6) #12
  %8 = fptosi double %7 to i32
  br label %9

; <label>:9:                                      ; preds = %1, %4
  %10 = phi i32 [ %8, %4 ], [ -1, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind readnone
declare double @floor(double) #7

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #5

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z15updateTimeStampv() #0 comdat {
  %1 = alloca %struct.timeval, align 8
  %2 = bitcast %struct.timeval* %1 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %2) #6
  %3 = call i32 @gettimeofday(%struct.timeval* nonnull %1, %struct.timezone* null) #6
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !22
  %6 = mul nsw i64 %5, 1000000
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1
  %8 = load i64, i64* %7, align 8, !tbaa !24
  %9 = add nsw i64 %6, %8
  store i64 %9, i64* @execKey, align 8, !tbaa !9
  call void @llvm.lifetime.end(i64 16, i8* %2) #6
  ret void
}

declare i64 @getline(i8**, i64*, %struct._IO_FILE*) #8

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i8* @_Z18getStrFieldByIndexPcPKci(i8*, i8*, i32) #0 comdat {
  %4 = alloca [1024 x i8], align 16
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  call void @llvm.lifetime.start(i64 1024, i8* %5) #6
  %6 = call i8* @strcpy(i8* %5, i8* %0) #6
  %7 = call i8* @strtok(i8* %5, i8* %1) #6
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
  %16 = call i8* @strtok(i8* null, i8* %1) #6
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %10

; <label>:18:                                     ; preds = %15, %10
  %19 = phi i8* [ null, %15 ], [ %12, %10 ]
  br label %20

; <label>:20:                                     ; preds = %18, %3
  %21 = phi i8* [ null, %3 ], [ %19, %18 ]
  call void @llvm.lifetime.end(i64 1024, i8* %5) #6
  ret i8* %21
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z13processParamsPKcS0_(i8*, i8*) #0 comdat {
  %3 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %18

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5
  store i32 0, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:9:                                      ; preds = %5
  %10 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %9
  store i32 1, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:13:                                     ; preds = %9
  %14 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  store i32 2, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:17:                                     ; preds = %13
  store i32 3, i32* @fialg, align 4, !tbaa !11
  br label %96

; <label>:18:                                     ; preds = %2
  %19 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0)) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %54

; <label>:21:                                     ; preds = %18
  %22 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0)) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21
  store i32 1, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)) #13
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %25
  store i32 2, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:29:                                     ; preds = %25
  %30 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

; <label>:32:                                     ; preds = %29
  store i32 3, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:33:                                     ; preds = %29
  %34 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %33
  store i32 4, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:37:                                     ; preds = %33
  %38 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %37
  store i32 5, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:41:                                     ; preds = %37
  %42 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0)) #13
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %41
  store i32 6, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:45:                                     ; preds = %41
  %46 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %45
  store i32 7, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:49:                                     ; preds = %45
  %50 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)) #13
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  store i32 8, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:53:                                     ; preds = %49
  store i32 9, i32* @fibr, align 4, !tbaa !20
  br label %96

; <label>:54:                                     ; preds = %18
  %55 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

; <label>:57:                                     ; preds = %54
  %58 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0)) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %57
  store i32 0, i32* @fid, align 4, !tbaa !18
  br label %96

; <label>:61:                                     ; preds = %57
  %62 = tail call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0)) #13
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %61
  store i32 1, i32* @fid, align 4, !tbaa !18
  br label %96

; <label>:65:                                     ; preds = %61
  store i32 2, i32* @fid, align 4, !tbaa !18
  br label %96

; <label>:66:                                     ; preds = %54
  %67 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0)) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %66
  %70 = tail call i32 @atoi(i8* %1) #13
  store i32 %70, i32* @bu, align 4, !tbaa !1
  br label %96

; <label>:71:                                     ; preds = %66
  %72 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #13
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %76

; <label>:74:                                     ; preds = %71
  %75 = tail call i32 @atoi(i8* %1) #13
  store i32 %75, i32* @bl, align 4, !tbaa !1
  br label %96

; <label>:76:                                     ; preds = %71
  %77 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #13
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %76
  %80 = tail call i64 @atoll(i8* %1) #13
  store i64 %80, i64* @ef, align 8, !tbaa !5
  br label %96

; <label>:81:                                     ; preds = %76
  %82 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0)) #13
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

; <label>:84:                                     ; preds = %81
  %85 = tail call i64 @atoll(i8* %1) #13
  store i64 %85, i64* @tf, align 8, !tbaa !5
  br label %96

; <label>:86:                                     ; preds = %81
  %87 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

; <label>:89:                                     ; preds = %86
  %90 = tail call i32 @atoi(i8* %1) #13
  store i32 %90, i32* @pfs, align 4, !tbaa !1
  br label %96

; <label>:91:                                     ; preds = %86
  %92 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0)) #13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

; <label>:94:                                     ; preds = %91
  %95 = tail call i64 @atoll(i8* %1) #13
  store i64 %95, i64* @dynFSCount, align 8, !tbaa !5
  br label %96

; <label>:96:                                     ; preds = %91, %28, %36, %44, %52, %53, %48, %40, %32, %24, %69, %79, %89, %94, %84, %74, %60, %65, %64, %8, %16, %17, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z11updateFSIdxv() #0 comdat {
  %1 = load i64, i64* @intvCount, align 8, !tbaa !5
  %2 = icmp sgt i64 %1, 0
  %3 = load i64, i64* @ef, align 8
  %4 = icmp sgt i64 %3, 0
  %5 = and i1 %2, %4
  br i1 %5, label %6, label %10

; <label>:6:                                      ; preds = %0
  %7 = mul nsw i64 %3, %1
  %8 = tail call noalias i8* @calloc(i64 %7, i64 8) #6
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
  %18 = tail call i32 @puts(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @str.62, i64 0, i64 0))
  tail call void @exit(i32 -1) #11
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
  %28 = load i64, i64* @intvsz, align 8, !tbaa !5
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
  %38 = load i64, i64* @ef, align 8, !tbaa !5
  %39 = mul nsw i64 %38, %22
  %40 = add nsw i64 %39, %26
  %41 = load i64*, i64** @dynFSIdx, align 8, !tbaa !7
  %42 = getelementptr inbounds i64, i64* %41, i64 %40
  store i64 %37, i64* %42, align 8, !tbaa !5
  br label %43

; <label>:43:                                     ; preds = %25, %30
  %44 = add nuw nsw i64 %26, 1
  %45 = load i64, i64* @ef, align 8, !tbaa !5
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %25, label %47

; <label>:47:                                     ; preds = %43
  %48 = phi i64 [ %45, %43 ]
  %49 = load i64, i64* @intvCount, align 8, !tbaa !5
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
  %2 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %3 = icmp eq %struct._IO_FILE* %2, null
  br i1 %3, label %6, label %4

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %2)
  br label %6

; <label>:6:                                      ; preds = %1, %4
  %7 = phi i32 [ 1, %4 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: noinline norecurse nounwind uwtable
define linkonce_odr void @_Z11printParamsv() #9 comdat {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr void @_Z11checkParamsv() #0 comdat {
  %1 = load i32, i32* @fialg, align 4, !tbaa !11
  %2 = icmp eq i32 %1, 3
  br i1 %2, label %3, label %4

; <label>:3:                                      ; preds = %0
  tail call void @__assert_fail(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.42, i64 0, i64 0), i32 292, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:4:                                      ; preds = %0
  %5 = load i32, i32* @fibr, align 4, !tbaa !20
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %4
  tail call void @__assert_fail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.42, i64 0, i64 0), i32 293, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:8:                                      ; preds = %4
  %9 = load i32, i32* @fid, align 4, !tbaa !18
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  tail call void @__assert_fail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.42, i64 0, i64 0), i32 294, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* @bu, align 4, !tbaa !1
  %14 = load i32, i32* @bl, align 4, !tbaa !1
  %15 = icmp sge i32 %13, %14
  %16 = icmp slt i32 %13, 64
  %17 = and i1 %16, %15
  %18 = icmp sgt i32 %14, -1
  %19 = and i1 %18, %17
  %20 = icmp ne i32 %1, 1
  %21 = or i1 %20, %19
  br i1 %21, label %23, label %22

; <label>:22:                                     ; preds = %12
  tail call void @__assert_fail(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.42, i64 0, i64 0), i32 295, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:23:                                     ; preds = %12
  %24 = load i64, i64* @ef, align 8, !tbaa !5
  %25 = load i64, i64* @tf, align 8, !tbaa !5
  %26 = icmp sle i64 %24, %25
  %27 = icmp sgt i64 %24, 0
  %28 = and i1 %27, %26
  %29 = icmp sgt i64 %25, 0
  %30 = and i1 %29, %28
  br i1 %30, label %32, label %31

; <label>:31:                                     ; preds = %23
  tail call void @__assert_fail(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.42, i64 0, i64 0), i32 296, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:32:                                     ; preds = %23
  %33 = load i32, i32* @pfs, align 4, !tbaa !1
  %34 = or i32 %33, 1
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %37, label %36

; <label>:36:                                     ; preds = %32
  tail call void @__assert_fail(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.42, i64 0, i64 0), i32 297, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__._Z11checkParamsv, i64 0, i64 0)) #11
  unreachable

; <label>:37:                                     ; preds = %32
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define linkonce_odr i64 @_Z12gen64bitRandv() #0 comdat {
  br label %1

; <label>:1:                                      ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %9, %1 ]
  %3 = phi i64 [ 0, %0 ], [ %8, %1 ]
  %4 = tail call i32 @rand() #6
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
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: nounwind readonly
declare i32 @atoi(i8* nocapture) #5

; Function Attrs: nounwind readonly
declare i64 @atoll(i8* nocapture) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8* nocapture readonly) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) #1

; Function Attrs: noinline uwtable
define i32 @_Z21injectSoftErrorIntTy8cPKcc(i8 signext, i8*, i8 signext) #3 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store i8 %0, i8* %4, align 1, !tbaa !13
  store i8 %2, i8* %5, align 1, !tbaa !13
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  call void @llvm.lifetime.start(i64 1, i8* nonnull %6) #6
  store i8 %0, i8* %6, align 1, !tbaa !13
  %12 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #6
  store i32 -1, i32* %7, align 4, !tbaa !1
  %13 = call i32 @_Z9checkMaskPvi(i8* nonnull %5, i32 1)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %30, label %15

; <label>:15:                                     ; preds = %11
  %16 = load i64, i64* @fsIntTy8, align 8, !tbaa !5
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* @fsIntTy8, align 8, !tbaa !5
  %18 = load i32, i32* @pfs, align 4, !tbaa !1
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %30, label %20

; <label>:20:                                     ; preds = %15
  %21 = call i32 @_Z13matchDynFSIdxv()
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

; <label>:23:                                     ; preds = %20
  %24 = load i32, i32* @fialg, align 4, !tbaa !11
  %25 = call i32 @_Z7flipBitPvj8DataType6FIAlgo(i8* nonnull %4, i32 1, i32 1, i32 %24)
  store i32 %25, i32* %7, align 4, !tbaa !1
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %23
  %28 = load i64, i64* @fiIntTy8, align 8, !tbaa !5
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* @fiIntTy8, align 8, !tbaa !5
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* nonnull %6, i8* nonnull %4, i8* nonnull %12, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %30

; <label>:30:                                     ; preds = %23, %27, %20, %15, %11
  %31 = load i8, i8* %4, align 1, !tbaa !13
  %32 = sext i8 %31 to i32
  call void @llvm.lifetime.end(i64 4, i8* %12) #6
  call void @llvm.lifetime.end(i64 1, i8* nonnull %6) #6
  ret i32 %32
}

; Function Attrs: noinline uwtable
define signext i16 @_Z22injectSoftErrorIntTy16sPKcs(i16 signext, i8*, i16 signext) #3 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store i16 %0, i16* %4, align 2, !tbaa !25
  store i16 %2, i16* %5, align 2, !tbaa !25
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast i16* %6 to i8*
  call void @llvm.lifetime.start(i64 2, i8* %12) #6
  store i16 %0, i16* %6, align 2, !tbaa !25
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #6
  store i32 -1, i32* %7, align 4, !tbaa !1
  %14 = bitcast i16* %5 to i8*
  %15 = call i32 @_Z9checkMaskPvi(i8* %14, i32 2)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* @fsIntTy16, align 8, !tbaa !5
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @fsIntTy16, align 8, !tbaa !5
  %20 = load i32, i32* @pfs, align 4, !tbaa !1
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
  store i32 %28, i32* %7, align 4, !tbaa !1
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* @fiIntTy16, align 8, !tbaa !5
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @fiIntTy16, align 8, !tbaa !5
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %26, i8* nonnull %13, i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %33

; <label>:33:                                     ; preds = %25, %30, %22, %17, %11
  %34 = load i16, i16* %4, align 2, !tbaa !25
  call void @llvm.lifetime.end(i64 4, i8* %13) #6
  call void @llvm.lifetime.end(i64 2, i8* %12) #6
  ret i16 %34
}

; Function Attrs: noinline uwtable
define i32 @_Z22injectSoftErrorIntTy32iPKci(i32, i8*, i32) #3 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4, !tbaa !1
  store i32 %2, i32* %5, align 4, !tbaa !1
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #6
  store i32 %0, i32* %6, align 4, !tbaa !1
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #6
  store i32 -1, i32* %7, align 4, !tbaa !1
  %14 = bitcast i32* %5 to i8*
  %15 = call i32 @_Z9checkMaskPvi(i8* %14, i32 4)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* @fsIntTy32, align 8, !tbaa !5
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @fsIntTy32, align 8, !tbaa !5
  %20 = load i32, i32* @pfs, align 4, !tbaa !1
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
  store i32 %28, i32* %7, align 4, !tbaa !1
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* @fiIntTy32, align 8, !tbaa !5
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @fiIntTy32, align 8, !tbaa !5
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %26, i8* nonnull %13, i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %33

; <label>:33:                                     ; preds = %25, %30, %22, %17, %11
  %34 = load i32, i32* %4, align 4, !tbaa !1
  call void @llvm.lifetime.end(i64 4, i8* %13) #6
  call void @llvm.lifetime.end(i64 4, i8* %12) #6
  ret i32 %34
}

; Function Attrs: noinline uwtable
define i64 @_Z22injectSoftErrorIntTy64xPKcx(i64, i8*, i64) #3 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8, !tbaa !5
  store i64 %2, i64* %5, align 8, !tbaa !5
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast i64* %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #6
  store i64 %0, i64* %6, align 8, !tbaa !5
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #6
  store i32 -1, i32* %7, align 4, !tbaa !1
  %14 = bitcast i64* %5 to i8*
  %15 = call i32 @_Z9checkMaskPvi(i8* %14, i32 8)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* @fsIntTy64, align 8, !tbaa !5
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @fsIntTy64, align 8, !tbaa !5
  %20 = load i32, i32* @pfs, align 4, !tbaa !1
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
  store i32 %28, i32* %7, align 4, !tbaa !1
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* @fiIntTy64, align 8, !tbaa !5
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @fiIntTy64, align 8, !tbaa !5
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %26, i8* nonnull %13, i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %33

; <label>:33:                                     ; preds = %25, %30, %22, %17, %11
  %34 = load i64, i64* %4, align 8, !tbaa !5
  call void @llvm.lifetime.end(i64 4, i8* %13) #6
  call void @llvm.lifetime.end(i64 8, i8* %12) #6
  ret i64 %34
}

; Function Attrs: noinline uwtable
define float @_Z22injectSoftErrorFloatTyfPKcf(float, i8*, float) #3 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  store float %0, float* %4, align 4, !tbaa !14
  store float %2, float* %5, align 4, !tbaa !14
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast float* %6 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %12) #6
  store float %0, float* %6, align 4, !tbaa !14
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #6
  store i32 -1, i32* %7, align 4, !tbaa !1
  %14 = bitcast float* %5 to i8*
  %15 = call i32 @_Z9checkMaskPvi(i8* %14, i32 4)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* @fsFloatTy, align 8, !tbaa !5
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @fsFloatTy, align 8, !tbaa !5
  %20 = load i32, i32* @pfs, align 4, !tbaa !1
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
  store i32 %28, i32* %7, align 4, !tbaa !1
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* @fiFloatTy, align 8, !tbaa !5
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @fiFloatTy, align 8, !tbaa !5
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %26, i8* nonnull %13, i32 5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %33

; <label>:33:                                     ; preds = %25, %30, %22, %17, %11
  %34 = load float, float* %4, align 4, !tbaa !14
  call void @llvm.lifetime.end(i64 4, i8* %13) #6
  call void @llvm.lifetime.end(i64 4, i8* %12) #6
  ret float %34
}

; Function Attrs: noinline uwtable
define double @_Z23injectSoftErrorDoubleTydPKcd(double, i8*, double) #3 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store double %0, double* %4, align 8, !tbaa !16
  store double %2, double* %5, align 8, !tbaa !16
  %8 = load i32, i32* @fidatardflag, align 4, !tbaa !1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %3
  tail call void @_Z14updateFIParamsv()
  br label %11

; <label>:11:                                     ; preds = %3, %10
  %12 = bitcast double* %6 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #6
  store double %0, double* %6, align 8, !tbaa !16
  %13 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %13) #6
  store i32 -1, i32* %7, align 4, !tbaa !1
  %14 = bitcast double* %5 to i8*
  %15 = call i32 @_Z9checkMaskPvi(i8* %14, i32 8)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* @fsDoubleTy, align 8, !tbaa !5
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* @fsDoubleTy, align 8, !tbaa !5
  %20 = load i32, i32* @pfs, align 4, !tbaa !1
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
  store i32 %28, i32* %7, align 4, !tbaa !1
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %33

; <label>:30:                                     ; preds = %25
  %31 = load i64, i64* @fiDoubleTy, align 8, !tbaa !5
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* @fiDoubleTy, align 8, !tbaa !5
  call void @_Z11writeFIDataPKcPvS1_S1_8DataTypeS0_(i8* %1, i8* %12, i8* %26, i8* nonnull %13, i32 6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %33

; <label>:33:                                     ; preds = %25, %30, %22, %17, %11
  %34 = load double, double* %4, align 8, !tbaa !16
  call void @llvm.lifetime.end(i64 4, i8* %13) #6
  call void @llvm.lifetime.end(i64 8, i8* %12) #6
  ret double %34
}

; Function Attrs: noinline nounwind uwtable
define i32 @file_exists(i8* nocapture readonly) #0 {
  %2 = tail call i32 @access(i8* %0, i32 0) #6
  %3 = icmp ne i32 %2, -1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind
declare i32 @access(i8* nocapture readonly, i32) #1

; Function Attrs: noinline nounwind uwtable
define void @writeFPRData(i8* nocapture readonly, i64, i32) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %9

; <label>:7:                                      ; preds = %3
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.13, i64 0, i64 0))
  br label %9

; <label>:9:                                      ; preds = %7, %5
  %10 = phi %struct._IO_FILE* [ %6, %5 ], [ %8, %7 ]
  %11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.14, i64 0, i64 0), i64 %1)
  %12 = tail call i32 @fclose(%struct._IO_FILE* %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @writeOVRData(i8* nocapture readonly, double, i32) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %9

; <label>:7:                                      ; preds = %3
  %8 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.13, i64 0, i64 0))
  br label %9

; <label>:9:                                      ; preds = %7, %5
  %10 = phi %struct._IO_FILE* [ %6, %5 ], [ %8, %7 ]
  %11 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.15, i64 0, i64 0), double %1)
  %12 = tail call i32 @fclose(%struct._IO_FILE* %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @print_data_3d(i32, i32, i32, double* nocapture readonly, i8* nocapture readonly, i32) #0 {
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %10, label %8

; <label>:8:                                      ; preds = %6
  %9 = tail call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %12

; <label>:10:                                     ; preds = %6
  %11 = tail call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.13, i64 0, i64 0))
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = phi %struct._IO_FILE* [ %9, %8 ], [ %11, %10 ]
  %14 = icmp sgt i32 %0, 0
  br i1 %14, label %15, label %47

; <label>:15:                                     ; preds = %12
  %16 = icmp sgt i32 %1, 0
  %17 = icmp sgt i32 %2, 0
  br i1 %16, label %18, label %47

; <label>:18:                                     ; preds = %15
  br label %19

; <label>:19:                                     ; preds = %18, %24
  %20 = phi i32 [ %25, %24 ], [ 0, %18 ]
  %21 = mul nsw i32 %20, %1
  br i1 %17, label %22, label %24

; <label>:22:                                     ; preds = %19
  br label %27

; <label>:23:                                     ; preds = %33
  br label %24

; <label>:24:                                     ; preds = %23, %19
  %25 = add nuw nsw i32 %20, 1
  %26 = icmp eq i32 %25, %0
  br i1 %26, label %46, label %19

; <label>:27:                                     ; preds = %22, %33
  %28 = phi i64 [ %34, %33 ], [ 0, %22 ]
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, %21
  %31 = mul i32 %30, %2
  %32 = sext i32 %31 to i64
  br label %37

; <label>:33:                                     ; preds = %37
  %34 = add nuw nsw i64 %28, 1
  %35 = trunc i64 %34 to i32
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %23, label %27

; <label>:37:                                     ; preds = %37, %27
  %38 = phi i64 [ %43, %37 ], [ 0, %27 ]
  %39 = add nsw i64 %38, %32
  %40 = getelementptr inbounds double, double* %3, i64 %39
  %41 = load double, double* %40, align 8, !tbaa !27
  %42 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.16, i64 0, i64 0), double %41)
  %43 = add nuw nsw i64 %38, 1
  %44 = trunc i64 %43 to i32
  %45 = icmp eq i32 %44, %2
  br i1 %45, label %33, label %37

; <label>:46:                                     ; preds = %24
  br label %47

; <label>:47:                                     ; preds = %46, %15, %12
  %48 = tail call i32 @fclose(%struct._IO_FILE* %13)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @print_data_2d(i32, i32, double* nocapture readonly, i8* nocapture readonly, i32) #0 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %9, label %7

; <label>:7:                                      ; preds = %5
  %8 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %11

; <label>:9:                                      ; preds = %5
  %10 = tail call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.13, i64 0, i64 0))
  br label %11

; <label>:11:                                     ; preds = %9, %7
  %12 = phi %struct._IO_FILE* [ %8, %7 ], [ %10, %9 ]
  %13 = icmp sgt i32 %0, 0
  %14 = icmp sgt i32 %1, 0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %35

; <label>:16:                                     ; preds = %11
  %17 = sext i32 %1 to i64
  br label %18

; <label>:18:                                     ; preds = %30, %16
  %19 = phi i64 [ 0, %16 ], [ %31, %30 ]
  %20 = mul nsw i64 %19, %17
  br label %21

; <label>:21:                                     ; preds = %21, %18
  %22 = phi i64 [ 0, %18 ], [ %27, %21 ]
  %23 = add nsw i64 %22, %20
  %24 = getelementptr inbounds double, double* %2, i64 %23
  %25 = load double, double* %24, align 8, !tbaa !27
  %26 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.16, i64 0, i64 0), double %25)
  %27 = add nuw nsw i64 %22, 1
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %30, label %21

; <label>:30:                                     ; preds = %21
  %31 = add nuw nsw i64 %19, 1
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %32, %0
  br i1 %33, label %34, label %18

; <label>:34:                                     ; preds = %30
  br label %35

; <label>:35:                                     ; preds = %34, %11
  %36 = tail call i32 @fclose(%struct._IO_FILE* %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @print_data_1d(i32, double* nocapture readonly, i8* nocapture readonly, i32) #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %8, label %6

; <label>:6:                                      ; preds = %4
  %7 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %10

; <label>:8:                                      ; preds = %4
  %9 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.13, i64 0, i64 0))
  br label %10

; <label>:10:                                     ; preds = %8, %6
  %11 = phi %struct._IO_FILE* [ %7, %6 ], [ %9, %8 ]
  %12 = icmp sgt i32 %0, 0
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %10
  br label %14

; <label>:14:                                     ; preds = %13, %14
  %15 = phi i64 [ %19, %14 ], [ 0, %13 ]
  %16 = getelementptr inbounds double, double* %1, i64 %15
  %17 = load double, double* %16, align 8, !tbaa !27
  %18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.16, i64 0, i64 0), double %17)
  %19 = add nuw nsw i64 %15, 1
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %20, %0
  br i1 %21, label %22, label %14

; <label>:22:                                     ; preds = %14
  br label %23

; <label>:23:                                     ; preds = %22, %10
  %24 = tail call i32 @fclose(%struct._IO_FILE* %11)
  ret void
}

; Function Attrs: noinline norecurse nounwind readnone uwtable
define void @psgProtect(double* nocapture, i64, i64) #10 {
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define void @_Z11initPrfDatav() #9 {
  br label %1

; <label>:1:                                      ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %23, %1 ]
  %3 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %2, i64 0
  %4 = bitcast i64* %3 to <2 x i64>*
  store <2 x i64> <i64 9223372036854775807, i64 9223372036854775807>, <2 x i64>* %4, align 16, !tbaa !5
  %5 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %2, i64 2
  %6 = bitcast i64* %5 to <2 x i64>*
  store <2 x i64> <i64 9223372036854775807, i64 9223372036854775807>, <2 x i64>* %6, align 16, !tbaa !5
  %7 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %2, i64 4
  %8 = bitcast i64* %7 to <2 x i64>*
  store <2 x i64> <i64 9223372036854775807, i64 9223372036854775807>, <2 x i64>* %8, align 16, !tbaa !5
  %9 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %2, i64 6
  %10 = bitcast i64* %9 to <2 x i64>*
  store <2 x i64> <i64 9223372036854775807, i64 9223372036854775807>, <2 x i64>* %10, align 16, !tbaa !5
  %11 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %2, i64 8
  %12 = bitcast i64* %11 to <2 x i64>*
  store <2 x i64> <i64 9223372036854775807, i64 9223372036854775807>, <2 x i64>* %12, align 16, !tbaa !5
  %13 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %2, i64 10
  %14 = bitcast i64* %13 to <2 x i64>*
  store <2 x i64> <i64 9223372036854775807, i64 9223372036854775807>, <2 x i64>* %14, align 16, !tbaa !5
  %15 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %2, i64 12
  %16 = bitcast i64* %15 to <2 x i64>*
  store <2 x i64> <i64 9223372036854775807, i64 9223372036854775807>, <2 x i64>* %16, align 16, !tbaa !5
  %17 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %2, i64 14
  %18 = bitcast i64* %17 to <2 x i64>*
  store <2 x i64> <i64 9223372036854775807, i64 9223372036854775807>, <2 x i64>* %18, align 16, !tbaa !5
  %19 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %2, i64 16
  %20 = bitcast i64* %19 to <2 x i64>*
  store <2 x i64> <i64 9223372036854775807, i64 9223372036854775807>, <2 x i64>* %20, align 16, !tbaa !5
  %21 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %2, i64 18
  %22 = bitcast i64* %21 to <2 x i64>*
  store <2 x i64> <i64 9223372036854775807, i64 9223372036854775807>, <2 x i64>* %22, align 16, !tbaa !5
  %23 = add nuw nsw i64 %2, 1
  %24 = icmp eq i64 %23, 512
  br i1 %24, label %25, label %1

; <label>:25:                                     ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @_Z10psgProfilexxPKc(i64, i64, i8* nocapture readonly) #0 {
  %4 = load i32, i32* @init_flag, align 4, !tbaa !1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %3
  tail call void @_Z11initPrfDatav()
  store i32 1, i32* @init_flag, align 4, !tbaa !1
  br label %7

; <label>:7:                                      ; preds = %3, %6
  %8 = icmp sgt i64 %0, 511
  br i1 %8, label %65, label %9

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 0
  %11 = load i64, i64* %10, align 16, !tbaa !5
  %12 = icmp eq i64 %11, %1
  br i1 %12, label %65, label %13

; <label>:13:                                     ; preds = %9
  %14 = icmp eq i64 %11, 9223372036854775807
  br i1 %14, label %22, label %15

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 1
  %17 = load i64, i64* %16, align 8, !tbaa !5
  %18 = icmp eq i64 %17, %1
  br i1 %18, label %65, label %66

; <label>:19:                                     ; preds = %174
  %20 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0))
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1.49, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %20)
  br label %62

; <label>:22:                                     ; preds = %13, %66, %72, %78, %84, %90, %96, %102, %108, %114, %120, %126, %132, %138, %144, %150, %156, %162, %168, %174
  %23 = phi i64* [ %10, %13 ], [ %16, %66 ], [ %69, %72 ], [ %75, %78 ], [ %81, %84 ], [ %87, %90 ], [ %93, %96 ], [ %99, %102 ], [ %105, %108 ], [ %111, %114 ], [ %117, %120 ], [ %123, %126 ], [ %129, %132 ], [ %135, %138 ], [ %141, %144 ], [ %147, %150 ], [ %153, %156 ], [ %159, %162 ], [ %165, %168 ], [ %171, %174 ]
  %24 = phi i32 [ 0, %13 ], [ 1, %66 ], [ 2, %72 ], [ 3, %78 ], [ 4, %84 ], [ 5, %90 ], [ 6, %96 ], [ 7, %102 ], [ 8, %108 ], [ 9, %114 ], [ 10, %120 ], [ 11, %126 ], [ 12, %132 ], [ 13, %138 ], [ 14, %144 ], [ 15, %150 ], [ 16, %156 ], [ 17, %162 ], [ 18, %168 ], [ 19, %174 ]
  store i64 %1, i64* %23, align 8, !tbaa !5
  %25 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0))
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 %26
  %28 = load i64, i64* %27, align 8, !tbaa !5
  %29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.50, i64 0, i64 0), i32 %24, i64 %28)
  %30 = load i32, i32* @dimcount, align 4, !tbaa !1
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %22
  %33 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.51, i64 0, i64 0), i32 %30)
  br label %36

; <label>:34:                                     ; preds = %22
  %35 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.52, i64 0, i64 0), i32 %30)
  br label %36

; <label>:36:                                     ; preds = %34, %32
  %37 = load i32, i32* @dimcount, align 4, !tbaa !1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %62, label %39

; <label>:39:                                     ; preds = %36
  br label %40

; <label>:40:                                     ; preds = %39, %57
  %41 = phi i32 [ %59, %57 ], [ %37, %39 ]
  %42 = phi i32 [ %58, %57 ], [ 0, %39 ]
  %43 = add nsw i32 %41, -1
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %50

; <label>:45:                                     ; preds = %40
  %46 = zext i32 %42 to i64
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* @psgdim, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4, !tbaa !1
  %49 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5.53, i64 0, i64 0), i32 %48)
  br label %57

; <label>:50:                                     ; preds = %40
  %51 = icmp eq i32 %42, %43
  br i1 %51, label %52, label %57

; <label>:52:                                     ; preds = %50
  %53 = zext i32 %42 to i64
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* @psgdim, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !1
  %56 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.54, i64 0, i64 0), i32 %55)
  br label %57

; <label>:57:                                     ; preds = %45, %52, %50
  %58 = add i32 %42, 1
  %59 = load i32, i32* @dimcount, align 4, !tbaa !1
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %40, label %61

; <label>:61:                                     ; preds = %57
  br label %62

; <label>:62:                                     ; preds = %61, %36, %19
  %63 = phi %struct._IO_FILE* [ %20, %19 ], [ %25, %36 ], [ %25, %61 ]
  %64 = tail call i32 @fclose(%struct._IO_FILE* %63)
  br label %65

; <label>:65:                                     ; preds = %9, %15, %68, %74, %80, %86, %92, %98, %104, %110, %116, %122, %128, %134, %140, %146, %152, %158, %164, %170, %7, %62
  ret void

; <label>:66:                                     ; preds = %15
  %67 = icmp eq i64 %17, 9223372036854775807
  br i1 %67, label %22, label %68

; <label>:68:                                     ; preds = %66
  %69 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 2
  %70 = load i64, i64* %69, align 16, !tbaa !5
  %71 = icmp eq i64 %70, %1
  br i1 %71, label %65, label %72

; <label>:72:                                     ; preds = %68
  %73 = icmp eq i64 %70, 9223372036854775807
  br i1 %73, label %22, label %74

; <label>:74:                                     ; preds = %72
  %75 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 3
  %76 = load i64, i64* %75, align 8, !tbaa !5
  %77 = icmp eq i64 %76, %1
  br i1 %77, label %65, label %78

; <label>:78:                                     ; preds = %74
  %79 = icmp eq i64 %76, 9223372036854775807
  br i1 %79, label %22, label %80

; <label>:80:                                     ; preds = %78
  %81 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 4
  %82 = load i64, i64* %81, align 16, !tbaa !5
  %83 = icmp eq i64 %82, %1
  br i1 %83, label %65, label %84

; <label>:84:                                     ; preds = %80
  %85 = icmp eq i64 %82, 9223372036854775807
  br i1 %85, label %22, label %86

; <label>:86:                                     ; preds = %84
  %87 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 5
  %88 = load i64, i64* %87, align 8, !tbaa !5
  %89 = icmp eq i64 %88, %1
  br i1 %89, label %65, label %90

; <label>:90:                                     ; preds = %86
  %91 = icmp eq i64 %88, 9223372036854775807
  br i1 %91, label %22, label %92

; <label>:92:                                     ; preds = %90
  %93 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 6
  %94 = load i64, i64* %93, align 16, !tbaa !5
  %95 = icmp eq i64 %94, %1
  br i1 %95, label %65, label %96

; <label>:96:                                     ; preds = %92
  %97 = icmp eq i64 %94, 9223372036854775807
  br i1 %97, label %22, label %98

; <label>:98:                                     ; preds = %96
  %99 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 7
  %100 = load i64, i64* %99, align 8, !tbaa !5
  %101 = icmp eq i64 %100, %1
  br i1 %101, label %65, label %102

; <label>:102:                                    ; preds = %98
  %103 = icmp eq i64 %100, 9223372036854775807
  br i1 %103, label %22, label %104

; <label>:104:                                    ; preds = %102
  %105 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 8
  %106 = load i64, i64* %105, align 16, !tbaa !5
  %107 = icmp eq i64 %106, %1
  br i1 %107, label %65, label %108

; <label>:108:                                    ; preds = %104
  %109 = icmp eq i64 %106, 9223372036854775807
  br i1 %109, label %22, label %110

; <label>:110:                                    ; preds = %108
  %111 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 9
  %112 = load i64, i64* %111, align 8, !tbaa !5
  %113 = icmp eq i64 %112, %1
  br i1 %113, label %65, label %114

; <label>:114:                                    ; preds = %110
  %115 = icmp eq i64 %112, 9223372036854775807
  br i1 %115, label %22, label %116

; <label>:116:                                    ; preds = %114
  %117 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 10
  %118 = load i64, i64* %117, align 16, !tbaa !5
  %119 = icmp eq i64 %118, %1
  br i1 %119, label %65, label %120

; <label>:120:                                    ; preds = %116
  %121 = icmp eq i64 %118, 9223372036854775807
  br i1 %121, label %22, label %122

; <label>:122:                                    ; preds = %120
  %123 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 11
  %124 = load i64, i64* %123, align 8, !tbaa !5
  %125 = icmp eq i64 %124, %1
  br i1 %125, label %65, label %126

; <label>:126:                                    ; preds = %122
  %127 = icmp eq i64 %124, 9223372036854775807
  br i1 %127, label %22, label %128

; <label>:128:                                    ; preds = %126
  %129 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 12
  %130 = load i64, i64* %129, align 16, !tbaa !5
  %131 = icmp eq i64 %130, %1
  br i1 %131, label %65, label %132

; <label>:132:                                    ; preds = %128
  %133 = icmp eq i64 %130, 9223372036854775807
  br i1 %133, label %22, label %134

; <label>:134:                                    ; preds = %132
  %135 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 13
  %136 = load i64, i64* %135, align 8, !tbaa !5
  %137 = icmp eq i64 %136, %1
  br i1 %137, label %65, label %138

; <label>:138:                                    ; preds = %134
  %139 = icmp eq i64 %136, 9223372036854775807
  br i1 %139, label %22, label %140

; <label>:140:                                    ; preds = %138
  %141 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 14
  %142 = load i64, i64* %141, align 16, !tbaa !5
  %143 = icmp eq i64 %142, %1
  br i1 %143, label %65, label %144

; <label>:144:                                    ; preds = %140
  %145 = icmp eq i64 %142, 9223372036854775807
  br i1 %145, label %22, label %146

; <label>:146:                                    ; preds = %144
  %147 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 15
  %148 = load i64, i64* %147, align 8, !tbaa !5
  %149 = icmp eq i64 %148, %1
  br i1 %149, label %65, label %150

; <label>:150:                                    ; preds = %146
  %151 = icmp eq i64 %148, 9223372036854775807
  br i1 %151, label %22, label %152

; <label>:152:                                    ; preds = %150
  %153 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 16
  %154 = load i64, i64* %153, align 16, !tbaa !5
  %155 = icmp eq i64 %154, %1
  br i1 %155, label %65, label %156

; <label>:156:                                    ; preds = %152
  %157 = icmp eq i64 %154, 9223372036854775807
  br i1 %157, label %22, label %158

; <label>:158:                                    ; preds = %156
  %159 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 17
  %160 = load i64, i64* %159, align 8, !tbaa !5
  %161 = icmp eq i64 %160, %1
  br i1 %161, label %65, label %162

; <label>:162:                                    ; preds = %158
  %163 = icmp eq i64 %160, 9223372036854775807
  br i1 %163, label %22, label %164

; <label>:164:                                    ; preds = %162
  %165 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 18
  %166 = load i64, i64* %165, align 16, !tbaa !5
  %167 = icmp eq i64 %166, %1
  br i1 %167, label %65, label %168

; <label>:168:                                    ; preds = %164
  %169 = icmp eq i64 %166, 9223372036854775807
  br i1 %169, label %22, label %170

; <label>:170:                                    ; preds = %168
  %171 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 19
  %172 = load i64, i64* %171, align 8, !tbaa !5
  %173 = icmp eq i64 %172, %1
  br i1 %173, label %65, label %174

; <label>:174:                                    ; preds = %170
  %175 = icmp eq i64 %172, 9223372036854775807
  br i1 %175, label %22, label %19
}

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8** nocapture readonly) #0 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = bitcast %struct.timeval* %3 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %5) #6
  %6 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.lifetime.start(i64 16, i8* %6) #6
  %7 = icmp slt i32 %0, 3
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @str.5, i64 0, i64 0))
  br label %10

; <label>:10:                                     ; preds = %8, %2
  %11 = getelementptr inbounds i8*, i8** %1, i64 1
  %12 = load i8*, i8** %11, align 8, !tbaa !31
  %13 = tail call i32 @atoi(i8* %12) #13
  %14 = getelementptr inbounds i8*, i8** %1, i64 2
  %15 = load i8*, i8** %14, align 8, !tbaa !31
  %16 = tail call i32 @atoi(i8* %15) #13
  store i32 1, i32* @dimcount, align 4, !tbaa !33
  store i32 %13, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @psgdim, i64 0, i64 0), align 4, !tbaa !33
  %17 = sext i32 %13 to i64
  store i64 %17, i64* @dim0, align 8, !tbaa !35
  %18 = mul nsw i32 %13, %13
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 3
  %21 = tail call noalias i8* @malloc(i64 %20) #6
  %22 = bitcast i8* %21 to double*
  %23 = tail call noalias i8* @malloc(i64 %20) #6
  %24 = bitcast i8* %23 to double*
  %25 = tail call noalias i8* @malloc(i64 %20) #6
  %26 = bitcast i8* %25 to double*
  %27 = tail call noalias i8* @malloc(i64 %20) #6
  %28 = bitcast i8* %27 to double*
  %29 = ptrtoint i8* %21 to i64
  %30 = add nsw i32 %18, -1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %22, i64 %31
  %33 = ptrtoint double* %32 to i64
  tail call void @psgProtect(double* %22, i64 %29, i64 %33) #6
  %34 = ptrtoint i8* %23 to i64
  %35 = getelementptr inbounds double, double* %24, i64 %31
  %36 = ptrtoint double* %35 to i64
  tail call void @psgProtect(double* %24, i64 %34, i64 %36) #6
  %37 = ptrtoint i8* %25 to i64
  %38 = getelementptr inbounds double, double* %26, i64 %31
  %39 = ptrtoint double* %38 to i64
  tail call void @psgProtect(double* %26, i64 %37, i64 %39) #6
  %40 = ptrtoint i8* %27 to i64
  %41 = getelementptr inbounds double, double* %28, i64 %31
  %42 = ptrtoint double* %41 to i64
  tail call void @psgProtect(double* %28, i64 %40, i64 %42) #6
  tail call fastcc void @init_array(i32 %13, double* %22)
  tail call fastcc void @init_array(i32 %13, double* %24)
  tail call fastcc void @init_array(i32 %13, double* %26)
  tail call fastcc void @init_array(i32 %13, double* %28)
  %43 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #6
  tail call fastcc void @kernel_adi(i32 %16, i32 %13, double* %22, double* %24, double* %26, double* %28)
  %44 = call i32 @gettimeofday(%struct.timeval* nonnull %4, %struct.timezone* null) #6
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %46 = load i64, i64* %45, align 8, !tbaa !37
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  %48 = load i64, i64* %47, align 8, !tbaa !40
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %50 = load i64, i64* %49, align 8, !tbaa !37
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %52 = load i64, i64* %51, align 8, !tbaa !40
  %53 = sub i64 %46, %50
  %54 = mul i64 %53, 1000000
  %55 = sub i64 %48, %52
  %56 = add i64 %55, %54
  %57 = sitofp i64 %56 to double
  %58 = fdiv double %57, 1.000000e+06
  %59 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1.55, i64 0, i64 0), double %58)
  %60 = icmp sgt i32 %0, 3
  br i1 %60, label %61, label %76

; <label>:61:                                     ; preds = %10
  %62 = getelementptr inbounds i8*, i8** %1, i64 3
  %63 = load i8*, i8** %62, align 8, !tbaa !31
  tail call void @print_data_2d(i32 %13, i32 %13, double* %22, i8* %63, i32 1) #6
  %64 = load i8*, i8** %62, align 8, !tbaa !31
  tail call void @print_data_2d(i32 %13, i32 %13, double* %24, i8* %64, i32 0) #6
  %65 = load i8*, i8** %62, align 8, !tbaa !31
  tail call void @print_data_2d(i32 %13, i32 %13, double* %26, i8* %65, i32 0) #6
  %66 = load i8*, i8** %62, align 8, !tbaa !31
  tail call void @print_data_2d(i32 %13, i32 %13, double* %28, i8* %66, i32 0) #6
  %67 = icmp sgt i32 %0, 4
  br i1 %67, label %68, label %76

; <label>:68:                                     ; preds = %61
  %69 = getelementptr inbounds i8*, i8** %1, i64 4
  %70 = load i8*, i8** %69, align 8, !tbaa !31
  tail call void @writeOVRData(i8* %70, double %58, i32 0) #6
  %71 = icmp sgt i32 %0, 5
  br i1 %71, label %72, label %76

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds i8*, i8** %1, i64 5
  %74 = load i8*, i8** %73, align 8, !tbaa !31
  %75 = load i64, i64* @detectCounter, align 8, !tbaa !35
  tail call void @writeFPRData(i8* %74, i64 %75, i32 0) #6
  br label %76

; <label>:76:                                     ; preds = %10, %61, %72, %68
  %77 = load i64, i64* @detectCounter, align 8, !tbaa !35
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %81, label %79

; <label>:79:                                     ; preds = %76
  %80 = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @str.4, i64 0, i64 0))
  br label %83

; <label>:81:                                     ; preds = %76
  %82 = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str, i64 0, i64 0))
  br label %83

; <label>:83:                                     ; preds = %81, %79
  tail call void @free(i8* %21) #6
  tail call void @free(i8* %23) #6
  tail call void @free(i8* %25) #6
  tail call void @free(i8* %27) #6
  call void @llvm.lifetime.end(i64 16, i8* %6) #6
  call void @llvm.lifetime.end(i64 16, i8* %5) #6
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @init_array(i32, double* nocapture) unnamed_addr #0 {
  tail call void @srand(i32 0) #6
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %23

; <label>:4:                                      ; preds = %2
  %5 = sext i32 %0 to i64
  br label %6

; <label>:6:                                      ; preds = %18, %4
  %7 = phi i64 [ 0, %4 ], [ %19, %18 ]
  %8 = mul nsw i64 %7, %5
  br label %9

; <label>:9:                                      ; preds = %9, %6
  %10 = phi i64 [ 0, %6 ], [ %15, %9 ]
  %11 = tail call i32 @rand() #6
  %12 = sitofp i32 %11 to double
  %13 = add nsw i64 %10, %8
  %14 = getelementptr inbounds double, double* %1, i64 %13
  store double %12, double* %14, align 8, !tbaa !27
  %15 = add nuw nsw i64 %10, 1
  %16 = trunc i64 %15 to i32
  %17 = icmp eq i32 %16, %0
  br i1 %17, label %18, label %9

; <label>:18:                                     ; preds = %9
  %19 = add nuw nsw i64 %7, 1
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %20, %0
  br i1 %21, label %22, label %6

; <label>:22:                                     ; preds = %18
  br label %23

; <label>:23:                                     ; preds = %22, %2
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @kernel_adi(i32, i32, double* nocapture, double* nocapture, double* nocapture, double* nocapture) unnamed_addr #9 {
  %dim0_ = load i64, i64* @dim0
  %dim0_sqr_ = mul i64 %dim0_, %dim0_
  %dim0_cub_ = mul i64 %dim0_sqr_, %dim0_
  %dim1_ = load i64, i64* @dim1
  %dim1_sqr_ = mul i64 %dim1_, %dim1_
  %dim1_cub_ = mul i64 %dim1_sqr_, %dim1_
  %dim2_ = load i64, i64* @dim2
  %dim2_sqr_ = mul i64 %dim2_, %dim2_
  %dim2_cub_ = mul i64 %dim2_sqr_, %dim2_
  %7 = sitofp i32 %1 to double
  %8 = fdiv double 1.000000e+00, %7
  %9 = sitofp i32 %0 to double
  %10 = fdiv double 1.000000e+00, %9
  %11 = fmul double %10, 2.000000e+00
  %12 = fmul double %8, %8
  %13 = fdiv double %11, %12
  %14 = fdiv double %10, %12
  %15 = fmul double %13, -5.000000e-01
  %16 = fadd double %13, 1.000000e+00
  %17 = fmul double %14, -5.000000e-01
  %18 = fadd double %14, 1.000000e+00
  %19 = icmp slt i32 %0, 1
  %pe = mul i64 -1, %dim0_sqr_
  %addp = add i64 %pe, 3
  %pe1 = mul i64 -1, %dim0_
  %addp2 = add i64 %pe1, 1
  %pe3 = mul i64 3, %dim0_
  %addp4 = add i64 %pe, %pe3
  %addp5 = add i64 %addp4, -1
  %pe6 = mul i64 1, %dim0_
  %addp7 = add i64 %pe6, -1
  %addp8 = add i64 %pe, %pe3
  %addp9 = add i64 %addp8, -1
  %addp10 = add i64 %pe6, -1
  %addp11 = add i64 %pe, %pe3
  %addp12 = add i64 %addp11, -1
  %addp13 = add i64 %pe6, -2
  %pe14 = mul i64 1, %dim0_sqr_
  %addp15 = add i64 %pe14, %pe1
  %addp16 = add i64 %pe6, -1
  %pe17 = mul i64 2, %dim0_
  %addp18 = add i64 %pe, %pe17
  %addp19 = add i64 %addp18, 1
  %addp20 = add i64 %pe6, -1
  %addp21 = add i64 %pe, %pe3
  %addp22 = add i64 %addp21, -1
  %addp23 = add i64 %pe6, -1
  %addp24 = add i64 %pe, %pe3
  %addp25 = add i64 %addp24, -1
  %pe26 = mul i64 -2, %dim0_
  %addp27 = add i64 %pe26, 1
  %addp28 = add i64 %pe26, 3
  %addp29 = add i64 %pe6, -1
  br i1 %19, label %196, label %20

; <label>:20:                                     ; preds = %6
  %phibase_30 = phi double* [ %2, %6 ]
  %phidx_31 = phi i64 [ 0, %6 ]
  %phibase_76 = phi double* [ %3, %6 ]
  %phidx_77 = phi i64 [ 0, %6 ]
  %phibase_122 = phi double* [ %4, %6 ]
  %phidx_123 = phi i64 [ 0, %6 ]
  %phibase_168 = phi double* [ %5, %6 ]
  %phidx_169 = phi i64 [ 0, %6 ]
  %21 = add nsw i32 %1, -1
  %22 = icmp sgt i32 %21, 1
  %23 = mul nsw i32 %21, %1
  %24 = add nsw i32 %1, -2
  %25 = icmp sgt i32 %1, 2
  %26 = fsub double -0.000000e+00, %15
  %27 = fmul double %17, 2.000000e+00
  %28 = fadd double %27, 1.000000e+00
  %29 = fsub double -0.000000e+00, %17
  %30 = fmul double %15, 2.000000e+00
  %31 = fadd double %30, 1.000000e+00
  %32 = sext i32 %1 to i64
  %33 = sext i32 %24 to i64
  %34 = sext i32 %23 to i64
  %35 = sext i32 %21 to i64
  br label %36

; <label>:36:                                     ; preds = %192, %20
  %37 = phi i32 [ 1, %20 ], [ %193, %192 ]
  %phibase_32 = phi double* [ %phibase_36, %192 ], [ %phibase_30, %20 ]
  %phidx_33 = phi i64 [ %phidx_37, %192 ], [ %phidx_31, %20 ]
  %phibase_78 = phi double* [ %phibase_82, %192 ], [ %phibase_76, %20 ]
  %phidx_79 = phi i64 [ %phidx_83, %192 ], [ %phidx_77, %20 ]
  %phibase_124 = phi double* [ %phibase_128, %192 ], [ %phibase_122, %20 ]
  %phidx_125 = phi i64 [ %phidx_129, %192 ], [ %phidx_123, %20 ]
  %phibase_170 = phi double* [ %phibase_174, %192 ], [ %phibase_168, %20 ]
  %phidx_171 = phi i64 [ %phidx_175, %192 ], [ %phidx_169, %20 ]
  br i1 %22, label %38, label %192

; <label>:38:                                     ; preds = %36
  %phibase_34 = phi double* [ %phibase_32, %36 ]
  %phidx_35 = phi i64 [ %phidx_33, %36 ]
  %phibase_80 = phi double* [ %phibase_78, %36 ]
  %phidx_81 = phi i64 [ %phidx_79, %36 ]
  %phibase_126 = phi double* [ %phibase_124, %36 ]
  %phidx_127 = phi i64 [ %phidx_125, %36 ]
  %phibase_172 = phi double* [ %phibase_170, %36 ]
  %phidx_173 = phi i64 [ %phidx_171, %36 ]
  br label %39

; <label>:39:                                     ; preds = %38, %53
  %40 = phi i64 [ %48, %53 ], [ 1, %38 ]
  %phibase_38 = phi double* [ %phibase_34, %38 ], [ %phibase_48, %53 ]
  %phidx_39 = phi i64 [ %phidx_35, %38 ], [ %phidx_49, %53 ]
  %phibase_84 = phi double* [ %phibase_80, %38 ], [ %phibase_94, %53 ]
  %phidx_85 = phi i64 [ %phidx_81, %38 ], [ %phidx_95, %53 ]
  %phibase_130 = phi double* [ %phibase_126, %38 ], [ %phibase_140, %53 ]
  %phidx_131 = phi i64 [ %phidx_127, %38 ], [ %phidx_141, %53 ]
  %phibase_176 = phi double* [ %phibase_172, %38 ], [ %phibase_186, %53 ]
  %phidx_177 = phi i64 [ %phidx_173, %38 ], [ %phidx_187, %53 ]
  %relidx_ = sub i64 %40, %phidx_85
  %chkrelid = icmp ne i64 %relidx_, %addp
  %chkrelid291 = icmp ne i64 %relidx_, %addp2
  %chkrelid292 = icmp ne i64 %relidx_, 1
  %chklinv = or i1 %chkrelid, %chkrelid291
  %chklinv293 = or i1 %chklinv, %chkrelid291
  %newgep_ = getelementptr double, double* %phibase_84, i64 %relidx_
  store double 1.000000e+00, double* %newgep_, align 8, !tbaa !27
  %41 = mul nsw i64 %40, %32
  %relidx_212 = sub i64 %41, %phidx_131
  %chkrelid297 = icmp ne i64 %relidx_212, %addp5
  %chkrelid298 = icmp ne i64 %relidx_212, %addp7
  %chkrelid299 = icmp ne i64 %relidx_212, %pe6
  %chklinv300 = or i1 %chkrelid297, %chkrelid298
  %chklinv301 = or i1 %chklinv300, %chkrelid298
  %newgep_213 = getelementptr double, double* %phibase_130, i64 %relidx_212
  store double 0.000000e+00, double* %newgep_213, align 8, !tbaa !27
  %42 = bitcast double* %newgep_ to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !27
  %relidx_214 = sub i64 %41, %phidx_177
  %chkrelid305 = icmp ne i64 %relidx_214, %addp9
  %chkrelid306 = icmp ne i64 %relidx_214, %addp10
  %chkrelid307 = icmp ne i64 %relidx_214, %pe6
  %chklinv308 = or i1 %chkrelid305, %chkrelid306
  %chklinv309 = or i1 %chklinv308, %chkrelid306
  %newgep_215 = getelementptr double, double* %phibase_176, i64 %relidx_214
  %44 = bitcast double* %newgep_215 to i64*
  store i64 %43, i64* %44, align 8, !tbaa !27
  %45 = trunc i64 %41 to i32
  %46 = add i64 %41, 4294967295
  %47 = add i64 %40, 4294967295
  %48 = add nuw nsw i64 %40, 1
  %49 = trunc i64 %47 to i32
  %50 = trunc i64 %40 to i32
  %51 = trunc i64 %48 to i32
  %newdetval294 = zext i1 %chklinv293 to i64
  %ldolddetval295 = load i64, i64* @detectCounter
  %updetval296 = or i64 %newdetval294, %ldolddetval295
  store i64 %updetval296, i64* @detectCounter
  %newdetval302 = zext i1 %chklinv301 to i64
  %ldolddetval303 = load i64, i64* @detectCounter
  %updetval304 = or i64 %newdetval302, %ldolddetval303
  store i64 %updetval304, i64* @detectCounter
  %newdetval310 = zext i1 %chklinv309 to i64
  %ldolddetval311 = load i64, i64* @detectCounter
  %updetval312 = or i64 %newdetval310, %ldolddetval311
  store i64 %updetval312, i64* @detectCounter
  br label %75

; <label>:52:                                     ; preds = %55
  %phibase_54 = phi double* [ %phibase_50, %55 ]
  %phidx_55 = phi i64 [ %phidx_51, %55 ]
  %phibase_100 = phi double* [ %newgep_219, %55 ]
  %phidx_101 = phi i64 [ %71, %55 ]
  %phibase_146 = phi double* [ %newgep_221, %55 ]
  %phidx_147 = phi i64 [ %59, %55 ]
  %phibase_192 = phi double* [ %newgep_223, %55 ]
  %phidx_193 = phi i64 [ %59, %55 ]
  br label %53

; <label>:53:                                     ; preds = %52, %113
  %phibase_48 = phi double* [ %phibase_54, %52 ], [ %phibase_44, %113 ]
  %phidx_49 = phi i64 [ %phidx_55, %52 ], [ %phidx_45, %113 ]
  %phibase_94 = phi double* [ %phibase_100, %52 ], [ %newgep_239, %113 ]
  %phidx_95 = phi i64 [ %phidx_101, %52 ], [ %114, %113 ]
  %phibase_140 = phi double* [ %phibase_146, %52 ], [ %phibase_136, %113 ]
  %phidx_141 = phi i64 [ %phidx_147, %52 ], [ %phidx_137, %113 ]
  %phibase_186 = phi double* [ %phibase_192, %52 ], [ %phibase_182, %113 ]
  %phidx_187 = phi i64 [ %phidx_193, %52 ], [ %phidx_183, %113 ]
  %54 = icmp eq i32 %51, %21
  br i1 %54, label %116, label %39

; <label>:55:                                     ; preds = %115, %55
  %56 = phi i64 [ %74, %55 ], [ %33, %115 ]
  %57 = phi i32 [ %72, %55 ], [ %24, %115 ]
  %phibase_50 = phi double* [ %phibase_46, %115 ], [ %phibase_50, %55 ]
  %phidx_51 = phi i64 [ %phidx_47, %115 ], [ %phidx_51, %55 ]
  %phibase_96 = phi double* [ %phibase_92, %115 ], [ %newgep_219, %55 ]
  %phidx_97 = phi i64 [ %phidx_93, %115 ], [ %71, %55 ]
  %phibase_142 = phi double* [ %phibase_138, %115 ], [ %newgep_221, %55 ]
  %phidx_143 = phi i64 [ %phidx_139, %115 ], [ %59, %55 ]
  %phibase_188 = phi double* [ %phibase_184, %115 ], [ %newgep_223, %55 ]
  %phidx_189 = phi i64 [ %phidx_185, %115 ], [ %59, %55 ]
  %58 = add nsw i32 %57, %45
  %59 = sext i32 %58 to i64
  %relidx_220 = sub i64 %59, %phidx_143
  %chkrelid313 = icmp ne i64 %relidx_220, -1
  %chkrelid314 = icmp ne i64 %relidx_220, 0
  %chklinv315 = or i1 %chkrelid313, %chkrelid314
  %newgep_221 = getelementptr double, double* %phibase_142, i64 %relidx_220
  %60 = load double, double* %newgep_221, align 8, !tbaa !27
  %61 = add nsw i32 %57, 1
  %62 = mul nsw i32 %61, %1
  %63 = add nsw i32 %62, %50
  %64 = sext i32 %63 to i64
  %relidx_216 = sub i64 %64, %phidx_97
  %chkrelid319 = icmp ne i64 %relidx_216, 0
  %newgep_217 = getelementptr double, double* %phibase_96, i64 %relidx_216
  %65 = load double, double* %newgep_217, align 8, !tbaa !27
  %66 = fmul double %60, %65
  %relidx_222 = sub i64 %59, %phidx_189
  %chkrelid323 = icmp ne i64 %relidx_222, -1
  %chkrelid324 = icmp ne i64 %relidx_222, 0
  %chklinv325 = or i1 %chkrelid323, %chkrelid324
  %newgep_223 = getelementptr double, double* %phibase_188, i64 %relidx_222
  %67 = load double, double* %newgep_223, align 8, !tbaa !27
  %68 = fadd double %66, %67
  %69 = mul nsw i32 %57, %1
  %70 = add nsw i32 %69, %50
  %71 = sext i32 %70 to i64
  %relidx_218 = sub i64 %71, %64
  %chkrelid329 = icmp ne i64 %relidx_218, %pe1
  %newgep_219 = getelementptr double, double* %newgep_217, i64 %relidx_218
  store double %68, double* %newgep_219, align 8, !tbaa !27
  %72 = add nsw i32 %57, -1
  %73 = icmp sgt i64 %56, 1
  %74 = add nsw i64 %56, -1
  %newdetval316 = zext i1 %chklinv315 to i64
  %ldolddetval317 = load i64, i64* @detectCounter
  %updetval318 = or i64 %newdetval316, %ldolddetval317
  store i64 %updetval318, i64* @detectCounter
  %newdetval320 = zext i1 %chkrelid319 to i64
  %ldolddetval321 = load i64, i64* @detectCounter
  %updetval322 = or i64 %newdetval320, %ldolddetval321
  store i64 %updetval322, i64* @detectCounter
  %newdetval326 = zext i1 %chklinv325 to i64
  %ldolddetval327 = load i64, i64* @detectCounter
  %updetval328 = or i64 %newdetval326, %ldolddetval327
  store i64 %updetval328, i64* @detectCounter
  %newdetval330 = zext i1 %chkrelid329 to i64
  %ldolddetval331 = load i64, i64* @detectCounter
  %updetval332 = or i64 %newdetval330, %ldolddetval331
  store i64 %updetval332, i64* @detectCounter
  br i1 %73, label %55, label %52

; <label>:75:                                     ; preds = %75, %39
  %76 = phi i64 [ 1, %39 ], [ %109, %75 ]
  %77 = phi i32 [ 1, %39 ], [ %110, %75 ]
  %phibase_42 = phi double* [ %newgep_229, %75 ], [ %phibase_38, %39 ]
  %phidx_43 = phi i64 [ %98, %75 ], [ %phidx_39, %39 ]
  %phibase_88 = phi double* [ %phibase_88, %75 ], [ %newgep_, %39 ]
  %phidx_89 = phi i64 [ %phidx_89, %75 ], [ %40, %39 ]
  %phibase_134 = phi double* [ %newgep_233, %75 ], [ %newgep_213, %39 ]
  %phidx_135 = phi i64 [ %86, %75 ], [ %41, %39 ]
  %phibase_180 = phi double* [ %newgep_237, %75 ], [ %newgep_215, %39 ]
  %phidx_181 = phi i64 [ %86, %75 ], [ %41, %39 ]
  %78 = add i64 %46, %76
  %79 = shl i64 %78, 32
  %80 = ashr exact i64 %79, 32
  %relidx_230 = sub i64 %80, %phidx_135
  %chkrelid333 = icmp ne i64 %relidx_230, 0
  %newgep_231 = getelementptr double, double* %phibase_134, i64 %relidx_230
  %81 = load double, double* %newgep_231, align 8, !tbaa !27
  %82 = fmul double %15, %81
  %83 = fadd double %16, %82
  %84 = fdiv double %26, %83
  %85 = add nsw i32 %77, %45
  %86 = sext i32 %85 to i64
  %relidx_232 = sub i64 %86, %80
  %chkrelid337 = icmp ne i64 %relidx_232, 1
  %newgep_233 = getelementptr double, double* %newgep_231, i64 %relidx_232
  store double %84, double* %newgep_233, align 8, !tbaa !27
  %87 = mul nsw i32 %77, %1
  %88 = add nsw i32 %49, %87
  %89 = sext i32 %88 to i64
  %relidx_224 = sub i64 %89, %phidx_43
  %chkrelid341 = icmp ne i64 %relidx_224, %addp12
  %chkrelid342 = icmp ne i64 %relidx_224, %addp13
  %chkrelid343 = icmp ne i64 %relidx_224, %pe6
  %chklinv344 = or i1 %chkrelid341, %chkrelid342
  %chklinv345 = or i1 %chklinv344, %chkrelid342
  %newgep_225 = getelementptr double, double* %phibase_42, i64 %relidx_224
  %90 = load double, double* %newgep_225, align 8, !tbaa !27
  %91 = fmul double %17, %90
  %92 = add nsw i32 %87, %50
  %93 = sext i32 %92 to i64
  %relidx_226 = sub i64 %93, %89
  %chkrelid349 = icmp ne i64 %relidx_226, 1
  %newgep_227 = getelementptr double, double* %newgep_225, i64 %relidx_226
  %94 = load double, double* %newgep_227, align 8, !tbaa !27
  %95 = fmul double %28, %94
  %96 = fsub double %95, %91
  %97 = add nsw i32 %51, %87
  %98 = sext i32 %97 to i64
  %relidx_228 = sub i64 %98, %93
  %chkrelid353 = icmp ne i64 %relidx_228, 1
  %newgep_229 = getelementptr double, double* %newgep_227, i64 %relidx_228
  %99 = load double, double* %newgep_229, align 8, !tbaa !27
  %100 = fmul double %17, %99
  %101 = fsub double %96, %100
  %relidx_234 = sub i64 %80, %phidx_181
  %chkrelid357 = icmp ne i64 %relidx_234, 0
  %newgep_235 = getelementptr double, double* %phibase_180, i64 %relidx_234
  %102 = load double, double* %newgep_235, align 8, !tbaa !27
  %103 = fmul double %15, %102
  %104 = fsub double %101, %103
  %105 = load double, double* %newgep_231, align 8, !tbaa !27
  %106 = fmul double %15, %105
  %107 = fadd double %16, %106
  %108 = fdiv double %104, %107
  %relidx_236 = sub i64 %86, %80
  %chkrelid361 = icmp ne i64 %relidx_236, 1
  %newgep_237 = getelementptr double, double* %newgep_235, i64 %relidx_236
  store double %108, double* %newgep_237, align 8, !tbaa !27
  %109 = add nuw nsw i64 %76, 1
  %110 = add nuw nsw i32 %77, 1
  %111 = trunc i64 %109 to i32
  %112 = icmp eq i32 %111, %21
  %newdetval334 = zext i1 %chkrelid333 to i64
  %ldolddetval335 = load i64, i64* @detectCounter
  %updetval336 = or i64 %newdetval334, %ldolddetval335
  store i64 %updetval336, i64* @detectCounter
  %newdetval338 = zext i1 %chkrelid337 to i64
  %ldolddetval339 = load i64, i64* @detectCounter
  %updetval340 = or i64 %newdetval338, %ldolddetval339
  store i64 %updetval340, i64* @detectCounter
  %newdetval346 = zext i1 %chklinv345 to i64
  %ldolddetval347 = load i64, i64* @detectCounter
  %updetval348 = or i64 %newdetval346, %ldolddetval347
  store i64 %updetval348, i64* @detectCounter
  %newdetval350 = zext i1 %chkrelid349 to i64
  %ldolddetval351 = load i64, i64* @detectCounter
  %updetval352 = or i64 %newdetval350, %ldolddetval351
  store i64 %updetval352, i64* @detectCounter
  %newdetval354 = zext i1 %chkrelid353 to i64
  %ldolddetval355 = load i64, i64* @detectCounter
  %updetval356 = or i64 %newdetval354, %ldolddetval355
  store i64 %updetval356, i64* @detectCounter
  %newdetval358 = zext i1 %chkrelid357 to i64
  %ldolddetval359 = load i64, i64* @detectCounter
  %updetval360 = or i64 %newdetval358, %ldolddetval359
  store i64 %updetval360, i64* @detectCounter
  %newdetval362 = zext i1 %chkrelid361 to i64
  %ldolddetval363 = load i64, i64* @detectCounter
  %updetval364 = or i64 %newdetval362, %ldolddetval363
  store i64 %updetval364, i64* @detectCounter
  br i1 %112, label %113, label %75

; <label>:113:                                    ; preds = %75
  %phibase_44 = phi double* [ %newgep_229, %75 ]
  %phidx_45 = phi i64 [ %98, %75 ]
  %phibase_90 = phi double* [ %phibase_88, %75 ]
  %phidx_91 = phi i64 [ %phidx_89, %75 ]
  %phibase_136 = phi double* [ %newgep_233, %75 ]
  %phidx_137 = phi i64 [ %86, %75 ]
  %phibase_182 = phi double* [ %newgep_237, %75 ]
  %phidx_183 = phi i64 [ %86, %75 ]
  %114 = add nsw i64 %40, %34
  %relidx_238 = sub i64 %114, %phidx_91
  %chkrelid365 = icmp ne i64 %relidx_238, %addp15
  %newgep_239 = getelementptr double, double* %phibase_90, i64 %relidx_238
  store double 1.000000e+00, double* %newgep_239, align 8, !tbaa !27
  %newdetval366 = zext i1 %chkrelid365 to i64
  %ldolddetval367 = load i64, i64* @detectCounter
  %updetval368 = or i64 %newdetval366, %ldolddetval367
  store i64 %updetval368, i64* @detectCounter
  br i1 %25, label %115, label %53

; <label>:115:                                    ; preds = %113
  %phibase_46 = phi double* [ %phibase_44, %113 ]
  %phidx_47 = phi i64 [ %phidx_45, %113 ]
  %phibase_92 = phi double* [ %newgep_239, %113 ]
  %phidx_93 = phi i64 [ %114, %113 ]
  %phibase_138 = phi double* [ %phibase_136, %113 ]
  %phidx_139 = phi i64 [ %phidx_137, %113 ]
  %phibase_184 = phi double* [ %phibase_182, %113 ]
  %phidx_185 = phi i64 [ %phidx_183, %113 ]
  br label %55

; <label>:116:                                    ; preds = %53
  %phibase_52 = phi double* [ %phibase_48, %53 ]
  %phidx_53 = phi i64 [ %phidx_49, %53 ]
  %phibase_98 = phi double* [ %phibase_94, %53 ]
  %phidx_99 = phi i64 [ %phidx_95, %53 ]
  %phibase_144 = phi double* [ %phibase_140, %53 ]
  %phidx_145 = phi i64 [ %phidx_141, %53 ]
  %phibase_190 = phi double* [ %phibase_186, %53 ]
  %phidx_191 = phi i64 [ %phidx_187, %53 ]
  br i1 %22, label %117, label %192

; <label>:117:                                    ; preds = %116
  %phibase_56 = phi double* [ %phibase_52, %116 ]
  %phidx_57 = phi i64 [ %phidx_53, %116 ]
  %phibase_102 = phi double* [ %phibase_98, %116 ]
  %phidx_103 = phi i64 [ %phidx_99, %116 ]
  %phibase_148 = phi double* [ %phibase_144, %116 ]
  %phidx_149 = phi i64 [ %phidx_145, %116 ]
  %phibase_194 = phi double* [ %phibase_190, %116 ]
  %phidx_195 = phi i64 [ %phidx_191, %116 ]
  br label %118

; <label>:118:                                    ; preds = %117, %133
  %119 = phi i64 [ %128, %133 ], [ 1, %117 ]
  %phibase_58 = phi double* [ %phibase_56, %117 ], [ %phibase_66, %133 ]
  %phidx_59 = phi i64 [ %phidx_57, %117 ], [ %phidx_67, %133 ]
  %phibase_104 = phi double* [ %phibase_102, %117 ], [ %phibase_112, %133 ]
  %phidx_105 = phi i64 [ %phidx_103, %117 ], [ %phidx_113, %133 ]
  %phibase_150 = phi double* [ %phibase_148, %117 ], [ %phibase_158, %133 ]
  %phidx_151 = phi i64 [ %phidx_149, %117 ], [ %phidx_159, %133 ]
  %phibase_196 = phi double* [ %phibase_194, %117 ], [ %phibase_204, %133 ]
  %phidx_197 = phi i64 [ %phidx_195, %117 ], [ %phidx_205, %133 ]
  %120 = mul nsw i64 %119, %32
  %relidx_240 = sub i64 %120, %phidx_59
  %chkrelid369 = icmp ne i64 %relidx_240, %addp16
  %chkrelid370 = icmp ne i64 %relidx_240, %addp19
  %chklinv371 = or i1 %chkrelid369, %chkrelid370
  %newgep_241 = getelementptr double, double* %phibase_58, i64 %relidx_240
  store double 1.000000e+00, double* %newgep_241, align 8, !tbaa !27
  %relidx_242 = sub i64 %120, %phidx_151
  %chkrelid375 = icmp ne i64 %relidx_242, %addp20
  %chkrelid376 = icmp ne i64 %relidx_242, %addp22
  %chklinv377 = or i1 %chkrelid375, %chkrelid376
  %newgep_243 = getelementptr double, double* %phibase_150, i64 %relidx_242
  store double 0.000000e+00, double* %newgep_243, align 8, !tbaa !27
  %121 = bitcast double* %newgep_241 to i64*
  %122 = load i64, i64* %121, align 8, !tbaa !27
  %relidx_244 = sub i64 %120, %phidx_197
  %chkrelid381 = icmp ne i64 %relidx_244, %addp23
  %chkrelid382 = icmp ne i64 %relidx_244, %addp25
  %chklinv383 = or i1 %chkrelid381, %chkrelid382
  %newgep_245 = getelementptr double, double* %phibase_196, i64 %relidx_244
  %123 = bitcast double* %newgep_245 to i64*
  store i64 %122, i64* %123, align 8, !tbaa !27
  %124 = trunc i64 %120 to i32
  %125 = add i64 %120, 4294967295
  %126 = add nsw i64 %119, -1
  %127 = mul nsw i64 %126, %32
  %128 = add nuw nsw i64 %119, 1
  %129 = mul nsw i64 %128, %32
  %130 = trunc i64 %127 to i32
  %131 = trunc i64 %129 to i32
  %newdetval372 = zext i1 %chklinv371 to i64
  %ldolddetval373 = load i64, i64* @detectCounter
  %updetval374 = or i64 %newdetval372, %ldolddetval373
  store i64 %updetval374, i64* @detectCounter
  %newdetval378 = zext i1 %chklinv377 to i64
  %ldolddetval379 = load i64, i64* @detectCounter
  %updetval380 = or i64 %newdetval378, %ldolddetval379
  store i64 %updetval380, i64* @detectCounter
  %newdetval384 = zext i1 %chklinv383 to i64
  %ldolddetval385 = load i64, i64* @detectCounter
  %updetval386 = or i64 %newdetval384, %ldolddetval385
  store i64 %updetval386, i64* @detectCounter
  br label %152

; <label>:132:                                    ; preds = %136
  %phibase_72 = phi double* [ %newgep_249, %136 ]
  %phidx_73 = phi i64 [ %140, %136 ]
  %phibase_118 = phi double* [ %phibase_114, %136 ]
  %phidx_119 = phi i64 [ %phidx_115, %136 ]
  %phibase_164 = phi double* [ %newgep_251, %136 ]
  %phidx_165 = phi i64 [ %140, %136 ]
  %phibase_210 = phi double* [ %newgep_253, %136 ]
  %phidx_211 = phi i64 [ %140, %136 ]
  br label %133

; <label>:133:                                    ; preds = %132, %187
  %phibase_66 = phi double* [ %phibase_72, %132 ], [ %newgep_269, %187 ]
  %phidx_67 = phi i64 [ %phidx_73, %132 ], [ %188, %187 ]
  %phibase_112 = phi double* [ %phibase_118, %132 ], [ %phibase_108, %187 ]
  %phidx_113 = phi i64 [ %phidx_119, %132 ], [ %phidx_109, %187 ]
  %phibase_158 = phi double* [ %phibase_164, %132 ], [ %phibase_154, %187 ]
  %phidx_159 = phi i64 [ %phidx_165, %132 ], [ %phidx_155, %187 ]
  %phibase_204 = phi double* [ %phibase_210, %132 ], [ %phibase_200, %187 ]
  %phidx_205 = phi i64 [ %phidx_211, %132 ], [ %phidx_201, %187 ]
  %134 = trunc i64 %128 to i32
  %135 = icmp eq i32 %134, %21
  br i1 %135, label %191, label %118

; <label>:136:                                    ; preds = %189, %136
  %137 = phi i64 [ %33, %189 ], [ %151, %136 ]
  %138 = phi i32 [ %24, %189 ], [ %149, %136 ]
  %phibase_68 = phi double* [ %phibase_64, %189 ], [ %newgep_249, %136 ]
  %phidx_69 = phi i64 [ %phidx_65, %189 ], [ %140, %136 ]
  %phibase_114 = phi double* [ %phibase_110, %189 ], [ %phibase_114, %136 ]
  %phidx_115 = phi i64 [ %phidx_111, %189 ], [ %phidx_115, %136 ]
  %phibase_160 = phi double* [ %phibase_156, %189 ], [ %newgep_251, %136 ]
  %phidx_161 = phi i64 [ %phidx_157, %189 ], [ %140, %136 ]
  %phibase_206 = phi double* [ %phibase_202, %189 ], [ %newgep_253, %136 ]
  %phidx_207 = phi i64 [ %phidx_203, %189 ], [ %140, %136 ]
  %139 = add nsw i32 %138, %124
  %140 = sext i32 %139 to i64
  %relidx_250 = sub i64 %140, %phidx_161
  %chkrelid387 = icmp ne i64 %relidx_250, -1
  %chkrelid388 = icmp ne i64 %relidx_250, 0
  %chklinv389 = or i1 %chkrelid387, %chkrelid388
  %newgep_251 = getelementptr double, double* %phibase_160, i64 %relidx_250
  %141 = load double, double* %newgep_251, align 8, !tbaa !27
  %142 = add i64 %190, %137
  %143 = shl i64 %142, 32
  %144 = ashr exact i64 %143, 32
  %relidx_246 = sub i64 %144, %phidx_69
  %chkrelid393 = icmp ne i64 %relidx_246, 0
  %newgep_247 = getelementptr double, double* %phibase_68, i64 %relidx_246
  %145 = load double, double* %newgep_247, align 8, !tbaa !27
  %146 = fmul double %141, %145
  %relidx_252 = sub i64 %140, %phidx_207
  %chkrelid397 = icmp ne i64 %relidx_252, -1
  %chkrelid398 = icmp ne i64 %relidx_252, 0
  %chklinv399 = or i1 %chkrelid397, %chkrelid398
  %newgep_253 = getelementptr double, double* %phibase_206, i64 %relidx_252
  %147 = load double, double* %newgep_253, align 8, !tbaa !27
  %148 = fadd double %146, %147
  %relidx_248 = sub i64 %140, %144
  %chkrelid403 = icmp ne i64 %relidx_248, -1
  %newgep_249 = getelementptr double, double* %newgep_247, i64 %relidx_248
  store double %148, double* %newgep_249, align 8, !tbaa !27
  %149 = add nsw i32 %138, -1
  %150 = icmp sgt i64 %137, 1
  %151 = add nsw i64 %137, -1
  %newdetval390 = zext i1 %chklinv389 to i64
  %ldolddetval391 = load i64, i64* @detectCounter
  %updetval392 = or i64 %newdetval390, %ldolddetval391
  store i64 %updetval392, i64* @detectCounter
  %newdetval394 = zext i1 %chkrelid393 to i64
  %ldolddetval395 = load i64, i64* @detectCounter
  %updetval396 = or i64 %newdetval394, %ldolddetval395
  store i64 %updetval396, i64* @detectCounter
  %newdetval400 = zext i1 %chklinv399 to i64
  %ldolddetval401 = load i64, i64* @detectCounter
  %updetval402 = or i64 %newdetval400, %ldolddetval401
  store i64 %updetval402, i64* @detectCounter
  %newdetval404 = zext i1 %chkrelid403 to i64
  %ldolddetval405 = load i64, i64* @detectCounter
  %updetval406 = or i64 %newdetval404, %ldolddetval405
  store i64 %updetval406, i64* @detectCounter
  br i1 %150, label %136, label %132

; <label>:152:                                    ; preds = %152, %118
  %153 = phi i64 [ 1, %118 ], [ %183, %152 ]
  %154 = phi i32 [ 1, %118 ], [ %184, %152 ]
  %phibase_60 = phi double* [ %phibase_60, %152 ], [ %newgep_241, %118 ]
  %phidx_61 = phi i64 [ %phidx_61, %152 ], [ %120, %118 ]
  %phibase_106 = phi double* [ %newgep_259, %152 ], [ %phibase_104, %118 ]
  %phidx_107 = phi i64 [ %172, %152 ], [ %phidx_105, %118 ]
  %phibase_152 = phi double* [ %newgep_263, %152 ], [ %newgep_243, %118 ]
  %phidx_153 = phi i64 [ %163, %152 ], [ %120, %118 ]
  %phibase_198 = phi double* [ %newgep_267, %152 ], [ %newgep_245, %118 ]
  %phidx_199 = phi i64 [ %163, %152 ], [ %120, %118 ]
  %155 = add i64 %125, %153
  %156 = shl i64 %155, 32
  %157 = ashr exact i64 %156, 32
  %relidx_260 = sub i64 %157, %phidx_153
  %chkrelid407 = icmp ne i64 %relidx_260, 0
  %newgep_261 = getelementptr double, double* %phibase_152, i64 %relidx_260
  %158 = load double, double* %newgep_261, align 8, !tbaa !27
  %159 = fmul double %17, %158
  %160 = fadd double %18, %159
  %161 = fdiv double %29, %160
  %162 = add nsw i32 %154, %124
  %163 = sext i32 %162 to i64
  %relidx_262 = sub i64 %163, %157
  %chkrelid411 = icmp ne i64 %relidx_262, 1
  %newgep_263 = getelementptr double, double* %newgep_261, i64 %relidx_262
  store double %161, double* %newgep_263, align 8, !tbaa !27
  %164 = add nsw i32 %154, %130
  %165 = sext i32 %164 to i64
  %relidx_254 = sub i64 %165, %phidx_107
  %chkrelid415 = icmp ne i64 %relidx_254, %addp27
  %chkrelid416 = icmp ne i64 %relidx_254, %addp28
  %chklinv417 = or i1 %chkrelid415, %chkrelid416
  %newgep_255 = getelementptr double, double* %phibase_106, i64 %relidx_254
  %166 = load double, double* %newgep_255, align 8, !tbaa !27
  %167 = fmul double %15, %166
  %relidx_256 = sub i64 %163, %165
  %chkrelid421 = icmp ne i64 %relidx_256, %pe6
  %newgep_257 = getelementptr double, double* %newgep_255, i64 %relidx_256
  %168 = load double, double* %newgep_257, align 8, !tbaa !27
  %169 = fmul double %31, %168
  %170 = fsub double %169, %167
  %171 = add nsw i32 %154, %131
  %172 = sext i32 %171 to i64
  %relidx_258 = sub i64 %172, %163
  %chkrelid425 = icmp ne i64 %relidx_258, %pe6
  %newgep_259 = getelementptr double, double* %newgep_257, i64 %relidx_258
  %173 = load double, double* %newgep_259, align 8, !tbaa !27
  %174 = fmul double %15, %173
  %175 = fsub double %170, %174
  %relidx_264 = sub i64 %157, %phidx_199
  %chkrelid429 = icmp ne i64 %relidx_264, 0
  %newgep_265 = getelementptr double, double* %phibase_198, i64 %relidx_264
  %176 = load double, double* %newgep_265, align 8, !tbaa !27
  %177 = fmul double %17, %176
  %178 = fsub double %175, %177
  %179 = load double, double* %newgep_261, align 8, !tbaa !27
  %180 = fmul double %17, %179
  %181 = fadd double %18, %180
  %182 = fdiv double %178, %181
  %relidx_266 = sub i64 %163, %157
  %chkrelid433 = icmp ne i64 %relidx_266, 1
  %newgep_267 = getelementptr double, double* %newgep_265, i64 %relidx_266
  store double %182, double* %newgep_267, align 8, !tbaa !27
  %183 = add nuw nsw i64 %153, 1
  %184 = add nuw nsw i32 %154, 1
  %185 = trunc i64 %183 to i32
  %186 = icmp eq i32 %185, %21
  %newdetval408 = zext i1 %chkrelid407 to i64
  %ldolddetval409 = load i64, i64* @detectCounter
  %updetval410 = or i64 %newdetval408, %ldolddetval409
  store i64 %updetval410, i64* @detectCounter
  %newdetval412 = zext i1 %chkrelid411 to i64
  %ldolddetval413 = load i64, i64* @detectCounter
  %updetval414 = or i64 %newdetval412, %ldolddetval413
  store i64 %updetval414, i64* @detectCounter
  %newdetval418 = zext i1 %chklinv417 to i64
  %ldolddetval419 = load i64, i64* @detectCounter
  %updetval420 = or i64 %newdetval418, %ldolddetval419
  store i64 %updetval420, i64* @detectCounter
  %newdetval422 = zext i1 %chkrelid421 to i64
  %ldolddetval423 = load i64, i64* @detectCounter
  %updetval424 = or i64 %newdetval422, %ldolddetval423
  store i64 %updetval424, i64* @detectCounter
  %newdetval426 = zext i1 %chkrelid425 to i64
  %ldolddetval427 = load i64, i64* @detectCounter
  %updetval428 = or i64 %newdetval426, %ldolddetval427
  store i64 %updetval428, i64* @detectCounter
  %newdetval430 = zext i1 %chkrelid429 to i64
  %ldolddetval431 = load i64, i64* @detectCounter
  %updetval432 = or i64 %newdetval430, %ldolddetval431
  store i64 %updetval432, i64* @detectCounter
  %newdetval434 = zext i1 %chkrelid433 to i64
  %ldolddetval435 = load i64, i64* @detectCounter
  %updetval436 = or i64 %newdetval434, %ldolddetval435
  store i64 %updetval436, i64* @detectCounter
  br i1 %186, label %187, label %152

; <label>:187:                                    ; preds = %152
  %phibase_62 = phi double* [ %phibase_60, %152 ]
  %phidx_63 = phi i64 [ %phidx_61, %152 ]
  %phibase_108 = phi double* [ %newgep_259, %152 ]
  %phidx_109 = phi i64 [ %172, %152 ]
  %phibase_154 = phi double* [ %newgep_263, %152 ]
  %phidx_155 = phi i64 [ %163, %152 ]
  %phibase_200 = phi double* [ %newgep_267, %152 ]
  %phidx_201 = phi i64 [ %163, %152 ]
  %188 = add nsw i64 %120, %35
  %relidx_268 = sub i64 %188, %phidx_63
  %chkrelid437 = icmp ne i64 %relidx_268, %addp29
  %newgep_269 = getelementptr double, double* %phibase_62, i64 %relidx_268
  store double 1.000000e+00, double* %newgep_269, align 8, !tbaa !27
  %newdetval438 = zext i1 %chkrelid437 to i64
  %ldolddetval439 = load i64, i64* @detectCounter
  %updetval440 = or i64 %newdetval438, %ldolddetval439
  store i64 %updetval440, i64* @detectCounter
  br i1 %25, label %189, label %133

; <label>:189:                                    ; preds = %187
  %phibase_64 = phi double* [ %newgep_269, %187 ]
  %phidx_65 = phi i64 [ %188, %187 ]
  %phibase_110 = phi double* [ %phibase_108, %187 ]
  %phidx_111 = phi i64 [ %phidx_109, %187 ]
  %phibase_156 = phi double* [ %phibase_154, %187 ]
  %phidx_157 = phi i64 [ %phidx_155, %187 ]
  %phibase_202 = phi double* [ %phibase_200, %187 ]
  %phidx_203 = phi i64 [ %phidx_201, %187 ]
  %190 = add i64 %120, 1
  br label %136

; <label>:191:                                    ; preds = %133
  %phibase_70 = phi double* [ %phibase_66, %133 ]
  %phidx_71 = phi i64 [ %phidx_67, %133 ]
  %phibase_116 = phi double* [ %phibase_112, %133 ]
  %phidx_117 = phi i64 [ %phidx_113, %133 ]
  %phibase_162 = phi double* [ %phibase_158, %133 ]
  %phidx_163 = phi i64 [ %phidx_159, %133 ]
  %phibase_208 = phi double* [ %phibase_204, %133 ]
  %phidx_209 = phi i64 [ %phidx_205, %133 ]
  br label %192

; <label>:192:                                    ; preds = %191, %36, %116
  %phibase_36 = phi double* [ %phibase_70, %191 ], [ %phibase_32, %36 ], [ %phibase_52, %116 ]
  %phidx_37 = phi i64 [ %phidx_71, %191 ], [ %phidx_33, %36 ], [ %phidx_53, %116 ]
  %phibase_82 = phi double* [ %phibase_116, %191 ], [ %phibase_78, %36 ], [ %phibase_98, %116 ]
  %phidx_83 = phi i64 [ %phidx_117, %191 ], [ %phidx_79, %36 ], [ %phidx_99, %116 ]
  %phibase_128 = phi double* [ %phibase_162, %191 ], [ %phibase_124, %36 ], [ %phibase_144, %116 ]
  %phidx_129 = phi i64 [ %phidx_163, %191 ], [ %phidx_125, %36 ], [ %phidx_145, %116 ]
  %phibase_174 = phi double* [ %phibase_208, %191 ], [ %phibase_170, %36 ], [ %phibase_190, %116 ]
  %phidx_175 = phi i64 [ %phidx_209, %191 ], [ %phidx_171, %36 ], [ %phidx_191, %116 ]
  %193 = add nuw nsw i32 %37, 1
  %194 = icmp eq i32 %37, %0
  br i1 %194, label %195, label %36

; <label>:195:                                    ; preds = %192
  %phibase_40 = phi double* [ %phibase_36, %192 ]
  %phidx_41 = phi i64 [ %phidx_37, %192 ]
  %phibase_86 = phi double* [ %phibase_82, %192 ]
  %phidx_87 = phi i64 [ %phidx_83, %192 ]
  %phibase_132 = phi double* [ %phibase_128, %192 ]
  %phidx_133 = phi i64 [ %phidx_129, %192 ]
  %phibase_178 = phi double* [ %phibase_174, %192 ]
  %phidx_179 = phi i64 [ %phidx_175, %192 ]
  br label %196

; <label>:196:                                    ; preds = %195, %6
  %phibase_ = phi double* [ %phibase_40, %195 ], [ %2, %6 ]
  %phidx_ = phi i64 [ %phidx_41, %195 ], [ 0, %6 ]
  %phibase_74 = phi double* [ %phibase_86, %195 ], [ %3, %6 ]
  %phidx_75 = phi i64 [ %phidx_87, %195 ], [ 0, %6 ]
  %phibase_120 = phi double* [ %phibase_132, %195 ], [ %4, %6 ]
  %phidx_121 = phi i64 [ %phidx_133, %195 ], [ 0, %6 ]
  %phibase_166 = phi double* [ %phibase_178, %195 ], [ %5, %6 ]
  %phidx_167 = phi i64 [ %phidx_179, %195 ], [ 0, %6 ]
  %duprsltadr_ = getelementptr double, double* %2, i64 %phidx_
  %castadr1 = ptrtoint double* %phibase_ to i64
  %castadr2 = ptrtoint double* %duprsltadr_ to i64
  %cmpopdet = icmp ne i64 %castadr1, %castadr2
  %newdetval = zext i1 %cmpopdet to i64
  %ldolddetval = load i64, i64* @detectCounter
  %updetval = or i64 %newdetval, %ldolddetval
  store i64 %updetval, i64* @detectCounter
  %duprsltadr_270 = getelementptr double, double* %3, i64 %phidx_75
  %castadr1271 = ptrtoint double* %phibase_74 to i64
  %castadr2272 = ptrtoint double* %duprsltadr_270 to i64
  %cmpopdet273 = icmp ne i64 %castadr1271, %castadr2272
  %newdetval274 = zext i1 %cmpopdet273 to i64
  %ldolddetval275 = load i64, i64* @detectCounter
  %updetval276 = or i64 %newdetval274, %ldolddetval275
  store i64 %updetval276, i64* @detectCounter
  %duprsltadr_277 = getelementptr double, double* %4, i64 %phidx_121
  %castadr1278 = ptrtoint double* %phibase_120 to i64
  %castadr2279 = ptrtoint double* %duprsltadr_277 to i64
  %cmpopdet280 = icmp ne i64 %castadr1278, %castadr2279
  %newdetval281 = zext i1 %cmpopdet280 to i64
  %ldolddetval282 = load i64, i64* @detectCounter
  %updetval283 = or i64 %newdetval281, %ldolddetval282
  store i64 %updetval283, i64* @detectCounter
  %duprsltadr_284 = getelementptr double, double* %5, i64 %phidx_167
  %castadr1285 = ptrtoint double* %phibase_166 to i64
  %castadr2286 = ptrtoint double* %duprsltadr_284 to i64
  %cmpopdet287 = icmp ne i64 %castadr1285, %castadr2286
  %newdetval288 = zext i1 %cmpopdet287 to i64
  %ldolddetval289 = load i64, i64* @detectCounter
  %updetval290 = or i64 %newdetval288, %ldolddetval289
  store i64 %updetval290, i64* @detectCounter
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noinline norecurse nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noinline norecurse nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0}

!0 = !{!"clang version 3.9.0 (trunk 266339) (llvm/trunk 266338)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long long", !3, i64 0}
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
!28 = !{!"double", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !29, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !29, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"long long", !29, i64 0}
!37 = !{!38, !39, i64 0}
!38 = !{!"timeval", !39, i64 0, !39, i64 8}
!39 = !{!"long", !29, i64 0}
!40 = !{!38, !39, i64 8}
