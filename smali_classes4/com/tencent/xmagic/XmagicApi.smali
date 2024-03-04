.class public Lcom/tencent/xmagic/XmagicApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;,
        Lcom/tencent/xmagic/XmagicApi$XmagicTipsListener;,
        Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;,
        Lcom/tencent/xmagic/XmagicApi$XmagicYTDataListener;
    }
.end annotation


# static fields
.field private static final ENTERPRISE_COMBO_TYPE:Ljava/lang/String; = "DEFAULT"

.field public static final PROCESS_TYPE_CAMERA_STREAM:I = 0x0

.field public static final PROCESS_TYPE_PICTURE_DATA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "XmagicApi"

.field private static mLibPathSet:Z = false


# instance fields
.field private final MAX_SEG_IAMGE_HEIGHT:I

.field private final MAX_SEG_IAMGE_WIDHT:I

.field private final MAX_SEG_VIDEO_DURATION:I

.field private agents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceAbilities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private deviceCameraConfig:Lorg/light/DeviceCameraConfig;

.field private eps:F

.field private isFirstFrame:Z

.field private lastXAxis:F

.field private mContext:Landroid/content/Context;

.field private final mLightNode:Lcom/tencent/xmagic/LightNode;

.field private final mPendingProperties:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mSegmentInited:Z

.field private volatile mTextureHeight:I

.field private volatile mTextureWidth:I

.field private mXmagicPropertyErrorListener:Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;

.field private processDataType:I

.field private recognizedOrientation:Lorg/light/CameraConfig$DeviceCameraOrientation;

.field private srcBitmapTextureId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/xmagic/XmagicApi;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    .line 3
    iput v0, p0, Lcom/tencent/xmagic/XmagicApi;->eps:F

    .line 4
    new-instance v0, Lorg/light/DeviceCameraConfig;

    invoke-direct {v0}, Lorg/light/DeviceCameraConfig;-><init>()V

    iput-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->deviceCameraConfig:Lorg/light/DeviceCameraConfig;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/xmagic/XmagicApi;->mSegmentInited:Z

    .line 6
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v1, p0, Lcom/tencent/xmagic/XmagicApi;->mPendingProperties:Ljava/util/Set;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/tencent/xmagic/XmagicApi;->srcBitmapTextureId:I

    .line 8
    iput v0, p0, Lcom/tencent/xmagic/XmagicApi;->processDataType:I

    const/16 v0, 0xf00

    .line 9
    iput v0, p0, Lcom/tencent/xmagic/XmagicApi;->MAX_SEG_IAMGE_HEIGHT:I

    const/16 v0, 0x870

    .line 10
    iput v0, p0, Lcom/tencent/xmagic/XmagicApi;->MAX_SEG_IAMGE_WIDHT:I

    const v0, 0x30d40

    .line 11
    iput v0, p0, Lcom/tencent/xmagic/XmagicApi;->MAX_SEG_VIDEO_DURATION:I

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/tencent/xmagic/XmagicApi;->isFirstFrame:Z

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->agents:Ljava/util/Map;

    .line 14
    sget-object v1, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XmagicApi constructor\uff0cresDir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mLibPathSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/tencent/xmagic/XmagicApi;->mLibPathSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-object p3, p0, Lcom/tencent/xmagic/XmagicApi;->mXmagicPropertyErrorListener:Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;

    .line 16
    sget-boolean p3, Lcom/tencent/xmagic/XmagicApi;->mLibPathSet:Z

    if-nez p3, :cond_0

    .line 17
    invoke-static {v0}, Lcom/tencent/xmagic/XmagicApi;->setLibPathAndLoad(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 18
    iget-object p3, p0, Lcom/tencent/xmagic/XmagicApi;->mXmagicPropertyErrorListener:Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;

    if-eqz p3, :cond_0

    .line 19
    sget v0, Lcom/tencent/xmagic/R$string;->xamgic_9000:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2328

    invoke-interface {p3, v0, v1}, Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;->onXmagicPropertyError(Ljava/lang/String;I)V

    .line 20
    :cond_0
    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 22
    :cond_1
    invoke-direct {p0, p2}, Lcom/tencent/xmagic/XmagicApi;->detectModelExists(Ljava/lang/String;)V

    .line 23
    iget-object p3, p0, Lcom/tencent/xmagic/XmagicApi;->agents:Ljava/util/Map;

    if-nez p3, :cond_2

    .line 24
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/tencent/xmagic/XmagicApi;->agents:Ljava/util/Map;

    .line 25
    :cond_2
    iget-object p3, p0, Lcom/tencent/xmagic/XmagicApi;->agents:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "light_assets/models/LightSegmentBody.bundle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BG_SEG_AGENT"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p3, p0, Lcom/tencent/xmagic/XmagicApi;->agents:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "light_assets/models/LightSegmentHair.bundle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HAIR_SEG_AGENT"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p3, p0, Lcom/tencent/xmagic/XmagicApi;->agents:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "light_assets/models/LightSegmentHead.bundle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD_SEG_AGENT"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p3, p0, Lcom/tencent/xmagic/XmagicApi;->agents:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "light_assets/models/LightHandModel.bundle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HAND_AGENT"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object p3, p0, Lcom/tencent/xmagic/XmagicApi;->agents:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "light_assets/models/LightBodyModel.bundle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BODY_AGENT"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object p3, p0, Lcom/tencent/xmagic/XmagicApi;->agents:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "light_assets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ace_3d_Engine"

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/tencent/xmagic/XmagicApi;->mContext:Landroid/content/Context;

    .line 32
    new-instance p3, Lcom/tencent/xmagic/LightNode;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "light_assets/template.json"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, v0, p2}, Lcom/tencent/xmagic/LightNode;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    .line 33
    invoke-direct {p0}, Lcom/tencent/xmagic/XmagicApi;->addAssetsLoadError()V

    .line 34
    invoke-virtual {p3}, Lcom/tencent/xmagic/LightNode;->getDeviceSupportAbilities()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/xmagic/XmagicApi;->deviceAbilities:Ljava/util/Map;

    const/4 p1, 0x5

    .line 35
    invoke-virtual {p0, p1}, Lcom/tencent/xmagic/XmagicApi;->setXmagicLogLevel(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/xmagic/XmagicApi;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/tencent/xmagic/XmagicApi;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/xmagic/XmagicApi;)Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/xmagic/XmagicApi;->mXmagicPropertyErrorListener:Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;

    return-object p0
.end method

.method private addAssetsLoadError()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    new-instance v1, Lcom/tencent/xmagic/XmagicApi$4;

    invoke-direct {v1, p0}, Lcom/tencent/xmagic/XmagicApi$4;-><init>(Lcom/tencent/xmagic/XmagicApi;)V

    invoke-virtual {v0, v1}, Lcom/tencent/xmagic/LightNode;->setAssetsLoadErrorListener(Lcom/tencent/xmagic/LightNode$OnAssetsLoadErrorListener;)V

    return-void
.end method

.method private detectModelExists(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "light_assets/models/LightSegmentBody.bundle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    const-string v1, "load assets fail:LightSegmentBodyModel is not exists"

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "light_assets/models/LightSegmentHair.bundle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    const-string v1, "load assets fail:LightSegmentHairModel is not exists"

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "light_assets/models/LightSegmentHead.bundle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    sget-object v0, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    const-string v1, "load assets fail:LightSegmentHeadModel is not exists"

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "light_assets/models/LightHandModel.bundle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    sget-object v0, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    const-string v1, "load assets fail:LightHandModel is not exists"

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "light_assets/models/LightBodyModel.bundle"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_4

    .line 10
    sget-object p1, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    const-string v0, "load assets fail:LightBodyModel is not exists"

    invoke-static {p1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private fixThinFaceValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "0.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "0.01"

    :cond_0
    return-object p1
.end method

.method private isDeviceSupportProperty(Lcom/tencent/xmagic/XmagicProperty;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, v0}, Lcom/tencent/xmagic/XmagicApi;->getPropertyRequiredAbilities(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/xmagic/XmagicApi;->deviceAbilities:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/tencent/xmagic/XmagicApi;->deviceAbilities:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private static loadLib(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLib: path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",libName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "lib"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".so"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const-string p0, "loadLib: try 1 success"

    .line 3
    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    sget-object v0, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadLib try 1: error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    return v2

    .line 5
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    sget-object p0, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    const-string p1, "loadLib: try 2 success"

    invoke-static {p0, p1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 7
    sget-object p1, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLib try 2: error="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method private preInitSegmentAgent()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/xmagic/XmagicApi;->mSegmentInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BG_SEG_AGENT"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v1, v0}, Lcom/tencent/xmagic/LightNode;->setPreInitAgents([Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/tencent/xmagic/XmagicApi;->mSegmentInited:Z

    return-void
.end method

.method public static setLibPathAndLoad(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/tencent/xmagic/XmagicApi;->mLibPathSet:Z

    .line 2
    sget-object v1, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLibPath: path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "light-sdk"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 4
    :try_start_0
    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string p0, "setLibPathAndLoad,light-sdk,success"

    .line 5
    invoke-static {v1, p0}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 6
    sget-object v0, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLibPathAndLoad,light-sdk,error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 7
    :cond_0
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v1, "YTCommonXMagic"

    .line 9
    invoke-static {p0, v1}, Lcom/tencent/xmagic/XmagicApi;->loadLib(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "v8jni"

    .line 10
    invoke-static {p0, v1}, Lcom/tencent/xmagic/XmagicApi;->loadLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v4

    :cond_2
    const-string v1, "libpag"

    .line 11
    invoke-static {p0, v1}, Lcom/tencent/xmagic/XmagicApi;->loadLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return v4

    .line 12
    :cond_3
    invoke-static {p0, v3}, Lcom/tencent/xmagic/XmagicApi;->loadLib(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    return v4

    :cond_4
    return v0
.end method

.method private setSegmentBg(Ljava/lang/String;I)V
    .locals 10

    .line 1
    sget-object v0, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSegmentBg, fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    if-nez p2, :cond_c

    .line 5
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 8
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 9
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v4, v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-lez v4, :cond_2

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v6, 0x1

    :goto_2
    const/16 v7, 0xf00

    const/16 v8, 0x870

    if-eqz v5, :cond_4

    if-gt v4, v8, :cond_3

    if-le v3, v7, :cond_4

    :cond_3
    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    :goto_3
    if-nez v5, :cond_5

    if-gt v4, v7, :cond_6

    if-le v3, v8, :cond_5

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_4
    if-nez v9, :cond_a

    if-nez v1, :cond_a

    if-eqz v6, :cond_7

    goto :goto_7

    .line 10
    :cond_7
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_9

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    const/4 p1, 0x0

    .line 12
    :try_start_1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->mXmagicPropertyErrorListener:Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;

    if-eqz v0, :cond_8

    .line 13
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->mXmagicPropertyErrorListener:Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;

    iget-object v1, p0, Lcom/tencent/xmagic/XmagicApi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/tencent/xmagic/R$string;->xamgic_5001:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1389

    invoke-interface {v0, v1, v3}, Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;->onXmagicPropertyError(Ljava/lang/String;I)V

    .line 14
    :cond_8
    sget-object v0, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    const-string v1, "load assets error code:5001"

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v0, p1, p2, v2}, Lcom/tencent/xmagic/LightNode;->setSegmentBg(Ljava/lang/String;II)V

    goto/16 :goto_9

    .line 16
    :goto_6
    throw p1

    .line 17
    :cond_a
    :goto_7
    iget-object p1, p0, Lcom/tencent/xmagic/XmagicApi;->mXmagicPropertyErrorListener:Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;

    if-eqz p1, :cond_b

    .line 18
    iget-object p1, p0, Lcom/tencent/xmagic/XmagicApi;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/tencent/xmagic/R$string;->xamgic_5000:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 19
    iget-object p2, p0, Lcom/tencent/xmagic/XmagicApi;->mXmagicPropertyErrorListener:Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;

    const/16 v1, 0x1388

    invoke-interface {p2, p1, v1}, Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;->onXmagicPropertyError(Ljava/lang/String;I)V

    :cond_b
    const-string p1, "load assets error code:5000"

    .line 20
    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const-string v3, "."

    .line 21
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "mp4"

    .line 22
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 23
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 24
    :try_start_2
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    nop

    .line 26
    iget-object v1, p0, Lcom/tencent/xmagic/XmagicApi;->mXmagicPropertyErrorListener:Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;

    if-eqz v1, :cond_d

    .line 27
    iget-object v1, p0, Lcom/tencent/xmagic/XmagicApi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/tencent/xmagic/R$string;->xamgic_5002:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/tencent/xmagic/XmagicApi;->mXmagicPropertyErrorListener:Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;

    const/16 v3, 0x138a

    invoke-interface {v2, v1, v3}, Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;->onXmagicPropertyError(Ljava/lang/String;I)V

    .line 29
    :cond_d
    sget-object v1, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    const-string v2, "load assets error code:5002"

    invoke-static {v1, v2}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :goto_8
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    add-int/lit8 v2, v0, -0xa

    const v0, 0x30d40

    if-le v2, v0, :cond_11

    .line 31
    iget-object p1, p0, Lcom/tencent/xmagic/XmagicApi;->mXmagicPropertyErrorListener:Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;

    if-eqz p1, :cond_e

    .line 32
    iget-object p1, p0, Lcom/tencent/xmagic/XmagicApi;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/tencent/xmagic/R$string;->xamgic_5003:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 33
    iget-object p2, p0, Lcom/tencent/xmagic/XmagicApi;->mXmagicPropertyErrorListener:Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;

    const/16 v0, 0x138b

    invoke-interface {p2, p1, v0}, Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;->onXmagicPropertyError(Ljava/lang/String;I)V

    .line 34
    :cond_e
    sget-object p1, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    const-string p2, "load assets error code:5003"

    invoke-static {p1, p2}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_f
    iget-object v1, p0, Lcom/tencent/xmagic/XmagicApi;->mXmagicPropertyErrorListener:Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;

    if-eqz v1, :cond_10

    .line 36
    iget-object v1, p0, Lcom/tencent/xmagic/XmagicApi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/tencent/xmagic/R$string;->xamgic_5004:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    iget-object v3, p0, Lcom/tencent/xmagic/XmagicApi;->mXmagicPropertyErrorListener:Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;

    const/16 v4, 0x138c

    invoke-interface {v3, v1, v4}, Lcom/tencent/xmagic/XmagicApi$OnXmagicPropertyErrorListener;->onXmagicPropertyError(Ljava/lang/String;I)V

    :cond_10
    const-string v1, "load assets error code:5004"

    .line 38
    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_11
    :goto_9
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v0, p1, p2, v2}, Lcom/tencent/xmagic/LightNode;->setSegmentBg(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public getDeviceAbilities()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->deviceAbilities:Ljava/util/Map;

    return-object v0
.end method

.method public getPropertyRequiredAbilities(Ljava/util/List;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;>;)",
            "Ljava/util/Map<",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/xmagic/XmagicProperty;

    .line 4
    iget-object v2, v1, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v4, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4, v2}, Lcom/tencent/xmagic/LightNode;->makeLightAssetByPath(Ljava/lang/String;)Lorg/light/LightAsset;

    move-result-object v2

    .line 8
    sget-object v4, Lorg/light/DeviceSupportUtil;->DEVICE_ABILITY_ARRAY:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    if-eqz v2, :cond_1

    .line 9
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 10
    invoke-virtual {v2, v7}, Lorg/light/LightAsset;->needRenderAbility(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 11
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public isBeautyAuthorized(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/xmagic/XmagicProperty;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v1}, Lcom/tencent/xmagic/LightNode;->getmBeautyController()Lorg/light/BeautyController;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/light/BeautyController;->isBeautyAuthorized(Ljava/lang/String;)Z

    move-result v1

    .line 4
    sget-object v2, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBeautyAuthorized,property.effKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",isAuth= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-boolean v1, v0, Lcom/tencent/xmagic/XmagicProperty;->isAuth:Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public isDeviceSupport(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/xmagic/XmagicProperty;

    .line 2
    invoke-direct {p0, v0}, Lcom/tencent/xmagic/XmagicApi;->isDeviceSupportProperty(Lcom/tencent/xmagic/XmagicProperty;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/xmagic/XmagicProperty;->isSupport:Z

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  isSupport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/tencent/xmagic/XmagicProperty;->isSupport:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isDeviceSupport"

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isSupportBeauty()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->deviceAbilities:Ljava/util/Map;

    const-string v1, "OpenGL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2
    sget-object v1, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportBeauty = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v0}, Lcom/tencent/xmagic/LightNode;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tencent/xmagic/XmagicApi;->mSegmentInited:Z

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/xmagic/XmagicApi;->onPauseAudio()V

    return-void
.end method

.method public onPauseAudio()V
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    const-string v1, "onPauseAudio()"

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v0}, Lcom/tencent/xmagic/LightNode;->pauseAudio()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    sget-object v0, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v0}, Lcom/tencent/xmagic/LightNode;->resumeAudio()V

    return-void
.end method

.method public process(III)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 16
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    if-nez v4, :cond_0

    .line 17
    sget-object v2, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    const-string v3, "process(): mLightNode == null, just return srcTextureId."

    invoke-static {v2, v3}, Lorg/light/utils/LightLogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 18
    :cond_0
    invoke-virtual {v4}, Lcom/tencent/xmagic/LightNode;->isInited()Z

    move-result v4

    const-string v5, "]"

    const-string v6, "], height = ["

    if-nez v4, :cond_2

    .line 19
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4, v2, v3}, Lcom/tencent/xmagic/LightNode;->initPreviewSize(II)V

    .line 20
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4}, Lcom/tencent/xmagic/LightNode;->init()V

    .line 21
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->agents:Ljava/util/Map;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 22
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->agents:Ljava/util/Map;

    invoke-virtual {v0, v4}, Lcom/tencent/xmagic/XmagicApi;->setBundleToLightEngine(Ljava/util/Map;)V

    .line 23
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "process(): LightNode.initPreviewSize(): width = ["

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    sget-object v5, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "process(): LightNode.init()"

    .line 28
    invoke-static {v5, v4}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_2
    iget v4, v0, Lcom/tencent/xmagic/XmagicApi;->mTextureWidth:I

    if-ne v4, v2, :cond_3

    iget v4, v0, Lcom/tencent/xmagic/XmagicApi;->mTextureHeight:I

    if-eq v4, v3, :cond_4

    .line 30
    :cond_3
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4, v2, v3}, Lcom/tencent/xmagic/LightNode;->updatePreviewSize(II)V

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "process(): src texture size changed, "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "call LightNode.updatePreviewSize(): width = ["

    .line 32
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    sget-object v5, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_4
    :goto_0
    iput v2, v0, Lcom/tencent/xmagic/XmagicApi;->mTextureWidth:I

    .line 39
    iput v3, v0, Lcom/tencent/xmagic/XmagicApi;->mTextureHeight:I

    .line 40
    iget-boolean v4, v0, Lcom/tencent/xmagic/XmagicApi;->isFirstFrame:Z

    const-string v5, "beauty.makeupMultiply.enable"

    const-string v6, "beauty.softLight.enable"

    const-string v7, "beauty.lips.enable"

    const-string v8, "false"

    const/4 v9, 0x0

    if-eqz v4, :cond_6

    .line 41
    iput-boolean v9, v0, Lcom/tencent/xmagic/XmagicApi;->isFirstFrame:Z

    .line 42
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 43
    sget-object v10, Lcom/tencent/xmagic/XmagicConstant$BeautyConstant;->BEAUTY_EFF_KEYS:[Ljava/lang/String;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_5

    aget-object v13, v10, v12

    const/4 v14, 0x0

    .line 44
    invoke-static {v14}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 45
    :cond_5
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v10, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v10, v4}, Lcom/tencent/xmagic/LightNode;->updateCameraConfigData(Ljava/util/Map;)V

    .line 49
    :cond_6
    iget v4, v0, Lcom/tencent/xmagic/XmagicApi;->processDataType:I

    if-nez v4, :cond_7

    .line 50
    invoke-static {}, Lorg/light/utils/FpsUtils;->getFps()I

    move-result v4

    if-nez v4, :cond_7

    .line 51
    sget-object v5, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jump frame fps "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4, v1, v2, v3}, Lcom/tencent/xmagic/LightNode;->render(III)I

    move-result v1

    return v1

    .line 53
    :cond_7
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mPendingProperties:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_25

    .line 54
    new-instance v4, Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/tencent/xmagic/XmagicApi;->mPendingProperties:Ljava/util/Set;

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    iget-object v10, v0, Lcom/tencent/xmagic/XmagicApi;->mPendingProperties:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->clear()V

    .line 56
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/tencent/xmagic/XmagicProperty;

    .line 57
    sget-object v11, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "process mPendingProperties\uff0cproperty="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/tencent/xmagic/XmagicProperty;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v12, v10, Lcom/tencent/xmagic/XmagicProperty;->category:Lcom/tencent/xmagic/XmagicProperty$Category;

    sget-object v13, Lcom/tencent/xmagic/XmagicProperty$Category;->MOTION:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-eq v12, v13, :cond_1c

    sget-object v15, Lcom/tencent/xmagic/XmagicProperty$Category;->SEGMENTATION:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-eq v12, v15, :cond_1c

    sget-object v15, Lcom/tencent/xmagic/XmagicProperty$Category;->MAKEUP:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-ne v12, v15, :cond_8

    goto/16 :goto_b

    .line 59
    :cond_8
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 60
    iget-object v13, v10, Lcom/tencent/xmagic/XmagicProperty;->category:Lcom/tencent/xmagic/XmagicProperty$Category;

    sget-object v15, Lcom/tencent/xmagic/XmagicProperty$Category;->BEAUTY:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-ne v13, v15, :cond_16

    .line 61
    iget-object v13, v10, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_15

    .line 62
    iget-object v13, v10, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    iget-object v15, v10, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    invoke-interface {v12, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v13, v10, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v16

    const-string v15, "femaleGod"

    const-string v14, "maleGod"

    const-string v9, "nature"

    move-object/from16 v18, v4

    sparse-switch v16, :sswitch_data_0

    :goto_3
    const/16 v17, -0x1

    goto :goto_4

    :sswitch_0
    const-string v4, "beauty.softLight.softLightMask"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_3

    :cond_9
    const/4 v4, 0x5

    const/16 v17, 0x5

    goto :goto_4

    :sswitch_1
    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_3

    :cond_a
    const/4 v4, 0x4

    const/16 v17, 0x4

    goto :goto_4

    :sswitch_2
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_3

    :cond_b
    const/16 v17, 0x3

    goto :goto_4

    :sswitch_3
    const-string v4, "beauty.lips.lipsMask"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_3

    :cond_c
    const/16 v17, 0x2

    goto :goto_4

    :sswitch_4
    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto :goto_3

    :cond_d
    const/16 v17, 0x1

    goto :goto_4

    :sswitch_5
    const-string v4, "beauty.makeupMultiply.multiplyMask"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_3

    :cond_e
    const/16 v17, 0x0

    :goto_4
    const-string/jumbo v4, "true"

    const-string v13, "reshape.basicFaceSubType"

    packed-switch v17, :pswitch_data_0

    goto/16 :goto_a

    .line 64
    :pswitch_0
    iget-object v9, v10, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    check-cast v9, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;

    invoke-virtual {v9}, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->getCurrentDisplayValue()F

    move-result v9

    float-to-int v9, v9

    if-gtz v9, :cond_f

    move-object v4, v8

    .line 65
    :cond_f
    invoke-interface {v12, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-gtz v9, :cond_10

    .line 66
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4}, Lcom/tencent/xmagic/LightNode;->getmBeautyController()Lorg/light/BeautyController;

    move-result-object v4

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Lorg/light/BeautyController;->enableBasicBeautyMakeup(IZ)V

    goto :goto_5

    .line 67
    :cond_10
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4}, Lcom/tencent/xmagic/LightNode;->getmBeautyController()Lorg/light/BeautyController;

    move-result-object v4

    iget-object v10, v10, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    invoke-virtual {v4, v10, v9}, Lorg/light/BeautyController;->openAndUpdateBasicSoftLight(Ljava/lang/String;I)V

    .line 68
    :goto_5
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4, v12}, Lcom/tencent/xmagic/LightNode;->updateCameraConfigData(Ljava/util/Map;)V

    goto/16 :goto_a

    .line 69
    :pswitch_1
    invoke-interface {v12, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    check-cast v4, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;

    invoke-virtual {v4}, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->getCurrentInnerValueString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/tencent/xmagic/XmagicApi;->fixThinFaceValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    iget-object v9, v10, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-interface {v12, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4, v12}, Lcom/tencent/xmagic/LightNode;->updateCameraConfigData(Ljava/util/Map;)V

    goto/16 :goto_a

    .line 73
    :pswitch_2
    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    check-cast v4, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;

    invoke-virtual {v4}, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->getCurrentInnerValueString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/tencent/xmagic/XmagicApi;->fixThinFaceValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    iget-object v9, v10, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-interface {v12, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4, v12}, Lcom/tencent/xmagic/LightNode;->updateCameraConfigData(Ljava/util/Map;)V

    goto/16 :goto_a

    .line 77
    :pswitch_3
    iget-object v9, v10, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    check-cast v9, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;

    invoke-virtual {v9}, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->getCurrentDisplayValue()F

    move-result v9

    float-to-int v9, v9

    if-gtz v9, :cond_11

    move-object v4, v8

    .line 78
    :cond_11
    invoke-interface {v12, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-gtz v9, :cond_12

    .line 79
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4}, Lcom/tencent/xmagic/LightNode;->getmBeautyController()Lorg/light/BeautyController;

    move-result-object v4

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Lorg/light/BeautyController;->enableBasicBeautyMakeup(IZ)V

    goto :goto_6

    .line 80
    :cond_12
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4}, Lcom/tencent/xmagic/LightNode;->getmBeautyController()Lorg/light/BeautyController;

    move-result-object v4

    iget-object v10, v10, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    const/4 v13, 0x2

    invoke-virtual {v4, v10, v9, v13}, Lorg/light/BeautyController;->openAndUpdateBasicLips(Ljava/lang/String;II)V

    .line 81
    :goto_6
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4, v12}, Lcom/tencent/xmagic/LightNode;->updateCameraConfigData(Ljava/util/Map;)V

    goto/16 :goto_a

    .line 82
    :pswitch_4
    invoke-interface {v12, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    check-cast v4, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;

    invoke-virtual {v4}, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->getCurrentInnerValueString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/tencent/xmagic/XmagicApi;->fixThinFaceValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    iget-object v9, v10, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-interface {v12, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4, v12}, Lcom/tencent/xmagic/LightNode;->updateCameraConfigData(Ljava/util/Map;)V

    goto/16 :goto_a

    .line 86
    :pswitch_5
    iget-object v9, v10, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    check-cast v9, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;

    invoke-virtual {v9}, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->getCurrentDisplayValue()F

    move-result v9

    float-to-int v9, v9

    if-gtz v9, :cond_13

    move-object v4, v8

    .line 87
    :cond_13
    invoke-interface {v12, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-gtz v9, :cond_14

    .line 88
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4}, Lcom/tencent/xmagic/LightNode;->getmBeautyController()Lorg/light/BeautyController;

    move-result-object v4

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Lorg/light/BeautyController;->enableBasicBeautyMakeup(IZ)V

    goto :goto_7

    .line 89
    :cond_14
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4}, Lcom/tencent/xmagic/LightNode;->getmBeautyController()Lorg/light/BeautyController;

    move-result-object v4

    iget-object v10, v10, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    invoke-virtual {v4, v10, v9}, Lorg/light/BeautyController;->openAndUpdateBasicMultiply(Ljava/lang/String;I)V

    .line 90
    :goto_7
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4, v12}, Lcom/tencent/xmagic/LightNode;->updateCameraConfigData(Ljava/util/Map;)V

    goto :goto_a

    :cond_15
    move-object/from16 v18, v4

    .line 91
    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    iget-object v9, v10, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    check-cast v9, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;

    invoke-virtual {v9}, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->getCurrentInnerValueString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v12, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4, v12}, Lcom/tencent/xmagic/LightNode;->updateCameraConfigData(Ljava/util/Map;)V

    goto :goto_a

    :cond_16
    move-object/from16 v18, v4

    .line 93
    sget-object v4, Lcom/tencent/xmagic/XmagicProperty$Category;->BODY_BEAUTY:Lcom/tencent/xmagic/XmagicProperty$Category;

    const-string v9, "0"

    if-ne v13, v4, :cond_18

    .line 94
    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    iget-object v10, v10, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    if-nez v10, :cond_17

    goto :goto_8

    :cond_17
    check-cast v10, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;

    invoke-virtual {v10}, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->getCurrentInnerValueString()Ljava/lang/String;

    move-result-object v9

    :goto_8
    invoke-interface {v12, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4, v12}, Lcom/tencent/xmagic/LightNode;->updateCameraConfigData(Ljava/util/Map;)V

    goto :goto_a

    .line 96
    :cond_18
    sget-object v4, Lcom/tencent/xmagic/XmagicProperty$Category;->KV:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-ne v13, v4, :cond_19

    .line 97
    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    iget-object v9, v10, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-interface {v12, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4, v12}, Lcom/tencent/xmagic/LightNode;->updateCameraConfigData(Ljava/util/Map;)V

    goto :goto_a

    .line 99
    :cond_19
    sget-object v4, Lcom/tencent/xmagic/XmagicProperty$Category;->LUT:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-ne v13, v4, :cond_1b

    .line 100
    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    const-string v13, "lut.src"

    invoke-interface {v12, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    if-nez v4, :cond_1a

    goto :goto_9

    :cond_1a
    check-cast v4, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;

    invoke-virtual {v4}, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->getCurrentInnerValueString()Ljava/lang/String;

    move-result-object v9

    :goto_9
    const-string v4, "lut.intensity"

    .line 102
    invoke-interface {v12, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4, v12}, Lcom/tencent/xmagic/LightNode;->updateCameraConfigData(Ljava/util/Map;)V

    .line 104
    :cond_1b
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "render() called, update property: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    goto/16 :goto_e

    :cond_1c
    :goto_b
    move-object/from16 v18, v4

    .line 105
    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    const-string v9, "ID_NONE"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v9, "video_empty_segmentation"

    if-nez v4, :cond_1e

    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->category:Lcom/tencent/xmagic/XmagicProperty$Category;

    sget-object v12, Lcom/tencent/xmagic/XmagicProperty$Category;->SEGMENTATION:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-eq v4, v12, :cond_1d

    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    .line 106
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    const-string/jumbo v12, "video_segmentation_"

    .line 107
    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 108
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/tencent/xmagic/XmagicApi;->preInitSegmentAgent()V

    .line 109
    :cond_1e
    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->id:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v9, "makeup.strength"

    if-eqz v4, :cond_21

    .line 110
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v4

    .line 111
    iget-object v12, v10, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-interface {v4, v12}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v12, "image"

    .line 112
    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1f

    const-string v4, "image background"

    .line 113
    invoke-static {v11, v4}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v0, v4, v12}, Lcom/tencent/xmagic/XmagicApi;->setSegmentBg(Ljava/lang/String;I)V

    goto :goto_c

    :cond_1f
    const-string/jumbo v12, "video"

    .line 115
    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_20

    const-string/jumbo v4, "video background"

    .line 116
    invoke-static {v11, v4}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-direct {v0, v4, v12}, Lcom/tencent/xmagic/XmagicApi;->setSegmentBg(Ljava/lang/String;I)V

    goto :goto_c

    .line 118
    :cond_20
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "invalid bg type: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_c
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    iget-object v12, v10, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v4, v12, v14}, Lcom/tencent/xmagic/LightNode;->updateAsset(Ljava/lang/String;Z)V

    const/4 v14, 0x0

    goto :goto_d

    .line 120
    :cond_21
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    iget-object v12, v10, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v4, v12, v14}, Lcom/tencent/xmagic/LightNode;->updateAsset(Ljava/lang/String;Z)V

    .line 121
    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->effValue:Ljava/lang/Object;

    if-eqz v4, :cond_23

    .line 122
    check-cast v4, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;

    invoke-virtual {v4}, Lcom/tencent/xmagic/XmagicProperty$XmagicPropertyValues;->getCurrentInnerValueString()Ljava/lang/String;

    move-result-object v4

    .line 123
    iget-object v12, v10, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 124
    iget-object v12, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    iget-object v15, v10, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-virtual {v12, v15, v4}, Lcom/tencent/xmagic/LightNode;->setPresetData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 125
    :cond_22
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 126
    iget-object v15, v10, Lcom/tencent/xmagic/XmagicProperty;->effKey:Ljava/lang/String;

    invoke-interface {v12, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4, v12}, Lcom/tencent/xmagic/LightNode;->updateCameraConfigData(Ljava/util/Map;)V

    .line 128
    :cond_23
    :goto_d
    iget-object v4, v10, Lcom/tencent/xmagic/XmagicProperty;->category:Lcom/tencent/xmagic/XmagicProperty$Category;

    if-ne v4, v13, :cond_24

    .line 129
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    const-string v12, "1.0"

    invoke-virtual {v4, v9, v12}, Lcom/tencent/xmagic/LightNode;->setPresetData(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "render() called, updateAsset: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/tencent/xmagic/XmagicProperty;->resPath:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    move-object/from16 v4, v18

    const/4 v9, 0x0

    goto/16 :goto_2

    .line 131
    :cond_25
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    iget-object v5, v0, Lcom/tencent/xmagic/XmagicApi;->deviceCameraConfig:Lorg/light/DeviceCameraConfig;

    invoke-virtual {v4, v5}, Lcom/tencent/xmagic/LightNode;->updateDeviceCameraConfig(Lorg/light/DeviceCameraConfig;)V

    .line 132
    iget-object v4, v0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v4, v1, v2, v3}, Lcom/tencent/xmagic/LightNode;->render(III)I

    move-result v1

    return v1

    :sswitch_data_0
    .sparse-switch
        -0x4cefb141 -> :sswitch_5
        -0x3ebd8359 -> :sswitch_4
        0x53e5748 -> :sswitch_3
        0x31ae3b2f -> :sswitch_2
        0x40c92990 -> :sswitch_1
        0x6ee1c944 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    const-string p2, "process bitmap,Input bitmap is null"

    invoke-static {p1, p2}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 4
    sget-object v2, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process bitmap,width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/light/utils/LightLogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget v2, p0, Lcom/tencent/xmagic/XmagicApi;->srcBitmapTextureId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 6
    invoke-static {p1}, Lcom/tencent/xmagic/GlUtil;->createTexture(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/tencent/xmagic/XmagicApi;->srcBitmapTextureId:I

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1, v2}, Lcom/tencent/xmagic/GlUtil;->bindTexture(Landroid/graphics/Bitmap;I)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {p1}, Lcom/tencent/xmagic/LightNode;->isInited()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    const/4 p1, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge p1, v3, :cond_2

    .line 9
    iget v3, p0, Lcom/tencent/xmagic/XmagicApi;->srcBitmapTextureId:I

    invoke-virtual {p0, v3, v0, v1}, Lcom/tencent/xmagic/XmagicApi;->process(III)I

    const-wide/16 v3, 0xc8

    .line 10
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/tencent/xmagic/LightNode;->setSyncMode(Z)V

    if-eqz p2, :cond_3

    :goto_3
    if-ge v2, v3, :cond_3

    .line 13
    iget p1, p0, Lcom/tencent/xmagic/XmagicApi;->srcBitmapTextureId:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/xmagic/XmagicApi;->process(III)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 14
    :cond_3
    iget p1, p0, Lcom/tencent/xmagic/XmagicApi;->srcBitmapTextureId:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/xmagic/XmagicApi;->process(III)I

    move-result p1

    .line 15
    invoke-static {p1, v0, v1}, Lcom/tencent/xmagic/GlUtil;->readTexture(III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public sensorChanged(Landroid/hardware/SensorEvent;Landroid/hardware/Sensor;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->recognizedOrientation:Lorg/light/CameraConfig$DeviceCameraOrientation;

    .line 2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    if-ne v1, p2, :cond_5

    .line 3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 p2, 0x0

    aget p2, p1, p2

    const/4 v1, 0x1

    .line 4
    aget p1, p1, v1

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    cmpl-float v1, p1, v4

    if-lez v1, :cond_0

    .line 6
    sget-object v0, Lorg/light/CameraConfig$DeviceCameraOrientation;->ROTATION_0:Lorg/light/CameraConfig$DeviceCameraOrientation;

    goto :goto_0

    :cond_0
    cmpg-float v1, p1, v3

    if-gez v1, :cond_3

    .line 7
    sget-object v0, Lorg/light/CameraConfig$DeviceCameraOrientation;->ROTATION_180:Lorg/light/CameraConfig$DeviceCameraOrientation;

    goto :goto_0

    :cond_1
    cmpl-float v1, p2, v4

    if-lez v1, :cond_2

    .line 8
    sget-object v0, Lorg/light/CameraConfig$DeviceCameraOrientation;->ROTATION_90:Lorg/light/CameraConfig$DeviceCameraOrientation;

    goto :goto_0

    :cond_2
    cmpg-float v1, p2, v3

    if-gez v1, :cond_3

    .line 9
    sget-object v0, Lorg/light/CameraConfig$DeviceCameraOrientation;->ROTATION_270:Lorg/light/CameraConfig$DeviceCameraOrientation;

    .line 10
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/tencent/xmagic/XmagicApi;->recognizedOrientation:Lorg/light/CameraConfig$DeviceCameraOrientation;

    if-eq v1, v0, :cond_5

    .line 11
    iget v1, p0, Lcom/tencent/xmagic/XmagicApi;->lastXAxis:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/tencent/xmagic/XmagicApi;->eps:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_4

    iget v1, p0, Lcom/tencent/xmagic/XmagicApi;->lastXAxis:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/tencent/xmagic/XmagicApi;->eps:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/tencent/xmagic/XmagicApi;->deviceCameraConfig:Lorg/light/DeviceCameraConfig;

    iput-object v0, p1, Lorg/light/DeviceCameraConfig;->deviceCameraOrientation:Lorg/light/CameraConfig$DeviceCameraOrientation;

    .line 13
    iput p2, p0, Lcom/tencent/xmagic/XmagicApi;->lastXAxis:F

    .line 14
    iput-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->recognizedOrientation:Lorg/light/CameraConfig$DeviceCameraOrientation;

    :cond_5
    return-void
.end method

.method public setAIDataListener(Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    new-instance v1, Lcom/tencent/xmagic/XmagicApi$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/xmagic/XmagicApi$2;-><init>(Lcom/tencent/xmagic/XmagicApi;Lcom/tencent/xmagic/XmagicApi$XmagicAIDataListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/xmagic/LightNode;->setAIDataListener(Lorg/light/listener/OnAIDataListener;)V

    return-void
.end method

.method public setBundleToLightEngine(Ljava/util/Map;)V
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

    .line 1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/xmagic/LightNode;->isInited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    invoke-virtual {v0, p1}, Lcom/tencent/xmagic/LightNode;->setBundleToLightEngine(Ljava/util/Map;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->agents:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->agents:Ljava/util/Map;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->agents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public setTipsListener(Lcom/tencent/xmagic/XmagicApi$XmagicTipsListener;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    new-instance v1, Lcom/tencent/xmagic/XmagicApi$3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/xmagic/XmagicApi$3;-><init>(Lcom/tencent/xmagic/XmagicApi;Lcom/tencent/xmagic/XmagicApi$XmagicTipsListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/xmagic/LightNode;->setTipsListener(Lorg/light/listener/OnTipsStatusListener;)V

    return-void
.end method

.method public setXmagicLogLevel(I)V
    .locals 0

    .line 1
    invoke-static {}, Lorg/light/utils/LightLogUtil;->init()V

    .line 2
    invoke-static {p1}, Lorg/light/utils/LightLogUtil;->setMinPriority(I)V

    return-void
.end method

.method public setXmagicStreamType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/xmagic/XmagicApi;->processDataType:I

    return-void
.end method

.method public setYTDataListener(Lcom/tencent/xmagic/XmagicApi$XmagicYTDataListener;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->mLightNode:Lcom/tencent/xmagic/LightNode;

    new-instance v1, Lcom/tencent/xmagic/XmagicApi$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/xmagic/XmagicApi$1;-><init>(Lcom/tencent/xmagic/XmagicApi;Lcom/tencent/xmagic/XmagicApi$XmagicYTDataListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/xmagic/LightNode;->setYTDataListener(Lorg/light/listener/YTDataListener;)V

    return-void
.end method

.method public updateProperties(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/xmagic/XmagicProperty;

    .line 2
    invoke-static {v0}, Lcom/tencent/xmagic/XmagicPropertyChecker;->checkProperty(Lcom/tencent/xmagic/XmagicProperty;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/tencent/xmagic/XmagicApi;->mPendingProperties:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XmagicProperty parameter is invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/xmagic/XmagicProperty;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateProperty(Lcom/tencent/xmagic/XmagicProperty;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/xmagic/XmagicProperty<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/tencent/xmagic/XmagicPropertyChecker;->checkProperty(Lcom/tencent/xmagic/XmagicProperty;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/xmagic/XmagicApi;->mPendingProperties:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/tencent/xmagic/XmagicApi;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XmagicProperty parameter is invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/xmagic/XmagicProperty;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/light/utils/LightLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
