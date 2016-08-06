; ModuleID = 'fdtd-2d_dtr_ty1.bc'
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
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %431

; <label>:9:                                      ; preds = %7
  %phibase_ = phi double* [ %3, %7 ]
  %phidx_ = phi i64 [ 0, %7 ]
  %phibase_139 = phi double* [ %4, %7 ]
  %phidx_140 = phi i64 [ 0, %7 ]
  %phibase_279 = phi double* [ %5, %7 ]
  %phidx_280 = phi i64 [ 0, %7 ]
  %phibase_419 = phi double* [ %6, %7 ]
  %phidx_420 = phi i64 [ 0, %7 ]
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
  %relidx_559 = sub i64 %28, %phidx_140
  %newgep_560 = getelementptr double, double* %phibase_139, i64 %relidx_559
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
  %phibase_3 = phi double* [ %phibase_43, %426 ], [ %newgep_, %9 ]
  %phidx_4 = phi i64 [ %phidx_44, %426 ], [ %19, %9 ]
  %phibase_143 = phi double* [ %phibase_183, %426 ], [ %newgep_560, %9 ]
  %phidx_144 = phi i64 [ %phidx_184, %426 ], [ %28, %9 ]
  %phibase_283 = phi double* [ %phibase_323, %426 ], [ %phibase_279, %9 ]
  %phidx_284 = phi i64 [ %phidx_324, %426 ], [ %phidx_280, %9 ]
  %phibase_423 = phi double* [ %phibase_463, %426 ], [ %phibase_419, %9 ]
  %phidx_424 = phi i64 [ %phidx_464, %426 ], [ %phidx_420, %9 ]
  br i1 %10, label %63, label %136

; <label>:63:                                     ; preds = %61
  %phibase_5 = phi double* [ %phibase_3, %61 ]
  %phidx_6 = phi i64 [ %phidx_4, %61 ]
  %phibase_145 = phi double* [ %phibase_143, %61 ]
  %phidx_146 = phi i64 [ %phidx_144, %61 ]
  %phibase_285 = phi double* [ %phibase_283, %61 ]
  %phidx_286 = phi i64 [ %phidx_284, %61 ]
  %phibase_425 = phi double* [ %phibase_423, %61 ]
  %phidx_426 = phi i64 [ %phidx_424, %61 ]
  %relidx_561 = sub i64 %62, %phidx_426
  %newgep_562 = getelementptr double, double* %phibase_425, i64 %relidx_561
  %64 = bitcast double* %newgep_562 to i64*
  br i1 %35, label %65, label %74

; <label>:65:                                     ; preds = %119, %75, %74, %63
  %66 = phi i64 [ 0, %75 ], [ 0, %74 ], [ 0, %63 ], [ %36, %119 ]
  %phibase_9 = phi double* [ %phibase_71, %119 ], [ %phibase_21, %75 ], [ %phibase_11, %74 ], [ %phibase_5, %63 ]
  %phidx_10 = phi i64 [ %phidx_72, %119 ], [ %phidx_22, %75 ], [ %phidx_12, %74 ], [ %phidx_6, %63 ]
  %phibase_149 = phi double* [ %phibase_211, %119 ], [ %phibase_161, %75 ], [ %phibase_151, %74 ], [ %phibase_145, %63 ]
  %phidx_150 = phi i64 [ %phidx_212, %119 ], [ %phidx_162, %75 ], [ %phidx_152, %74 ], [ %phidx_146, %63 ]
  %phibase_289 = phi double* [ %phibase_351, %119 ], [ %phibase_301, %75 ], [ %phibase_291, %74 ], [ %phibase_285, %63 ]
  %phidx_290 = phi i64 [ %phidx_352, %119 ], [ %phidx_302, %75 ], [ %phidx_292, %74 ], [ %phidx_286, %63 ]
  %phibase_429 = phi double* [ %phibase_491, %119 ], [ %phibase_441, %75 ], [ %phibase_431, %74 ], [ %newgep_562, %63 ]
  %phidx_430 = phi i64 [ %phidx_492, %119 ], [ %phidx_442, %75 ], [ %phidx_432, %74 ], [ %62, %63 ]
  %67 = or i64 %66, 1
  %68 = trunc i64 %67 to i32
  %69 = sub i32 %33, %68
  %70 = and i32 %69, 7
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %122, label %72

; <label>:72:                                     ; preds = %65
  %phibase_19 = phi double* [ %phibase_9, %65 ]
  %phidx_20 = phi i64 [ %phidx_10, %65 ]
  %phibase_159 = phi double* [ %phibase_149, %65 ]
  %phidx_160 = phi i64 [ %phidx_150, %65 ]
  %phibase_299 = phi double* [ %phibase_289, %65 ]
  %phidx_300 = phi i64 [ %phidx_290, %65 ]
  %phibase_439 = phi double* [ %phibase_429, %65 ]
  %phidx_440 = phi i64 [ %phidx_430, %65 ]
  %73 = sub i32 %69, %70
  br label %242

; <label>:74:                                     ; preds = %63
  %phibase_11 = phi double* [ %phibase_5, %63 ]
  %phidx_12 = phi i64 [ %phidx_6, %63 ]
  %phibase_151 = phi double* [ %phibase_145, %63 ]
  %phidx_152 = phi i64 [ %phidx_146, %63 ]
  %phibase_291 = phi double* [ %phibase_285, %63 ]
  %phidx_292 = phi i64 [ %phidx_286, %63 ]
  %phibase_431 = phi double* [ %newgep_562, %63 ]
  %phidx_432 = phi i64 [ %62, %63 ]
  br i1 %37, label %65, label %75

; <label>:75:                                     ; preds = %74
  %phibase_21 = phi double* [ %phibase_11, %74 ]
  %phidx_22 = phi i64 [ %phidx_12, %74 ]
  %phibase_161 = phi double* [ %phibase_151, %74 ]
  %phidx_162 = phi i64 [ %phidx_152, %74 ]
  %phibase_301 = phi double* [ %phibase_291, %74 ]
  %phidx_302 = phi i64 [ %phidx_292, %74 ]
  %phibase_441 = phi double* [ %phibase_431, %74 ]
  %phidx_442 = phi i64 [ %phidx_432, %74 ]
  %76 = icmp uge double* %newgep_562, %4
  %77 = icmp ule double* %newgep_562, %newgep_560
  %78 = and i1 %76, %77
  br i1 %78, label %65, label %79

; <label>:79:                                     ; preds = %75
  %phibase_35 = phi double* [ %phibase_21, %75 ]
  %phidx_36 = phi i64 [ %phidx_22, %75 ]
  %phibase_175 = phi double* [ %phibase_161, %75 ]
  %phidx_176 = phi i64 [ %phidx_162, %75 ]
  %phibase_315 = phi double* [ %phibase_301, %75 ]
  %phidx_316 = phi i64 [ %phidx_302, %75 ]
  %phibase_455 = phi double* [ %phibase_441, %75 ]
  %phidx_456 = phi i64 [ %phidx_442, %75 ]
  br i1 %39, label %106, label %80

; <label>:80:                                     ; preds = %79
  %phibase_53 = phi double* [ %phibase_35, %79 ]
  %phidx_54 = phi i64 [ %phidx_36, %79 ]
  %phibase_193 = phi double* [ %phibase_175, %79 ]
  %phidx_194 = phi i64 [ %phidx_176, %79 ]
  %phibase_333 = phi double* [ %phibase_315, %79 ]
  %phidx_334 = phi i64 [ %phidx_316, %79 ]
  %phibase_473 = phi double* [ %phibase_455, %79 ]
  %phidx_474 = phi i64 [ %phidx_456, %79 ]
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
  %phibase_75 = phi double* [ %phibase_75, %91 ], [ %phibase_53, %80 ]
  %phidx_76 = phi i64 [ %phidx_76, %91 ], [ %phidx_54, %80 ]
  %phibase_215 = phi double* [ %newgep_566, %91 ], [ %phibase_193, %80 ]
  %phidx_216 = phi i64 [ %97, %91 ], [ %phidx_194, %80 ]
  %phibase_355 = phi double* [ %phibase_355, %91 ], [ %phibase_333, %80 ]
  %phidx_356 = phi i64 [ %phidx_356, %91 ], [ %phidx_334, %80 ]
  %phibase_495 = phi double* [ %phibase_495, %91 ], [ %phibase_473, %80 ]
  %phidx_496 = phi i64 [ %phidx_496, %91 ], [ %phidx_474, %80 ]
  %relidx_563 = sub i64 %92, %phidx_216
  %newgep_564 = getelementptr double, double* %phibase_215, i64 %relidx_563
  %94 = bitcast double* %newgep_564 to <2 x i64>*
  store <2 x i64> %83, <2 x i64>* %94, align 8, !tbaa !27, !alias.scope !44, !noalias !41
  %95 = getelementptr double, double* %newgep_564, i64 2
  %96 = bitcast double* %95 to <2 x i64>*
  store <2 x i64> %85, <2 x i64>* %96, align 8, !tbaa !27, !alias.scope !44, !noalias !41
  %97 = or i64 %92, 4
  %relidx_565 = sub i64 %97, %92
  %newgep_566 = getelementptr double, double* %newgep_564, i64 %relidx_565
  %98 = bitcast double* %newgep_566 to <2 x i64>*
  store <2 x i64> %88, <2 x i64>* %98, align 8, !tbaa !27, !alias.scope !44, !noalias !41
  %99 = getelementptr double, double* %newgep_566, i64 2
  %100 = bitcast double* %99 to <2 x i64>*
  store <2 x i64> %90, <2 x i64>* %100, align 8, !tbaa !27, !alias.scope !44, !noalias !41
  %101 = add i64 %92, 8
  %102 = add i64 %93, -2
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %91, !llvm.loop !46

; <label>:104:                                    ; preds = %91
  %105 = phi i64 [ %101, %91 ]
  %phibase_97 = phi double* [ %phibase_75, %91 ]
  %phidx_98 = phi i64 [ %phidx_76, %91 ]
  %phibase_237 = phi double* [ %newgep_566, %91 ]
  %phidx_238 = phi i64 [ %97, %91 ]
  %phibase_377 = phi double* [ %phibase_355, %91 ]
  %phidx_378 = phi i64 [ %phidx_356, %91 ]
  %phibase_517 = phi double* [ %phibase_495, %91 ]
  %phidx_518 = phi i64 [ %phidx_496, %91 ]
  br label %106

; <label>:106:                                    ; preds = %79, %104
  %107 = phi i64 [ 0, %79 ], [ %105, %104 ]
  %phibase_51 = phi double* [ %phibase_35, %79 ], [ %phibase_97, %104 ]
  %phidx_52 = phi i64 [ %phidx_36, %79 ], [ %phidx_98, %104 ]
  %phibase_191 = phi double* [ %phibase_175, %79 ], [ %phibase_237, %104 ]
  %phidx_192 = phi i64 [ %phidx_176, %79 ], [ %phidx_238, %104 ]
  %phibase_331 = phi double* [ %phibase_315, %79 ], [ %phibase_377, %104 ]
  %phidx_332 = phi i64 [ %phidx_316, %79 ], [ %phidx_378, %104 ]
  %phibase_471 = phi double* [ %phibase_455, %79 ], [ %phibase_517, %104 ]
  %phidx_472 = phi i64 [ %phidx_456, %79 ], [ %phidx_518, %104 ]
  br i1 %41, label %119, label %108

; <label>:108:                                    ; preds = %106
  %phibase_73 = phi double* [ %phibase_51, %106 ]
  %phidx_74 = phi i64 [ %phidx_52, %106 ]
  %phibase_213 = phi double* [ %phibase_191, %106 ]
  %phidx_214 = phi i64 [ %phidx_192, %106 ]
  %phibase_353 = phi double* [ %phibase_331, %106 ]
  %phidx_354 = phi i64 [ %phidx_332, %106 ]
  %phibase_493 = phi double* [ %phibase_471, %106 ]
  %phidx_494 = phi i64 [ %phidx_472, %106 ]
  br label %109

; <label>:109:                                    ; preds = %108
  %phibase_95 = phi double* [ %phibase_73, %108 ]
  %phidx_96 = phi i64 [ %phidx_74, %108 ]
  %phibase_235 = phi double* [ %phibase_213, %108 ]
  %phidx_236 = phi i64 [ %phidx_214, %108 ]
  %phibase_375 = phi double* [ %phibase_353, %108 ]
  %phidx_376 = phi i64 [ %phidx_354, %108 ]
  %phibase_515 = phi double* [ %phibase_493, %108 ]
  %phidx_516 = phi i64 [ %phidx_494, %108 ]
  %110 = load i64, i64* %64, align 8, !tbaa !27, !alias.scope !41
  %111 = insertelement <2 x i64> undef, i64 %110, i32 0
  %112 = insertelement <2 x i64> %111, i64 %110, i32 1
  %113 = insertelement <2 x i64> undef, i64 %110, i32 0
  %114 = insertelement <2 x i64> %113, i64 %110, i32 1
  %relidx_567 = sub i64 %107, %phidx_236
  %newgep_568 = getelementptr double, double* %phibase_235, i64 %relidx_567
  %115 = bitcast double* %newgep_568 to <2 x i64>*
  store <2 x i64> %112, <2 x i64>* %115, align 8, !tbaa !27, !alias.scope !44, !noalias !41
  %116 = getelementptr double, double* %newgep_568, i64 2
  %117 = bitcast double* %116 to <2 x i64>*
  store <2 x i64> %114, <2 x i64>* %117, align 8, !tbaa !27, !alias.scope !44, !noalias !41
  br label %118

; <label>:118:                                    ; preds = %109
  %phibase_117 = phi double* [ %phibase_95, %109 ]
  %phidx_118 = phi i64 [ %phidx_96, %109 ]
  %phibase_257 = phi double* [ %newgep_568, %109 ]
  %phidx_258 = phi i64 [ %107, %109 ]
  %phibase_397 = phi double* [ %phibase_375, %109 ]
  %phidx_398 = phi i64 [ %phidx_376, %109 ]
  %phibase_537 = phi double* [ %phibase_515, %109 ]
  %phidx_538 = phi i64 [ %phidx_516, %109 ]
  br label %119

; <label>:119:                                    ; preds = %106, %118
  %phibase_71 = phi double* [ %phibase_51, %106 ], [ %phibase_117, %118 ]
  %phidx_72 = phi i64 [ %phidx_52, %106 ], [ %phidx_118, %118 ]
  %phibase_211 = phi double* [ %phibase_191, %106 ], [ %phibase_257, %118 ]
  %phidx_212 = phi i64 [ %phidx_192, %106 ], [ %phidx_258, %118 ]
  %phibase_351 = phi double* [ %phibase_331, %106 ], [ %phibase_397, %118 ]
  %phidx_352 = phi i64 [ %phidx_332, %106 ], [ %phidx_398, %118 ]
  %phibase_491 = phi double* [ %phibase_471, %106 ], [ %phibase_537, %118 ]
  %phidx_492 = phi i64 [ %phidx_472, %106 ], [ %phidx_538, %118 ]
  br i1 %42, label %136, label %65

; <label>:120:                                    ; preds = %242
  %121 = phi i64 [ %268, %242 ]
  %phibase_49 = phi double* [ %phibase_33, %242 ]
  %phidx_50 = phi i64 [ %phidx_34, %242 ]
  %phibase_189 = phi double* [ %newgep_622, %242 ]
  %phidx_190 = phi i64 [ %265, %242 ]
  %phibase_329 = phi double* [ %phibase_313, %242 ]
  %phidx_330 = phi i64 [ %phidx_314, %242 ]
  %phibase_469 = phi double* [ %phibase_453, %242 ]
  %phidx_470 = phi i64 [ %phidx_454, %242 ]
  br label %122

; <label>:122:                                    ; preds = %65, %120
  %123 = phi i64 [ %66, %65 ], [ %121, %120 ]
  %phibase_17 = phi double* [ %phibase_9, %65 ], [ %phibase_49, %120 ]
  %phidx_18 = phi i64 [ %phidx_10, %65 ], [ %phidx_50, %120 ]
  %phibase_157 = phi double* [ %phibase_149, %65 ], [ %phibase_189, %120 ]
  %phidx_158 = phi i64 [ %phidx_150, %65 ], [ %phidx_190, %120 ]
  %phibase_297 = phi double* [ %phibase_289, %65 ], [ %phibase_329, %120 ]
  %phidx_298 = phi i64 [ %phidx_290, %65 ], [ %phidx_330, %120 ]
  %phibase_437 = phi double* [ %phibase_429, %65 ], [ %phibase_469, %120 ]
  %phidx_438 = phi i64 [ %phidx_430, %65 ], [ %phidx_470, %120 ]
  %124 = icmp eq i32 %70, 0
  br i1 %124, label %135, label %125

; <label>:125:                                    ; preds = %122
  %phibase_31 = phi double* [ %phibase_17, %122 ]
  %phidx_32 = phi i64 [ %phidx_18, %122 ]
  %phibase_171 = phi double* [ %phibase_157, %122 ]
  %phidx_172 = phi i64 [ %phidx_158, %122 ]
  %phibase_311 = phi double* [ %phibase_297, %122 ]
  %phidx_312 = phi i64 [ %phidx_298, %122 ]
  %phibase_451 = phi double* [ %phibase_437, %122 ]
  %phidx_452 = phi i64 [ %phidx_438, %122 ]
  br label %126

; <label>:126:                                    ; preds = %126, %125
  %127 = phi i64 [ %131, %126 ], [ %123, %125 ]
  %128 = phi i32 [ %132, %126 ], [ %70, %125 ]
  %phibase_47 = phi double* [ %phibase_47, %126 ], [ %phibase_31, %125 ]
  %phidx_48 = phi i64 [ %phidx_48, %126 ], [ %phidx_32, %125 ]
  %phibase_187 = phi double* [ %newgep_570, %126 ], [ %phibase_171, %125 ]
  %phidx_188 = phi i64 [ %127, %126 ], [ %phidx_172, %125 ]
  %phibase_327 = phi double* [ %phibase_327, %126 ], [ %phibase_311, %125 ]
  %phidx_328 = phi i64 [ %phidx_328, %126 ], [ %phidx_312, %125 ]
  %phibase_467 = phi double* [ %phibase_467, %126 ], [ %phibase_451, %125 ]
  %phidx_468 = phi i64 [ %phidx_468, %126 ], [ %phidx_452, %125 ]
  %129 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_569 = sub i64 %127, %phidx_188
  %newgep_570 = getelementptr double, double* %phibase_187, i64 %relidx_569
  %130 = bitcast double* %newgep_570 to i64*
  store i64 %129, i64* %130, align 8, !tbaa !27
  %131 = add nuw nsw i64 %127, 1
  %132 = add i32 %128, -1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %126, !llvm.loop !49

; <label>:134:                                    ; preds = %126
  %phibase_69 = phi double* [ %phibase_47, %126 ]
  %phidx_70 = phi i64 [ %phidx_48, %126 ]
  %phibase_209 = phi double* [ %newgep_570, %126 ]
  %phidx_210 = phi i64 [ %127, %126 ]
  %phibase_349 = phi double* [ %phibase_327, %126 ]
  %phidx_350 = phi i64 [ %phidx_328, %126 ]
  %phibase_489 = phi double* [ %phibase_467, %126 ]
  %phidx_490 = phi i64 [ %phidx_468, %126 ]
  br label %135

; <label>:135:                                    ; preds = %122, %134
  %phibase_29 = phi double* [ %phibase_17, %122 ], [ %phibase_69, %134 ]
  %phidx_30 = phi i64 [ %phidx_18, %122 ], [ %phidx_70, %134 ]
  %phibase_169 = phi double* [ %phibase_157, %122 ], [ %phibase_209, %134 ]
  %phidx_170 = phi i64 [ %phidx_158, %122 ], [ %phidx_210, %134 ]
  %phibase_309 = phi double* [ %phibase_297, %122 ], [ %phibase_349, %134 ]
  %phidx_310 = phi i64 [ %phidx_298, %122 ], [ %phidx_350, %134 ]
  %phibase_449 = phi double* [ %phibase_437, %122 ], [ %phibase_489, %134 ]
  %phidx_450 = phi i64 [ %phidx_438, %122 ], [ %phidx_490, %134 ]
  br label %136

; <label>:136:                                    ; preds = %135, %119, %61
  %phibase_7 = phi double* [ %phibase_29, %135 ], [ %phibase_71, %119 ], [ %phibase_3, %61 ]
  %phidx_8 = phi i64 [ %phidx_30, %135 ], [ %phidx_72, %119 ], [ %phidx_4, %61 ]
  %phibase_147 = phi double* [ %phibase_169, %135 ], [ %phibase_211, %119 ], [ %phibase_143, %61 ]
  %phidx_148 = phi i64 [ %phidx_170, %135 ], [ %phidx_212, %119 ], [ %phidx_144, %61 ]
  %phibase_287 = phi double* [ %phibase_309, %135 ], [ %phibase_351, %119 ], [ %phibase_283, %61 ]
  %phidx_288 = phi i64 [ %phidx_310, %135 ], [ %phidx_352, %119 ], [ %phidx_284, %61 ]
  %phibase_427 = phi double* [ %phibase_449, %135 ], [ %phibase_491, %119 ], [ %phibase_423, %61 ]
  %phidx_428 = phi i64 [ %phidx_450, %135 ], [ %phidx_492, %119 ], [ %phidx_424, %61 ]
  br i1 %43, label %137, label %272

; <label>:137:                                    ; preds = %136
  %phibase_13 = phi double* [ %phibase_7, %136 ]
  %phidx_14 = phi i64 [ %phidx_8, %136 ]
  %phibase_153 = phi double* [ %phibase_147, %136 ]
  %phidx_154 = phi i64 [ %phidx_148, %136 ]
  %phibase_293 = phi double* [ %phibase_287, %136 ]
  %phidx_294 = phi i64 [ %phidx_288, %136 ]
  %phibase_433 = phi double* [ %phibase_427, %136 ]
  %phidx_434 = phi i64 [ %phidx_428, %136 ]
  br label %138

; <label>:138:                                    ; preds = %137, %237
  %139 = phi i64 [ %241, %237 ], [ 0, %137 ]
  %140 = phi i64 [ %238, %237 ], [ 1, %137 ]
  %phibase_23 = phi double* [ %phibase_13, %137 ], [ %phibase_99, %237 ]
  %phidx_24 = phi i64 [ %phidx_14, %137 ], [ %phidx_100, %237 ]
  %phibase_163 = phi double* [ %phibase_153, %137 ], [ %phibase_239, %237 ]
  %phidx_164 = phi i64 [ %phidx_154, %137 ], [ %phidx_240, %237 ]
  %phibase_303 = phi double* [ %phibase_293, %137 ], [ %phibase_379, %237 ]
  %phidx_304 = phi i64 [ %phidx_294, %137 ], [ %phidx_380, %237 ]
  %phibase_443 = phi double* [ %phibase_433, %137 ], [ %phibase_519, %237 ]
  %phidx_444 = phi i64 [ %phidx_434, %137 ], [ %phidx_520, %237 ]
  %141 = mul i64 %15, %139
  %142 = add i64 %15, %141
  %relidx_571 = sub i64 %142, %phidx_164
  %newgep_572 = getelementptr double, double* %phibase_163, i64 %relidx_571
  %143 = add i64 %25, %141
  %relidx_573 = sub i64 %143, %142
  %newgep_574 = getelementptr double, double* %newgep_572, i64 %relidx_573
  %relidx_575 = sub i64 %141, %phidx_304
  %newgep_576 = getelementptr double, double* %phibase_303, i64 %relidx_575
  %144 = add i64 %24, %141
  %relidx_577 = sub i64 %144, %141
  %newgep_578 = getelementptr double, double* %newgep_576, i64 %relidx_577
  %relidx_579 = sub i64 %142, %144
  %newgep_580 = getelementptr double, double* %newgep_578, i64 %relidx_579
  %relidx_581 = sub i64 %143, %142
  %newgep_582 = getelementptr double, double* %newgep_580, i64 %relidx_581
  %145 = mul nsw i64 %140, %15
  %146 = add nsw i64 %140, -1
  %147 = mul nsw i64 %146, %15
  br i1 %44, label %188, label %148

; <label>:148:                                    ; preds = %138
  %phibase_39 = phi double* [ %phibase_23, %138 ]
  %phidx_40 = phi i64 [ %phidx_24, %138 ]
  %phibase_179 = phi double* [ %newgep_574, %138 ]
  %phidx_180 = phi i64 [ %143, %138 ]
  %phibase_319 = phi double* [ %newgep_582, %138 ]
  %phidx_320 = phi i64 [ %143, %138 ]
  %phibase_459 = phi double* [ %phibase_443, %138 ]
  %phidx_460 = phi i64 [ %phidx_444, %138 ]
  br i1 %46, label %188, label %149

; <label>:149:                                    ; preds = %148
  %phibase_59 = phi double* [ %phibase_39, %148 ]
  %phidx_60 = phi i64 [ %phidx_40, %148 ]
  %phibase_199 = phi double* [ %phibase_179, %148 ]
  %phidx_200 = phi i64 [ %phidx_180, %148 ]
  %phibase_339 = phi double* [ %phibase_319, %148 ]
  %phidx_340 = phi i64 [ %phidx_320, %148 ]
  %phibase_479 = phi double* [ %phibase_459, %148 ]
  %phidx_480 = phi i64 [ %phidx_460, %148 ]
  %150 = icmp ule double* %newgep_572, %newgep_578
  %151 = icmp ule double* %newgep_576, %newgep_574
  %152 = and i1 %150, %151
  %153 = icmp ule double* %newgep_572, %newgep_582
  %154 = icmp ule double* %newgep_580, %newgep_574
  %155 = and i1 %153, %154
  %156 = or i1 %152, %155
  br i1 %156, label %188, label %157

; <label>:157:                                    ; preds = %149
  %phibase_83 = phi double* [ %phibase_59, %149 ]
  %phidx_84 = phi i64 [ %phidx_60, %149 ]
  %phibase_223 = phi double* [ %phibase_199, %149 ]
  %phidx_224 = phi i64 [ %phidx_200, %149 ]
  %phibase_363 = phi double* [ %phibase_339, %149 ]
  %phidx_364 = phi i64 [ %phidx_340, %149 ]
  %phibase_503 = phi double* [ %phibase_479, %149 ]
  %phidx_504 = phi i64 [ %phidx_480, %149 ]
  br label %158

; <label>:158:                                    ; preds = %157, %158
  %159 = phi i64 [ %185, %158 ], [ 0, %157 ]
  %phibase_105 = phi double* [ %phibase_83, %157 ], [ %phibase_105, %158 ]
  %phidx_106 = phi i64 [ %phidx_84, %157 ], [ %phidx_106, %158 ]
  %phibase_245 = phi double* [ %phibase_223, %157 ], [ %newgep_584, %158 ]
  %phidx_246 = phi i64 [ %phidx_224, %157 ], [ %160, %158 ]
  %phibase_385 = phi double* [ %phibase_363, %157 ], [ %newgep_588, %158 ]
  %phidx_386 = phi i64 [ %phidx_364, %157 ], [ %171, %158 ]
  %phibase_525 = phi double* [ %phibase_503, %157 ], [ %phibase_525, %158 ]
  %phidx_526 = phi i64 [ %phidx_504, %157 ], [ %phidx_526, %158 ]
  %160 = add nsw i64 %159, %145
  %relidx_583 = sub i64 %160, %phidx_246
  %newgep_584 = getelementptr double, double* %phibase_245, i64 %relidx_583
  %161 = bitcast double* %newgep_584 to <2 x double>*
  %162 = load <2 x double>, <2 x double>* %161, align 8, !tbaa !27, !alias.scope !51, !noalias !54
  %163 = getelementptr double, double* %newgep_584, i64 2
  %164 = bitcast double* %163 to <2 x double>*
  %165 = load <2 x double>, <2 x double>* %164, align 8, !tbaa !27, !alias.scope !51, !noalias !54
  %relidx_585 = sub i64 %160, %phidx_386
  %newgep_586 = getelementptr double, double* %phibase_385, i64 %relidx_585
  %166 = bitcast double* %newgep_586 to <2 x double>*
  %167 = load <2 x double>, <2 x double>* %166, align 8, !tbaa !27, !alias.scope !57
  %168 = getelementptr double, double* %newgep_586, i64 2
  %169 = bitcast double* %168 to <2 x double>*
  %170 = load <2 x double>, <2 x double>* %169, align 8, !tbaa !27, !alias.scope !57
  %171 = add nsw i64 %159, %147
  %relidx_587 = sub i64 %171, %160
  %newgep_588 = getelementptr double, double* %newgep_586, i64 %relidx_587
  %172 = bitcast double* %newgep_588 to <2 x double>*
  %173 = load <2 x double>, <2 x double>* %172, align 8, !tbaa !27, !alias.scope !58
  %174 = getelementptr double, double* %newgep_588, i64 2
  %175 = bitcast double* %174 to <2 x double>*
  %176 = load <2 x double>, <2 x double>* %175, align 8, !tbaa !27, !alias.scope !58
  %177 = fsub <2 x double> %167, %173
  %178 = fsub <2 x double> %170, %176
  %179 = fmul <2 x double> %177, <double 5.000000e-01, double 5.000000e-01>
  %180 = fmul <2 x double> %178, <double 5.000000e-01, double 5.000000e-01>
  %181 = fsub <2 x double> %162, %179
  %182 = fsub <2 x double> %165, %180
  %183 = bitcast double* %newgep_584 to <2 x double>*
  store <2 x double> %181, <2 x double>* %183, align 8, !tbaa !27, !alias.scope !51, !noalias !54
  %184 = bitcast double* %163 to <2 x double>*
  store <2 x double> %182, <2 x double>* %184, align 8, !tbaa !27, !alias.scope !51, !noalias !54
  %185 = add i64 %159, 4
  %186 = icmp eq i64 %185, %45
  br i1 %186, label %187, label %158, !llvm.loop !59

; <label>:187:                                    ; preds = %158
  %phibase_123 = phi double* [ %phibase_105, %158 ]
  %phidx_124 = phi i64 [ %phidx_106, %158 ]
  %phibase_263 = phi double* [ %newgep_584, %158 ]
  %phidx_264 = phi i64 [ %160, %158 ]
  %phibase_403 = phi double* [ %newgep_588, %158 ]
  %phidx_404 = phi i64 [ %171, %158 ]
  %phibase_543 = phi double* [ %phibase_525, %158 ]
  %phidx_544 = phi i64 [ %phidx_526, %158 ]
  br i1 %47, label %237, label %188

; <label>:188:                                    ; preds = %187, %149, %148, %138
  %189 = phi i64 [ 0, %149 ], [ 0, %148 ], [ 0, %138 ], [ %45, %187 ]
  %phibase_37 = phi double* [ %phibase_123, %187 ], [ %phibase_59, %149 ], [ %phibase_39, %148 ], [ %phibase_23, %138 ]
  %phidx_38 = phi i64 [ %phidx_124, %187 ], [ %phidx_60, %149 ], [ %phidx_40, %148 ], [ %phidx_24, %138 ]
  %phibase_177 = phi double* [ %phibase_263, %187 ], [ %phibase_199, %149 ], [ %phibase_179, %148 ], [ %newgep_574, %138 ]
  %phidx_178 = phi i64 [ %phidx_264, %187 ], [ %phidx_200, %149 ], [ %phidx_180, %148 ], [ %143, %138 ]
  %phibase_317 = phi double* [ %phibase_403, %187 ], [ %phibase_339, %149 ], [ %phibase_319, %148 ], [ %newgep_582, %138 ]
  %phidx_318 = phi i64 [ %phidx_404, %187 ], [ %phidx_340, %149 ], [ %phidx_320, %148 ], [ %143, %138 ]
  %phibase_457 = phi double* [ %phibase_543, %187 ], [ %phibase_479, %149 ], [ %phibase_459, %148 ], [ %phibase_443, %138 ]
  %phidx_458 = phi i64 [ %phidx_544, %187 ], [ %phidx_480, %149 ], [ %phidx_460, %148 ], [ %phidx_444, %138 ]
  %190 = or i64 %189, 1
  %191 = trunc i64 %190 to i32
  %192 = sub i32 %34, %191
  %193 = and i32 %192, 1
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %222, label %195

; <label>:195:                                    ; preds = %188
  %phibase_57 = phi double* [ %phibase_37, %188 ]
  %phidx_58 = phi i64 [ %phidx_38, %188 ]
  %phibase_197 = phi double* [ %phibase_177, %188 ]
  %phidx_198 = phi i64 [ %phidx_178, %188 ]
  %phibase_337 = phi double* [ %phibase_317, %188 ]
  %phidx_338 = phi i64 [ %phidx_318, %188 ]
  %phibase_477 = phi double* [ %phibase_457, %188 ]
  %phidx_478 = phi i64 [ %phidx_458, %188 ]
  %196 = sub i32 %192, %193
  br label %197

; <label>:197:                                    ; preds = %197, %195
  %198 = phi i64 [ %189, %195 ], [ %217, %197 ]
  %199 = phi i32 [ %196, %195 ], [ %218, %197 ]
  %phibase_81 = phi double* [ %phibase_81, %197 ], [ %phibase_57, %195 ]
  %phidx_82 = phi i64 [ %phidx_82, %197 ], [ %phidx_58, %195 ]
  %phibase_221 = phi double* [ %newgep_592, %197 ], [ %phibase_197, %195 ]
  %phidx_222 = phi i64 [ %209, %197 ], [ %phidx_198, %195 ]
  %phibase_361 = phi double* [ %newgep_600, %197 ], [ %phibase_337, %195 ]
  %phidx_362 = phi i64 [ %212, %197 ], [ %phidx_338, %195 ]
  %phibase_501 = phi double* [ %phibase_501, %197 ], [ %phibase_477, %195 ]
  %phidx_502 = phi i64 [ %phidx_502, %197 ], [ %phidx_478, %195 ]
  %200 = add nsw i64 %198, %145
  %relidx_589 = sub i64 %200, %phidx_222
  %newgep_590 = getelementptr double, double* %phibase_221, i64 %relidx_589
  %201 = load double, double* %newgep_590, align 8, !tbaa !27
  %relidx_593 = sub i64 %200, %phidx_362
  %newgep_594 = getelementptr double, double* %phibase_361, i64 %relidx_593
  %202 = load double, double* %newgep_594, align 8, !tbaa !27
  %203 = add nsw i64 %198, %147
  %relidx_595 = sub i64 %203, %200
  %newgep_596 = getelementptr double, double* %newgep_594, i64 %relidx_595
  %204 = load double, double* %newgep_596, align 8, !tbaa !27
  %205 = fsub double %202, %204
  %206 = fmul double %205, 5.000000e-01
  %207 = fsub double %201, %206
  store double %207, double* %newgep_590, align 8, !tbaa !27
  %208 = or i64 %198, 1
  %209 = add nsw i64 %208, %145
  %relidx_591 = sub i64 %209, %200
  %newgep_592 = getelementptr double, double* %newgep_590, i64 %relidx_591
  %210 = load double, double* %newgep_592, align 8, !tbaa !27
  %relidx_597 = sub i64 %209, %203
  %newgep_598 = getelementptr double, double* %newgep_596, i64 %relidx_597
  %211 = load double, double* %newgep_598, align 8, !tbaa !27
  %212 = add nsw i64 %208, %147
  %relidx_599 = sub i64 %212, %209
  %newgep_600 = getelementptr double, double* %newgep_598, i64 %relidx_599
  %213 = load double, double* %newgep_600, align 8, !tbaa !27
  %214 = fsub double %211, %213
  %215 = fmul double %214, 5.000000e-01
  %216 = fsub double %210, %215
  store double %216, double* %newgep_592, align 8, !tbaa !27
  %217 = add nsw i64 %198, 2
  %218 = add i32 %199, -2
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %197, !llvm.loop !60

; <label>:220:                                    ; preds = %197
  %221 = phi i64 [ %217, %197 ]
  %phibase_103 = phi double* [ %phibase_81, %197 ]
  %phidx_104 = phi i64 [ %phidx_82, %197 ]
  %phibase_243 = phi double* [ %newgep_592, %197 ]
  %phidx_244 = phi i64 [ %209, %197 ]
  %phibase_383 = phi double* [ %newgep_600, %197 ]
  %phidx_384 = phi i64 [ %212, %197 ]
  %phibase_523 = phi double* [ %phibase_501, %197 ]
  %phidx_524 = phi i64 [ %phidx_502, %197 ]
  br label %222

; <label>:222:                                    ; preds = %188, %220
  %223 = phi i64 [ %189, %188 ], [ %221, %220 ]
  %phibase_55 = phi double* [ %phibase_37, %188 ], [ %phibase_103, %220 ]
  %phidx_56 = phi i64 [ %phidx_38, %188 ], [ %phidx_104, %220 ]
  %phibase_195 = phi double* [ %phibase_177, %188 ], [ %phibase_243, %220 ]
  %phidx_196 = phi i64 [ %phidx_178, %188 ], [ %phidx_244, %220 ]
  %phibase_335 = phi double* [ %phibase_317, %188 ], [ %phibase_383, %220 ]
  %phidx_336 = phi i64 [ %phidx_318, %188 ], [ %phidx_384, %220 ]
  %phibase_475 = phi double* [ %phibase_457, %188 ], [ %phibase_523, %220 ]
  %phidx_476 = phi i64 [ %phidx_458, %188 ], [ %phidx_524, %220 ]
  %224 = icmp eq i32 %193, 0
  br i1 %224, label %236, label %225

; <label>:225:                                    ; preds = %222
  %phibase_79 = phi double* [ %phibase_55, %222 ]
  %phidx_80 = phi i64 [ %phidx_56, %222 ]
  %phibase_219 = phi double* [ %phibase_195, %222 ]
  %phidx_220 = phi i64 [ %phidx_196, %222 ]
  %phibase_359 = phi double* [ %phibase_335, %222 ]
  %phidx_360 = phi i64 [ %phidx_336, %222 ]
  %phibase_499 = phi double* [ %phibase_475, %222 ]
  %phidx_500 = phi i64 [ %phidx_476, %222 ]
  br label %226

; <label>:226:                                    ; preds = %225
  %phibase_101 = phi double* [ %phibase_79, %225 ]
  %phidx_102 = phi i64 [ %phidx_80, %225 ]
  %phibase_241 = phi double* [ %phibase_219, %225 ]
  %phidx_242 = phi i64 [ %phidx_220, %225 ]
  %phibase_381 = phi double* [ %phibase_359, %225 ]
  %phidx_382 = phi i64 [ %phidx_360, %225 ]
  %phibase_521 = phi double* [ %phibase_499, %225 ]
  %phidx_522 = phi i64 [ %phidx_500, %225 ]
  %227 = add nsw i64 %223, %145
  %relidx_601 = sub i64 %227, %phidx_242
  %newgep_602 = getelementptr double, double* %phibase_241, i64 %relidx_601
  %228 = load double, double* %newgep_602, align 8, !tbaa !27
  %relidx_603 = sub i64 %227, %phidx_382
  %newgep_604 = getelementptr double, double* %phibase_381, i64 %relidx_603
  %229 = load double, double* %newgep_604, align 8, !tbaa !27
  %230 = add nsw i64 %223, %147
  %relidx_605 = sub i64 %230, %227
  %newgep_606 = getelementptr double, double* %newgep_604, i64 %relidx_605
  %231 = load double, double* %newgep_606, align 8, !tbaa !27
  %232 = fsub double %229, %231
  %233 = fmul double %232, 5.000000e-01
  %234 = fsub double %228, %233
  store double %234, double* %newgep_602, align 8, !tbaa !27
  br label %235

; <label>:235:                                    ; preds = %226
  %phibase_121 = phi double* [ %phibase_101, %226 ]
  %phidx_122 = phi i64 [ %phidx_102, %226 ]
  %phibase_261 = phi double* [ %newgep_602, %226 ]
  %phidx_262 = phi i64 [ %227, %226 ]
  %phibase_401 = phi double* [ %newgep_606, %226 ]
  %phidx_402 = phi i64 [ %230, %226 ]
  %phibase_541 = phi double* [ %phibase_521, %226 ]
  %phidx_542 = phi i64 [ %phidx_522, %226 ]
  br label %236

; <label>:236:                                    ; preds = %222, %235
  %phibase_77 = phi double* [ %phibase_55, %222 ], [ %phibase_121, %235 ]
  %phidx_78 = phi i64 [ %phidx_56, %222 ], [ %phidx_122, %235 ]
  %phibase_217 = phi double* [ %phibase_195, %222 ], [ %phibase_261, %235 ]
  %phidx_218 = phi i64 [ %phidx_196, %222 ], [ %phidx_262, %235 ]
  %phibase_357 = phi double* [ %phibase_335, %222 ], [ %phibase_401, %235 ]
  %phidx_358 = phi i64 [ %phidx_336, %222 ], [ %phidx_402, %235 ]
  %phibase_497 = phi double* [ %phibase_475, %222 ], [ %phibase_541, %235 ]
  %phidx_498 = phi i64 [ %phidx_476, %222 ], [ %phidx_542, %235 ]
  br label %237

; <label>:237:                                    ; preds = %236, %187
  %phibase_99 = phi double* [ %phibase_77, %236 ], [ %phibase_123, %187 ]
  %phidx_100 = phi i64 [ %phidx_78, %236 ], [ %phidx_124, %187 ]
  %phibase_239 = phi double* [ %phibase_217, %236 ], [ %phibase_263, %187 ]
  %phidx_240 = phi i64 [ %phidx_218, %236 ], [ %phidx_264, %187 ]
  %phibase_379 = phi double* [ %phibase_357, %236 ], [ %phibase_403, %187 ]
  %phidx_380 = phi i64 [ %phidx_358, %236 ], [ %phidx_404, %187 ]
  %phibase_519 = phi double* [ %phibase_497, %236 ], [ %phibase_543, %187 ]
  %phidx_520 = phi i64 [ %phidx_498, %236 ], [ %phidx_544, %187 ]
  %238 = add nuw nsw i64 %140, 1
  %239 = trunc i64 %238 to i32
  %240 = icmp eq i32 %239, %1
  %241 = add i64 %139, 1
  br i1 %240, label %271, label %138

; <label>:242:                                    ; preds = %242, %72
  %243 = phi i64 [ %66, %72 ], [ %268, %242 ]
  %244 = phi i32 [ %73, %72 ], [ %269, %242 ]
  %phibase_33 = phi double* [ %phibase_33, %242 ], [ %phibase_19, %72 ]
  %phidx_34 = phi i64 [ %phidx_34, %242 ], [ %phidx_20, %72 ]
  %phibase_173 = phi double* [ %newgep_622, %242 ], [ %phibase_159, %72 ]
  %phidx_174 = phi i64 [ %265, %242 ], [ %phidx_160, %72 ]
  %phibase_313 = phi double* [ %phibase_313, %242 ], [ %phibase_299, %72 ]
  %phidx_314 = phi i64 [ %phidx_314, %242 ], [ %phidx_300, %72 ]
  %phibase_453 = phi double* [ %phibase_453, %242 ], [ %phibase_439, %72 ]
  %phidx_454 = phi i64 [ %phidx_454, %242 ], [ %phidx_440, %72 ]
  %245 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_607 = sub i64 %243, %phidx_174
  %newgep_608 = getelementptr double, double* %phibase_173, i64 %relidx_607
  %246 = bitcast double* %newgep_608 to i64*
  store i64 %245, i64* %246, align 8, !tbaa !27
  %247 = or i64 %243, 1
  %248 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_609 = sub i64 %247, %243
  %newgep_610 = getelementptr double, double* %newgep_608, i64 %relidx_609
  %249 = bitcast double* %newgep_610 to i64*
  store i64 %248, i64* %249, align 8, !tbaa !27
  %250 = or i64 %243, 2
  %251 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_611 = sub i64 %250, %247
  %newgep_612 = getelementptr double, double* %newgep_610, i64 %relidx_611
  %252 = bitcast double* %newgep_612 to i64*
  store i64 %251, i64* %252, align 8, !tbaa !27
  %253 = or i64 %243, 3
  %254 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_613 = sub i64 %253, %250
  %newgep_614 = getelementptr double, double* %newgep_612, i64 %relidx_613
  %255 = bitcast double* %newgep_614 to i64*
  store i64 %254, i64* %255, align 8, !tbaa !27
  %256 = add nsw i64 %243, 4
  %257 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_615 = sub i64 %256, %253
  %newgep_616 = getelementptr double, double* %newgep_614, i64 %relidx_615
  %258 = bitcast double* %newgep_616 to i64*
  store i64 %257, i64* %258, align 8, !tbaa !27
  %259 = add nsw i64 %243, 5
  %260 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_617 = sub i64 %259, %256
  %newgep_618 = getelementptr double, double* %newgep_616, i64 %relidx_617
  %261 = bitcast double* %newgep_618 to i64*
  store i64 %260, i64* %261, align 8, !tbaa !27
  %262 = add nsw i64 %243, 6
  %263 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_619 = sub i64 %262, %259
  %newgep_620 = getelementptr double, double* %newgep_618, i64 %relidx_619
  %264 = bitcast double* %newgep_620 to i64*
  store i64 %263, i64* %264, align 8, !tbaa !27
  %265 = add nsw i64 %243, 7
  %266 = load i64, i64* %64, align 8, !tbaa !27
  %relidx_621 = sub i64 %265, %262
  %newgep_622 = getelementptr double, double* %newgep_620, i64 %relidx_621
  %267 = bitcast double* %newgep_622 to i64*
  store i64 %266, i64* %267, align 8, !tbaa !27
  %268 = add nsw i64 %243, 8
  %269 = add i32 %244, -8
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %120, label %242, !llvm.loop !61

; <label>:271:                                    ; preds = %237
  %phibase_119 = phi double* [ %phibase_99, %237 ]
  %phidx_120 = phi i64 [ %phidx_100, %237 ]
  %phibase_259 = phi double* [ %phibase_239, %237 ]
  %phidx_260 = phi i64 [ %phidx_240, %237 ]
  %phibase_399 = phi double* [ %phibase_379, %237 ]
  %phidx_400 = phi i64 [ %phidx_380, %237 ]
  %phibase_539 = phi double* [ %phibase_519, %237 ]
  %phidx_540 = phi i64 [ %phidx_520, %237 ]
  br label %272

; <label>:272:                                    ; preds = %271, %136
  %phibase_15 = phi double* [ %phibase_119, %271 ], [ %phibase_7, %136 ]
  %phidx_16 = phi i64 [ %phidx_120, %271 ], [ %phidx_8, %136 ]
  %phibase_155 = phi double* [ %phibase_259, %271 ], [ %phibase_147, %136 ]
  %phidx_156 = phi i64 [ %phidx_260, %271 ], [ %phidx_148, %136 ]
  %phibase_295 = phi double* [ %phibase_399, %271 ], [ %phibase_287, %136 ]
  %phidx_296 = phi i64 [ %phidx_400, %271 ], [ %phidx_288, %136 ]
  %phibase_435 = phi double* [ %phibase_539, %271 ], [ %phibase_427, %136 ]
  %phidx_436 = phi i64 [ %phidx_540, %271 ], [ %phidx_428, %136 ]
  br i1 %50, label %335, label %273

; <label>:273:                                    ; preds = %272
  %phibase_27 = phi double* [ %phibase_15, %272 ]
  %phidx_28 = phi i64 [ %phidx_16, %272 ]
  %phibase_167 = phi double* [ %phibase_155, %272 ]
  %phidx_168 = phi i64 [ %phidx_156, %272 ]
  %phibase_307 = phi double* [ %phibase_295, %272 ]
  %phidx_308 = phi i64 [ %phidx_296, %272 ]
  %phibase_447 = phi double* [ %phibase_435, %272 ]
  %phidx_448 = phi i64 [ %phidx_436, %272 ]
  br label %274

; <label>:274:                                    ; preds = %273, %331
  %275 = phi i32 [ %332, %331 ], [ 0, %273 ]
  %phibase_45 = phi double* [ %phibase_27, %273 ], [ %phibase_89, %331 ]
  %phidx_46 = phi i64 [ %phidx_28, %273 ], [ %phidx_90, %331 ]
  %phibase_185 = phi double* [ %phibase_167, %273 ], [ %phibase_229, %331 ]
  %phidx_186 = phi i64 [ %phidx_168, %273 ], [ %phidx_230, %331 ]
  %phibase_325 = phi double* [ %phibase_307, %273 ], [ %phibase_369, %331 ]
  %phidx_326 = phi i64 [ %phidx_308, %273 ], [ %phidx_370, %331 ]
  %phibase_465 = phi double* [ %phibase_447, %273 ], [ %phibase_509, %331 ]
  %phidx_466 = phi i64 [ %phidx_448, %273 ], [ %phidx_510, %331 ]
  %276 = mul nsw i32 %275, %2
  %277 = add i32 %276, -1
  br i1 %58, label %314, label %278

; <label>:278:                                    ; preds = %274
  %phibase_67 = phi double* [ %phibase_45, %274 ]
  %phidx_68 = phi i64 [ %phidx_46, %274 ]
  %phibase_207 = phi double* [ %phibase_185, %274 ]
  %phidx_208 = phi i64 [ %phidx_186, %274 ]
  %phibase_347 = phi double* [ %phibase_325, %274 ]
  %phidx_348 = phi i64 [ %phidx_326, %274 ]
  %phibase_487 = phi double* [ %phibase_465, %274 ]
  %phidx_488 = phi i64 [ %phidx_466, %274 ]
  br label %279

; <label>:279:                                    ; preds = %279, %278
  %280 = phi i64 [ 1, %278 ], [ %307, %279 ]
  %281 = phi i32 [ 1, %278 ], [ %308, %279 ]
  %282 = phi i32 [ %59, %278 ], [ %309, %279 ]
  %phibase_93 = phi double* [ %newgep_626, %279 ], [ %phibase_67, %278 ]
  %phidx_94 = phi i64 [ %297, %279 ], [ %phidx_68, %278 ]
  %phibase_233 = phi double* [ %phibase_233, %279 ], [ %phibase_207, %278 ]
  %phidx_234 = phi i64 [ %phidx_234, %279 ], [ %phidx_208, %278 ]
  %phibase_373 = phi double* [ %newgep_634, %279 ], [ %phibase_347, %278 ]
  %phidx_374 = phi i64 [ %302, %279 ], [ %phidx_348, %278 ]
  %phibase_513 = phi double* [ %phibase_513, %279 ], [ %phibase_487, %278 ]
  %phidx_514 = phi i64 [ %phidx_514, %279 ], [ %phidx_488, %278 ]
  %283 = add nsw i32 %281, %276
  %284 = sext i32 %283 to i64
  %relidx_623 = sub i64 %284, %phidx_94
  %newgep_624 = getelementptr double, double* %phibase_93, i64 %relidx_623
  %285 = load double, double* %newgep_624, align 8, !tbaa !27
  %relidx_627 = sub i64 %284, %phidx_374
  %newgep_628 = getelementptr double, double* %phibase_373, i64 %relidx_627
  %286 = load double, double* %newgep_628, align 8, !tbaa !27
  %287 = trunc i64 %280 to i32
  %288 = add i32 %277, %287
  %289 = sext i32 %288 to i64
  %relidx_629 = sub i64 %289, %284
  %newgep_630 = getelementptr double, double* %newgep_628, i64 %relidx_629
  %290 = load double, double* %newgep_630, align 8, !tbaa !27
  %291 = fsub double %286, %290
  %292 = fmul double %291, 5.000000e-01
  %293 = fsub double %285, %292
  store double %293, double* %newgep_624, align 8, !tbaa !27
  %294 = add nuw nsw i64 %280, 1
  %295 = add nuw nsw i32 %281, 1
  %296 = add nsw i32 %295, %276
  %297 = sext i32 %296 to i64
  %relidx_625 = sub i64 %297, %284
  %newgep_626 = getelementptr double, double* %newgep_624, i64 %relidx_625
  %298 = load double, double* %newgep_626, align 8, !tbaa !27
  %relidx_631 = sub i64 %297, %289
  %newgep_632 = getelementptr double, double* %newgep_630, i64 %relidx_631
  %299 = load double, double* %newgep_632, align 8, !tbaa !27
  %300 = trunc i64 %294 to i32
  %301 = add i32 %277, %300
  %302 = sext i32 %301 to i64
  %relidx_633 = sub i64 %302, %297
  %newgep_634 = getelementptr double, double* %newgep_632, i64 %relidx_633
  %303 = load double, double* %newgep_634, align 8, !tbaa !27
  %304 = fsub double %299, %303
  %305 = fmul double %304, 5.000000e-01
  %306 = fsub double %298, %305
  store double %306, double* %newgep_626, align 8, !tbaa !27
  %307 = add nsw i64 %280, 2
  %308 = add nsw i32 %281, 2
  %309 = add i32 %282, -2
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %279

; <label>:311:                                    ; preds = %279
  %312 = phi i32 [ %308, %279 ]
  %313 = phi i64 [ %307, %279 ]
  %phibase_115 = phi double* [ %newgep_626, %279 ]
  %phidx_116 = phi i64 [ %297, %279 ]
  %phibase_255 = phi double* [ %phibase_233, %279 ]
  %phidx_256 = phi i64 [ %phidx_234, %279 ]
  %phibase_395 = phi double* [ %newgep_634, %279 ]
  %phidx_396 = phi i64 [ %302, %279 ]
  %phibase_535 = phi double* [ %phibase_513, %279 ]
  %phidx_536 = phi i64 [ %phidx_514, %279 ]
  br label %314

; <label>:314:                                    ; preds = %274, %311
  %315 = phi i64 [ 1, %274 ], [ %313, %311 ]
  %316 = phi i32 [ 1, %274 ], [ %312, %311 ]
  %phibase_65 = phi double* [ %phibase_45, %274 ], [ %phibase_115, %311 ]
  %phidx_66 = phi i64 [ %phidx_46, %274 ], [ %phidx_116, %311 ]
  %phibase_205 = phi double* [ %phibase_185, %274 ], [ %phibase_255, %311 ]
  %phidx_206 = phi i64 [ %phidx_186, %274 ], [ %phidx_256, %311 ]
  %phibase_345 = phi double* [ %phibase_325, %274 ], [ %phibase_395, %311 ]
  %phidx_346 = phi i64 [ %phidx_326, %274 ], [ %phidx_396, %311 ]
  %phibase_485 = phi double* [ %phibase_465, %274 ], [ %phibase_535, %311 ]
  %phidx_486 = phi i64 [ %phidx_466, %274 ], [ %phidx_536, %311 ]
  br i1 %60, label %331, label %317

; <label>:317:                                    ; preds = %314
  %phibase_91 = phi double* [ %phibase_65, %314 ]
  %phidx_92 = phi i64 [ %phidx_66, %314 ]
  %phibase_231 = phi double* [ %phibase_205, %314 ]
  %phidx_232 = phi i64 [ %phidx_206, %314 ]
  %phibase_371 = phi double* [ %phibase_345, %314 ]
  %phidx_372 = phi i64 [ %phidx_346, %314 ]
  %phibase_511 = phi double* [ %phibase_485, %314 ]
  %phidx_512 = phi i64 [ %phidx_486, %314 ]
  br label %318

; <label>:318:                                    ; preds = %317
  %phibase_113 = phi double* [ %phibase_91, %317 ]
  %phidx_114 = phi i64 [ %phidx_92, %317 ]
  %phibase_253 = phi double* [ %phibase_231, %317 ]
  %phidx_254 = phi i64 [ %phidx_232, %317 ]
  %phibase_393 = phi double* [ %phibase_371, %317 ]
  %phidx_394 = phi i64 [ %phidx_372, %317 ]
  %phibase_533 = phi double* [ %phibase_511, %317 ]
  %phidx_534 = phi i64 [ %phidx_512, %317 ]
  %319 = add nsw i32 %316, %276
  %320 = sext i32 %319 to i64
  %relidx_635 = sub i64 %320, %phidx_114
  %newgep_636 = getelementptr double, double* %phibase_113, i64 %relidx_635
  %321 = load double, double* %newgep_636, align 8, !tbaa !27
  %relidx_637 = sub i64 %320, %phidx_394
  %newgep_638 = getelementptr double, double* %phibase_393, i64 %relidx_637
  %322 = load double, double* %newgep_638, align 8, !tbaa !27
  %323 = trunc i64 %315 to i32
  %324 = add i32 %277, %323
  %325 = sext i32 %324 to i64
  %relidx_639 = sub i64 %325, %320
  %newgep_640 = getelementptr double, double* %newgep_638, i64 %relidx_639
  %326 = load double, double* %newgep_640, align 8, !tbaa !27
  %327 = fsub double %322, %326
  %328 = fmul double %327, 5.000000e-01
  %329 = fsub double %321, %328
  store double %329, double* %newgep_636, align 8, !tbaa !27
  br label %330

; <label>:330:                                    ; preds = %318
  %phibase_129 = phi double* [ %newgep_636, %318 ]
  %phidx_130 = phi i64 [ %320, %318 ]
  %phibase_269 = phi double* [ %phibase_253, %318 ]
  %phidx_270 = phi i64 [ %phidx_254, %318 ]
  %phibase_409 = phi double* [ %newgep_640, %318 ]
  %phidx_410 = phi i64 [ %325, %318 ]
  %phibase_549 = phi double* [ %phibase_533, %318 ]
  %phidx_550 = phi i64 [ %phidx_534, %318 ]
  br label %331

; <label>:331:                                    ; preds = %314, %330
  %phibase_89 = phi double* [ %phibase_65, %314 ], [ %phibase_129, %330 ]
  %phidx_90 = phi i64 [ %phidx_66, %314 ], [ %phidx_130, %330 ]
  %phibase_229 = phi double* [ %phibase_205, %314 ], [ %phibase_269, %330 ]
  %phidx_230 = phi i64 [ %phidx_206, %314 ], [ %phidx_270, %330 ]
  %phibase_369 = phi double* [ %phibase_345, %314 ], [ %phibase_409, %330 ]
  %phidx_370 = phi i64 [ %phidx_346, %314 ], [ %phidx_410, %330 ]
  %phibase_509 = phi double* [ %phibase_485, %314 ], [ %phibase_549, %330 ]
  %phidx_510 = phi i64 [ %phidx_486, %314 ], [ %phidx_550, %330 ]
  %332 = add nuw nsw i32 %275, 1
  %333 = icmp eq i32 %332, %1
  br i1 %333, label %334, label %274

; <label>:334:                                    ; preds = %331
  %phibase_111 = phi double* [ %phibase_89, %331 ]
  %phidx_112 = phi i64 [ %phidx_90, %331 ]
  %phibase_251 = phi double* [ %phibase_229, %331 ]
  %phidx_252 = phi i64 [ %phidx_230, %331 ]
  %phibase_391 = phi double* [ %phibase_369, %331 ]
  %phidx_392 = phi i64 [ %phidx_370, %331 ]
  %phibase_531 = phi double* [ %phibase_509, %331 ]
  %phidx_532 = phi i64 [ %phidx_510, %331 ]
  br label %335

; <label>:335:                                    ; preds = %334, %272
  %phibase_25 = phi double* [ %phibase_111, %334 ], [ %phibase_15, %272 ]
  %phidx_26 = phi i64 [ %phidx_112, %334 ], [ %phidx_16, %272 ]
  %phibase_165 = phi double* [ %phibase_251, %334 ], [ %phibase_155, %272 ]
  %phidx_166 = phi i64 [ %phidx_252, %334 ], [ %phidx_156, %272 ]
  %phibase_305 = phi double* [ %phibase_391, %334 ], [ %phibase_295, %272 ]
  %phidx_306 = phi i64 [ %phidx_392, %334 ], [ %phidx_296, %272 ]
  %phibase_445 = phi double* [ %phibase_531, %334 ], [ %phibase_435, %272 ]
  %phidx_446 = phi i64 [ %phidx_532, %334 ], [ %phidx_436, %272 ]
  br i1 %51, label %336, label %426

; <label>:336:                                    ; preds = %335
  %phibase_41 = phi double* [ %phibase_25, %335 ]
  %phidx_42 = phi i64 [ %phidx_26, %335 ]
  %phibase_181 = phi double* [ %phibase_165, %335 ]
  %phidx_182 = phi i64 [ %phidx_166, %335 ]
  %phibase_321 = phi double* [ %phibase_305, %335 ]
  %phidx_322 = phi i64 [ %phidx_306, %335 ]
  %phibase_461 = phi double* [ %phibase_445, %335 ]
  %phidx_462 = phi i64 [ %phidx_446, %335 ]
  br label %337

; <label>:337:                                    ; preds = %336, %422
  %338 = phi i64 [ %349, %422 ], [ 0, %336 ]
  %phibase_61 = phi double* [ %phibase_41, %336 ], [ %phibase_131, %422 ]
  %phidx_62 = phi i64 [ %phidx_42, %336 ], [ %phidx_132, %422 ]
  %phibase_201 = phi double* [ %phibase_181, %336 ], [ %phibase_271, %422 ]
  %phidx_202 = phi i64 [ %phidx_182, %336 ], [ %phidx_272, %422 ]
  %phibase_341 = phi double* [ %phibase_321, %336 ], [ %phibase_411, %422 ]
  %phidx_342 = phi i64 [ %phidx_322, %336 ], [ %phidx_412, %422 ]
  %phibase_481 = phi double* [ %phibase_461, %336 ], [ %phibase_551, %422 ]
  %phidx_482 = phi i64 [ %phidx_462, %336 ], [ %phidx_552, %422 ]
  %339 = mul i64 %15, %338
  %relidx_655 = sub i64 %339, %phidx_342
  %newgep_656 = getelementptr double, double* %phibase_341, i64 %relidx_655
  %340 = add i64 %19, %339
  %relidx_657 = sub i64 %340, %339
  %newgep_658 = getelementptr double, double* %newgep_656, i64 %relidx_657
  %relidx_641 = sub i64 %339, %phidx_62
  %newgep_642 = getelementptr double, double* %phibase_61, i64 %relidx_641
  %relidx_643 = sub i64 %340, %339
  %newgep_644 = getelementptr double, double* %newgep_642, i64 %relidx_643
  %341 = mul i64 %20, %338
  %342 = shl i64 %341, 32
  %343 = add i64 %342, 4294967296
  %344 = ashr exact i64 %343, 32
  %relidx_645 = sub i64 %344, %340
  %newgep_646 = getelementptr double, double* %newgep_644, i64 %relidx_645
  %345 = getelementptr double, double* %newgep_, i64 %344
  %relidx_647 = sub i64 %339, %phidx_202
  %newgep_648 = getelementptr double, double* %phibase_201, i64 %relidx_647
  %relidx_649 = sub i64 %340, %339
  %newgep_650 = getelementptr double, double* %newgep_648, i64 %relidx_649
  %346 = add i64 %15, %339
  %relidx_651 = sub i64 %346, %340
  %newgep_652 = getelementptr double, double* %newgep_650, i64 %relidx_651
  %347 = add i64 %21, %339
  %relidx_653 = sub i64 %347, %346
  %newgep_654 = getelementptr double, double* %newgep_652, i64 %relidx_653
  %348 = mul nsw i64 %338, %15
  %349 = add nuw nsw i64 %338, 1
  %350 = mul nsw i64 %349, %15
  %351 = trunc i64 %348 to i32
  br i1 %52, label %397, label %352

; <label>:352:                                    ; preds = %337
  %phibase_87 = phi double* [ %newgep_646, %337 ]
  %phidx_88 = phi i64 [ %344, %337 ]
  %phibase_227 = phi double* [ %newgep_654, %337 ]
  %phidx_228 = phi i64 [ %347, %337 ]
  %phibase_367 = phi double* [ %newgep_658, %337 ]
  %phidx_368 = phi i64 [ %340, %337 ]
  %phibase_507 = phi double* [ %phibase_481, %337 ]
  %phidx_508 = phi i64 [ %phidx_482, %337 ]
  br i1 %54, label %397, label %353

; <label>:353:                                    ; preds = %352
  %phibase_109 = phi double* [ %phibase_87, %352 ]
  %phidx_110 = phi i64 [ %phidx_88, %352 ]
  %phibase_249 = phi double* [ %phibase_227, %352 ]
  %phidx_250 = phi i64 [ %phidx_228, %352 ]
  %phibase_389 = phi double* [ %phibase_367, %352 ]
  %phidx_390 = phi i64 [ %phidx_368, %352 ]
  %phibase_529 = phi double* [ %phibase_507, %352 ]
  %phidx_530 = phi i64 [ %phidx_508, %352 ]
  %354 = icmp ule double* %newgep_656, %newgep_644
  %355 = icmp ule double* %newgep_642, %newgep_658
  %356 = and i1 %354, %355
  %357 = icmp ule double* %newgep_656, %345
  %358 = icmp ule double* %newgep_646, %newgep_658
  %359 = and i1 %357, %358
  %360 = or i1 %356, %359
  %361 = icmp ule double* %newgep_656, %newgep_650
  %362 = icmp ule double* %newgep_648, %newgep_658
  %363 = and i1 %361, %362
  %364 = or i1 %360, %363
  %365 = icmp ule double* %newgep_656, %newgep_654
  %366 = icmp ule double* %newgep_652, %newgep_658
  %367 = and i1 %365, %366
  %368 = or i1 %364, %367
  br i1 %368, label %397, label %369

; <label>:369:                                    ; preds = %353
  %phibase_127 = phi double* [ %phibase_109, %353 ]
  %phidx_128 = phi i64 [ %phidx_110, %353 ]
  %phibase_267 = phi double* [ %phibase_249, %353 ]
  %phidx_268 = phi i64 [ %phidx_250, %353 ]
  %phibase_407 = phi double* [ %phibase_389, %353 ]
  %phidx_408 = phi i64 [ %phidx_390, %353 ]
  %phibase_547 = phi double* [ %phibase_529, %353 ]
  %phidx_548 = phi i64 [ %phidx_530, %353 ]
  br label %370

; <label>:370:                                    ; preds = %369, %370
  %371 = phi i64 [ %394, %370 ], [ 0, %369 ]
  %phibase_133 = phi double* [ %phibase_127, %369 ], [ %newgep_662, %370 ]
  %phidx_134 = phi i64 [ %phidx_128, %369 ], [ %372, %370 ]
  %phibase_273 = phi double* [ %phibase_267, %369 ], [ %newgep_666, %370 ]
  %phidx_274 = phi i64 [ %phidx_268, %369 ], [ %372, %370 ]
  %phibase_413 = phi double* [ %phibase_407, %369 ], [ %newgep_668, %370 ]
  %phidx_414 = phi i64 [ %phidx_408, %369 ], [ %372, %370 ]
  %phibase_553 = phi double* [ %phibase_547, %369 ], [ %phibase_553, %370 ]
  %phidx_554 = phi i64 [ %phidx_548, %369 ], [ %phidx_554, %370 ]
  %372 = add nsw i64 %371, %348
  %relidx_667 = sub i64 %372, %phidx_414
  %newgep_668 = getelementptr double, double* %phibase_413, i64 %relidx_667
  %373 = bitcast double* %newgep_668 to <2 x double>*
  %374 = load <2 x double>, <2 x double>* %373, align 8, !tbaa !27, !alias.scope !62, !noalias !65
  %375 = or i64 %371, 1
  %376 = add i64 %375, %348
  %377 = shl i64 %376, 32
  %378 = ashr exact i64 %377, 32
  %relidx_659 = sub i64 %378, %phidx_134
  %newgep_660 = getelementptr double, double* %phibase_133, i64 %relidx_659
  %379 = bitcast double* %newgep_660 to <2 x double>*
  %380 = load <2 x double>, <2 x double>* %379, align 8, !tbaa !27, !alias.scope !70
  %relidx_661 = sub i64 %372, %378
  %newgep_662 = getelementptr double, double* %newgep_660, i64 %relidx_661
  %381 = bitcast double* %newgep_662 to <2 x double>*
  %382 = load <2 x double>, <2 x double>* %381, align 8, !tbaa !27, !alias.scope !71
  %383 = fsub <2 x double> %380, %382
  %384 = add nsw i64 %371, %350
  %relidx_663 = sub i64 %384, %phidx_274
  %newgep_664 = getelementptr double, double* %phibase_273, i64 %relidx_663
  %385 = bitcast double* %newgep_664 to <2 x double>*
  %386 = load <2 x double>, <2 x double>* %385, align 8, !tbaa !27, !alias.scope !72
  %387 = fadd <2 x double> %383, %386
  %relidx_665 = sub i64 %372, %384
  %newgep_666 = getelementptr double, double* %newgep_664, i64 %relidx_665
  %388 = bitcast double* %newgep_666 to <2 x double>*
  %389 = load <2 x double>, <2 x double>* %388, align 8, !tbaa !27, !alias.scope !73
  %390 = fsub <2 x double> %387, %389
  %391 = fmul <2 x double> %390, <double 7.000000e-01, double 7.000000e-01>
  %392 = fsub <2 x double> %374, %391
  %393 = bitcast double* %newgep_668 to <2 x double>*
  store <2 x double> %392, <2 x double>* %393, align 8, !tbaa !27, !alias.scope !62, !noalias !65
  %394 = add i64 %371, 2
  %395 = icmp eq i64 %394, %53
  br i1 %395, label %396, label %370, !llvm.loop !74

; <label>:396:                                    ; preds = %370
  %phibase_137 = phi double* [ %newgep_662, %370 ]
  %phidx_138 = phi i64 [ %372, %370 ]
  %phibase_277 = phi double* [ %newgep_666, %370 ]
  %phidx_278 = phi i64 [ %372, %370 ]
  %phibase_417 = phi double* [ %newgep_668, %370 ]
  %phidx_418 = phi i64 [ %372, %370 ]
  %phibase_557 = phi double* [ %phibase_553, %370 ]
  %phidx_558 = phi i64 [ %phidx_554, %370 ]
  br i1 %56, label %422, label %397

; <label>:397:                                    ; preds = %396, %353, %352, %337
  %398 = phi i64 [ 0, %353 ], [ 0, %352 ], [ 0, %337 ], [ %53, %396 ]
  %399 = phi i32 [ 0, %353 ], [ 0, %352 ], [ 0, %337 ], [ %55, %396 ]
  %phibase_85 = phi double* [ %phibase_137, %396 ], [ %phibase_109, %353 ], [ %phibase_87, %352 ], [ %newgep_646, %337 ]
  %phidx_86 = phi i64 [ %phidx_138, %396 ], [ %phidx_110, %353 ], [ %phidx_88, %352 ], [ %344, %337 ]
  %phibase_225 = phi double* [ %phibase_277, %396 ], [ %phibase_249, %353 ], [ %phibase_227, %352 ], [ %newgep_654, %337 ]
  %phidx_226 = phi i64 [ %phidx_278, %396 ], [ %phidx_250, %353 ], [ %phidx_228, %352 ], [ %347, %337 ]
  %phibase_365 = phi double* [ %phibase_417, %396 ], [ %phibase_389, %353 ], [ %phibase_367, %352 ], [ %newgep_658, %337 ]
  %phidx_366 = phi i64 [ %phidx_418, %396 ], [ %phidx_390, %353 ], [ %phidx_368, %352 ], [ %340, %337 ]
  %phibase_505 = phi double* [ %phibase_557, %396 ], [ %phibase_529, %353 ], [ %phibase_507, %352 ], [ %phibase_481, %337 ]
  %phidx_506 = phi i64 [ %phidx_558, %396 ], [ %phidx_530, %353 ], [ %phidx_508, %352 ], [ %phidx_482, %337 ]
  br label %400

; <label>:400:                                    ; preds = %397, %400
  %401 = phi i64 [ %405, %400 ], [ %398, %397 ]
  %402 = phi i32 [ %406, %400 ], [ %399, %397 ]
  %phibase_107 = phi double* [ %phibase_85, %397 ], [ %newgep_672, %400 ]
  %phidx_108 = phi i64 [ %phidx_86, %397 ], [ %403, %400 ]
  %phibase_247 = phi double* [ %phibase_225, %397 ], [ %newgep_676, %400 ]
  %phidx_248 = phi i64 [ %phidx_226, %397 ], [ %403, %400 ]
  %phibase_387 = phi double* [ %phibase_365, %397 ], [ %newgep_678, %400 ]
  %phidx_388 = phi i64 [ %phidx_366, %397 ], [ %403, %400 ]
  %phibase_527 = phi double* [ %phibase_505, %397 ], [ %phibase_527, %400 ]
  %phidx_528 = phi i64 [ %phidx_506, %397 ], [ %phidx_528, %400 ]
  %403 = add nsw i64 %401, %348
  %relidx_677 = sub i64 %403, %phidx_388
  %newgep_678 = getelementptr double, double* %phibase_387, i64 %relidx_677
  %404 = load double, double* %newgep_678, align 8, !tbaa !27
  %405 = add nuw nsw i64 %401, 1
  %406 = add nuw nsw i32 %402, 1
  %407 = add nsw i32 %406, %351
  %408 = sext i32 %407 to i64
  %relidx_669 = sub i64 %408, %phidx_108
  %newgep_670 = getelementptr double, double* %phibase_107, i64 %relidx_669
  %409 = load double, double* %newgep_670, align 8, !tbaa !27
  %relidx_671 = sub i64 %403, %408
  %newgep_672 = getelementptr double, double* %newgep_670, i64 %relidx_671
  %410 = load double, double* %newgep_672, align 8, !tbaa !27
  %411 = fsub double %409, %410
  %412 = add nsw i64 %401, %350
  %relidx_673 = sub i64 %412, %phidx_248
  %newgep_674 = getelementptr double, double* %phibase_247, i64 %relidx_673
  %413 = load double, double* %newgep_674, align 8, !tbaa !27
  %414 = fadd double %411, %413
  %relidx_675 = sub i64 %403, %412
  %newgep_676 = getelementptr double, double* %newgep_674, i64 %relidx_675
  %415 = load double, double* %newgep_676, align 8, !tbaa !27
  %416 = fsub double %414, %415
  %417 = fmul double %416, 7.000000e-01
  %418 = fsub double %404, %417
  store double %418, double* %newgep_678, align 8, !tbaa !27
  %419 = trunc i64 %405 to i32
  %420 = icmp eq i32 %419, %14
  br i1 %420, label %421, label %400, !llvm.loop !75

; <label>:421:                                    ; preds = %400
  %phibase_125 = phi double* [ %newgep_672, %400 ]
  %phidx_126 = phi i64 [ %403, %400 ]
  %phibase_265 = phi double* [ %newgep_676, %400 ]
  %phidx_266 = phi i64 [ %403, %400 ]
  %phibase_405 = phi double* [ %newgep_678, %400 ]
  %phidx_406 = phi i64 [ %403, %400 ]
  %phibase_545 = phi double* [ %phibase_527, %400 ]
  %phidx_546 = phi i64 [ %phidx_528, %400 ]
  br label %422

; <label>:422:                                    ; preds = %421, %396
  %phibase_131 = phi double* [ %phibase_125, %421 ], [ %phibase_137, %396 ]
  %phidx_132 = phi i64 [ %phidx_126, %421 ], [ %phidx_138, %396 ]
  %phibase_271 = phi double* [ %phibase_265, %421 ], [ %phibase_277, %396 ]
  %phidx_272 = phi i64 [ %phidx_266, %421 ], [ %phidx_278, %396 ]
  %phibase_411 = phi double* [ %phibase_405, %421 ], [ %phibase_417, %396 ]
  %phidx_412 = phi i64 [ %phidx_406, %421 ], [ %phidx_418, %396 ]
  %phibase_551 = phi double* [ %phibase_545, %421 ], [ %phibase_557, %396 ]
  %phidx_552 = phi i64 [ %phidx_546, %421 ], [ %phidx_558, %396 ]
  %423 = trunc i64 %349 to i32
  %424 = icmp eq i32 %423, %13
  br i1 %424, label %425, label %337

; <label>:425:                                    ; preds = %422
  %phibase_135 = phi double* [ %phibase_131, %422 ]
  %phidx_136 = phi i64 [ %phidx_132, %422 ]
  %phibase_275 = phi double* [ %phibase_271, %422 ]
  %phidx_276 = phi i64 [ %phidx_272, %422 ]
  %phibase_415 = phi double* [ %phibase_411, %422 ]
  %phidx_416 = phi i64 [ %phidx_412, %422 ]
  %phibase_555 = phi double* [ %phibase_551, %422 ]
  %phidx_556 = phi i64 [ %phidx_552, %422 ]
  br label %426

; <label>:426:                                    ; preds = %425, %335
  %phibase_43 = phi double* [ %phibase_135, %425 ], [ %phibase_25, %335 ]
  %phidx_44 = phi i64 [ %phidx_136, %425 ], [ %phidx_26, %335 ]
  %phibase_183 = phi double* [ %phibase_275, %425 ], [ %phibase_165, %335 ]
  %phidx_184 = phi i64 [ %phidx_276, %425 ], [ %phidx_166, %335 ]
  %phibase_323 = phi double* [ %phibase_415, %425 ], [ %phibase_305, %335 ]
  %phidx_324 = phi i64 [ %phidx_416, %425 ], [ %phidx_306, %335 ]
  %phibase_463 = phi double* [ %phibase_555, %425 ], [ %phibase_445, %335 ]
  %phidx_464 = phi i64 [ %phidx_556, %425 ], [ %phidx_446, %335 ]
  %427 = add nuw nsw i64 %62, 1
  %428 = trunc i64 %427 to i32
  %429 = icmp eq i32 %428, %0
  br i1 %429, label %430, label %61

; <label>:430:                                    ; preds = %426
  %phibase_63 = phi double* [ %phibase_43, %426 ]
  %phidx_64 = phi i64 [ %phidx_44, %426 ]
  %phibase_203 = phi double* [ %phibase_183, %426 ]
  %phidx_204 = phi i64 [ %phidx_184, %426 ]
  %phibase_343 = phi double* [ %phibase_323, %426 ]
  %phidx_344 = phi i64 [ %phidx_324, %426 ]
  %phibase_483 = phi double* [ %phibase_463, %426 ]
  %phidx_484 = phi i64 [ %phidx_464, %426 ]
  br label %431

; <label>:431:                                    ; preds = %430, %7
  %phibase_1 = phi double* [ %phibase_63, %430 ], [ %3, %7 ]
  %phidx_2 = phi i64 [ %phidx_64, %430 ], [ 0, %7 ]
  %phibase_141 = phi double* [ %phibase_203, %430 ], [ %4, %7 ]
  %phidx_142 = phi i64 [ %phidx_204, %430 ], [ 0, %7 ]
  %phibase_281 = phi double* [ %phibase_343, %430 ], [ %5, %7 ]
  %phidx_282 = phi i64 [ %phidx_344, %430 ], [ 0, %7 ]
  %phibase_421 = phi double* [ %phibase_483, %430 ], [ %6, %7 ]
  %phidx_422 = phi i64 [ %phidx_484, %430 ], [ 0, %7 ]
  %duprsltadr_ = getelementptr double, double* %3, i64 %phidx_2
  %castadr1 = ptrtoint double* %phibase_1 to i64
  %castadr2 = ptrtoint double* %duprsltadr_ to i64
  %cmpopdet = icmp ne i64 %castadr1, %castadr2
  %newdetval = zext i1 %cmpopdet to i64
  %ldolddetval = load i64, i64* @detectCounter
  %updetval = shl i64 %newdetval, 1
  %updetval679 = or i64 %updetval, %ldolddetval
  store i64 %updetval679, i64* @detectCounter
  %duprsltadr_680 = getelementptr double, double* %4, i64 %phidx_142
  %castadr1681 = ptrtoint double* %phibase_141 to i64
  %castadr2682 = ptrtoint double* %duprsltadr_680 to i64
  %cmpopdet683 = icmp ne i64 %castadr1681, %castadr2682
  %newdetval684 = zext i1 %cmpopdet683 to i64
  %ldolddetval685 = load i64, i64* @detectCounter
  %updetval686 = shl i64 %newdetval684, 1
  %updetval687 = or i64 %updetval686, %ldolddetval685
  store i64 %updetval687, i64* @detectCounter
  %duprsltadr_688 = getelementptr double, double* %5, i64 %phidx_282
  %castadr1689 = ptrtoint double* %phibase_281 to i64
  %castadr2690 = ptrtoint double* %duprsltadr_688 to i64
  %cmpopdet691 = icmp ne i64 %castadr1689, %castadr2690
  %newdetval692 = zext i1 %cmpopdet691 to i64
  %ldolddetval693 = load i64, i64* @detectCounter
  %updetval694 = shl i64 %newdetval692, 1
  %updetval695 = or i64 %updetval694, %ldolddetval693
  store i64 %updetval695, i64* @detectCounter
  %duprsltadr_696 = getelementptr double, double* %6, i64 %phidx_422
  %castadr1697 = ptrtoint double* %phibase_421 to i64
  %castadr2698 = ptrtoint double* %duprsltadr_696 to i64
  %cmpopdet699 = icmp ne i64 %castadr1697, %castadr2698
  %newdetval700 = zext i1 %cmpopdet699 to i64
  %ldolddetval701 = load i64, i64* @detectCounter
  %updetval702 = shl i64 %newdetval700, 1
  %updetval703 = or i64 %updetval702, %ldolddetval701
  store i64 %updetval703, i64* @detectCounter
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
