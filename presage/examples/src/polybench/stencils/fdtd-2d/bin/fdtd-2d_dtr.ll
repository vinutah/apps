; ModuleID = 'fdtd-2d_dtr.bc'
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
@.str.48 = private unnamed_addr constant [78 x i8] c"\0AINFO: Gep id %lld has actual rel id is %lld where as computed rel id is %lld\00", align 1
@.str.1.49 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2.50 = private unnamed_addr constant [27 x i8] c"MAX_UNIQUE_COUNT_EXCEEDED\0A\00", align 1
@.str.3.51 = private unnamed_addr constant [9 x i8] c"%u:%lld \00", align 1
@.str.4.52 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.5.53 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.6.54 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.7.55 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str.5 = private unnamed_addr constant [33 x i8] c"\0AERROR: Insufficient Arguments!\0A\00"
@.str.1.56 = private unnamed_addr constant [53 x i8] c"Total time taken to execute the kernel: %lf seconds\0A\00", align 1
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
define void @_Z8psgRelidxxx(i64, i64, i64) #0 {
  %4 = icmp eq i64 %1, %2
  br i1 %4, label %7, label %5

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.48, i64 0, i64 0), i64 %0, i64 %1, i64 %2)
  br label %7

; <label>:7:                                      ; preds = %3, %5
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
  %20 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.49, i64 0, i64 0))
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2.50, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %20)
  br label %62

; <label>:22:                                     ; preds = %13, %66, %72, %78, %84, %90, %96, %102, %108, %114, %120, %126, %132, %138, %144, %150, %156, %162, %168, %174
  %23 = phi i64* [ %10, %13 ], [ %16, %66 ], [ %69, %72 ], [ %75, %78 ], [ %81, %84 ], [ %87, %90 ], [ %93, %96 ], [ %99, %102 ], [ %105, %108 ], [ %111, %114 ], [ %117, %120 ], [ %123, %126 ], [ %129, %132 ], [ %135, %138 ], [ %141, %144 ], [ %147, %150 ], [ %153, %156 ], [ %159, %162 ], [ %165, %168 ], [ %171, %174 ]
  %24 = phi i32 [ 0, %13 ], [ 1, %66 ], [ 2, %72 ], [ 3, %78 ], [ 4, %84 ], [ 5, %90 ], [ 6, %96 ], [ 7, %102 ], [ 8, %108 ], [ 9, %114 ], [ 10, %120 ], [ 11, %126 ], [ 12, %132 ], [ 13, %138 ], [ 14, %144 ], [ 15, %150 ], [ 16, %156 ], [ 17, %162 ], [ 18, %168 ], [ 19, %174 ]
  store i64 %1, i64* %23, align 8, !tbaa !5
  %25 = tail call %struct._IO_FILE* @fopen(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.49, i64 0, i64 0))
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds [512 x [20 x i64]], [512 x [20 x i64]]* @prf_data, i64 0, i64 %0, i64 %26
  %28 = load i64, i64* %27, align 8, !tbaa !5
  %29 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3.51, i64 0, i64 0), i32 %24, i64 %28)
  %30 = load i32, i32* @dimcount, align 4, !tbaa !1
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %22
  %33 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.52, i64 0, i64 0), i32 %30)
  br label %36

; <label>:34:                                     ; preds = %22
  %35 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5.53, i64 0, i64 0), i32 %30)
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
  %49 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.54, i64 0, i64 0), i32 %48)
  br label %57

; <label>:50:                                     ; preds = %40
  %51 = icmp eq i32 %42, %43
  br i1 %51, label %52, label %57

; <label>:52:                                     ; preds = %50
  %53 = zext i32 %42 to i64
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* @psgdim, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !1
  %56 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7.55, i64 0, i64 0), i32 %55)
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
  %7 = icmp slt i32 %0, 4
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %2
  %9 = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.5, i64 0, i64 0))
  tail call void @exit(i32 -1) #11
  unreachable

; <label>:10:                                     ; preds = %2
  %11 = getelementptr inbounds i8*, i8** %1, i64 1
  %12 = load i8*, i8** %11, align 8, !tbaa !31
  %13 = tail call i32 @atoi(i8* %12) #13
  %14 = getelementptr inbounds i8*, i8** %1, i64 2
  %15 = load i8*, i8** %14, align 8, !tbaa !31
  %16 = tail call i32 @atoi(i8* %15) #13
  %17 = getelementptr inbounds i8*, i8** %1, i64 3
  %18 = load i8*, i8** %17, align 8, !tbaa !31
  %19 = tail call i32 @atoi(i8* %18) #13
  store i32 3, i32* @dimcount, align 4, !tbaa !33
  store i32 %13, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @psgdim, i64 0, i64 0), align 4, !tbaa !33
  store i32 %16, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @psgdim, i64 0, i64 1), align 4, !tbaa !33
  store i32 %19, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @psgdim, i64 0, i64 2), align 4, !tbaa !33
  %20 = sext i32 %13 to i64
  store i64 %20, i64* @dim0, align 8, !tbaa !35
  %21 = sext i32 %16 to i64
  store i64 %21, i64* @dim1, align 8, !tbaa !35
  %22 = sext i32 %19 to i64
  store i64 %22, i64* @dim2, align 8, !tbaa !35
  %23 = mul nsw i32 %16, %13
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 3
  %26 = tail call noalias i8* @malloc(i64 %25) #6
  %27 = bitcast i8* %26 to double*
  %28 = tail call noalias i8* @malloc(i64 %25) #6
  %29 = bitcast i8* %28 to double*
  %30 = tail call noalias i8* @malloc(i64 %25) #6
  %31 = bitcast i8* %30 to double*
  %32 = shl nsw i64 %22, 3
  %33 = tail call noalias i8* @malloc(i64 %32) #6
  %34 = bitcast i8* %33 to double*
  %35 = ptrtoint i8* %26 to i64
  %36 = add nsw i32 %23, -1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %27, i64 %37
  %39 = ptrtoint double* %38 to i64
  tail call void @psgProtect(double* %27, i64 %35, i64 %39) #6
  %40 = ptrtoint i8* %28 to i64
  %41 = getelementptr inbounds double, double* %29, i64 %37
  %42 = ptrtoint double* %41 to i64
  tail call void @psgProtect(double* %29, i64 %40, i64 %42) #6
  %43 = ptrtoint i8* %30 to i64
  %44 = getelementptr inbounds double, double* %31, i64 %37
  %45 = ptrtoint double* %44 to i64
  tail call void @psgProtect(double* %31, i64 %43, i64 %45) #6
  %46 = ptrtoint i8* %33 to i64
  %47 = add nsw i32 %19, -1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %34, i64 %48
  %50 = ptrtoint double* %49 to i64
  tail call void @psgProtect(double* %34, i64 %46, i64 %50) #6
  tail call fastcc void @init_array(i32 %19, i32 %13, i32 %16, double* %27, double* %29, double* %31, double* %34)
  %51 = call i32 @gettimeofday(%struct.timeval* nonnull %3, %struct.timezone* null) #6
  tail call fastcc void @kernel_fdtd_2d(i32 %19, i32 %13, i32 %16, double* %27, double* %29, double* %31, double* %34)
  %52 = call i32 @gettimeofday(%struct.timeval* nonnull %4, %struct.timezone* null) #6
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 0
  %54 = load i64, i64* %53, align 8, !tbaa !37
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i64 0, i32 1
  %56 = load i64, i64* %55, align 8, !tbaa !40
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 0
  %58 = load i64, i64* %57, align 8, !tbaa !37
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i64 0, i32 1
  %60 = load i64, i64* %59, align 8, !tbaa !40
  %61 = sub i64 %54, %58
  %62 = mul i64 %61, 1000000
  %63 = sub i64 %56, %60
  %64 = add i64 %63, %62
  %65 = sitofp i64 %64 to double
  %66 = fdiv double %65, 1.000000e+06
  %67 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1.56, i64 0, i64 0), double %66)
  %68 = icmp eq i32 %0, 5
  br i1 %68, label %69, label %75

; <label>:69:                                     ; preds = %10
  %70 = getelementptr inbounds i8*, i8** %1, i64 4
  %71 = load i8*, i8** %70, align 8, !tbaa !31
  tail call void @print_data_2d(i32 %13, i32 %16, double* %27, i8* %71, i32 1) #6
  %72 = load i8*, i8** %70, align 8, !tbaa !31
  tail call void @print_data_2d(i32 %13, i32 %16, double* %29, i8* %72, i32 0) #6
  %73 = load i8*, i8** %70, align 8, !tbaa !31
  tail call void @print_data_2d(i32 %13, i32 %16, double* %31, i8* %73, i32 0) #6
  %74 = load i8*, i8** %70, align 8, !tbaa !31
  tail call void @print_data_1d(i32 %19, double* %34, i8* %74, i32 0) #6
  br label %85

; <label>:75:                                     ; preds = %10
  %76 = icmp sgt i32 %0, 5
  br i1 %76, label %77, label %85

; <label>:77:                                     ; preds = %75
  %78 = getelementptr inbounds i8*, i8** %1, i64 5
  %79 = load i8*, i8** %78, align 8, !tbaa !31
  tail call void @writeOVRData(i8* %79, double %66, i32 0) #6
  %80 = icmp sgt i32 %0, 6
  br i1 %80, label %81, label %85

; <label>:81:                                     ; preds = %77
  %82 = getelementptr inbounds i8*, i8** %1, i64 6
  %83 = load i8*, i8** %82, align 8, !tbaa !31
  %84 = load i64, i64* @detectCounter, align 8, !tbaa !35
  tail call void @writeFPRData(i8* %83, i64 %84, i32 0) #6
  br label %85

; <label>:85:                                     ; preds = %75, %69, %81, %77
  %86 = load i64, i64* @detectCounter, align 8, !tbaa !35
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %90, label %88

; <label>:88:                                     ; preds = %85
  %89 = tail call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @str.4, i64 0, i64 0))
  br label %92

; <label>:90:                                     ; preds = %85
  %91 = tail call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @str, i64 0, i64 0))
  br label %92

; <label>:92:                                     ; preds = %90, %88
  tail call void @free(i8* %26) #6
  tail call void @free(i8* %28) #6
  tail call void @free(i8* %30) #6
  tail call void @free(i8* %33) #6
  call void @llvm.lifetime.end(i64 16, i8* %6) #6
  call void @llvm.lifetime.end(i64 16, i8* %5) #6
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @init_array(i32, i32, i32, double* nocapture, double* nocapture, double* nocapture, double* nocapture) unnamed_addr #0 {
  tail call void @srand(i32 0) #6
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %7
  br label %39

; <label>:10:                                     ; preds = %39
  br label %11

; <label>:11:                                     ; preds = %10, %7
  %12 = icmp sgt i32 %1, 0
  %13 = icmp sgt i32 %2, 0
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %48

; <label>:15:                                     ; preds = %11
  %16 = sext i32 %2 to i64
  br label %17

; <label>:17:                                     ; preds = %35, %15
  %18 = phi i64 [ 0, %15 ], [ %36, %35 ]
  %19 = mul nsw i64 %18, %16
  br label %20

; <label>:20:                                     ; preds = %20, %17
  %21 = phi i64 [ 0, %17 ], [ %32, %20 ]
  %22 = tail call i32 @rand() #6
  %23 = sitofp i32 %22 to double
  %24 = add nsw i64 %21, %19
  %25 = getelementptr inbounds double, double* %3, i64 %24
  store double %23, double* %25, align 8, !tbaa !27
  %26 = tail call i32 @rand() #6
  %27 = sitofp i32 %26 to double
  %28 = getelementptr inbounds double, double* %4, i64 %24
  store double %27, double* %28, align 8, !tbaa !27
  %29 = tail call i32 @rand() #6
  %30 = sitofp i32 %29 to double
  %31 = getelementptr inbounds double, double* %5, i64 %24
  store double %30, double* %31, align 8, !tbaa !27
  %32 = add nuw nsw i64 %21, 1
  %33 = trunc i64 %32 to i32
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %35, label %20

; <label>:35:                                     ; preds = %20
  %36 = add nuw nsw i64 %18, 1
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i32 %37, %1
  br i1 %38, label %47, label %17

; <label>:39:                                     ; preds = %9, %39
  %40 = phi i64 [ %44, %39 ], [ 0, %9 ]
  %41 = tail call i32 @rand() #6
  %42 = sitofp i32 %41 to double
  %43 = getelementptr inbounds double, double* %6, i64 %40
  store double %42, double* %43, align 8, !tbaa !27
  %44 = add nuw nsw i64 %40, 1
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %45, %0
  br i1 %46, label %10, label %39

; <label>:47:                                     ; preds = %35
  br label %48

; <label>:48:                                     ; preds = %47, %11
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal fastcc void @kernel_fdtd_2d(i32, i32, i32, double* nocapture, double* nocapture, double* nocapture, double* nocapture readonly) unnamed_addr #9 {
  %dim0_ = load i64, i64* @dim0
  %dim0_sqr_ = mul i64 %dim0_, %dim0_
  %dim0_cub_ = mul i64 %dim0_sqr_, %dim0_
  %dim1_ = load i64, i64* @dim1
  %dim1_sqr_ = mul i64 %dim1_, %dim1_
  %dim1_cub_ = mul i64 %dim1_sqr_, %dim1_
  %dim2_ = load i64, i64* @dim2
  %dim2_sqr_ = mul i64 %dim2_, %dim2_
  %dim2_cub_ = mul i64 %dim2_sqr_, %dim2_
  %8 = icmp sgt i32 %0, 0
  %pe = mul i64 1, %dim1_
  %addp = add i64 %pe, -2
  %addp1 = add i64 %pe, -1
  %addp2 = add i64 %pe, -1
  %addp3 = add i64 %pe, -1
  %addp4 = add i64 %pe, -1
  %pe5 = mul i64 -1, %dim1_
  %addp6 = add i64 %pe5, 1
  %addp7 = add i64 %pe5, 1
  %addp8 = add i64 %pe, 4
  %addp9 = add i64 %pe, 4
  %addp10 = add i64 %pe, 1
  %addp11 = add i64 %pe, -2
  %addp12 = add i64 %pe, -2
  %addp13 = add i64 %pe5, 3
  %addp14 = add i64 %pe, -2
  %addp15 = add i64 %pe, -2
  %addp16 = add i64 %pe5, 2
  %addp17 = add i64 %pe5, 2
  %addp18 = add i64 %pe, 2
  %addp19 = add i64 %pe, 2
  br i1 %8, label %9, label %431

; <label>:9:                                      ; preds = %7
  %phibase_ = phi double* [ %3, %7 ]
  %phidx_ = phi i64 [ 0, %7 ]
  %phibase_158 = phi double* [ %4, %7 ]
  %phidx_159 = phi i64 [ 0, %7 ]
  %phibase_298 = phi double* [ %5, %7 ]
  %phidx_299 = phi i64 [ 0, %7 ]
  %phibase_438 = phi double* [ %6, %7 ]
  %phidx_439 = phi i64 [ 0, %7 ]
  %10 = icmp sgt i32 %2, 0
  %11 = icmp sgt i32 %1, 1
  %12 = icmp sgt i32 %2, 1
  %13 = add nsw i32 %1, -1
  %14 = add nsw i32 %2, -1
  %15 = sext i32 %2 to i64
  %16 = add i32 %2, -2
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %17, 1
  %19 = zext i32 %16 to i64
  %20 = zext i32 %2 to i64
  %relidx_ = sub i64 %19, %phidx_
  %newgep_ = getelementptr double, double* %phibase_, i64 %relidx_
  %21 = add nsw i64 %15, %19
  %22 = zext i32 %14 to i64
  %23 = add nuw nsw i64 %22, 1
  %24 = zext i32 %14 to i64
  %25 = add nsw i64 %15, %24
  %26 = zext i32 %14 to i64
  %27 = add nuw nsw i64 %26, 1
  %28 = zext i32 %14 to i64
  %relidx_578 = sub i64 %28, %phidx_159
  %newgep_579 = getelementptr double, double* %phibase_158, i64 %relidx_578
  %29 = and i64 %27, 8589934588
  %30 = add nsw i64 %29, -4
  %31 = lshr exact i64 %30, 2
  %32 = add nuw nsw i64 %31, 1
  %33 = add i32 %2, 1
  %34 = add i32 %2, 1
  %35 = icmp ult i64 %27, 4
  %36 = and i64 %27, 8589934588
  %37 = icmp eq i64 %36, 0
  %38 = and i64 %32, 1
  %39 = icmp eq i64 %32, %38
  %40 = sub nsw i64 %32, %38
  %41 = icmp eq i64 %38, 0
  %42 = icmp eq i64 %27, %36
  %43 = and i1 %11, %10
  %44 = icmp ult i64 %23, 4
  %45 = and i64 %23, 8589934588
  %46 = icmp eq i64 %45, 0
  %47 = icmp eq i64 %23, %45
  %48 = icmp slt i32 %1, 1
  %49 = xor i1 %12, true
  %50 = or i1 %48, %49
  %51 = and i1 %11, %12
  %52 = icmp ult i64 %18, 2
  %53 = and i64 %18, 8589934590
  %54 = icmp eq i64 %53, 0
  %55 = trunc i64 %53 to i32
  %56 = icmp eq i64 %18, %53
  %57 = and i32 %14, 1
  %58 = icmp eq i32 %14, %57
  %59 = sub i32 %14, %57
  %60 = icmp eq i32 %57, 0
  br label %61

; <label>:61:                                     ; preds = %426, %9
  %62 = phi i64 [ 0, %9 ], [ %427, %426 ]
  %phibase_22 = phi double* [ %phibase_62, %426 ], [ %newgep_, %9 ]
  %phidx_23 = phi i64 [ %phidx_63, %426 ], [ %19, %9 ]
  %phibase_162 = phi double* [ %phibase_202, %426 ], [ %newgep_579, %9 ]
  %phidx_163 = phi i64 [ %phidx_203, %426 ], [ %28, %9 ]
  %phibase_302 = phi double* [ %phibase_342, %426 ], [ %phibase_298, %9 ]
  %phidx_303 = phi i64 [ %phidx_343, %426 ], [ %phidx_299, %9 ]
  %phibase_442 = phi double* [ %phibase_482, %426 ], [ %phibase_438, %9 ]
  %phidx_443 = phi i64 [ %phidx_483, %426 ], [ %phidx_439, %9 ]
  br i1 %10, label %63, label %136

; <label>:63:                                     ; preds = %61
  %phibase_24 = phi double* [ %phibase_22, %61 ]
  %phidx_25 = phi i64 [ %phidx_23, %61 ]
  %phibase_164 = phi double* [ %phibase_162, %61 ]
  %phidx_165 = phi i64 [ %phidx_163, %61 ]
  %phibase_304 = phi double* [ %phibase_302, %61 ]
  %phidx_305 = phi i64 [ %phidx_303, %61 ]
  %phibase_444 = phi double* [ %phibase_442, %61 ]
  %phidx_445 = phi i64 [ %phidx_443, %61 ]
  %relidx_580 = sub i64 %62, %phidx_445
  %chkrelid = icmp ne i64 %relidx_580, 1
  %chkrelid723 = icmp ne i64 %relidx_580, 0
  %chklinv = and i1 %chkrelid, %chkrelid723
  %newgep_581 = getelementptr double, double* %phibase_444, i64 %relidx_580
  %64 = bitcast double* %newgep_581 to i64*
  %newdetval724 = zext i1 %chklinv to i64
  %ldolddetval725 = load i64, i64* @detectCounter
  %updetval726 = or i64 %newdetval724, %ldolddetval725
  store i64 %updetval726, i64* @detectCounter
  br i1 %35, label %65, label %74

; <label>:65:                                     ; preds = %119, %75, %74, %63
  %66 = phi i64 [ 0, %75 ], [ 0, %74 ], [ 0, %63 ], [ %36, %119 ]
  %phibase_28 = phi double* [ %phibase_90, %119 ], [ %phibase_40, %75 ], [ %phibase_30, %74 ], [ %phibase_24, %63 ]
  %phidx_29 = phi i64 [ %phidx_91, %119 ], [ %phidx_41, %75 ], [ %phidx_31, %74 ], [ %phidx_25, %63 ]
  %phibase_168 = phi double* [ %phibase_230, %119 ], [ %phibase_180, %75 ], [ %phibase_170, %74 ], [ %phibase_164, %63 ]
  %phidx_169 = phi i64 [ %phidx_231, %119 ], [ %phidx_181, %75 ], [ %phidx_171, %74 ], [ %phidx_165, %63 ]
  %phibase_308 = phi double* [ %phibase_370, %119 ], [ %phibase_320, %75 ], [ %phibase_310, %74 ], [ %phibase_304, %63 ]
  %phidx_309 = phi i64 [ %phidx_371, %119 ], [ %phidx_321, %75 ], [ %phidx_311, %74 ], [ %phidx_305, %63 ]
  %phibase_448 = phi double* [ %phibase_510, %119 ], [ %phibase_460, %75 ], [ %phibase_450, %74 ], [ %newgep_581, %63 ]
  %phidx_449 = phi i64 [ %phidx_511, %119 ], [ %phidx_461, %75 ], [ %phidx_451, %74 ], [ %62, %63 ]
  %67 = or i64 %66, 1
  %68 = trunc i64 %67 to i32
  %69 = sub i32 %33, %68
  %70 = and i32 %69, 7
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %122, label %72

; <label>:72:                                     ; preds = %65
  %phibase_38 = phi double* [ %phibase_28, %65 ]
  %phidx_39 = phi i64 [ %phidx_29, %65 ]
  %phibase_178 = phi double* [ %phibase_168, %65 ]
  %phidx_179 = phi i64 [ %phidx_169, %65 ]
  %phibase_318 = phi double* [ %phibase_308, %65 ]
  %phidx_319 = phi i64 [ %phidx_309, %65 ]
  %phibase_458 = phi double* [ %phibase_448, %65 ]
  %phidx_459 = phi i64 [ %phidx_449, %65 ]
  %73 = sub i32 %69, %70
  br label %242

; <label>:74:                                     ; preds = %63
  %phibase_30 = phi double* [ %phibase_24, %63 ]
  %phidx_31 = phi i64 [ %phidx_25, %63 ]
  %phibase_170 = phi double* [ %phibase_164, %63 ]
  %phidx_171 = phi i64 [ %phidx_165, %63 ]
  %phibase_310 = phi double* [ %phibase_304, %63 ]
  %phidx_311 = phi i64 [ %phidx_305, %63 ]
  %phibase_450 = phi double* [ %newgep_581, %63 ]
  %phidx_451 = phi i64 [ %62, %63 ]
  br i1 %37, label %65, label %75

; <label>:75:                                     ; preds = %74
  %phibase_40 = phi double* [ %phibase_30, %74 ]
  %phidx_41 = phi i64 [ %phidx_31, %74 ]
  %phibase_180 = phi double* [ %phibase_170, %74 ]
  %phidx_181 = phi i64 [ %phidx_171, %74 ]
  %phibase_320 = phi double* [ %phibase_310, %74 ]
  %phidx_321 = phi i64 [ %phidx_311, %74 ]
  %phibase_460 = phi double* [ %phibase_450, %74 ]
  %phidx_461 = phi i64 [ %phidx_451, %74 ]
  %76 = icmp uge double* %newgep_581, %4
  %77 = icmp ule double* %newgep_581, %newgep_579
  %78 = and i1 %76, %77
  br i1 %78, label %65, label %79

; <label>:79:                                     ; preds = %75
  %phibase_54 = phi double* [ %phibase_40, %75 ]
  %phidx_55 = phi i64 [ %phidx_41, %75 ]
  %phibase_194 = phi double* [ %phibase_180, %75 ]
  %phidx_195 = phi i64 [ %phidx_181, %75 ]
  %phibase_334 = phi double* [ %phibase_320, %75 ]
  %phidx_335 = phi i64 [ %phidx_321, %75 ]
  %phibase_474 = phi double* [ %phibase_460, %75 ]
  %phidx_475 = phi i64 [ %phidx_461, %75 ]
  br i1 %39, label %106, label %80

; <label>:80:                                     ; preds = %79
  %phibase_72 = phi double* [ %phibase_54, %79 ]
  %phidx_73 = phi i64 [ %phidx_55, %79 ]
  %phibase_212 = phi double* [ %phibase_194, %79 ]
  %phidx_213 = phi i64 [ %phidx_195, %79 ]
  %phibase_352 = phi double* [ %phibase_334, %79 ]
  %phidx_353 = phi i64 [ %phidx_335, %79 ]
  %phibase_492 = phi double* [ %phibase_474, %79 ]
  %phidx_493 = phi i64 [ %phidx_475, %79 ]
  %81 = load i64, i64* %64, align 8, !tbaa !27, !alias.scope !41
  %82 = insertelement <2 x i64> undef, i64 %81, i32 0
  %83 = insertelement <2 x i64> %82, i64 %81, i32 1
  %84 = insertelement <2 x i64> undef, i64 %81, i32 0
  %85 = insertelement <2 x i64> %84, i64 %81, i32 1
  %86 = load i64, i64* %64, align 8, !tbaa !27, !alias.scope !41
  %87 = insertelement <2 x i64> undef, i64 %86, i32 0
  %88 = insertelement <2 x i64> %87, i64 %86, i32 1
  %89 = insertelement <2 x i64> undef, i64 %86, i32 0
  %90 = insertelement <2 x i64> %89, i64 %86, i32 1
  br label %91

; <label>:91:                                     ; preds = %91, %80
  %92 = phi i64 [ 0, %80 ], [ %101, %91 ]
  %93 = phi i64 [ %40, %80 ], [ %102, %91 ]
  %phibase_94 = phi double* [ %phibase_94, %91 ], [ %phibase_72, %80 ]
  %phidx_95 = phi i64 [ %phidx_95, %91 ], [ %phidx_73, %80 ]
  %phibase_234 = phi double* [ %newgep_585, %91 ], [ %phibase_212, %80 ]
  %phidx_235 = phi i64 [ %97, %91 ], [ %phidx_213, %80 ]
  %phibase_374 = phi double* [ %phibase_374, %91 ], [ %phibase_352, %80 ]
  %phidx_375 = phi i64 [ %phidx_375, %91 ], [ %phidx_353, %80 ]
  %phibase_514 = phi double* [ %phibase_514, %91 ], [ %phibase_492, %80 ]
  %phidx_515 = phi i64 [ %phidx_515, %91 ], [ %phidx_493, %80 ]
  %relidx_582 = sub i64 %92, %phidx_235
  %newgep_583 = getelementptr double, double* %phibase_234, i64 %relidx_582
  %94 = bitcast double* %newgep_583 to <2 x i64>*
  store <2 x i64> %83, <2 x i64>* %94, align 8, !tbaa !27, !alias.scope !44, !noalias !41
  %95 = getelementptr double, double* %newgep_583, i64 2
  %96 = bitcast double* %95 to <2 x i64>*
  store <2 x i64> %85, <2 x i64>* %96, align 8, !tbaa !27, !alias.scope !44, !noalias !41
  %97 = or i64 %92, 4
  %relidx_584 = sub i64 %97, %92
  %newgep_585 = getelementptr double, double* %newgep_583, i64 %relidx_584
  %98 = bitcast double* %newgep_585 to <2 x i64>*
  store <2 x i64> %88, <2 x i64>* %98, align 8, !tbaa !27, !alias.scope !44, !noalias !41
  %99 = getelementptr double, double* %newgep_585, i64 2
  %100 = bitcast double* %99 to <2 x i64>*
  store <2 x i64> %90, <2 x i64>* %100, align 8, !tbaa !27, !alias.scope !44, !noalias !41
  %101 = add i64 %92, 8
  %102 = add i64 %93, -2
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %91, !llvm.loop !46

; <label>:104:                                    ; preds = %91
  %105 = phi i64 [ %101, %91 ]
  %phibase_116 = phi double* [ %phibase_94, %91 ]
  %phidx_117 = phi i64 [ %phidx_95, %91 ]
  %phibase_256 = phi double* [ %newgep_585, %91 ]
  %phidx_257 = phi i64 [ %97, %91 ]
  %phibase_396 = phi double* [ %phibase_374, %91 ]
  %phidx_397 = phi i64 [ %phidx_375, %91 ]
  %phibase_536 = phi double* [ %phibase_514, %91 ]
  %phidx_537 = phi i64 [ %phidx_515, %91 ]
  br label %106

; <label>:106:                                    ; preds = %79, %104
  %107 = phi i64 [ 0, %79 ], [ %105, %104 ]
  %phibase_70 = phi double* [ %phibase_54, %79 ], [ %phibase_116, %104 ]
  %phidx_71 = phi i64 [ %phidx_55, %79 ], [ %phidx_117, %104 ]
  %phibase_210 = phi double* [ %phibase_194, %79 ], [ %phibase_256, %104 ]
  %phidx_211 = phi i64 [ %phidx_195, %79 ], [ %phidx_257, %104 ]
  %phibase_350 = phi double* [ %phibase_334, %79 ], [ %phibase_396, %104 ]
  %phidx_351 = phi i64 [ %phidx_335, %79 ], [ %phidx_397, %104 ]
  %phibase_490 = phi double* [ %phibase_474, %79 ], [ %phibase_536, %104 ]
  %phidx_491 = phi i64 [ %phidx_475, %79 ], [ %phidx_537, %104 ]
  br i1 %41, label %119, label %108

; <label>:108:                                    ; preds = %106
  %phibase_92 = phi double* [ %phibase_70, %106 ]
  %phidx_93 = phi i64 [ %phidx_71, %106 ]
  %phibase_232 = phi double* [ %phibase_210, %106 ]
  %phidx_233 = phi i64 [ %phidx_211, %106 ]
  %phibase_372 = phi double* [ %phibase_350, %106 ]
  %phidx_373 = phi i64 [ %phidx_351, %106 ]
  %phibase_512 = phi double* [ %phibase_490, %106 ]
  %phidx_513 = phi i64 [ %phidx_491, %106 ]
  br label %109

; <label>:109:                                    ; preds = %108
  %phibase_114 = phi double* [ %phibase_92, %108 ]
  %phidx_115 = phi i64 [ %phidx_93, %108 ]
  %phibase_254 = phi double* [ %phibase_232, %108 ]
  %phidx_255 = phi i64 [ %phidx_233, %108 ]
  %phibase_394 = phi double* [ %phibase_372, %108 ]
  %phidx_395 = phi i64 [ %phidx_373, %108 ]
  %phibase_534 = phi double* [ %phibase_512, %108 ]
  %phidx_535 = phi i64 [ %phidx_513, %108 ]
  %110 = load i64, i64* %64, align 8, !tbaa !27, !alias.scope !41
  %111 = insertelement <2 x i64> undef, i64 %110, i32 0
  %112 = insertelement <2 x i64> %111, i64 %110, i32 1
  %113 = insertelement <2 x i64> undef, i64 %110, i32 0
  %114 = insertelement <2 x i64> %113, i64 %110, i32 1
  %relidx_586 = sub i64 %107, %phidx_255
  %newgep_587 = getelementptr double, double* %phibase_254, i64 %relidx_586
  %115 = bitcast double* %newgep_587 to <2 x i64>*
  store <2 x i64> %112, <2 x i64>* %115, align 8, !tbaa !27, !alias.scope !44, !noalias !41
  %116 = getelementptr double, double* %newgep_587, i64 2
  %117 = bitcast double* %116 to <2 x i64>*
  store <2 x i64> %114, <2 x i64>* %117, align 8, !tbaa !27, !alias.scope !44, !noalias !41
  br label %118

; <label>:118:                                    ; preds = %109
  %phibase_136 = phi double* [ %phibase_114, %109 ]
  %phidx_137 = phi i64 [ %phidx_115, %109 ]
  %phibase_276 = phi double* [ %newgep_587, %109 ]
  %phidx_277 = phi i64 [ %107, %109 ]
  %phibase_416 = phi double* [ %phibase_394, %109 ]
  %phidx_417 = phi i64 [ %phidx_395, %109 ]
  %phibase_556 = phi double* [ %phibase_534, %109 ]
  %phidx_557 = phi i64 [ %phidx_535, %109 ]
  br label %119

; <label>:119:                                    ; preds = %106, %118
  %phibase_90 = phi double* [ %phibase_70, %106 ], [ %phibase_136, %118 ]
  %phidx_91 = phi i64 [ %phidx_71, %106 ], [ %phidx_137, %118 ]
  %phibase_230 = phi double* [ %phibase_210, %106 ], [ %phibase_276, %118 ]
  %phidx_231 = phi i64 [ %phidx_211, %106 ], [ %phidx_277, %118 ]
  %phibase_370 = phi double* [ %phibase_350, %106 ], [ %phibase_416, %118 ]
  %phidx_371 = phi i64 [ %phidx_351, %106 ], [ %phidx_417, %118 ]
  %phibase_510 = phi double* [ %phibase_490, %106 ], [ %phibase_556, %118 ]
  %phidx_511 = phi i64 [ %phidx_491, %106 ], [ %phidx_557, %118 ]
  br i1 %42, label %136, label %65

; <label>:120:                                    ; preds = %242
  %121 = phi i64 [ %268, %242 ]
  %phibase_68 = phi double* [ %phibase_52, %242 ]
  %phidx_69 = phi i64 [ %phidx_53, %242 ]
  %phibase_208 = phi double* [ %newgep_641, %242 ]
  %phidx_209 = phi i64 [ %265, %242 ]
  %phibase_348 = phi double* [ %phibase_332, %242 ]
  %phidx_349 = phi i64 [ %phidx_333, %242 ]
  %phibase_488 = phi double* [ %phibase_472, %242 ]
  %phidx_489 = phi i64 [ %phidx_473, %242 ]
  br label %122

; <label>:122:                                    ; preds = %65, %120
  %123 = phi i64 [ %66, %65 ], [ %121, %120 ]
  %phibase_36 = phi double* [ %phibase_28, %65 ], [ %phibase_68, %120 ]
  %phidx_37 = phi i64 [ %phidx_29, %65 ], [ %phidx_69, %120 ]
  %phibase_176 = phi double* [ %phibase_168, %65 ], [ %phibase_208, %120 ]
  %phidx_177 = phi i64 [ %phidx_169, %65 ], [ %phidx_209, %120 ]
  %phibase_316 = phi double* [ %phibase_308, %65 ], [ %phibase_348, %120 ]
  %phidx_317 = phi i64 [ %phidx_309, %65 ], [ %phidx_349, %120 ]
  %phibase_456 = phi double* [ %phibase_448, %65 ], [ %phibase_488, %120 ]
  %phidx_457 = phi i64 [ %phidx_449, %65 ], [ %phidx_489, %120 ]
  %124 = icmp eq i32 %70, 0
  br i1 %124, label %135, label %125

; <label>:125:                                    ; preds = %122
  %phibase_50 = phi double* [ %phibase_36, %122 ]
  %phidx_51 = phi i64 [ %phidx_37, %122 ]
  %phibase_190 = phi double* [ %phibase_176, %122 ]
  %phidx_191 = phi i64 [ %phidx_177, %122 ]
  %phibase_330 = phi double* [ %phibase_316, %122 ]
  %phidx_331 = phi i64 [ %phidx_317, %122 ]
  %phibase_470 = phi double* [ %phibase_456, %122 ]
  %phidx_471 = phi i64 [ %phidx_457, %122 ]
  br label %126

; <label>:126:                                    ; preds = %126, %125
  %127 = phi i64 [ %131, %126 ], [ %123, %125 ]
  %128 = phi i32 [ %132, %126 ], [ %70, %125 ]
  %phibase_66 = phi double* [ %phibase_66, %126 ], [ %phibase_50, %125 ]
  %phidx_67 = phi i64 [ %phidx_67, %126 ], [ %phidx_51, %125 ]
  %phibase_206 = phi double* [ %newgep_589, %126 ], [ %phibase_190, %125 ]
  %phidx_207 = phi i64 [ %127, %126 ], [ %phidx_191, %125 ]
  %phibase_346 = phi double* [ %phibase_346, %126 ], [ %phibase_330, %125 ]
  %phidx_347 = phi i64 [ %phidx_347, %126 ], [ %phidx_331, %125 ]
  %phibase_486 = phi double* [ %phibase_486, %126 ], [ %phibase_470, %125 ]
  %phidx_487 = phi i64 [ %phidx_487, %126 ], [ %phidx_471, %125 ]
  %129 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_588 = sub i64 %127, %phidx_207
  %newgep_589 = getelementptr double, double* %phibase_206, i64 %relidx_588
  %130 = bitcast double* %newgep_589 to i64*
  store i64 %129, i64* %130, align 8, !tbaa !27
  %131 = add nuw nsw i64 %127, 1
  %132 = add i32 %128, -1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %126, !llvm.loop !49

; <label>:134:                                    ; preds = %126
  %phibase_88 = phi double* [ %phibase_66, %126 ]
  %phidx_89 = phi i64 [ %phidx_67, %126 ]
  %phibase_228 = phi double* [ %newgep_589, %126 ]
  %phidx_229 = phi i64 [ %127, %126 ]
  %phibase_368 = phi double* [ %phibase_346, %126 ]
  %phidx_369 = phi i64 [ %phidx_347, %126 ]
  %phibase_508 = phi double* [ %phibase_486, %126 ]
  %phidx_509 = phi i64 [ %phidx_487, %126 ]
  br label %135

; <label>:135:                                    ; preds = %122, %134
  %phibase_48 = phi double* [ %phibase_36, %122 ], [ %phibase_88, %134 ]
  %phidx_49 = phi i64 [ %phidx_37, %122 ], [ %phidx_89, %134 ]
  %phibase_188 = phi double* [ %phibase_176, %122 ], [ %phibase_228, %134 ]
  %phidx_189 = phi i64 [ %phidx_177, %122 ], [ %phidx_229, %134 ]
  %phibase_328 = phi double* [ %phibase_316, %122 ], [ %phibase_368, %134 ]
  %phidx_329 = phi i64 [ %phidx_317, %122 ], [ %phidx_369, %134 ]
  %phibase_468 = phi double* [ %phibase_456, %122 ], [ %phibase_508, %134 ]
  %phidx_469 = phi i64 [ %phidx_457, %122 ], [ %phidx_509, %134 ]
  br label %136

; <label>:136:                                    ; preds = %135, %119, %61
  %phibase_26 = phi double* [ %phibase_48, %135 ], [ %phibase_90, %119 ], [ %phibase_22, %61 ]
  %phidx_27 = phi i64 [ %phidx_49, %135 ], [ %phidx_91, %119 ], [ %phidx_23, %61 ]
  %phibase_166 = phi double* [ %phibase_188, %135 ], [ %phibase_230, %119 ], [ %phibase_162, %61 ]
  %phidx_167 = phi i64 [ %phidx_189, %135 ], [ %phidx_231, %119 ], [ %phidx_163, %61 ]
  %phibase_306 = phi double* [ %phibase_328, %135 ], [ %phibase_370, %119 ], [ %phibase_302, %61 ]
  %phidx_307 = phi i64 [ %phidx_329, %135 ], [ %phidx_371, %119 ], [ %phidx_303, %61 ]
  %phibase_446 = phi double* [ %phibase_468, %135 ], [ %phibase_510, %119 ], [ %phibase_442, %61 ]
  %phidx_447 = phi i64 [ %phidx_469, %135 ], [ %phidx_511, %119 ], [ %phidx_443, %61 ]
  br i1 %43, label %137, label %272

; <label>:137:                                    ; preds = %136
  %phibase_32 = phi double* [ %phibase_26, %136 ]
  %phidx_33 = phi i64 [ %phidx_27, %136 ]
  %phibase_172 = phi double* [ %phibase_166, %136 ]
  %phidx_173 = phi i64 [ %phidx_167, %136 ]
  %phibase_312 = phi double* [ %phibase_306, %136 ]
  %phidx_313 = phi i64 [ %phidx_307, %136 ]
  %phibase_452 = phi double* [ %phibase_446, %136 ]
  %phidx_453 = phi i64 [ %phidx_447, %136 ]
  br label %138

; <label>:138:                                    ; preds = %137, %237
  %139 = phi i64 [ %241, %237 ], [ 0, %137 ]
  %140 = phi i64 [ %238, %237 ], [ 1, %137 ]
  %phibase_42 = phi double* [ %phibase_32, %137 ], [ %phibase_118, %237 ]
  %phidx_43 = phi i64 [ %phidx_33, %137 ], [ %phidx_119, %237 ]
  %phibase_182 = phi double* [ %phibase_172, %137 ], [ %phibase_258, %237 ]
  %phidx_183 = phi i64 [ %phidx_173, %137 ], [ %phidx_259, %237 ]
  %phibase_322 = phi double* [ %phibase_312, %137 ], [ %phibase_398, %237 ]
  %phidx_323 = phi i64 [ %phidx_313, %137 ], [ %phidx_399, %237 ]
  %phibase_462 = phi double* [ %phibase_452, %137 ], [ %phibase_538, %237 ]
  %phidx_463 = phi i64 [ %phidx_453, %137 ], [ %phidx_539, %237 ]
  %141 = mul i64 %15, %139
  %142 = add i64 %15, %141
  %relidx_590 = sub i64 %142, %phidx_183
  %newgep_591 = getelementptr double, double* %phibase_182, i64 %relidx_590
  %143 = add i64 %25, %141
  %relidx_592 = sub i64 %143, %142
  %newgep_593 = getelementptr double, double* %newgep_591, i64 %relidx_592
  %relidx_594 = sub i64 %141, %phidx_323
  %newgep_595 = getelementptr double, double* %phibase_322, i64 %relidx_594
  %144 = add i64 %24, %141
  %relidx_596 = sub i64 %144, %141
  %newgep_597 = getelementptr double, double* %newgep_595, i64 %relidx_596
  %relidx_598 = sub i64 %142, %144
  %newgep_599 = getelementptr double, double* %newgep_597, i64 %relidx_598
  %relidx_600 = sub i64 %143, %142
  %newgep_601 = getelementptr double, double* %newgep_599, i64 %relidx_600
  %145 = mul nsw i64 %140, %15
  %146 = add nsw i64 %140, -1
  %147 = mul nsw i64 %146, %15
  br i1 %44, label %188, label %148

; <label>:148:                                    ; preds = %138
  %phibase_58 = phi double* [ %phibase_42, %138 ]
  %phidx_59 = phi i64 [ %phidx_43, %138 ]
  %phibase_198 = phi double* [ %newgep_593, %138 ]
  %phidx_199 = phi i64 [ %143, %138 ]
  %phibase_338 = phi double* [ %newgep_601, %138 ]
  %phidx_339 = phi i64 [ %143, %138 ]
  %phibase_478 = phi double* [ %phibase_462, %138 ]
  %phidx_479 = phi i64 [ %phidx_463, %138 ]
  br i1 %46, label %188, label %149

; <label>:149:                                    ; preds = %148
  %phibase_78 = phi double* [ %phibase_58, %148 ]
  %phidx_79 = phi i64 [ %phidx_59, %148 ]
  %phibase_218 = phi double* [ %phibase_198, %148 ]
  %phidx_219 = phi i64 [ %phidx_199, %148 ]
  %phibase_358 = phi double* [ %phibase_338, %148 ]
  %phidx_359 = phi i64 [ %phidx_339, %148 ]
  %phibase_498 = phi double* [ %phibase_478, %148 ]
  %phidx_499 = phi i64 [ %phidx_479, %148 ]
  %150 = icmp ule double* %newgep_591, %newgep_597
  %151 = icmp ule double* %newgep_595, %newgep_593
  %152 = and i1 %150, %151
  %153 = icmp ule double* %newgep_591, %newgep_601
  %154 = icmp ule double* %newgep_599, %newgep_593
  %155 = and i1 %153, %154
  %156 = or i1 %152, %155
  br i1 %156, label %188, label %157

; <label>:157:                                    ; preds = %149
  %phibase_102 = phi double* [ %phibase_78, %149 ]
  %phidx_103 = phi i64 [ %phidx_79, %149 ]
  %phibase_242 = phi double* [ %phibase_218, %149 ]
  %phidx_243 = phi i64 [ %phidx_219, %149 ]
  %phibase_382 = phi double* [ %phibase_358, %149 ]
  %phidx_383 = phi i64 [ %phidx_359, %149 ]
  %phibase_522 = phi double* [ %phibase_498, %149 ]
  %phidx_523 = phi i64 [ %phidx_499, %149 ]
  br label %158

; <label>:158:                                    ; preds = %157, %158
  %159 = phi i64 [ %185, %158 ], [ 0, %157 ]
  %phibase_124 = phi double* [ %phibase_102, %157 ], [ %phibase_124, %158 ]
  %phidx_125 = phi i64 [ %phidx_103, %157 ], [ %phidx_125, %158 ]
  %phibase_264 = phi double* [ %phibase_242, %157 ], [ %newgep_603, %158 ]
  %phidx_265 = phi i64 [ %phidx_243, %157 ], [ %160, %158 ]
  %phibase_404 = phi double* [ %phibase_382, %157 ], [ %newgep_607, %158 ]
  %phidx_405 = phi i64 [ %phidx_383, %157 ], [ %171, %158 ]
  %phibase_544 = phi double* [ %phibase_522, %157 ], [ %phibase_544, %158 ]
  %phidx_545 = phi i64 [ %phidx_523, %157 ], [ %phidx_545, %158 ]
  %160 = add nsw i64 %159, %145
  %relidx_602 = sub i64 %160, %phidx_265
  %newgep_603 = getelementptr double, double* %phibase_264, i64 %relidx_602
  %161 = bitcast double* %newgep_603 to <2 x double>*
  %162 = load <2 x double>, <2 x double>* %161, align 8, !tbaa !27, !alias.scope !51, !noalias !54
  %163 = getelementptr double, double* %newgep_603, i64 2
  %164 = bitcast double* %163 to <2 x double>*
  %165 = load <2 x double>, <2 x double>* %164, align 8, !tbaa !27, !alias.scope !51, !noalias !54
  %relidx_604 = sub i64 %160, %phidx_405
  %newgep_605 = getelementptr double, double* %phibase_404, i64 %relidx_604
  %166 = bitcast double* %newgep_605 to <2 x double>*
  %167 = load <2 x double>, <2 x double>* %166, align 8, !tbaa !27, !alias.scope !57
  %168 = getelementptr double, double* %newgep_605, i64 2
  %169 = bitcast double* %168 to <2 x double>*
  %170 = load <2 x double>, <2 x double>* %169, align 8, !tbaa !27, !alias.scope !57
  %171 = add nsw i64 %159, %147
  %relidx_606 = sub i64 %171, %160
  %newgep_607 = getelementptr double, double* %newgep_605, i64 %relidx_606
  %172 = bitcast double* %newgep_607 to <2 x double>*
  %173 = load <2 x double>, <2 x double>* %172, align 8, !tbaa !27, !alias.scope !58
  %174 = getelementptr double, double* %newgep_607, i64 2
  %175 = bitcast double* %174 to <2 x double>*
  %176 = load <2 x double>, <2 x double>* %175, align 8, !tbaa !27, !alias.scope !58
  %177 = fsub <2 x double> %167, %173
  %178 = fsub <2 x double> %170, %176
  %179 = fmul <2 x double> %177, <double 5.000000e-01, double 5.000000e-01>
  %180 = fmul <2 x double> %178, <double 5.000000e-01, double 5.000000e-01>
  %181 = fsub <2 x double> %162, %179
  %182 = fsub <2 x double> %165, %180
  %183 = bitcast double* %newgep_603 to <2 x double>*
  store <2 x double> %181, <2 x double>* %183, align 8, !tbaa !27, !alias.scope !51, !noalias !54
  %184 = bitcast double* %163 to <2 x double>*
  store <2 x double> %182, <2 x double>* %184, align 8, !tbaa !27, !alias.scope !51, !noalias !54
  %185 = add i64 %159, 4
  %186 = icmp eq i64 %185, %45
  br i1 %186, label %187, label %158, !llvm.loop !59

; <label>:187:                                    ; preds = %158
  %phibase_142 = phi double* [ %phibase_124, %158 ]
  %phidx_143 = phi i64 [ %phidx_125, %158 ]
  %phibase_282 = phi double* [ %newgep_603, %158 ]
  %phidx_283 = phi i64 [ %160, %158 ]
  %phibase_422 = phi double* [ %newgep_607, %158 ]
  %phidx_423 = phi i64 [ %171, %158 ]
  %phibase_562 = phi double* [ %phibase_544, %158 ]
  %phidx_563 = phi i64 [ %phidx_545, %158 ]
  br i1 %47, label %237, label %188

; <label>:188:                                    ; preds = %187, %149, %148, %138
  %189 = phi i64 [ 0, %149 ], [ 0, %148 ], [ 0, %138 ], [ %45, %187 ]
  %phibase_56 = phi double* [ %phibase_142, %187 ], [ %phibase_78, %149 ], [ %phibase_58, %148 ], [ %phibase_42, %138 ]
  %phidx_57 = phi i64 [ %phidx_143, %187 ], [ %phidx_79, %149 ], [ %phidx_59, %148 ], [ %phidx_43, %138 ]
  %phibase_196 = phi double* [ %phibase_282, %187 ], [ %phibase_218, %149 ], [ %phibase_198, %148 ], [ %newgep_593, %138 ]
  %phidx_197 = phi i64 [ %phidx_283, %187 ], [ %phidx_219, %149 ], [ %phidx_199, %148 ], [ %143, %138 ]
  %phibase_336 = phi double* [ %phibase_422, %187 ], [ %phibase_358, %149 ], [ %phibase_338, %148 ], [ %newgep_601, %138 ]
  %phidx_337 = phi i64 [ %phidx_423, %187 ], [ %phidx_359, %149 ], [ %phidx_339, %148 ], [ %143, %138 ]
  %phibase_476 = phi double* [ %phibase_562, %187 ], [ %phibase_498, %149 ], [ %phibase_478, %148 ], [ %phibase_462, %138 ]
  %phidx_477 = phi i64 [ %phidx_563, %187 ], [ %phidx_499, %149 ], [ %phidx_479, %148 ], [ %phidx_463, %138 ]
  %190 = or i64 %189, 1
  %191 = trunc i64 %190 to i32
  %192 = sub i32 %34, %191
  %193 = and i32 %192, 1
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %222, label %195

; <label>:195:                                    ; preds = %188
  %phibase_76 = phi double* [ %phibase_56, %188 ]
  %phidx_77 = phi i64 [ %phidx_57, %188 ]
  %phibase_216 = phi double* [ %phibase_196, %188 ]
  %phidx_217 = phi i64 [ %phidx_197, %188 ]
  %phibase_356 = phi double* [ %phibase_336, %188 ]
  %phidx_357 = phi i64 [ %phidx_337, %188 ]
  %phibase_496 = phi double* [ %phibase_476, %188 ]
  %phidx_497 = phi i64 [ %phidx_477, %188 ]
  %196 = sub i32 %192, %193
  br label %197

; <label>:197:                                    ; preds = %197, %195
  %198 = phi i64 [ %189, %195 ], [ %217, %197 ]
  %199 = phi i32 [ %196, %195 ], [ %218, %197 ]
  %phibase_100 = phi double* [ %phibase_100, %197 ], [ %phibase_76, %195 ]
  %phidx_101 = phi i64 [ %phidx_101, %197 ], [ %phidx_77, %195 ]
  %phibase_240 = phi double* [ %newgep_611, %197 ], [ %phibase_216, %195 ]
  %phidx_241 = phi i64 [ %209, %197 ], [ %phidx_217, %195 ]
  %phibase_380 = phi double* [ %newgep_619, %197 ], [ %phibase_356, %195 ]
  %phidx_381 = phi i64 [ %212, %197 ], [ %phidx_357, %195 ]
  %phibase_520 = phi double* [ %phibase_520, %197 ], [ %phibase_496, %195 ]
  %phidx_521 = phi i64 [ %phidx_521, %197 ], [ %phidx_497, %195 ]
  %200 = add nsw i64 %198, %145
  %relidx_608 = sub i64 %200, %phidx_241
  %newgep_609 = getelementptr double, double* %phibase_240, i64 %relidx_608
  %201 = load double, double* %newgep_609, align 8, !tbaa !27
  %relidx_612 = sub i64 %200, %phidx_381
  %newgep_613 = getelementptr double, double* %phibase_380, i64 %relidx_612
  %202 = load double, double* %newgep_613, align 8, !tbaa !27
  %203 = add nsw i64 %198, %147
  %relidx_614 = sub i64 %203, %200
  %newgep_615 = getelementptr double, double* %newgep_613, i64 %relidx_614
  %204 = load double, double* %newgep_615, align 8, !tbaa !27
  %205 = fsub double %202, %204
  %206 = fmul double %205, 5.000000e-01
  %207 = fsub double %201, %206
  store double %207, double* %newgep_609, align 8, !tbaa !27
  %208 = or i64 %198, 1
  %209 = add nsw i64 %208, %145
  %relidx_610 = sub i64 %209, %200
  %newgep_611 = getelementptr double, double* %newgep_609, i64 %relidx_610
  %210 = load double, double* %newgep_611, align 8, !tbaa !27
  %relidx_616 = sub i64 %209, %203
  %newgep_617 = getelementptr double, double* %newgep_615, i64 %relidx_616
  %211 = load double, double* %newgep_617, align 8, !tbaa !27
  %212 = add nsw i64 %208, %147
  %relidx_618 = sub i64 %212, %209
  %newgep_619 = getelementptr double, double* %newgep_617, i64 %relidx_618
  %213 = load double, double* %newgep_619, align 8, !tbaa !27
  %214 = fsub double %211, %213
  %215 = fmul double %214, 5.000000e-01
  %216 = fsub double %210, %215
  store double %216, double* %newgep_611, align 8, !tbaa !27
  %217 = add nsw i64 %198, 2
  %218 = add i32 %199, -2
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %197, !llvm.loop !60

; <label>:220:                                    ; preds = %197
  %221 = phi i64 [ %217, %197 ]
  %phibase_122 = phi double* [ %phibase_100, %197 ]
  %phidx_123 = phi i64 [ %phidx_101, %197 ]
  %phibase_262 = phi double* [ %newgep_611, %197 ]
  %phidx_263 = phi i64 [ %209, %197 ]
  %phibase_402 = phi double* [ %newgep_619, %197 ]
  %phidx_403 = phi i64 [ %212, %197 ]
  %phibase_542 = phi double* [ %phibase_520, %197 ]
  %phidx_543 = phi i64 [ %phidx_521, %197 ]
  br label %222

; <label>:222:                                    ; preds = %188, %220
  %223 = phi i64 [ %189, %188 ], [ %221, %220 ]
  %phibase_74 = phi double* [ %phibase_56, %188 ], [ %phibase_122, %220 ]
  %phidx_75 = phi i64 [ %phidx_57, %188 ], [ %phidx_123, %220 ]
  %phibase_214 = phi double* [ %phibase_196, %188 ], [ %phibase_262, %220 ]
  %phidx_215 = phi i64 [ %phidx_197, %188 ], [ %phidx_263, %220 ]
  %phibase_354 = phi double* [ %phibase_336, %188 ], [ %phibase_402, %220 ]
  %phidx_355 = phi i64 [ %phidx_337, %188 ], [ %phidx_403, %220 ]
  %phibase_494 = phi double* [ %phibase_476, %188 ], [ %phibase_542, %220 ]
  %phidx_495 = phi i64 [ %phidx_477, %188 ], [ %phidx_543, %220 ]
  %224 = icmp eq i32 %193, 0
  br i1 %224, label %236, label %225

; <label>:225:                                    ; preds = %222
  %phibase_98 = phi double* [ %phibase_74, %222 ]
  %phidx_99 = phi i64 [ %phidx_75, %222 ]
  %phibase_238 = phi double* [ %phibase_214, %222 ]
  %phidx_239 = phi i64 [ %phidx_215, %222 ]
  %phibase_378 = phi double* [ %phibase_354, %222 ]
  %phidx_379 = phi i64 [ %phidx_355, %222 ]
  %phibase_518 = phi double* [ %phibase_494, %222 ]
  %phidx_519 = phi i64 [ %phidx_495, %222 ]
  br label %226

; <label>:226:                                    ; preds = %225
  %phibase_120 = phi double* [ %phibase_98, %225 ]
  %phidx_121 = phi i64 [ %phidx_99, %225 ]
  %phibase_260 = phi double* [ %phibase_238, %225 ]
  %phidx_261 = phi i64 [ %phidx_239, %225 ]
  %phibase_400 = phi double* [ %phibase_378, %225 ]
  %phidx_401 = phi i64 [ %phidx_379, %225 ]
  %phibase_540 = phi double* [ %phibase_518, %225 ]
  %phidx_541 = phi i64 [ %phidx_519, %225 ]
  %227 = add nsw i64 %223, %145
  %relidx_620 = sub i64 %227, %phidx_261
  %newgep_621 = getelementptr double, double* %phibase_260, i64 %relidx_620
  %228 = load double, double* %newgep_621, align 8, !tbaa !27
  %relidx_622 = sub i64 %227, %phidx_401
  %newgep_623 = getelementptr double, double* %phibase_400, i64 %relidx_622
  %229 = load double, double* %newgep_623, align 8, !tbaa !27
  %230 = add nsw i64 %223, %147
  %relidx_624 = sub i64 %230, %227
  %newgep_625 = getelementptr double, double* %newgep_623, i64 %relidx_624
  %231 = load double, double* %newgep_625, align 8, !tbaa !27
  %232 = fsub double %229, %231
  %233 = fmul double %232, 5.000000e-01
  %234 = fsub double %228, %233
  store double %234, double* %newgep_621, align 8, !tbaa !27
  br label %235

; <label>:235:                                    ; preds = %226
  %phibase_140 = phi double* [ %phibase_120, %226 ]
  %phidx_141 = phi i64 [ %phidx_121, %226 ]
  %phibase_280 = phi double* [ %newgep_621, %226 ]
  %phidx_281 = phi i64 [ %227, %226 ]
  %phibase_420 = phi double* [ %newgep_625, %226 ]
  %phidx_421 = phi i64 [ %230, %226 ]
  %phibase_560 = phi double* [ %phibase_540, %226 ]
  %phidx_561 = phi i64 [ %phidx_541, %226 ]
  br label %236

; <label>:236:                                    ; preds = %222, %235
  %phibase_96 = phi double* [ %phibase_74, %222 ], [ %phibase_140, %235 ]
  %phidx_97 = phi i64 [ %phidx_75, %222 ], [ %phidx_141, %235 ]
  %phibase_236 = phi double* [ %phibase_214, %222 ], [ %phibase_280, %235 ]
  %phidx_237 = phi i64 [ %phidx_215, %222 ], [ %phidx_281, %235 ]
  %phibase_376 = phi double* [ %phibase_354, %222 ], [ %phibase_420, %235 ]
  %phidx_377 = phi i64 [ %phidx_355, %222 ], [ %phidx_421, %235 ]
  %phibase_516 = phi double* [ %phibase_494, %222 ], [ %phibase_560, %235 ]
  %phidx_517 = phi i64 [ %phidx_495, %222 ], [ %phidx_561, %235 ]
  br label %237

; <label>:237:                                    ; preds = %236, %187
  %phibase_118 = phi double* [ %phibase_96, %236 ], [ %phibase_142, %187 ]
  %phidx_119 = phi i64 [ %phidx_97, %236 ], [ %phidx_143, %187 ]
  %phibase_258 = phi double* [ %phibase_236, %236 ], [ %phibase_282, %187 ]
  %phidx_259 = phi i64 [ %phidx_237, %236 ], [ %phidx_283, %187 ]
  %phibase_398 = phi double* [ %phibase_376, %236 ], [ %phibase_422, %187 ]
  %phidx_399 = phi i64 [ %phidx_377, %236 ], [ %phidx_423, %187 ]
  %phibase_538 = phi double* [ %phibase_516, %236 ], [ %phibase_562, %187 ]
  %phidx_539 = phi i64 [ %phidx_517, %236 ], [ %phidx_563, %187 ]
  %238 = add nuw nsw i64 %140, 1
  %239 = trunc i64 %238 to i32
  %240 = icmp eq i32 %239, %1
  %241 = add i64 %139, 1
  br i1 %240, label %271, label %138

; <label>:242:                                    ; preds = %242, %72
  %243 = phi i64 [ %66, %72 ], [ %268, %242 ]
  %244 = phi i32 [ %73, %72 ], [ %269, %242 ]
  %phibase_52 = phi double* [ %phibase_52, %242 ], [ %phibase_38, %72 ]
  %phidx_53 = phi i64 [ %phidx_53, %242 ], [ %phidx_39, %72 ]
  %phibase_192 = phi double* [ %newgep_641, %242 ], [ %phibase_178, %72 ]
  %phidx_193 = phi i64 [ %265, %242 ], [ %phidx_179, %72 ]
  %phibase_332 = phi double* [ %phibase_332, %242 ], [ %phibase_318, %72 ]
  %phidx_333 = phi i64 [ %phidx_333, %242 ], [ %phidx_319, %72 ]
  %phibase_472 = phi double* [ %phibase_472, %242 ], [ %phibase_458, %72 ]
  %phidx_473 = phi i64 [ %phidx_473, %242 ], [ %phidx_459, %72 ]
  %245 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_626 = sub i64 %243, %phidx_193
  %newgep_627 = getelementptr double, double* %phibase_192, i64 %relidx_626
  %246 = bitcast double* %newgep_627 to i64*
  store i64 %245, i64* %246, align 8, !tbaa !27
  %247 = or i64 %243, 1
  %248 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_628 = sub i64 %247, %243
  %newgep_629 = getelementptr double, double* %newgep_627, i64 %relidx_628
  %249 = bitcast double* %newgep_629 to i64*
  store i64 %248, i64* %249, align 8, !tbaa !27
  %250 = or i64 %243, 2
  %251 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_630 = sub i64 %250, %247
  %newgep_631 = getelementptr double, double* %newgep_629, i64 %relidx_630
  %252 = bitcast double* %newgep_631 to i64*
  store i64 %251, i64* %252, align 8, !tbaa !27
  %253 = or i64 %243, 3
  %254 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_632 = sub i64 %253, %250
  %newgep_633 = getelementptr double, double* %newgep_631, i64 %relidx_632
  %255 = bitcast double* %newgep_633 to i64*
  store i64 %254, i64* %255, align 8, !tbaa !27
  %256 = add nsw i64 %243, 4
  %257 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_634 = sub i64 %256, %253
  %newgep_635 = getelementptr double, double* %newgep_633, i64 %relidx_634
  %258 = bitcast double* %newgep_635 to i64*
  store i64 %257, i64* %258, align 8, !tbaa !27
  %259 = add nsw i64 %243, 5
  %260 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_636 = sub i64 %259, %256
  %newgep_637 = getelementptr double, double* %newgep_635, i64 %relidx_636
  %261 = bitcast double* %newgep_637 to i64*
  store i64 %260, i64* %261, align 8, !tbaa !27
  %262 = add nsw i64 %243, 6
  %263 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_638 = sub i64 %262, %259
  %newgep_639 = getelementptr double, double* %newgep_637, i64 %relidx_638
  %264 = bitcast double* %newgep_639 to i64*
  store i64 %263, i64* %264, align 8, !tbaa !27
  %265 = add nsw i64 %243, 7
  %266 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_640 = sub i64 %265, %262
  %newgep_641 = getelementptr double, double* %newgep_639, i64 %relidx_640
  %267 = bitcast double* %newgep_641 to i64*
  store i64 %266, i64* %267, align 8, !tbaa !27
  %268 = add nsw i64 %243, 8
  %269 = add i32 %244, -8
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %120, label %242, !llvm.loop !61

; <label>:271:                                    ; preds = %237
  %phibase_138 = phi double* [ %phibase_118, %237 ]
  %phidx_139 = phi i64 [ %phidx_119, %237 ]
  %phibase_278 = phi double* [ %phibase_258, %237 ]
  %phidx_279 = phi i64 [ %phidx_259, %237 ]
  %phibase_418 = phi double* [ %phibase_398, %237 ]
  %phidx_419 = phi i64 [ %phidx_399, %237 ]
  %phibase_558 = phi double* [ %phibase_538, %237 ]
  %phidx_559 = phi i64 [ %phidx_539, %237 ]
  br label %272

; <label>:272:                                    ; preds = %271, %136
  %phibase_34 = phi double* [ %phibase_138, %271 ], [ %phibase_26, %136 ]
  %phidx_35 = phi i64 [ %phidx_139, %271 ], [ %phidx_27, %136 ]
  %phibase_174 = phi double* [ %phibase_278, %271 ], [ %phibase_166, %136 ]
  %phidx_175 = phi i64 [ %phidx_279, %271 ], [ %phidx_167, %136 ]
  %phibase_314 = phi double* [ %phibase_418, %271 ], [ %phibase_306, %136 ]
  %phidx_315 = phi i64 [ %phidx_419, %271 ], [ %phidx_307, %136 ]
  %phibase_454 = phi double* [ %phibase_558, %271 ], [ %phibase_446, %136 ]
  %phidx_455 = phi i64 [ %phidx_559, %271 ], [ %phidx_447, %136 ]
  br i1 %50, label %335, label %273

; <label>:273:                                    ; preds = %272
  %phibase_46 = phi double* [ %phibase_34, %272 ]
  %phidx_47 = phi i64 [ %phidx_35, %272 ]
  %phibase_186 = phi double* [ %phibase_174, %272 ]
  %phidx_187 = phi i64 [ %phidx_175, %272 ]
  %phibase_326 = phi double* [ %phibase_314, %272 ]
  %phidx_327 = phi i64 [ %phidx_315, %272 ]
  %phibase_466 = phi double* [ %phibase_454, %272 ]
  %phidx_467 = phi i64 [ %phidx_455, %272 ]
  br label %274

; <label>:274:                                    ; preds = %273, %331
  %275 = phi i32 [ %332, %331 ], [ 0, %273 ]
  %phibase_64 = phi double* [ %phibase_46, %273 ], [ %phibase_108, %331 ]
  %phidx_65 = phi i64 [ %phidx_47, %273 ], [ %phidx_109, %331 ]
  %phibase_204 = phi double* [ %phibase_186, %273 ], [ %phibase_248, %331 ]
  %phidx_205 = phi i64 [ %phidx_187, %273 ], [ %phidx_249, %331 ]
  %phibase_344 = phi double* [ %phibase_326, %273 ], [ %phibase_388, %331 ]
  %phidx_345 = phi i64 [ %phidx_327, %273 ], [ %phidx_389, %331 ]
  %phibase_484 = phi double* [ %phibase_466, %273 ], [ %phibase_528, %331 ]
  %phidx_485 = phi i64 [ %phidx_467, %273 ], [ %phidx_529, %331 ]
  %276 = mul nsw i32 %275, %2
  %277 = add i32 %276, -1
  br i1 %58, label %314, label %278

; <label>:278:                                    ; preds = %274
  %phibase_86 = phi double* [ %phibase_64, %274 ]
  %phidx_87 = phi i64 [ %phidx_65, %274 ]
  %phibase_226 = phi double* [ %phibase_204, %274 ]
  %phidx_227 = phi i64 [ %phidx_205, %274 ]
  %phibase_366 = phi double* [ %phibase_344, %274 ]
  %phidx_367 = phi i64 [ %phidx_345, %274 ]
  %phibase_506 = phi double* [ %phibase_484, %274 ]
  %phidx_507 = phi i64 [ %phidx_485, %274 ]
  br label %279

; <label>:279:                                    ; preds = %279, %278
  %280 = phi i64 [ 1, %278 ], [ %307, %279 ]
  %281 = phi i32 [ 1, %278 ], [ %308, %279 ]
  %282 = phi i32 [ %59, %278 ], [ %309, %279 ]
  %phibase_112 = phi double* [ %newgep_645, %279 ], [ %phibase_86, %278 ]
  %phidx_113 = phi i64 [ %297, %279 ], [ %phidx_87, %278 ]
  %phibase_252 = phi double* [ %phibase_252, %279 ], [ %phibase_226, %278 ]
  %phidx_253 = phi i64 [ %phidx_253, %279 ], [ %phidx_227, %278 ]
  %phibase_392 = phi double* [ %newgep_653, %279 ], [ %phibase_366, %278 ]
  %phidx_393 = phi i64 [ %302, %279 ], [ %phidx_367, %278 ]
  %phibase_532 = phi double* [ %phibase_532, %279 ], [ %phibase_506, %278 ]
  %phidx_533 = phi i64 [ %phidx_533, %279 ], [ %phidx_507, %278 ]
  %283 = add nsw i32 %281, %276
  %284 = sext i32 %283 to i64
  %relidx_642 = sub i64 %284, %phidx_113
  %newgep_643 = getelementptr double, double* %phibase_112, i64 %relidx_642
  %285 = load double, double* %newgep_643, align 8, !tbaa !27
  %relidx_646 = sub i64 %284, %phidx_393
  %newgep_647 = getelementptr double, double* %phibase_392, i64 %relidx_646
  %286 = load double, double* %newgep_647, align 8, !tbaa !27
  %287 = trunc i64 %280 to i32
  %288 = add i32 %277, %287
  %289 = sext i32 %288 to i64
  %relidx_648 = sub i64 %289, %284
  %newgep_649 = getelementptr double, double* %newgep_647, i64 %relidx_648
  %290 = load double, double* %newgep_649, align 8, !tbaa !27
  %291 = fsub double %286, %290
  %292 = fmul double %291, 5.000000e-01
  %293 = fsub double %285, %292
  store double %293, double* %newgep_643, align 8, !tbaa !27
  %294 = add nuw nsw i64 %280, 1
  %295 = add nuw nsw i32 %281, 1
  %296 = add nsw i32 %295, %276
  %297 = sext i32 %296 to i64
  %relidx_644 = sub i64 %297, %284
  %newgep_645 = getelementptr double, double* %newgep_643, i64 %relidx_644
  %298 = load double, double* %newgep_645, align 8, !tbaa !27
  %relidx_650 = sub i64 %297, %289
  %newgep_651 = getelementptr double, double* %newgep_649, i64 %relidx_650
  %299 = load double, double* %newgep_651, align 8, !tbaa !27
  %300 = trunc i64 %294 to i32
  %301 = add i32 %277, %300
  %302 = sext i32 %301 to i64
  %relidx_652 = sub i64 %302, %297
  %newgep_653 = getelementptr double, double* %newgep_651, i64 %relidx_652
  %303 = load double, double* %newgep_653, align 8, !tbaa !27
  %304 = fsub double %299, %303
  %305 = fmul double %304, 5.000000e-01
  %306 = fsub double %298, %305
  store double %306, double* %newgep_645, align 8, !tbaa !27
  %307 = add nsw i64 %280, 2
  %308 = add nsw i32 %281, 2
  %309 = add i32 %282, -2
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %279

; <label>:311:                                    ; preds = %279
  %312 = phi i32 [ %308, %279 ]
  %313 = phi i64 [ %307, %279 ]
  %phibase_134 = phi double* [ %newgep_645, %279 ]
  %phidx_135 = phi i64 [ %297, %279 ]
  %phibase_274 = phi double* [ %phibase_252, %279 ]
  %phidx_275 = phi i64 [ %phidx_253, %279 ]
  %phibase_414 = phi double* [ %newgep_653, %279 ]
  %phidx_415 = phi i64 [ %302, %279 ]
  %phibase_554 = phi double* [ %phibase_532, %279 ]
  %phidx_555 = phi i64 [ %phidx_533, %279 ]
  br label %314

; <label>:314:                                    ; preds = %274, %311
  %315 = phi i64 [ 1, %274 ], [ %313, %311 ]
  %316 = phi i32 [ 1, %274 ], [ %312, %311 ]
  %phibase_84 = phi double* [ %phibase_64, %274 ], [ %phibase_134, %311 ]
  %phidx_85 = phi i64 [ %phidx_65, %274 ], [ %phidx_135, %311 ]
  %phibase_224 = phi double* [ %phibase_204, %274 ], [ %phibase_274, %311 ]
  %phidx_225 = phi i64 [ %phidx_205, %274 ], [ %phidx_275, %311 ]
  %phibase_364 = phi double* [ %phibase_344, %274 ], [ %phibase_414, %311 ]
  %phidx_365 = phi i64 [ %phidx_345, %274 ], [ %phidx_415, %311 ]
  %phibase_504 = phi double* [ %phibase_484, %274 ], [ %phibase_554, %311 ]
  %phidx_505 = phi i64 [ %phidx_485, %274 ], [ %phidx_555, %311 ]
  br i1 %60, label %331, label %317

; <label>:317:                                    ; preds = %314
  %phibase_110 = phi double* [ %phibase_84, %314 ]
  %phidx_111 = phi i64 [ %phidx_85, %314 ]
  %phibase_250 = phi double* [ %phibase_224, %314 ]
  %phidx_251 = phi i64 [ %phidx_225, %314 ]
  %phibase_390 = phi double* [ %phibase_364, %314 ]
  %phidx_391 = phi i64 [ %phidx_365, %314 ]
  %phibase_530 = phi double* [ %phibase_504, %314 ]
  %phidx_531 = phi i64 [ %phidx_505, %314 ]
  br label %318

; <label>:318:                                    ; preds = %317
  %phibase_132 = phi double* [ %phibase_110, %317 ]
  %phidx_133 = phi i64 [ %phidx_111, %317 ]
  %phibase_272 = phi double* [ %phibase_250, %317 ]
  %phidx_273 = phi i64 [ %phidx_251, %317 ]
  %phibase_412 = phi double* [ %phibase_390, %317 ]
  %phidx_413 = phi i64 [ %phidx_391, %317 ]
  %phibase_552 = phi double* [ %phibase_530, %317 ]
  %phidx_553 = phi i64 [ %phidx_531, %317 ]
  %319 = add nsw i32 %316, %276
  %320 = sext i32 %319 to i64
  %relidx_654 = sub i64 %320, %phidx_133
  %newgep_655 = getelementptr double, double* %phibase_132, i64 %relidx_654
  %321 = load double, double* %newgep_655, align 8, !tbaa !27
  %relidx_656 = sub i64 %320, %phidx_413
  %newgep_657 = getelementptr double, double* %phibase_412, i64 %relidx_656
  %322 = load double, double* %newgep_657, align 8, !tbaa !27
  %323 = trunc i64 %315 to i32
  %324 = add i32 %277, %323
  %325 = sext i32 %324 to i64
  %relidx_658 = sub i64 %325, %320
  %newgep_659 = getelementptr double, double* %newgep_657, i64 %relidx_658
  %326 = load double, double* %newgep_659, align 8, !tbaa !27
  %327 = fsub double %322, %326
  %328 = fmul double %327, 5.000000e-01
  %329 = fsub double %321, %328
  store double %329, double* %newgep_655, align 8, !tbaa !27
  br label %330

; <label>:330:                                    ; preds = %318
  %phibase_148 = phi double* [ %newgep_655, %318 ]
  %phidx_149 = phi i64 [ %320, %318 ]
  %phibase_288 = phi double* [ %phibase_272, %318 ]
  %phidx_289 = phi i64 [ %phidx_273, %318 ]
  %phibase_428 = phi double* [ %newgep_659, %318 ]
  %phidx_429 = phi i64 [ %325, %318 ]
  %phibase_568 = phi double* [ %phibase_552, %318 ]
  %phidx_569 = phi i64 [ %phidx_553, %318 ]
  br label %331

; <label>:331:                                    ; preds = %314, %330
  %phibase_108 = phi double* [ %phibase_84, %314 ], [ %phibase_148, %330 ]
  %phidx_109 = phi i64 [ %phidx_85, %314 ], [ %phidx_149, %330 ]
  %phibase_248 = phi double* [ %phibase_224, %314 ], [ %phibase_288, %330 ]
  %phidx_249 = phi i64 [ %phidx_225, %314 ], [ %phidx_289, %330 ]
  %phibase_388 = phi double* [ %phibase_364, %314 ], [ %phibase_428, %330 ]
  %phidx_389 = phi i64 [ %phidx_365, %314 ], [ %phidx_429, %330 ]
  %phibase_528 = phi double* [ %phibase_504, %314 ], [ %phibase_568, %330 ]
  %phidx_529 = phi i64 [ %phidx_505, %314 ], [ %phidx_569, %330 ]
  %332 = add nuw nsw i32 %275, 1
  %333 = icmp eq i32 %332, %1
  br i1 %333, label %334, label %274

; <label>:334:                                    ; preds = %331
  %phibase_130 = phi double* [ %phibase_108, %331 ]
  %phidx_131 = phi i64 [ %phidx_109, %331 ]
  %phibase_270 = phi double* [ %phibase_248, %331 ]
  %phidx_271 = phi i64 [ %phidx_249, %331 ]
  %phibase_410 = phi double* [ %phibase_388, %331 ]
  %phidx_411 = phi i64 [ %phidx_389, %331 ]
  %phibase_550 = phi double* [ %phibase_528, %331 ]
  %phidx_551 = phi i64 [ %phidx_529, %331 ]
  br label %335

; <label>:335:                                    ; preds = %334, %272
  %phibase_44 = phi double* [ %phibase_130, %334 ], [ %phibase_34, %272 ]
  %phidx_45 = phi i64 [ %phidx_131, %334 ], [ %phidx_35, %272 ]
  %phibase_184 = phi double* [ %phibase_270, %334 ], [ %phibase_174, %272 ]
  %phidx_185 = phi i64 [ %phidx_271, %334 ], [ %phidx_175, %272 ]
  %phibase_324 = phi double* [ %phibase_410, %334 ], [ %phibase_314, %272 ]
  %phidx_325 = phi i64 [ %phidx_411, %334 ], [ %phidx_315, %272 ]
  %phibase_464 = phi double* [ %phibase_550, %334 ], [ %phibase_454, %272 ]
  %phidx_465 = phi i64 [ %phidx_551, %334 ], [ %phidx_455, %272 ]
  br i1 %51, label %336, label %426

; <label>:336:                                    ; preds = %335
  %phibase_60 = phi double* [ %phibase_44, %335 ]
  %phidx_61 = phi i64 [ %phidx_45, %335 ]
  %phibase_200 = phi double* [ %phibase_184, %335 ]
  %phidx_201 = phi i64 [ %phidx_185, %335 ]
  %phibase_340 = phi double* [ %phibase_324, %335 ]
  %phidx_341 = phi i64 [ %phidx_325, %335 ]
  %phibase_480 = phi double* [ %phibase_464, %335 ]
  %phidx_481 = phi i64 [ %phidx_465, %335 ]
  br label %337

; <label>:337:                                    ; preds = %336, %422
  %338 = phi i64 [ %349, %422 ], [ 0, %336 ]
  %phibase_80 = phi double* [ %phibase_60, %336 ], [ %phibase_150, %422 ]
  %phidx_81 = phi i64 [ %phidx_61, %336 ], [ %phidx_151, %422 ]
  %phibase_220 = phi double* [ %phibase_200, %336 ], [ %phibase_290, %422 ]
  %phidx_221 = phi i64 [ %phidx_201, %336 ], [ %phidx_291, %422 ]
  %phibase_360 = phi double* [ %phibase_340, %336 ], [ %phibase_430, %422 ]
  %phidx_361 = phi i64 [ %phidx_341, %336 ], [ %phidx_431, %422 ]
  %phibase_500 = phi double* [ %phibase_480, %336 ], [ %phibase_570, %422 ]
  %phidx_501 = phi i64 [ %phidx_481, %336 ], [ %phidx_571, %422 ]
  %339 = mul i64 %15, %338
  %relidx_674 = sub i64 %339, %phidx_361
  %newgep_675 = getelementptr double, double* %phibase_360, i64 %relidx_674
  %340 = add i64 %19, %339
  %relidx_676 = sub i64 %340, %339
  %newgep_677 = getelementptr double, double* %newgep_675, i64 %relidx_676
  %relidx_660 = sub i64 %339, %phidx_81
  %newgep_661 = getelementptr double, double* %phibase_80, i64 %relidx_660
  %relidx_662 = sub i64 %340, %339
  %newgep_663 = getelementptr double, double* %newgep_661, i64 %relidx_662
  %341 = mul i64 %20, %338
  %342 = shl i64 %341, 32
  %343 = add i64 %342, 4294967296
  %344 = ashr exact i64 %343, 32
  %relidx_664 = sub i64 %344, %340
  %newgep_665 = getelementptr double, double* %newgep_663, i64 %relidx_664
  %345 = getelementptr double, double* %newgep_, i64 %344
  %relidx_666 = sub i64 %339, %phidx_221
  %newgep_667 = getelementptr double, double* %phibase_220, i64 %relidx_666
  %relidx_668 = sub i64 %340, %339
  %newgep_669 = getelementptr double, double* %newgep_667, i64 %relidx_668
  %346 = add i64 %15, %339
  %relidx_670 = sub i64 %346, %340
  %newgep_671 = getelementptr double, double* %newgep_669, i64 %relidx_670
  %347 = add i64 %21, %339
  %relidx_672 = sub i64 %347, %346
  %newgep_673 = getelementptr double, double* %newgep_671, i64 %relidx_672
  %348 = mul nsw i64 %338, %15
  %349 = add nuw nsw i64 %338, 1
  %350 = mul nsw i64 %349, %15
  %351 = trunc i64 %348 to i32
  br i1 %52, label %397, label %352

; <label>:352:                                    ; preds = %337
  %phibase_106 = phi double* [ %newgep_665, %337 ]
  %phidx_107 = phi i64 [ %344, %337 ]
  %phibase_246 = phi double* [ %newgep_673, %337 ]
  %phidx_247 = phi i64 [ %347, %337 ]
  %phibase_386 = phi double* [ %newgep_677, %337 ]
  %phidx_387 = phi i64 [ %340, %337 ]
  %phibase_526 = phi double* [ %phibase_500, %337 ]
  %phidx_527 = phi i64 [ %phidx_501, %337 ]
  br i1 %54, label %397, label %353

; <label>:353:                                    ; preds = %352
  %phibase_128 = phi double* [ %phibase_106, %352 ]
  %phidx_129 = phi i64 [ %phidx_107, %352 ]
  %phibase_268 = phi double* [ %phibase_246, %352 ]
  %phidx_269 = phi i64 [ %phidx_247, %352 ]
  %phibase_408 = phi double* [ %phibase_386, %352 ]
  %phidx_409 = phi i64 [ %phidx_387, %352 ]
  %phibase_548 = phi double* [ %phibase_526, %352 ]
  %phidx_549 = phi i64 [ %phidx_527, %352 ]
  %354 = icmp ule double* %newgep_675, %newgep_663
  %355 = icmp ule double* %newgep_661, %newgep_677
  %356 = and i1 %354, %355
  %357 = icmp ule double* %newgep_675, %345
  %358 = icmp ule double* %newgep_665, %newgep_677
  %359 = and i1 %357, %358
  %360 = or i1 %356, %359
  %361 = icmp ule double* %newgep_675, %newgep_669
  %362 = icmp ule double* %newgep_667, %newgep_677
  %363 = and i1 %361, %362
  %364 = or i1 %360, %363
  %365 = icmp ule double* %newgep_675, %newgep_673
  %366 = icmp ule double* %newgep_671, %newgep_677
  %367 = and i1 %365, %366
  %368 = or i1 %364, %367
  br i1 %368, label %397, label %369

; <label>:369:                                    ; preds = %353
  %phibase_146 = phi double* [ %phibase_128, %353 ]
  %phidx_147 = phi i64 [ %phidx_129, %353 ]
  %phibase_286 = phi double* [ %phibase_268, %353 ]
  %phidx_287 = phi i64 [ %phidx_269, %353 ]
  %phibase_426 = phi double* [ %phibase_408, %353 ]
  %phidx_427 = phi i64 [ %phidx_409, %353 ]
  %phibase_566 = phi double* [ %phibase_548, %353 ]
  %phidx_567 = phi i64 [ %phidx_549, %353 ]
  br label %370

; <label>:370:                                    ; preds = %369, %370
  %371 = phi i64 [ %394, %370 ], [ 0, %369 ]
  %phibase_152 = phi double* [ %phibase_146, %369 ], [ %newgep_681, %370 ]
  %phidx_153 = phi i64 [ %phidx_147, %369 ], [ %372, %370 ]
  %phibase_292 = phi double* [ %phibase_286, %369 ], [ %newgep_685, %370 ]
  %phidx_293 = phi i64 [ %phidx_287, %369 ], [ %372, %370 ]
  %phibase_432 = phi double* [ %phibase_426, %369 ], [ %newgep_687, %370 ]
  %phidx_433 = phi i64 [ %phidx_427, %369 ], [ %372, %370 ]
  %phibase_572 = phi double* [ %phibase_566, %369 ], [ %phibase_572, %370 ]
  %phidx_573 = phi i64 [ %phidx_567, %369 ], [ %phidx_573, %370 ]
  %372 = add nsw i64 %371, %348
  %relidx_686 = sub i64 %372, %phidx_433
  %newgep_687 = getelementptr double, double* %phibase_432, i64 %relidx_686
  %373 = bitcast double* %newgep_687 to <2 x double>*
  %374 = load <2 x double>, <2 x double>* %373, align 8, !tbaa !27, !alias.scope !62, !noalias !65
  %375 = or i64 %371, 1
  %376 = add i64 %375, %348
  %377 = shl i64 %376, 32
  %378 = ashr exact i64 %377, 32
  %relidx_678 = sub i64 %378, %phidx_153
  %newgep_679 = getelementptr double, double* %phibase_152, i64 %relidx_678
  %379 = bitcast double* %newgep_679 to <2 x double>*
  %380 = load <2 x double>, <2 x double>* %379, align 8, !tbaa !27, !alias.scope !70
  %relidx_680 = sub i64 %372, %378
  %newgep_681 = getelementptr double, double* %newgep_679, i64 %relidx_680
  %381 = bitcast double* %newgep_681 to <2 x double>*
  %382 = load <2 x double>, <2 x double>* %381, align 8, !tbaa !27, !alias.scope !71
  %383 = fsub <2 x double> %380, %382
  %384 = add nsw i64 %371, %350
  %relidx_682 = sub i64 %384, %phidx_293
  %newgep_683 = getelementptr double, double* %phibase_292, i64 %relidx_682
  %385 = bitcast double* %newgep_683 to <2 x double>*
  %386 = load <2 x double>, <2 x double>* %385, align 8, !tbaa !27, !alias.scope !72
  %387 = fadd <2 x double> %383, %386
  %relidx_684 = sub i64 %372, %384
  %newgep_685 = getelementptr double, double* %newgep_683, i64 %relidx_684
  %388 = bitcast double* %newgep_685 to <2 x double>*
  %389 = load <2 x double>, <2 x double>* %388, align 8, !tbaa !27, !alias.scope !73
  %390 = fsub <2 x double> %387, %389
  %391 = fmul <2 x double> %390, <double 7.000000e-01, double 7.000000e-01>
  %392 = fsub <2 x double> %374, %391
  %393 = bitcast double* %newgep_687 to <2 x double>*
  store <2 x double> %392, <2 x double>* %393, align 8, !tbaa !27, !alias.scope !62, !noalias !65
  %394 = add i64 %371, 2
  %395 = icmp eq i64 %394, %53
  br i1 %395, label %396, label %370, !llvm.loop !74

; <label>:396:                                    ; preds = %370
  %phibase_156 = phi double* [ %newgep_681, %370 ]
  %phidx_157 = phi i64 [ %372, %370 ]
  %phibase_296 = phi double* [ %newgep_685, %370 ]
  %phidx_297 = phi i64 [ %372, %370 ]
  %phibase_436 = phi double* [ %newgep_687, %370 ]
  %phidx_437 = phi i64 [ %372, %370 ]
  %phibase_576 = phi double* [ %phibase_572, %370 ]
  %phidx_577 = phi i64 [ %phidx_573, %370 ]
  br i1 %56, label %422, label %397

; <label>:397:                                    ; preds = %396, %353, %352, %337
  %398 = phi i64 [ 0, %353 ], [ 0, %352 ], [ 0, %337 ], [ %53, %396 ]
  %399 = phi i32 [ 0, %353 ], [ 0, %352 ], [ 0, %337 ], [ %55, %396 ]
  %phibase_104 = phi double* [ %phibase_156, %396 ], [ %phibase_128, %353 ], [ %phibase_106, %352 ], [ %newgep_665, %337 ]
  %phidx_105 = phi i64 [ %phidx_157, %396 ], [ %phidx_129, %353 ], [ %phidx_107, %352 ], [ %344, %337 ]
  %phibase_244 = phi double* [ %phibase_296, %396 ], [ %phibase_268, %353 ], [ %phibase_246, %352 ], [ %newgep_673, %337 ]
  %phidx_245 = phi i64 [ %phidx_297, %396 ], [ %phidx_269, %353 ], [ %phidx_247, %352 ], [ %347, %337 ]
  %phibase_384 = phi double* [ %phibase_436, %396 ], [ %phibase_408, %353 ], [ %phibase_386, %352 ], [ %newgep_677, %337 ]
  %phidx_385 = phi i64 [ %phidx_437, %396 ], [ %phidx_409, %353 ], [ %phidx_387, %352 ], [ %340, %337 ]
  %phibase_524 = phi double* [ %phibase_576, %396 ], [ %phibase_548, %353 ], [ %phibase_526, %352 ], [ %phibase_500, %337 ]
  %phidx_525 = phi i64 [ %phidx_577, %396 ], [ %phidx_549, %353 ], [ %phidx_527, %352 ], [ %phidx_501, %337 ]
  br label %400

; <label>:400:                                    ; preds = %397, %400
  %401 = phi i64 [ %405, %400 ], [ %398, %397 ]
  %402 = phi i32 [ %406, %400 ], [ %399, %397 ]
  %phibase_126 = phi double* [ %phibase_104, %397 ], [ %newgep_691, %400 ]
  %phidx_127 = phi i64 [ %phidx_105, %397 ], [ %403, %400 ]
  %phibase_266 = phi double* [ %phibase_244, %397 ], [ %newgep_695, %400 ]
  %phidx_267 = phi i64 [ %phidx_245, %397 ], [ %403, %400 ]
  %phibase_406 = phi double* [ %phibase_384, %397 ], [ %newgep_697, %400 ]
  %phidx_407 = phi i64 [ %phidx_385, %397 ], [ %403, %400 ]
  %phibase_546 = phi double* [ %phibase_524, %397 ], [ %phibase_546, %400 ]
  %phidx_547 = phi i64 [ %phidx_525, %397 ], [ %phidx_547, %400 ]
  %403 = add nsw i64 %401, %348
  %relidx_696 = sub i64 %403, %phidx_407
  %newgep_697 = getelementptr double, double* %phibase_406, i64 %relidx_696
  %404 = load double, double* %newgep_697, align 8, !tbaa !27
  %405 = add nuw nsw i64 %401, 1
  %406 = add nuw nsw i32 %402, 1
  %407 = add nsw i32 %406, %351
  %408 = sext i32 %407 to i64
  %relidx_688 = sub i64 %408, %phidx_127
  %newgep_689 = getelementptr double, double* %phibase_126, i64 %relidx_688
  %409 = load double, double* %newgep_689, align 8, !tbaa !27
  %relidx_690 = sub i64 %403, %408
  %newgep_691 = getelementptr double, double* %newgep_689, i64 %relidx_690
  %410 = load double, double* %newgep_691, align 8, !tbaa !27
  %411 = fsub double %409, %410
  %412 = add nsw i64 %401, %350
  %relidx_692 = sub i64 %412, %phidx_267
  %newgep_693 = getelementptr double, double* %phibase_266, i64 %relidx_692
  %413 = load double, double* %newgep_693, align 8, !tbaa !27
  %414 = fadd double %411, %413
  %relidx_694 = sub i64 %403, %412
  %newgep_695 = getelementptr double, double* %newgep_693, i64 %relidx_694
  %415 = load double, double* %newgep_695, align 8, !tbaa !27
  %416 = fsub double %414, %415
  %417 = fmul double %416, 7.000000e-01
  %418 = fsub double %404, %417
  store double %418, double* %newgep_697, align 8, !tbaa !27
  %419 = trunc i64 %405 to i32
  %420 = icmp eq i32 %419, %14
  br i1 %420, label %421, label %400, !llvm.loop !75

; <label>:421:                                    ; preds = %400
  %phibase_144 = phi double* [ %newgep_691, %400 ]
  %phidx_145 = phi i64 [ %403, %400 ]
  %phibase_284 = phi double* [ %newgep_695, %400 ]
  %phidx_285 = phi i64 [ %403, %400 ]
  %phibase_424 = phi double* [ %newgep_697, %400 ]
  %phidx_425 = phi i64 [ %403, %400 ]
  %phibase_564 = phi double* [ %phibase_546, %400 ]
  %phidx_565 = phi i64 [ %phidx_547, %400 ]
  br label %422

; <label>:422:                                    ; preds = %421, %396
  %phibase_150 = phi double* [ %phibase_144, %421 ], [ %phibase_156, %396 ]
  %phidx_151 = phi i64 [ %phidx_145, %421 ], [ %phidx_157, %396 ]
  %phibase_290 = phi double* [ %phibase_284, %421 ], [ %phibase_296, %396 ]
  %phidx_291 = phi i64 [ %phidx_285, %421 ], [ %phidx_297, %396 ]
  %phibase_430 = phi double* [ %phibase_424, %421 ], [ %phibase_436, %396 ]
  %phidx_431 = phi i64 [ %phidx_425, %421 ], [ %phidx_437, %396 ]
  %phibase_570 = phi double* [ %phibase_564, %421 ], [ %phibase_576, %396 ]
  %phidx_571 = phi i64 [ %phidx_565, %421 ], [ %phidx_577, %396 ]
  %423 = trunc i64 %349 to i32
  %424 = icmp eq i32 %423, %13
  br i1 %424, label %425, label %337

; <label>:425:                                    ; preds = %422
  %phibase_154 = phi double* [ %phibase_150, %422 ]
  %phidx_155 = phi i64 [ %phidx_151, %422 ]
  %phibase_294 = phi double* [ %phibase_290, %422 ]
  %phidx_295 = phi i64 [ %phidx_291, %422 ]
  %phibase_434 = phi double* [ %phibase_430, %422 ]
  %phidx_435 = phi i64 [ %phidx_431, %422 ]
  %phibase_574 = phi double* [ %phibase_570, %422 ]
  %phidx_575 = phi i64 [ %phidx_571, %422 ]
  br label %426

; <label>:426:                                    ; preds = %425, %335
  %phibase_62 = phi double* [ %phibase_154, %425 ], [ %phibase_44, %335 ]
  %phidx_63 = phi i64 [ %phidx_155, %425 ], [ %phidx_45, %335 ]
  %phibase_202 = phi double* [ %phibase_294, %425 ], [ %phibase_184, %335 ]
  %phidx_203 = phi i64 [ %phidx_295, %425 ], [ %phidx_185, %335 ]
  %phibase_342 = phi double* [ %phibase_434, %425 ], [ %phibase_324, %335 ]
  %phidx_343 = phi i64 [ %phidx_435, %425 ], [ %phidx_325, %335 ]
  %phibase_482 = phi double* [ %phibase_574, %425 ], [ %phibase_464, %335 ]
  %phidx_483 = phi i64 [ %phidx_575, %425 ], [ %phidx_465, %335 ]
  %427 = add nuw nsw i64 %62, 1
  %428 = trunc i64 %427 to i32
  %429 = icmp eq i32 %428, %0
  br i1 %429, label %430, label %61

; <label>:430:                                    ; preds = %426
  %phibase_82 = phi double* [ %phibase_62, %426 ]
  %phidx_83 = phi i64 [ %phidx_63, %426 ]
  %phibase_222 = phi double* [ %phibase_202, %426 ]
  %phidx_223 = phi i64 [ %phidx_203, %426 ]
  %phibase_362 = phi double* [ %phibase_342, %426 ]
  %phidx_363 = phi i64 [ %phidx_343, %426 ]
  %phibase_502 = phi double* [ %phibase_482, %426 ]
  %phidx_503 = phi i64 [ %phidx_483, %426 ]
  br label %431

; <label>:431:                                    ; preds = %430, %7
  %phibase_20 = phi double* [ %phibase_82, %430 ], [ %3, %7 ]
  %phidx_21 = phi i64 [ %phidx_83, %430 ], [ 0, %7 ]
  %phibase_160 = phi double* [ %phibase_222, %430 ], [ %4, %7 ]
  %phidx_161 = phi i64 [ %phidx_223, %430 ], [ 0, %7 ]
  %phibase_300 = phi double* [ %phibase_362, %430 ], [ %5, %7 ]
  %phidx_301 = phi i64 [ %phidx_363, %430 ], [ 0, %7 ]
  %phibase_440 = phi double* [ %phibase_502, %430 ], [ %6, %7 ]
  %phidx_441 = phi i64 [ %phidx_503, %430 ], [ 0, %7 ]
  %duprsltadr_ = getelementptr double, double* %3, i64 %phidx_21
  %castadr1 = ptrtoint double* %phibase_20 to i64
  %castadr2 = ptrtoint double* %duprsltadr_ to i64
  %cmpopdet = icmp ne i64 %castadr1, %castadr2
  %newdetval = zext i1 %cmpopdet to i64
  %ldolddetval = load i64, i64* @detectCounter
  %updetval = shl i64 %newdetval, 1
  %updetval698 = or i64 %updetval, %ldolddetval
  store i64 %updetval698, i64* @detectCounter
  %duprsltadr_699 = getelementptr double, double* %4, i64 %phidx_161
  %castadr1700 = ptrtoint double* %phibase_160 to i64
  %castadr2701 = ptrtoint double* %duprsltadr_699 to i64
  %cmpopdet702 = icmp ne i64 %castadr1700, %castadr2701
  %newdetval703 = zext i1 %cmpopdet702 to i64
  %ldolddetval704 = load i64, i64* @detectCounter
  %updetval705 = shl i64 %newdetval703, 1
  %updetval706 = or i64 %updetval705, %ldolddetval704
  store i64 %updetval706, i64* @detectCounter
  %duprsltadr_707 = getelementptr double, double* %5, i64 %phidx_301
  %castadr1708 = ptrtoint double* %phibase_300 to i64
  %castadr2709 = ptrtoint double* %duprsltadr_707 to i64
  %cmpopdet710 = icmp ne i64 %castadr1708, %castadr2709
  %newdetval711 = zext i1 %cmpopdet710 to i64
  %ldolddetval712 = load i64, i64* @detectCounter
  %updetval713 = shl i64 %newdetval711, 1
  %updetval714 = or i64 %updetval713, %ldolddetval712
  store i64 %updetval714, i64* @detectCounter
  %duprsltadr_715 = getelementptr double, double* %6, i64 %phidx_441
  %castadr1716 = ptrtoint double* %phibase_440 to i64
  %castadr2717 = ptrtoint double* %duprsltadr_715 to i64
  %cmpopdet718 = icmp ne i64 %castadr1716, %castadr2717
  %newdetval719 = zext i1 %cmpopdet718 to i64
  %ldolddetval720 = load i64, i64* @detectCounter
  %updetval721 = shl i64 %newdetval719, 1
  %updetval722 = or i64 %updetval721, %ldolddetval720
  store i64 %updetval722, i64* @detectCounter
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
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!45}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.vectorize.width", i32 1}
!48 = !{!"llvm.loop.interleave.count", i32 1}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!52}
!52 = distinct !{!52, !53}
!53 = distinct !{!53, !"LVerDomain"}
!54 = !{!55, !56}
!55 = distinct !{!55, !53}
!56 = distinct !{!56, !53}
!57 = !{!56}
!58 = !{!55}
!59 = distinct !{!59, !47, !48}
!60 = distinct !{!60, !47, !48}
!61 = distinct !{!61, !47, !48}
!62 = !{!63}
!63 = distinct !{!63, !64}
!64 = distinct !{!64, !"LVerDomain"}
!65 = !{!66, !67, !68, !69}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !64}
!68 = distinct !{!68, !64}
!69 = distinct !{!69, !64}
!70 = !{!67}
!71 = !{!66}
!72 = !{!69}
!73 = !{!68}
!74 = distinct !{!74, !47, !48}
!75 = distinct !{!75, !47, !48}
