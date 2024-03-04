.class public Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;
.super Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/tencent/liteav/videoproducer/capture/ai;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation


# static fields
.field private static final DELAY_FOR_RESTART_CAMERA:I = 0x7d0

.field private static final DELAY_FOR_SWITCH_TO_CAMERA1:I = 0x3e8

.field private static final HOLD_POOL_MAX_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraCaptureSingleton"

.field private static final USE_DEFAULT_FRONT_CAMERA:Z = true

.field private static volatile sInstance:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;


# instance fields
.field private mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

.field private volatile mCameraRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

.field private final mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/aj;

.field private mCloudConfig:Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;

.field protected mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

.field protected mEGLCore:Lcom/tencent/liteav/videobase/b/e;

.field private mEnableTapToFocus:Z

.field private mEnableZoom:Z

.field private final mExpectFrontCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mExposureCompensation:F

.field protected mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

.field private mIsCameraAutoFocusFaceModeSupported:Z

.field private mIsCameraInRestarting:Z

.field private mIsCameraInSwitching:Z

.field private mIsFirstFrameCaptured:Z

.field private mIsFocusPositionInPreviewSupported:Z

.field private mIsTorchSupported:Z

.field private mIsZoomSupported:Z

.field private final mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

.field private final mMatrix:[F

.field private mMaxZoomLevel:I

.field private mNeedNotifyStartFinish:Z

.field private mOESTextureId:I

.field protected mPausedCount:I

.field private mPixelFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

.field private final mRestartCameraRunnable:Ljava/lang/Runnable;

.field private final mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

.field private mServerConfig:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

.field private mSharedContext:Ljava/lang/Object;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mSwitchToCamera1Runnable:Ljava/lang/Runnable;

.field private mTextureHolderPool:Lcom/tencent/liteav/videobase/frame/l;

.field private final mThrottlers:Lcom/tencent/liteav/base/b/b;

.field private mZoomPercent:F


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;-><init>()V

    .line 2
    new-instance p1, Lcom/tencent/liteav/base/b/b;

    invoke-direct {p1}, Lcom/tencent/liteav/base/b/b;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 3
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMatrix:[F

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mNeedNotifyStartFinish:Z

    .line 5
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/au;

    invoke-direct {v0}, Lcom/tencent/liteav/videoproducer/capture/au;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    .line 6
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/aj;

    invoke-direct {v0}, Lcom/tencent/liteav/videoproducer/capture/aj;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/aj;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    .line 9
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mExpectFrontCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, -0x1

    .line 10
    iput v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mOESTextureId:I

    .line 11
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableTapToFocus:Z

    .line 12
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableZoom:Z

    const/4 v3, 0x0

    .line 13
    iput v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mZoomPercent:F

    .line 14
    iput v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mExposureCompensation:F

    .line 15
    sget-object v3, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 16
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsFirstFrameCaptured:Z

    .line 17
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsZoomSupported:Z

    .line 18
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsTorchSupported:Z

    .line 19
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsFocusPositionInPreviewSupported:Z

    .line 20
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraAutoFocusFaceModeSupported:Z

    .line 21
    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMaxZoomLevel:I

    .line 22
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraInRestarting:Z

    .line 23
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraInSwitching:Z

    .line 24
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mServerConfig:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    .line 25
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCloudConfig:Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;

    .line 26
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton$1;-><init>(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mRestartCameraRunnable:Ljava/lang/Runnable;

    .line 27
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton$2;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton$2;-><init>(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSwitchToCamera1Runnable:Ljava/lang/Runnable;

    .line 28
    new-instance v0, Lcom/tencent/liteav/base/util/j;

    invoke-direct {v0}, Lcom/tencent/liteav/base/util/j;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    .line 29
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraInRestarting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)Lcom/tencent/liteav/videoproducer/capture/ah;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->openCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mRestartCameraRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)Lcom/tencent/liteav/base/util/j;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    return-object p0
.end method

.method static synthetic access$502(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraInSwitching:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSwitchToCamera1Runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private checkFirstFrameCaptured()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsFirstFrameCaptured:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsFirstFrameCaptured:Z

    const-string v0, "CameraCaptureSingleton"

    const-string v1, "camera capture first frame."

    .line 3
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 5

    const-string v0, "CameraCaptureSingleton"

    const-string v1, "closeCamera"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {v3}, Lcom/tencent/liteav/videoproducer/capture/ah;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    :goto_0
    sget-object v0, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 5
    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    .line 6
    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMaxZoomLevel:I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "closeCamera fail, Exception:"

    .line 7
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 10
    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 11
    :cond_1
    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mOESTextureId:I

    invoke-static {v0}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->deleteTexture(I)V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mOESTextureId:I

    .line 13
    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPixelFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 14
    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsFirstFrameCaptured:Z

    return-void

    .line 15
    :goto_2
    sget-object v3, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    iput-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 16
    iput-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    .line 17
    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMaxZoomLevel:I

    .line 18
    throw v0
.end method

.method private createCameraController(Lcom/tencent/liteav/videoproducer/capture/aj$a;)Lcom/tencent/liteav/videoproducer/capture/ah;
    .locals 4

    .line 1
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton$3;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/a/a;

    invoke-direct {v0}, Lcom/tencent/liteav/videoproducer/capture/a/a;-><init>()V

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/b/a;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/b/a;-><init>(Lcom/tencent/liteav/base/util/j;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.tencent.liteav.videoengine.demo.mock.camera.MockCameraController"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_0
    check-cast v0, Lcom/tencent/liteav/videoproducer/capture/ah;

    :goto_1
    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mServerConfig:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/ah;->a(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V

    .line 10
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCloudConfig:Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videoproducer/capture/ah;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;)V

    .line 11
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createCameraController, CameraAPIType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", return camera controller: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;
    .locals 3
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->sInstance:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->sInstance:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->sInstance:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->sInstance:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;

    return-object v0
.end method

.method private getMockCameraMatrix([F)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getTransformMatrix"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    const-class v4, [F

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 3
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getMockCameraMatrix with exception: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraCaptureSingleton"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleCameraStartFailed()V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "CameraCaptureSingleton"

    const-string v4, "camera start failed. params: %s"

    invoke-static {v2, v4, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/tencent/liteav/videoproducer/capture/ah;->a()V

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    .line 5
    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraInRestarting:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mRestartCameraRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 7
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraInSwitching:Z

    const-wide/16 v4, 0x3e8

    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSwitchToCamera1Runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/aj;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/aj;->a()Lcom/tencent/liteav/videoproducer/capture/aj$a;

    move-result-object v1

    .line 10
    iget-object v6, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/aj;

    .line 11
    iget-object v7, v6, Lcom/tencent/liteav/videoproducer/capture/aj;->a:Lcom/tencent/liteav/videoproducer/capture/aj$a;

    sget-object v8, Lcom/tencent/liteav/videoproducer/capture/aj$a;->c:Lcom/tencent/liteav/videoproducer/capture/aj$a;

    if-ne v7, v8, :cond_3

    .line 12
    iput-boolean v0, v6, Lcom/tencent/liteav/videoproducer/capture/aj;->b:Z

    .line 13
    :cond_3
    invoke-virtual {v6}, Lcom/tencent/liteav/videoproducer/capture/aj;->a()Lcom/tencent/liteav/videoproducer/capture/aj$a;

    move-result-object v0

    if-eq v1, v0, :cond_4

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "camera switch from "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/aj;

    .line 15
    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/aj;->a()Lcom/tencent/liteav/videoproducer/capture/aj$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSwitchToCamera1Runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;J)V

    return-void

    .line 18
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mNeedNotifyStartFinish:Z

    if-eqz v0, :cond_5

    .line 19
    iput-boolean v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mNeedNotifyStartFinish:Z

    .line 20
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/videoproducer/capture/au;->onStartFinish(Z)V

    :cond_5
    return-void
.end method

.method private handleCameraStartSuccess()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    const-string v1, "CameraCaptureSingleton"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 2
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "camera start success. params: %s"

    invoke-static {v1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    invoke-interface {v1}, Lcom/tencent/liteav/videoproducer/capture/ah;->b()Lcom/tencent/liteav/videobase/utils/Rotation;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    .line 4
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    invoke-interface {v1}, Lcom/tencent/liteav/videoproducer/capture/ah;->e()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsZoomSupported:Z

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    invoke-interface {v1}, Lcom/tencent/liteav/videoproducer/capture/ah;->f()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsTorchSupported:Z

    .line 6
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    .line 7
    invoke-interface {v1}, Lcom/tencent/liteav/videoproducer/capture/ah;->g()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraAutoFocusFaceModeSupported:Z

    .line 8
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    .line 9
    invoke-interface {v1}, Lcom/tencent/liteav/videoproducer/capture/ah;->h()Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsFocusPositionInPreviewSupported:Z

    .line 10
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    invoke-interface {v1}, Lcom/tencent/liteav/videoproducer/capture/ah;->c()I

    move-result v1

    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMaxZoomLevel:I

    .line 11
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    invoke-interface {v1}, Lcom/tencent/liteav/videoproducer/capture/ah;->d()Lcom/tencent/liteav/base/util/q;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSharedContext:Ljava/lang/Object;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    .line 13
    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/b/e;->d()Ljava/lang/Object;

    move-result-object v3

    :cond_1
    iget v5, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mOESTextureId:I

    .line 14
    invoke-static {v1, v2, v3, v5}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->initOutputPixelFrame(Lcom/tencent/liteav/base/util/q;Lcom/tencent/liteav/videobase/utils/Rotation;Ljava/lang/Object;I)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPixelFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 15
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 16
    iget-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mNeedNotifyStartFinish:Z

    if-eqz v1, :cond_2

    .line 17
    iput-boolean v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mNeedNotifyStartFinish:Z

    .line 18
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/videoproducer/capture/au;->onStartFinish(Z)V

    .line 19
    :cond_2
    iput-boolean v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraInRestarting:Z

    .line 20
    iput-boolean v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraInSwitching:Z

    return-void

    :cond_3
    :goto_0
    const-string v0, "camera start success, but mCameraController or mSurfaceTexture is null."

    .line 21
    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initGLComponents(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/liteav/videobase/b/e;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/b/e;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mTextureHolderPool:Lcom/tencent/liteav/videobase/frame/l;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/tencent/liteav/videobase/frame/l;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/l;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mTextureHolderPool:Lcom/tencent/liteav/videobase/frame/l;

    :cond_1
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v0, v2, v2}, Lcom/tencent/liteav/videobase/b/e;->a(Ljava/lang/Object;Landroid/view/Surface;II)V

    .line 6
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/b/e;->a()V

    .line 7
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSharedContext:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v2, "initGL"

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "CameraCaptureSingleton"

    const-string v3, "initializeEGL failed."

    invoke-static {v1, p1, v3, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/capture/au;->onCaptureError()V

    .line 10
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-eqz p1, :cond_2

    .line 12
    new-instance p1, Lcom/tencent/liteav/videobase/frame/e;

    invoke-direct {p1}, Lcom/tencent/liteav/videobase/frame/e;-><init>()V

    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    :cond_2
    return-void
.end method

.method private static initOutputPixelFrame(Lcom/tencent/liteav/base/util/q;Lcom/tencent/liteav/videobase/utils/Rotation;Ljava/lang/Object;I)Lcom/tencent/liteav/videobase/frame/PixelFrame;
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-direct {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;-><init>()V

    .line 2
    sget-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->b:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/tencent/liteav/videobase/utils/Rotation;->d:Lcom/tencent/liteav/videobase/utils/Rotation;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/tencent/liteav/base/util/q;->a:I

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    .line 4
    iget p0, p0, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget p1, p0, Lcom/tencent/liteav/base/util/q;->b:I

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setWidth(I)V

    .line 6
    iget p0, p0, Lcom/tencent/liteav/base/util/q;->a:I

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setHeight(I)V

    .line 7
    :goto_1
    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;->c:Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelBufferType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelBufferType;)V

    .line 8
    sget-object p0, Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;->f:Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setPixelFormatType(Lcom/tencent/liteav/videobase/base/GLConstants$PixelFormatType;)V

    .line 9
    sget-object p0, Lcom/tencent/liteav/videobase/utils/Rotation;->a:Lcom/tencent/liteav/videobase/utils/Rotation;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setRotation(Lcom/tencent/liteav/videobase/utils/Rotation;)V

    .line 10
    invoke-virtual {v0, p2}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v0, p3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTextureId(I)V

    return-object v0
.end method

.method private isNeedRestartCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget-object v2, v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_0

    .line 2
    iput-object v0, v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    .line 3
    iget v0, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    iput v0, v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    .line 4
    iget v0, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    iput v0, v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 6
    :cond_1
    iget v1, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    iget v2, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    iget-object v5, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    .line 7
    invoke-virtual {v5}, Lcom/tencent/liteav/videoproducer/capture/au;->a()I

    move-result v5

    if-gt v5, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 8
    :goto_0
    invoke-interface {v0, v1, v2, v5}, Lcom/tencent/liteav/videoproducer/capture/ah;->a(IIZ)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_3

    .line 9
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget v2, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    iput v2, v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->c:I

    .line 10
    iget v2, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    iput v2, v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->d:I

    :cond_3
    const/4 v1, 0x0

    .line 11
    :goto_2
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/capture/au;->a()I

    move-result v2

    if-gt v2, v4, :cond_4

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->b:I

    iget v5, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->b:I

    if-ne v2, v5, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    .line 12
    invoke-virtual {v2}, Lcom/tencent/liteav/videoproducer/capture/au;->a()I

    move-result v2

    if-le v2, v4, :cond_6

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget v2, v2, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->b:I

    iget v5, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->b:I

    if-ge v2, v5, :cond_6

    .line 13
    :cond_5
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget p1, p1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->b:I

    iput p1, v1, Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;->b:I

    const/4 v1, 0x1

    :cond_6
    if-nez v1, :cond_8

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    return v3

    :cond_8
    :goto_3
    return v4
.end method

.method static synthetic lambda$enableCameraZoom$7(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableZoom:Z

    .line 2
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/au;->onCameraZoomEnable(Z)V

    return-void
.end method

.method static synthetic lambda$enableTapToFocus$5(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableTapToFocus:Z

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/ah;->b(Z)V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/au;->onCameraTouchEnable(Z)V

    return-void
.end method

.method static synthetic lambda$onCameraError$11(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/ah;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CameraCaptureSingleton"

    const-string v0, "VideoCapture: camera error"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->closeCamera()V

    .line 4
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mRestartCameraRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$onFrameAvailable$12(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->makeCurrent()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->checkFirstFrameCaptured()V

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->onCaptureFrameAvailable()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$removeListener$0(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/au;->b(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V

    return-void
.end method

.method static synthetic lambda$resume$15(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->resumeInternal(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    return-void
.end method

.method static synthetic lambda$setCaptureCloudConfig$2(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCloudConfig:Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;

    .line 2
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/aj;

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;->getCamera2SupportMinApiLevel()I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/aj;->a(I)V

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setCaptureCloudConfig minApiLevel:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;->getCamera2SupportMinApiLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraCaptureSingleton"

    .line 7
    invoke-static {p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setExposureCompensation$10(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mExposureCompensation:F

    .line 2
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/ah;->b(F)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$setPercentOfMaxZoomLevel$9(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->setZoomInternal(F)V

    return-void
.end method

.method static synthetic lambda$setServerConfig$1(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mServerConfig:Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;

    .line 2
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/aj;

    .line 3
    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->getCamera2SupportMinApiLevel()I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/aj;->a(I)V

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setServerConfig minApiLevel:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->getCamera2SupportMinApiLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraCaptureSingleton"

    .line 7
    invoke-static {p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setZoomLevel$8(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMaxZoomLevel:I

    if-gtz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "setZoomLevel maxZoomLevel="

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CameraCaptureSingleton"

    invoke-static {p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->setZoomInternal(F)V

    return-void
.end method

.method static synthetic lambda$start$13(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/au;->a(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-eqz p1, :cond_0

    const-string p1, "CameraCaptureSingleton"

    const-string v0, "capture source has already started!"

    .line 3
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->updateParamsInternal(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/videoproducer/capture/ay;->a()Lcom/tencent/liteav/videoproducer/capture/ay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/liteav/videoproducer/capture/ay;->b()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->initGLComponents(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0, p2}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->openCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z

    return-void
.end method

.method static synthetic lambda$startAutoFocusAtPosition$6(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableTapToFocus:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    if-eqz p0, :cond_1

    .line 3
    invoke-interface {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/capture/ah;->a(II)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$stop$14(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stop listener count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/au;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/au;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->closeCamera()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mZoomPercent:F

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mNeedNotifyStartFinish:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    .line 7
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->uninitGLComponents()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$switchCamera$3(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mExpectFrontCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->closeCamera()V

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mZoomPercent:F

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mNeedNotifyStartFinish:Z

    .line 7
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->openCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$turnOnTorch$4(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/ah;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateParams$16(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-eqz v0, :cond_0

    const-string v0, "CameraCaptureSingleton"

    const-string v1, "capture source has already started!"

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->updateParamsInternal(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    :cond_0
    return-void
.end method

.method private onCaptureFrameAvailable()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    const-string v1, "CameraCaptureSingleton"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mTextureHolderPool:Lcom/tencent/liteav/videobase/frame/l;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/h;->a()Lcom/tencent/liteav/videobase/frame/k;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videobase/frame/l$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPixelFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getMatrix()[F

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPixelFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMatrix:[F

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMatrix([F)V

    .line 5
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMatrix:[F

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 7
    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v4, "updateTexImage"

    invoke-virtual {v3, v4}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "updateTexImage exception: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v1, v0, v4}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/aj;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/aj;->a()Lcom/tencent/liteav/videoproducer/capture/aj$a;

    move-result-object v0

    sget-object v1, Lcom/tencent/liteav/videoproducer/capture/aj$a;->a:Lcom/tencent/liteav/videoproducer/capture/aj$a;

    if-ne v0, v1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMatrix:[F

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->getMockCameraMatrix([F)V

    :cond_2
    const v0, 0x8d65

    .line 10
    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mOESTextureId:I

    iget-object v3, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPixelFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    .line 11
    invoke-virtual {v3}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPixelFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v4

    .line 12
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/tencent/liteav/videobase/frame/l$b;->a(IIII)V

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPixelFrame:Lcom/tencent/liteav/videobase/frame/PixelFrame;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/liteav/videobase/frame/l$b;->a(Ljava/lang/Object;)Lcom/tencent/liteav/videobase/frame/PixelFrame;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->isFrontCamera()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMirrorHorizontal(Z)V

    .line 15
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMatrix:[F

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMatrix([F)V

    .line 16
    invoke-static {}, Lcom/tencent/liteav/base/util/TimeUtil;->c()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setTimestamp(J)V

    .line 17
    new-instance v1, Lcom/tencent/liteav/videobase/frame/FrameMetaData;

    invoke-direct {v1}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;-><init>()V

    .line 18
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->isFrontCamera()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->isFrontCamera()Z

    move-result v9

    .line 19
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getHeight()I

    move-result v11

    move-object v5, v1

    .line 20
    invoke-virtual/range {v5 .. v11}, Lcom/tencent/liteav/videobase/frame/FrameMetaData;->setCaptureMetaData(ZZIZII)V

    .line 21
    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setMetaData(Lcom/tencent/liteav/videobase/frame/FrameMetaData;)V

    .line 22
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->getGLContext()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 23
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v1}, Lcom/tencent/liteav/videobase/b/e;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->setGLContext(Ljava/lang/Object;)V

    .line 24
    :cond_3
    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    invoke-virtual {v1, p0, v0}, Lcom/tencent/liteav/videoproducer/capture/au;->onFrameAvailable(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface;Lcom/tencent/liteav/videobase/frame/PixelFrame;)V

    .line 25
    invoke-virtual {v2}, Lcom/tencent/liteav/videobase/frame/k;->release()V

    .line 26
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/PixelFrame;->release()V

    return-void

    .line 27
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onCaptureFrameAvailable mGLTexturePool:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mTextureHolderPool:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mTextureHolderPool:Lcom/tencent/liteav/videobase/frame/l;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private openCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z
    .locals 1
    .param p1    # Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    if-eqz v0, :cond_0

    const-string p1, "CameraCaptureSingleton"

    const-string v0, "camera is opened, you should Stop it first."

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->openCameraInternal(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->handleCameraStartSuccess()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->handleCameraStartFailed()V

    :goto_0
    return p1
.end method

.method private openCameraInternal(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z
    .locals 3
    .param p1    # Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->makeCurrent()Z

    move-result v0

    const-string v1, "CameraCaptureSingleton"

    if-nez v0, :cond_0

    const-string p1, "openCameraInternal: set opengl context fail."

    .line 2
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/videobase/utils/OpenGlUtils;->generateTextureOES()I

    move-result v0

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mOESTextureId:I

    .line 4
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mOESTextureId:I

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/aj;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/aj;->a()Lcom/tencent/liteav/videoproducer/capture/aj$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->createCameraController(Lcom/tencent/liteav/videoproducer/capture/aj$a;)Lcom/tencent/liteav/videoproducer/capture/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    .line 6
    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mExpectFrontCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "openCameraInternal frontCamera not set, use expect front camera:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    iput-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    .line 10
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableTapToFocus:Z

    invoke-interface {p1, v0}, Lcom/tencent/liteav/videoproducer/capture/ah;->b(Z)V

    .line 11
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mExposureCompensation:F

    invoke-interface {p1, v0}, Lcom/tencent/liteav/videoproducer/capture/ah;->b(F)V

    .line 12
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mZoomPercent:F

    invoke-interface {p1, v0}, Lcom/tencent/liteav/videoproducer/capture/ah;->a(F)V

    .line 13
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableTapToFocus:Z

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoproducer/capture/au;->onCameraTouchEnable(Z)V

    .line 14
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableZoom:Z

    invoke-virtual {p1, v0}, Lcom/tencent/liteav/videoproducer/capture/au;->onCameraZoomEnable(Z)V

    .line 15
    iget-object p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-interface {p1, v0, v1, p0}, Lcom/tencent/liteav/videoproducer/capture/ah;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;Landroid/graphics/SurfaceTexture;Lcom/tencent/liteav/videoproducer/capture/ai;)Z

    move-result p1

    return p1
.end method

.method private setZoomInternal(F)V
    .locals 5

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setZoomInternal "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mZoomPercent:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraController:Lcom/tencent/liteav/videoproducer/capture/ah;

    if-eqz v0, :cond_1

    .line 4
    iput p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mZoomPercent:F

    .line 5
    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/ah;->a(F)V

    :cond_1
    return-void
.end method

.method private updateParamsInternal(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    const-string v1, "CameraCaptureSingleton"

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "params not set frontCamera, use mCurrentCaptureParams frontCamera:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    iget-object v2, v2, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->isNeedRestartCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "reopen camera params: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->updateCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public enableCameraZoom(Z)V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableCameraZoom "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/r;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enableMockCamera(Z)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/aj;

    .line 2
    iput-boolean p1, v0, Lcom/tencent/liteav/videoproducer/capture/aj;->c:Z

    return-void
.end method

.method public enableTapToFocus(Z)V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableTapToFocus "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/p;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCameraAPIType()Lcom/tencent/liteav/videoproducer/capture/aj$a;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraSupervisor:Lcom/tencent/liteav/videoproducer/capture/aj;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/aj;->a()Lcom/tencent/liteav/videoproducer/capture/aj$a;

    move-result-object v0

    return-object v0
.end method

.method public getCameraRotation()Lcom/tencent/liteav/videobase/utils/Rotation;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCameraRotation:Lcom/tencent/liteav/videobase/utils/Rotation;

    return-object v0
.end method

.method public getMaxZoomLevel()I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mMaxZoomLevel:I

    return v0
.end method

.method public isAutoFocusEnabled()Z
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEnableTapToFocus:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCameraAutoFocusFaceModeSupported()Z
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsCameraAutoFocusFaceModeSupported:Z

    return v0
.end method

.method public isCameraFocusPositionInPreviewSupported()Z
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsFocusPositionInPreviewSupported:Z

    return v0
.end method

.method public isFrontCamera()Z
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mCurrentCaptureParams:Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTorchSupported()Z
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsTorchSupported:Z

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mIsZoomSupported:Z

    return v0
.end method

.method protected makeCurrent()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    const-string v1, "CameraCaptureSingleton"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v3, "makeCurrentNull"

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "makeCurrent on mEGLCore is null"

    invoke-static {v0, v1, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    const/4 v3, 0x1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->a()V
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    .line 4
    iget-object v4, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string v5, "makeCurrentError"

    invoke-virtual {v4, v5}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v0, "make current failed."

    invoke-static {v4, v1, v0, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/au;->onCaptureError()V

    return v2
.end method

.method public onCameraError(Lcom/tencent/liteav/videoproducer/capture/ah;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/e;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/ah;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/f;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Landroid/graphics/SurfaceTexture;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pause()V
    .locals 2

    const-string v0, "CameraCaptureSingleton"

    const-string v1, "pause"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/i;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected pauseInternal()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/au;->a()I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pauseInternal paused cnt= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , listener cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraCaptureSingleton"

    invoke-static {v2, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    if-le v1, v0, :cond_0

    .line 5
    iput v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    .line 6
    :cond_0
    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    if-eq v0, v1, :cond_1

    const-string v0, "pauseInternal listeners is not zero."

    .line 7
    invoke-static {v2, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->closeCamera()V

    return-void
.end method

.method public removeListener(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/b;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .locals 2

    const-string v0, "CameraCaptureSingleton"

    const-string v1, "resume"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/j;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected resumeInternal(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    .line 2
    invoke-virtual {v1}, Lcom/tencent/liteav/videoproducer/capture/au;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "CameraCaptureSingleton"

    const-string v4, "resumeInternal pausedCount %d, listeners size = %d"

    .line 3
    invoke-static {v1, v4, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mListenerManager:Lcom/tencent/liteav/videoproducer/capture/au;

    invoke-virtual {v0}, Lcom/tencent/liteav/videoproducer/capture/au;->a()I

    move-result v0

    iget v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    if-ne v0, v1, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->openCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z

    .line 6
    :cond_0
    iget p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    if-gez p1, :cond_1

    .line 7
    iput v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mPausedCount:I

    :cond_1
    return-void
.end method

.method protected runInGLThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCaptureCloudConfig(Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/m;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CaptureCloudConfig;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setExposureCompensation(F)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setExposureCompensation "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/d;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPercentOfMaxZoomLevel(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/c;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setServerConfig(Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/l;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setZoomLevel(F)V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setZoomLevel "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/s;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;F)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Ljava/lang/Object;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Start "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraCaptureSingleton"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    check-cast p2, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-direct {p1, p2}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    .line 3
    invoke-static {p0, p3, p1}, Lcom/tencent/liteav/videoproducer/capture/g;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureSourceListener;Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startAutoFocusAtPosition(II)V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startAutoFocusAtPosition "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/capture/q;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;II)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "CameraCaptureSingleton"

    const-string v1, "Stop"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/h;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public switchCamera(Z)V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "switchCamera "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mExpectFrontCamera:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/capture/n;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public turnOnTorch(Z)V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "turnOnTorch "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCaptureSingleton"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/o;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Z)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected uninitGLComponents()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mTextureHolderPool:Lcom/tencent/liteav/videobase/frame/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/h;->b()V

    .line 4
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mTextureHolderPool:Lcom/tencent/liteav/videobase/frame/l;

    .line 5
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/b/e;->a()V

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/tencent/liteav/videobase/frame/e;->b()V

    .line 8
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mGLTexturePool:Lcom/tencent/liteav/videobase/frame/e;
    :try_end_0
    .catch Lcom/tencent/liteav/videobase/b/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    iget-object v2, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mThrottlers:Lcom/tencent/liteav/base/b/b;

    const-string/jumbo v3, "uninitGL"

    invoke-virtual {v2, v3}, Lcom/tencent/liteav/base/b/b;->a(Ljava/lang/String;)Lcom/tencent/liteav/base/b/a;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "CameraCaptureSingleton"

    const-string v4, "EGLCore destroy failed."

    invoke-static {v2, v0, v4, v3}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Lcom/tencent/liteav/base/b/a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSharedContext:Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    invoke-static {v0}, Lcom/tencent/liteav/videobase/b/e;->a(Lcom/tencent/liteav/videobase/b/e;)V

    .line 12
    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mEGLCore:Lcom/tencent/liteav/videobase/b/e;

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mRestartCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->c(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSequenceTaskRunner:Lcom/tencent/liteav/base/util/j;

    iget-object v1, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mSwitchToCamera1Runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/base/util/j;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V
    .locals 1
    .param p1    # Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->closeCamera()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->mNeedNotifyStartFinish:Z

    .line 3
    invoke-direct {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->openCamera(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Z

    return-void
.end method

.method public updateParams(Lcom/tencent/liteav/videoproducer/capture/CaptureSourceInterface$CaptureParams;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    check-cast p1, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;-><init>(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)V

    const-string p1, "CameraCaptureSingleton"

    const-string/jumbo v1, "updateParams"

    .line 2
    invoke-static {p1, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, v0}, Lcom/tencent/liteav/videoproducer/capture/k;->a(Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;Lcom/tencent/liteav/videoproducer/capture/CameraCaptureParams;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/liteav/videoproducer/capture/CameraCaptureSingleton;->runInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method
