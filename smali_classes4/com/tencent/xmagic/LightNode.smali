.class Lcom/tencent/xmagic/LightNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/xmagic/LightNode$OnAssetsLoadErrorListener;
    }
.end annotation


# static fields
.field private static final FRAME_INTERN_TIME:I = 0x13880

.field public static final TAG:Ljava/lang/String; = "LightNode"

.field private static sAgentPath:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsDeviceSupportUtilInited:Z = false


# instance fields
.field private OnLoadAssetListener:Lorg/light/listener/OnLoadAssetListener;

.field private aiDataListener:Lorg/light/listener/OnAIDataListener;

.field private asset:Lorg/light/LightAsset;

.field private assetPath:Ljava/lang/String;

.field private assetsDir:Ljava/lang/String;

.field private assetsLoadErrorListener:Lcom/tencent/xmagic/LightNode$OnAssetsLoadErrorListener;

.field private audioFrame:Lorg/light/AudioFrame;

.field private audioReader:Lorg/light/AudioOutput;

.field private audioTrack:Landroid/media/AudioTrack;

.field private cameraConfig:Lorg/light/CameraConfig;

.field public cameraController:Lorg/light/CameraController;

.field private deviceCameraConfig:Lorg/light/DeviceCameraConfig;

.field private disableRenderer:Z

.field private emptyMaterialPath:Ljava/lang/String;

.field private lightAssetListener:Lorg/light/listener/OnLoadAssetListener;

.field private lightEngine:Lorg/light/LightEngine;

.field private lightSurface:Lorg/light/LightSurface;

.field private mAutoTest:Z

.field private mBeautyController:Lorg/light/BeautyController;

.field private mContext:Landroid/content/Context;

.field private mFrameIndex:I

.field private mImageDebug:Z

.field private mImageDebugFileNameIncludeTimestamp:Z

.field private mImageDebugResDir:Ljava/lang/String;

.field private mImageOnlyDebugRendererTree:Z

.field private mIsApplied:Z

.field outTexs:[I

.field private previewHeight:I

.field private previewWidth:I

.field private segmentBgName:Ljava/lang/String;

.field private segmentBgType:I

.field private startTime:J

.field private timeOffset:I

.field private tipsListener:Lorg/light/listener/OnTipsStatusListener;

.field public trace_open:Z

.field private videoOutput:Lorg/light/VideoOutput;

.field private writePCMThread:Ljava/lang/Thread;

.field private ytDataListener:Lorg/light/listener/YTDataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/tencent/xmagic/LightNode;->outTexs:[I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/tencent/xmagic/LightNode;->startTime:J

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/tencent/xmagic/LightNode;->assetPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/tencent/xmagic/LightNode;->previewWidth:I

    .line 6
    iput v1, p0, Lcom/tencent/xmagic/LightNode;->previewHeight:I

    .line 7
    iput v1, p0, Lcom/tencent/xmagic/LightNode;->mFrameIndex:I

    .line 8
    iput-boolean v1, p0, Lcom/tencent/xmagic/LightNode;->mAutoTest:Z

    .line 9
    iput-boolean v1, p0, Lcom/tencent/xmagic/LightNode;->mImageDebug:Z

    .line 10
    iput-object v0, p0, Lcom/tencent/xmagic/LightNode;->mImageDebugResDir:Ljava/lang/String;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/tencent/xmagic/LightNode;->mImageOnlyDebugRendererTree:Z

    .line 12
    iput-boolean v1, p0, Lcom/tencent/xmagic/LightNode;->mImageDebugFileNameIncludeTimestamp:Z

    .line 13
    iput-boolean v1, p0, Lcom/tencent/xmagic/LightNode;->mIsApplied:Z

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/xmagic/LightNode;->mContext:Landroid/content/Context;

    .line 15
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v1, "Dir not exists: "

    if-eqz p1, :cond_2

    .line 16
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    iput-object p2, p0, Lcom/tencent/xmagic/LightNode;->assetsDir:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/tencent/xmagic/LightNode;->emptyMaterialPath:Ljava/lang/String;

    .line 19
    sget-boolean p1, Lcom/tencent/xmagic/LightNode;->sIsDeviceSupportUtilInited:Z

    if-nez p1, :cond_0

    .line 20
    sput-boolean v0, Lcom/tencent/xmagic/LightNode;->sIsDeviceSupportUtilInited:Z

    .line 21
    invoke-static {p2}, Lorg/light/DeviceSupportUtil;->init(Ljava/lang/String;)V

    .line 22
    :cond_0
    new-instance p1, Lorg/light/BeautyController;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p1, p2}, Lorg/light/BeautyController;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/tencent/xmagic/LightNode;->mBeautyController:Lorg/light/BeautyController;

    return-void

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/tencent/xmagic/LightNode;)Lcom/tencent/xmagic/LightNode$OnAssetsLoadErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/xmagic/LightNode;->assetsLoadErrorListener:Lcom/tencent/xmagic/LightNode$OnAssetsLoadErrorListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/xmagic/LightNode;)Lorg/light/AudioOutput;
    .locals 0

    iget-object p0, p0, Lcom/tencent/xmagic/LightNode;->audioReader:Lorg/light/AudioOutput;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/xmagic/LightNode;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/tencent/xmagic/LightNode;->audioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method public static appendAgentPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/tencent/xmagic/LightNode;->sAgentPath:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/xmagic/LightNode;->sAgentPath:Ljava/util/HashMap;

    .line 3
    :cond_1
    sget-object v0, Lcom/tencent/xmagic/LightNode;->sAgentPath:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private destroyAudio()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->writePCMThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    iput-object v1, p0, Lcom/tencent/xmagic/LightNode;->writePCMThread:Ljava/lang/Thread;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 6
    iput-object v1, p0, Lcom/tencent/xmagic/LightNode;->audioTrack:Landroid/media/AudioTrack;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->audioReader:Lorg/light/AudioOutput;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lorg/light/AudioOutput;->release()V

    .line 9
    iput-object v1, p0, Lcom/tencent/xmagic/LightNode;->audioReader:Lorg/light/AudioOutput;

    :cond_2
    return-void
.end method

.method private initAudioTrack()V
    .locals 10

    const v0, 0xac44

    const/16 v1, 0xc

    const/4 v2, 0x2

    .line 1
    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    .line 2
    new-instance v1, Landroid/media/AudioTrack;

    mul-int/lit8 v8, v0, 0x2

    const/4 v4, 0x3

    const v5, 0xac44

    const/16 v6, 0xc

    const/4 v7, 0x2

    const/4 v9, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v1, p0, Lcom/tencent/xmagic/LightNode;->audioTrack:Landroid/media/AudioTrack;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {v1, v0, v0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private initWritePCMThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->writePCMThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/xmagic/LightNode$2;

    invoke-direct {v1, p0}, Lcom/tencent/xmagic/LightNode$2;-><init>(Lcom/tencent/xmagic/LightNode;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/xmagic/LightNode;->writePCMThread:Ljava/lang/Thread;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private setBundleToLightEngine(Ljava/lang/String;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBundleToLightEngine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightNode"

    invoke-static {v2, v1}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    invoke-virtual {v1, p1, v0}, Lorg/light/Config;->setLightAIModelPath(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->outTexs:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 2
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->videoOutput:Lorg/light/VideoOutput;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/light/VideoOutput;->release()V

    .line 4
    iput-object v1, p0, Lcom/tencent/xmagic/LightNode;->videoOutput:Lorg/light/VideoOutput;

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/tencent/xmagic/LightNode;->destroyAudio()V

    .line 6
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraController:Lorg/light/CameraController;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lorg/light/CameraController;->release()V

    .line 8
    iput-object v1, p0, Lcom/tencent/xmagic/LightNode;->cameraController:Lorg/light/CameraController;

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->lightEngine:Lorg/light/LightEngine;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lorg/light/LightEngine;->release()V

    .line 11
    iput-object v1, p0, Lcom/tencent/xmagic/LightNode;->lightEngine:Lorg/light/LightEngine;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->lightSurface:Lorg/light/LightSurface;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lorg/light/LightSurface;->release()V

    .line 14
    iput-object v1, p0, Lcom/tencent/xmagic/LightNode;->lightSurface:Lorg/light/LightSurface;

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v0}, Lorg/light/CameraConfig;->performFinalize()V

    .line 17
    iput-object v1, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    .line 18
    :cond_4
    iput-boolean v2, p0, Lcom/tencent/xmagic/LightNode;->mIsApplied:Z

    return-void
.end method

.method public getAsset()Lorg/light/LightAsset;
    .locals 1

    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->asset:Lorg/light/LightAsset;

    return-object v0
.end method

.method public getAudioReader()Lorg/light/AudioOutput;
    .locals 1

    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->audioReader:Lorg/light/AudioOutput;

    return-object v0
.end method

.method public getCurrentPef()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/light/PerformanceMonitor;->getPerformanceData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSupportAbilities()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {v0}, Lorg/light/DeviceSupportUtil;->getDeviceSupportAbilities(Ljava/util/Map;)V

    return-object v0
.end method

.method public getEditableWMElement()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/light/bean/WMElement;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraController:Lorg/light/CameraController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/light/Controller;->getEditableWMElement()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLightPerformanceData()Lorg/light/PerformanceData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/light/Config;->getPerformanceData()Lorg/light/PerformanceData;

    move-result-object v0

    return-object v0
.end method

.method public getOnLoadAssetListener()Lorg/light/listener/OnLoadAssetListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->OnLoadAssetListener:Lorg/light/listener/OnLoadAssetListener;

    return-object v0
.end method

.method public getPerformanJson()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/light/PerformanceMonitor;->getBenchData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTipsListener()Lorg/light/listener/OnTipsStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->tipsListener:Lorg/light/listener/OnTipsStatusListener;

    return-object v0
.end method

.method public getmBeautyController()Lorg/light/BeautyController;
    .locals 1

    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->mBeautyController:Lorg/light/BeautyController;

    return-object v0
.end method

.method public init()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/tencent/xmagic/LightNode;->mIsApplied:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->outTexs:[I

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 4
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->outTexs:[I

    aget v2, v2, v4

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    const v5, 0x46180400    # 9729.0f

    .line 5
    invoke-static {v3, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2800

    .line 6
    invoke-static {v3, v2, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 7
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 8
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->outTexs:[I

    aget v2, v2, v4

    iget v3, p0, Lcom/tencent/xmagic/LightNode;->previewWidth:I

    iget v5, p0, Lcom/tencent/xmagic/LightNode;->previewHeight:I

    invoke-static {v2, v3, v5, v4}, Lorg/light/LightSurface;->makeFromTexture(IIIZ)Lorg/light/LightSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/xmagic/LightNode;->lightSurface:Lorg/light/LightSurface;

    .line 9
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/light/LightEngine;->initContext(Landroid/content/Context;)V

    .line 10
    new-instance v2, Lorg/light/RendererConfig;

    iget-object v3, p0, Lcom/tencent/xmagic/LightNode;->assetsDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/light/RendererConfig;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3, v3, v2}, Lorg/light/LightEngine;->make(Lorg/light/VideoOutputConfig;Lorg/light/AudioOutputConfig;Lorg/light/RendererConfig;)Lorg/light/LightEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/xmagic/LightNode;->lightEngine:Lorg/light/LightEngine;

    .line 11
    iget-object v3, p0, Lcom/tencent/xmagic/LightNode;->lightSurface:Lorg/light/LightSurface;

    invoke-virtual {v2, v3}, Lorg/light/LightEngine;->setSurface(Lorg/light/LightSurface;)Z

    .line 12
    invoke-static {}, Lorg/light/CameraConfig;->make()Lorg/light/CameraConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    .line 13
    iget-object v3, p0, Lcom/tencent/xmagic/LightNode;->lightEngine:Lorg/light/LightEngine;

    invoke-virtual {v3, v2}, Lorg/light/LightEngine;->setConfig(Lorg/light/Config;)V

    .line 14
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    const-string v3, "defaultBeautyV7.json"

    invoke-virtual {v2, v3}, Lorg/light/Config;->setDefaultBeautyVersion(Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->lightEngine:Lorg/light/LightEngine;

    invoke-virtual {v2}, Lorg/light/LightEngine;->videoOutput()Lorg/light/VideoOutput;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/xmagic/LightNode;->videoOutput:Lorg/light/VideoOutput;

    .line 16
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->lightEngine:Lorg/light/LightEngine;

    invoke-virtual {v2}, Lorg/light/LightEngine;->audioOutput()Lorg/light/AudioOutput;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/xmagic/LightNode;->audioReader:Lorg/light/AudioOutput;

    .line 17
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->mBeautyController:Lorg/light/BeautyController;

    iget-object v3, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    invoke-virtual {v2, v3}, Lorg/light/BeautyController;->setCameraConfig(Lorg/light/CameraConfig;)V

    .line 18
    invoke-direct {p0}, Lcom/tencent/xmagic/LightNode;->initAudioTrack()V

    .line 19
    invoke-direct {p0}, Lcom/tencent/xmagic/LightNode;->initWritePCMThread()V

    .line 20
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 21
    sget-object v3, Lorg/light/Config$ConfigKeys;->ResourceDir:Lorg/light/Config$ConfigKeys;

    invoke-virtual {v3}, Lorg/light/Config$ConfigKeys;->value()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/xmagic/LightNode;->assetsDir:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v3, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    invoke-virtual {v3, v2}, Lorg/light/Config;->setConfigData(Ljava/util/Map;)V

    .line 23
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    iget v3, p0, Lcom/tencent/xmagic/LightNode;->previewWidth:I

    iget v4, p0, Lcom/tencent/xmagic/LightNode;->previewHeight:I

    invoke-virtual {v2, v3, v4}, Lorg/light/Config;->setRenderSize(II)V

    .line 24
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    new-instance v3, Lcom/tencent/xmagic/LightNode$1;

    invoke-direct {v3, p0}, Lcom/tencent/xmagic/LightNode$1;-><init>(Lcom/tencent/xmagic/LightNode;)V

    invoke-virtual {v2, v3}, Lorg/light/Config;->setLoadAssetListener(Lorg/light/listener/OnLoadAssetListener;)V

    .line 25
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->aiDataListener:Lorg/light/listener/OnAIDataListener;

    if-eqz v2, :cond_1

    .line 26
    iget-object v3, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    invoke-virtual {v3, v2}, Lorg/light/Config;->setAIDataListener(Lorg/light/listener/OnAIDataListener;)V

    .line 27
    :cond_1
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->ytDataListener:Lorg/light/listener/YTDataListener;

    if-eqz v2, :cond_2

    .line 28
    iget-object v3, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    invoke-virtual {v3, v2}, Lorg/light/Config;->setYTDataListener(Lorg/light/listener/YTDataListener;)V

    .line 29
    :cond_2
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->tipsListener:Lorg/light/listener/OnTipsStatusListener;

    if-eqz v2, :cond_3

    .line 30
    iget-object v3, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    invoke-virtual {v3, v2}, Lorg/light/Config;->setTipsStatusListener(Lorg/light/listener/OnTipsStatusListener;)V

    .line 31
    :cond_3
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->OnLoadAssetListener:Lorg/light/listener/OnLoadAssetListener;

    if-eqz v2, :cond_4

    .line 32
    iget-object v3, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    invoke-virtual {v3, v2}, Lorg/light/Config;->setLoadAssetListener(Lorg/light/listener/OnLoadAssetListener;)V

    .line 33
    :cond_4
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    iget-object v3, p0, Lcom/tencent/xmagic/LightNode;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {v3}, Lorg/light/device/LightDeviceUtils;->getPhonePerfLevel(Landroid/content/Context;)I

    move-result v3

    const-string/jumbo v4, "smooth"

    .line 35
    invoke-virtual {v2, v4, v3}, Lorg/light/Config;->setDowngradeStrategy(Ljava/lang/String;I)V

    .line 36
    iget-object v5, p0, Lcom/tencent/xmagic/LightNode;->emptyMaterialPath:Ljava/lang/String;

    const/4 v6, 0x0

    sget v7, Lorg/light/LightAsset;->ASSETS_TEMPLATE_TYPE_DEFAULT:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lorg/light/LightAsset;->Load(Ljava/lang/String;IILjava/lang/String;II)Lorg/light/LightAsset;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/xmagic/LightNode;->asset:Lorg/light/LightAsset;

    .line 37
    iget-object v3, p0, Lcom/tencent/xmagic/LightNode;->lightEngine:Lorg/light/LightEngine;

    invoke-virtual {v3, v2}, Lorg/light/LightEngine;->setAssetForCamera(Lorg/light/LightAsset;)Lorg/light/CameraController;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/xmagic/LightNode;->cameraController:Lorg/light/CameraController;

    .line 38
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/xmagic/LightNode;->startTime:J

    .line 39
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    iget-boolean v3, p0, Lcom/tencent/xmagic/LightNode;->disableRenderer:Z

    invoke-virtual {v2, v3}, Lorg/light/Config;->setDisableRendererFlag(Z)V

    .line 40
    sget-object v2, Lcom/tencent/xmagic/LightNode;->sAgentPath:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 41
    sget-object v2, Lcom/tencent/xmagic/LightNode;->sAgentPath:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 42
    iget-object v4, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lorg/light/Config;->setLightAIModelPath(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    .line 43
    iput-boolean v2, p0, Lcom/tencent/xmagic/LightNode;->mIsApplied:Z

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LightNode time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[launchTime]"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initPreviewSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/xmagic/LightNode;->previewWidth:I

    .line 2
    iput p2, p0, Lcom/tencent/xmagic/LightNode;->previewHeight:I

    return-void
.end method

.method public isAbilityOn(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/light/Config;->getConfigData()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    invoke-virtual {v0}, Lorg/light/Config;->getConfigData()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isInited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/xmagic/LightNode;->mIsApplied:Z

    return v0
.end method

.method public makeLightAssetByPath(Ljava/lang/String;)Lorg/light/LightAsset;
    .locals 6

    sget v2, Lorg/light/LightAsset;->ASSETS_TEMPLATE_TYPE_MOTION:I

    iget-object v3, p0, Lcom/tencent/xmagic/LightNode;->segmentBgName:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/xmagic/LightNode;->segmentBgType:I

    iget v5, p0, Lcom/tencent/xmagic/LightNode;->timeOffset:I

    const/4 v1, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/light/LightAsset;->Load(Ljava/lang/String;IILjava/lang/String;II)Lorg/light/LightAsset;

    move-result-object p1

    return-object p1
.end method

.method public needSyncInitProcessor(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    invoke-virtual {v0, p1, p2}, Lorg/light/Config;->setSyncInitFlag(ZLjava/lang/String;)V

    return-void
.end method

.method public onPerfTest(I)V
    .locals 0

    return-void
.end method

.method public pauseAudio()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/xmagic/LightNode;->destroyAudio()V

    return-void
.end method

.method public render(III)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    iget v2, p0, Lcom/tencent/xmagic/LightNode;->previewWidth:I

    iget v3, p0, Lcom/tencent/xmagic/LightNode;->previewHeight:I

    sget-object v4, Lorg/light/CameraConfig$DeviceCameraOrientation;->ROTATION_0:Lorg/light/CameraConfig$DeviceCameraOrientation;

    sget-object v5, Lorg/light/CameraConfig$ImageOrigin;->TopLeft:Lorg/light/CameraConfig$ImageOrigin;

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/light/CameraConfig;->setCameraTexture(IIILorg/light/CameraConfig$DeviceCameraOrientation;Lorg/light/CameraConfig$ImageOrigin;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/tencent/xmagic/LightNode;->startTime:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    .line 3
    iget-boolean p3, p0, Lcom/tencent/xmagic/LightNode;->mAutoTest:Z

    if-eqz p3, :cond_0

    .line 4
    iget p1, p0, Lcom/tencent/xmagic/LightNode;->mFrameIndex:I

    const p2, 0x13880

    mul-int p1, p1, p2

    int-to-long p1, p1

    .line 5
    :cond_0
    iget-object p3, p0, Lcom/tencent/xmagic/LightNode;->cameraController:Lorg/light/CameraController;

    if-eqz p3, :cond_1

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-virtual {p3, v0, v1}, Lorg/light/CameraController;->updateCameraTextureTimestamp(J)V

    .line 7
    :cond_1
    iget-object p3, p0, Lcom/tencent/xmagic/LightNode;->videoOutput:Lorg/light/VideoOutput;

    invoke-virtual {p3, p1, p2}, Lorg/light/VideoOutput;->readSample(J)Z

    const/4 p1, 0x0

    .line 8
    invoke-static {p1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 9
    iget-object p2, p0, Lcom/tencent/xmagic/LightNode;->outTexs:[I

    aget p1, p2, p1

    return p1
.end method

.method public resetAsset()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/xmagic/LightNode;->startTime:J

    .line 2
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraController:Lorg/light/CameraController;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/light/Controller;->resetAsset()V

    :cond_0
    return-void
.end method

.method public resumeAudio()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->lightEngine:Lorg/light/LightEngine;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/light/LightEngine;->audioOutput()Lorg/light/AudioOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/xmagic/LightNode;->audioReader:Lorg/light/AudioOutput;

    .line 3
    invoke-direct {p0}, Lcom/tencent/xmagic/LightNode;->initAudioTrack()V

    .line 4
    invoke-direct {p0}, Lcom/tencent/xmagic/LightNode;->initWritePCMThread()V

    :cond_0
    return-void
.end method

.method public setAIDataListener(Lorg/light/listener/OnAIDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/xmagic/LightNode;->aiDataListener:Lorg/light/listener/OnAIDataListener;

    return-void
.end method

.method public setAssetsLoadErrorListener(Lcom/tencent/xmagic/LightNode$OnAssetsLoadErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/xmagic/LightNode;->assetsLoadErrorListener:Lcom/tencent/xmagic/LightNode$OnAssetsLoadErrorListener;

    return-void
.end method

.method public setAutoTest(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/tencent/xmagic/LightNode;->mAutoTest:Z

    .line 2
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    invoke-virtual {v0, p1}, Lorg/light/CameraConfig;->setAutoTestMode(Z)V

    return-void
.end method

.method public setBundleToLightEngine(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6
    iget-object v1, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/light/Config;->setLightAIModelPath(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCustomMaterial(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->asset:Lorg/light/LightAsset;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lorg/light/LightAsset;->getMaterialConfigs()[Lorg/light/MaterialConfig;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    new-array v2, v2, [Lorg/light/PhotoClip;

    .line 5
    new-instance v3, Lorg/light/PhotoClip;

    invoke-direct {v3}, Lorg/light/PhotoClip;-><init>()V

    .line 6
    iput-object p1, v3, Lorg/light/ClipAsset;->path:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 7
    iput-wide v4, v3, Lorg/light/ClipAsset;->duration:J

    aput-object v3, v2, v1

    .line 8
    iget-object p1, p0, Lcom/tencent/xmagic/LightNode;->cameraController:Lorg/light/CameraController;

    iget-object v0, v0, Lorg/light/MaterialConfig;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lorg/light/Controller;->setMaterialClipAssets(Ljava/lang/String;[Lorg/light/ClipAsset;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDefaultBeautyVersion(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    invoke-virtual {v0, p1}, Lorg/light/Config;->setDefaultBeautyVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/light/Config;->setDefaultBeautyVersion(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDisableRenderer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/xmagic/LightNode;->disableRenderer:Z

    return-void
.end method

.method public setExternalRenderCallback(Lorg/light/callback/ExternalRenderCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    invoke-virtual {v0, p1}, Lorg/light/Config;->setExternalRenderCallback(Lorg/light/callback/ExternalRenderCallback;)V

    return-void
.end method

.method public setFrameIndex(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/xmagic/LightNode;->mFrameIndex:I

    return-void
.end method

.method public setImageDebugInfo(ZLjava/lang/String;ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/xmagic/LightNode;->mImageDebug:Z

    .line 2
    iput-object p2, p0, Lcom/tencent/xmagic/LightNode;->mImageDebugResDir:Ljava/lang/String;

    .line 3
    iput-boolean p3, p0, Lcom/tencent/xmagic/LightNode;->mImageOnlyDebugRendererTree:Z

    .line 4
    iput-boolean p4, p0, Lcom/tencent/xmagic/LightNode;->mImageDebugFileNameIncludeTimestamp:Z

    return-void
.end method

.method public setOnClickWatermarkListener(Lorg/light/listener/OnClickWatermarkListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lorg/light/Config;->setOnClickWatermarkListener(Lorg/light/listener/OnClickWatermarkListener;)V

    :cond_0
    return-void
.end method

.method public setOnLoadAssetListener(Lorg/light/listener/OnLoadAssetListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/tencent/xmagic/LightNode;->OnLoadAssetListener:Lorg/light/listener/OnLoadAssetListener;

    :cond_0
    return-void
.end method

.method public setPreInitAgents([Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    invoke-virtual {v0, p1}, Lorg/light/Config;->setPreInitAgents([Ljava/lang/String;)V

    return-void
.end method

.method public setPresetData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraController:Lorg/light/CameraController;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/tencent/xmagic/LightNode;->cameraController:Lorg/light/CameraController;

    invoke-virtual {p1, v0}, Lorg/light/Controller;->setAssetData(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public setSegmentBg(Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/xmagic/LightNode;->segmentBgName:Ljava/lang/String;

    .line 2
    iput p2, p0, Lcom/tencent/xmagic/LightNode;->segmentBgType:I

    .line 3
    iput p3, p0, Lcom/tencent/xmagic/LightNode;->timeOffset:I

    return-void
.end method

.method public setSyncMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lorg/light/Config;->setSyncMode(Z)V

    .line 3
    iget-object p1, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->deviceCameraConfig:Lorg/light/DeviceCameraConfig;

    iget v0, v0, Lorg/light/DeviceCameraConfig;->cameraIndex:I

    invoke-virtual {p1, v0}, Lorg/light/CameraConfig;->cameraSwitched(I)V

    :cond_0
    return-void
.end method

.method public setTipsListener(Lorg/light/listener/OnTipsStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/xmagic/LightNode;->tipsListener:Lorg/light/listener/OnTipsStatusListener;

    return-void
.end method

.method public setYTDataListener(Lorg/light/listener/YTDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/xmagic/LightNode;->ytDataListener:Lorg/light/listener/YTDataListener;

    return-void
.end method

.method public updateAsset(Ljava/lang/String;Z)V
    .locals 7

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->assetPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/tencent/xmagic/LightNode;->assetPath:Ljava/lang/String;

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LightAsset Path: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LightNode"

    invoke-static {v0, p2}, Lorg/light/utils/LightLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 4
    sget v3, Lorg/light/LightAsset;->ASSETS_TEMPLATE_TYPE_MOTION:I

    iget-object v4, p0, Lcom/tencent/xmagic/LightNode;->segmentBgName:Ljava/lang/String;

    iget v5, p0, Lcom/tencent/xmagic/LightNode;->segmentBgType:I

    iget v6, p0, Lcom/tencent/xmagic/LightNode;->timeOffset:I

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lorg/light/LightAsset;->Load(Ljava/lang/String;IILjava/lang/String;II)Lorg/light/LightAsset;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/tencent/xmagic/LightNode;->updateAsset(Lorg/light/LightAsset;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateAsset(Lorg/light/LightAsset;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->asset:Lorg/light/LightAsset;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lorg/light/LightAsset;->performFinalize()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/tencent/xmagic/LightNode;->asset:Lorg/light/LightAsset;

    .line 9
    :cond_1
    iput-object p1, p0, Lcom/tencent/xmagic/LightNode;->asset:Lorg/light/LightAsset;

    .line 10
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->lightEngine:Lorg/light/LightEngine;

    invoke-virtual {v0, p1}, Lorg/light/LightEngine;->setAssetForCamera(Lorg/light/LightAsset;)Lorg/light/CameraController;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/xmagic/LightNode;->cameraController:Lorg/light/CameraController;

    .line 11
    iget-object p1, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/light/Config;->setBGMusicHidden(Z)V

    .line 12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/xmagic/LightNode;->startTime:J

    :cond_2
    :goto_0
    return-void
.end method

.method public updateCameraConfigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    invoke-virtual {p1, v0}, Lorg/light/Config;->setConfigData(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public updateCameraConfigData(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lorg/light/Config;->setConfigData(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public updateDeviceCameraConfig(Lorg/light/DeviceCameraConfig;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lcom/tencent/xmagic/LightNode;->deviceCameraConfig:Lorg/light/DeviceCameraConfig;

    if-nez v1, :cond_1

    .line 2
    new-instance v1, Lorg/light/DeviceCameraConfig;

    invoke-direct {v1}, Lorg/light/DeviceCameraConfig;-><init>()V

    iput-object v1, p0, Lcom/tencent/xmagic/LightNode;->deviceCameraConfig:Lorg/light/DeviceCameraConfig;

    .line 3
    :cond_1
    iget-object v1, p1, Lorg/light/DeviceCameraConfig;->deviceCameraOrientation:Lorg/light/CameraConfig$DeviceCameraOrientation;

    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->deviceCameraConfig:Lorg/light/DeviceCameraConfig;

    iget-object v2, v2, Lorg/light/DeviceCameraConfig;->deviceCameraOrientation:Lorg/light/CameraConfig$DeviceCameraOrientation;

    if-eq v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {v2, v1}, Lorg/light/CameraConfig;->sensorOrientationChanged(Lorg/light/CameraConfig$DeviceCameraOrientation;)V

    const/4 v0, 0x1

    .line 6
    iget-object v1, p0, Lcom/tencent/xmagic/LightNode;->deviceCameraConfig:Lorg/light/DeviceCameraConfig;

    iget-object p1, p1, Lorg/light/DeviceCameraConfig;->deviceCameraOrientation:Lorg/light/CameraConfig$DeviceCameraOrientation;

    iput-object p1, v1, Lorg/light/DeviceCameraConfig;->deviceCameraOrientation:Lorg/light/CameraConfig$DeviceCameraOrientation;

    :cond_2
    if-eqz v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/tencent/xmagic/LightNode;->lightEngine:Lorg/light/LightEngine;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Lorg/light/LightEngine;->setConfig(Lorg/light/Config;)V

    :cond_3
    return-void
.end method

.method public updatePreviewSize(II)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/xmagic/LightNode;->initPreviewSize(II)V

    .line 2
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->cameraConfig:Lorg/light/CameraConfig;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/light/Config;->setRenderSize(II)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/xmagic/LightNode;->lightSurface:Lorg/light/LightSurface;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/light/LightSurface;->updateSize(II)V

    :cond_1
    return-void
.end method

.method public updateTouchEvent(IJJLjava/util/ArrayList;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;II)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/tencent/xmagic/LightNode;->cameraController:Lorg/light/CameraController;

    if-eqz v1, :cond_0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 2
    invoke-virtual/range {v1 .. v9}, Lorg/light/CameraController;->updateTouchEvent(IJJLjava/util/ArrayList;II)V

    :cond_0
    return-void
.end method
