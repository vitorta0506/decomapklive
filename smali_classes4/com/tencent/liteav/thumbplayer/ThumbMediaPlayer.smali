.class public Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;
.super Lcom/tencent/liteav/txcplayer/a;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/txcplayer/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TRTCCloudClassInvokeHelper;,
        Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TXCDLProxyLogListener;,
        Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TXCTPPlayerOnLogListener;
    }
.end annotation


# static fields
.field private static final THUMB_PLAYER_GUID:Ljava/lang/String; = "liteav_tbplayer_android_"

.field private static final THUMB_PLAYER_PLATFORM_ID:I = 0x238ebf

.field public static final synthetic a:I = 0x0

.field private static volatile mSDKInited:Z = false


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBitrate:J

.field private mBitrateIndex:I

.field private mCachedBytes:J

.field private mConfig:Lcom/tencent/liteav/txcplayer/e;

.field private mDataSource:Ljava/lang/String;

.field private mEnableAccurateSeek:Z

.field private mHasReceiveFirstVideoRenderEvent:Z

.field private mIsLooping:Z

.field private mPrivateConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRate:F

.field private mReuseSurfaceTexture:Z

.field private mScreenOnWhilePlaying:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTextureHost:Lcom/tencent/liteav/txcplayer/c;

.field private volatile mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

.field private mTcpSpeed:J

.field private mTotalFileSize:J

.field private mTrtcCloud:Ljava/lang/Object;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-class v0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    invoke-direct {p0}, Lcom/tencent/liteav/txcplayer/a;-><init>()V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mEnableAccurateSeek:Z

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/16 v3, -0x3e8

    .line 5
    iput v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    const-wide/16 v3, 0x0

    .line 6
    iput-wide v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mCachedBytes:J

    .line 7
    iput-wide v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrate:J

    .line 8
    iput-wide v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTcpSpeed:J

    .line 9
    iput-wide v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTotalFileSize:J

    .line 10
    iput-boolean v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mHasReceiveFirstVideoRenderEvent:Z

    .line 11
    iput-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTrtcCloud:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    sget-boolean v3, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSDKInited:Z

    if-nez v3, :cond_0

    .line 14
    invoke-direct {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setTPSystemInfo()V

    .line 15
    invoke-direct {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setTPPLibCustomLoader()V

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "liteav_tbplayer_android_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x238ebf

    invoke-static {p1, v3, v4}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->initSdk(Landroid/content/Context;Ljava/lang/String;I)V

    .line 17
    invoke-static {v1}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->setDebugEnable(Z)V

    .line 18
    new-instance v3, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TXCTPPlayerOnLogListener;

    invoke-direct {v3, v2}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TXCTPPlayerOnLogListener;-><init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$1;)V

    invoke-static {v3}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->setOnLogListener(Lcom/tencent/thumbplayer/api/TPPlayerMgr$OnLogListener;)V

    const/4 v2, 0x1

    .line 19
    sput-boolean v2, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSDKInited:Z

    .line 20
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    if-nez v0, :cond_1

    .line 22
    invoke-static {v1}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->setDebugEnable(Z)V

    .line 23
    invoke-static {p1}, Lcom/tencent/thumbplayer/api/TPPlayerFactory;->createTPPlayer(Landroid/content/Context;)Lcom/tencent/thumbplayer/api/ITPPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    .line 24
    new-instance p1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;

    invoke-direct {p1, p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;-><init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V

    .line 25
    invoke-virtual {p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayerListener;->attachToPlayer()V

    .line 26
    :cond_1
    invoke-direct {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setCustomReportData()V

    return-void

    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic access$200(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)Lcom/tencent/thumbplayer/api/ITPPlayer;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTrtcCloud:Ljava/lang/Object;

    return-object p0
.end method

.method private convertToTPSubtitleRenderModel(Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;)Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;
    .locals 7

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;-><init>()V

    .line 2
    iget v1, p1, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->canvasHeight:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget v3, p1, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->canvasWidth:I

    if-eqz v3, :cond_2

    .line 3
    iput v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->canvasWidth:I

    .line 4
    iput v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->canvasHeight:I

    .line 5
    iget-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    const-wide/16 v5, 0x1

    or-long/2addr v3, v5

    const-wide/16 v5, 0x2

    or-long/2addr v3, v5

    .line 6
    iput-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    .line 7
    iget v1, p1, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->fontSize:F

    cmpl-float v5, v1, v2

    if-eqz v5, :cond_0

    .line 8
    iput v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->fontSize:F

    const-wide/16 v5, 0x4

    or-long/2addr v3, v5

    .line 9
    iput-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    .line 10
    :cond_0
    iget v1, p1, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->outlineWidth:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    .line 11
    iput v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->outlineWidth:F

    .line 12
    iget-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    const-wide/16 v5, 0x10

    or-long/2addr v3, v5

    iput-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    .line 13
    :cond_1
    iget v1, p1, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->lineSpace:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    .line 14
    iput v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->lineSpace:F

    .line 15
    iget-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    const-wide/16 v5, 0x40

    or-long/2addr v3, v5

    iput-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    .line 16
    :cond_2
    iget v1, p1, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->fontScale:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_3

    .line 17
    iput v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->fontScale:F

    .line 18
    iget-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    const-wide/16 v5, 0x800

    or-long/2addr v3, v5

    iput-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    .line 19
    :cond_3
    iget-object v1, p1, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->familyName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 20
    iput-object v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->familyName:Ljava/lang/String;

    .line 21
    :cond_4
    iget v1, p1, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->fontColor:I

    if-eqz v1, :cond_5

    .line 22
    iput v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->fontColor:I

    .line 23
    iget-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    const-wide/16 v5, 0x8

    or-long/2addr v3, v5

    iput-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    .line 24
    :cond_5
    iget-boolean v1, p1, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->isBondFontStyle:Z

    if-eqz v1, :cond_6

    .line 25
    iget v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->fontStyleFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->fontStyleFlags:I

    .line 26
    iget-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    const-wide/16 v5, 0x400

    or-long/2addr v3, v5

    iput-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    .line 27
    :cond_6
    iget v1, p1, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->outlineColor:I

    if-eqz v1, :cond_7

    .line 28
    iput v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->outlineColor:I

    .line 29
    iget-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    const-wide/16 v5, 0x20

    or-long/2addr v3, v5

    iput-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    .line 30
    :cond_7
    iget v1, p1, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->startMargin:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_8

    .line 31
    iput v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->lineSpace:F

    .line 32
    iget-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    const-wide/16 v5, 0x80

    or-long/2addr v3, v5

    iput-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    .line 33
    :cond_8
    iget v1, p1, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->endMargin:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_9

    .line 34
    iput v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->endMargin:F

    .line 35
    iget-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    const-wide/16 v5, 0x100

    or-long/2addr v3, v5

    iput-wide v3, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    .line 36
    :cond_9
    iget p1, p1, Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;->verticalMargin:F

    cmpl-float v1, p1, v2

    if-eqz v1, :cond_a

    .line 37
    iput p1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->verticalMargin:F

    .line 38
    iget-wide v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    const-wide/16 v3, 0x200

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;->paramFlags:J

    :cond_a
    return-object v0
.end method

.method private handleDRMAsset(Ljava/lang/String;)Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPrivateConfig:Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v1, "TXC_DRM_ENABLE"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPrivateConfig:Ljava/util/Map;

    const-string v1, "TXC_DRM_KEY_URL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPrivateConfig:Ljava/util/Map;

    const-string v2, "TXC_DRM_PROVISION_URL"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 6
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 7
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 8
    invoke-static {v2, p1}, Lcom/tencent/thumbplayer/api/composition/TPMediaCompositionFactory;->createMediaDRMAsset(ILjava/lang/String;)Lcom/tencent/thumbplayer/api/composition/ITPMediaDRMAsset;

    move-result-object p1

    const-string v2, "drm_property_provision_url"

    .line 9
    invoke-interface {p1, v2, v1}, Lcom/tencent/thumbplayer/api/composition/ITPMediaDRMAsset;->setDrmProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "drm_property_license_url"

    .line 10
    invoke-interface {p1, v1, v0}, Lcom/tencent/thumbplayer/api/composition/ITPMediaDRMAsset;->setDrmProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "drm_property_license_standardization"

    const-string v1, "1"

    .line 11
    invoke-interface {p1, v0, v1}, Lcom/tencent/thumbplayer/api/composition/ITPMediaDRMAsset;->setDrmProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPrivateConfig:Ljava/util/Map;

    const-string v0, "TXC_DRM_SIMPLE_AES_URL"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-static {p1}, Lcom/tencent/thumbplayer/api/composition/TPMediaCompositionFactory;->createMediaUrlAsset(Ljava/lang/String;)Lcom/tencent/thumbplayer/api/composition/ITPMediaUrlAsset;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleUrlAsset(Ljava/lang/String;)Lcom/tencent/thumbplayer/api/composition/ITPMediaUrlAsset;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/e;

    if-eqz v0, :cond_3

    .line 2
    iget v1, v0, Lcom/tencent/liteav/txcplayer/e;->r:I

    .line 3
    iget-wide v2, v0, Lcom/tencent/liteav/txcplayer/e;->s:J

    if-gtz v1, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/tencent/thumbplayer/api/composition/TPMediaCompositionFactory;->createMediaUrlAsset(Ljava/lang/String;)Lcom/tencent/thumbplayer/api/composition/ITPMediaUrlAsset;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/tencent/thumbplayer/api/composition/TPMediaCompositionFactory;->createMediaAssetExtraParam()Lcom/tencent/thumbplayer/api/composition/ITPMediaAssetExtraParam;

    move-result-object v4

    .line 6
    invoke-static {}, Lcom/tencent/thumbplayer/api/composition/TPMediaCompositionFactory;->createMediaAssetOrderedMap()Lcom/tencent/thumbplayer/api/composition/ITPMediaAssetOrderedMap;

    move-result-object v5

    .line 7
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/liteav/txcplayer/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v7, "mpd"

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-lez v1, :cond_1

    .line 10
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "dash_track_bandwidth"

    invoke-interface {v5, v1, p1}, Lcom/tencent/thumbplayer/api/composition/ITPMediaAssetOrderedMap;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "dash_track_luma_samples"

    invoke-interface {v5, v1, p1}, Lcom/tencent/thumbplayer/api/composition/ITPMediaAssetOrderedMap;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v6, 0x1

    :cond_2
    if-eqz v6, :cond_3

    const-string p1, "preferred_video"

    .line 12
    invoke-interface {v4, p1, v5}, Lcom/tencent/thumbplayer/api/composition/ITPMediaAssetExtraParam;->setExtraObject(Ljava/lang/String;Lcom/tencent/thumbplayer/api/composition/ITPMediaAssetObjectParam;)V

    .line 13
    invoke-interface {v0, v4}, Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;->setExtraParam(Lcom/tencent/thumbplayer/api/composition/ITPMediaAssetExtraParam;)V

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private setCustomReportData()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getReportManager()Lcom/tencent/thumbplayer/api/report/ITPBusinessReportManager;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$2;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$2;-><init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/tencent/thumbplayer/api/report/TPDefaultReportInfo;->scenesId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 5
    iget-object v4, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "set scenesId fail for parse appid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,error="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/report/ITPBusinessReportManager;->setReportInfoGetter(Lcom/tencent/thumbplayer/api/report/TPDefaultReportInfo;)V

    :cond_0
    return-void
.end method

.method private setEnableMixExternalAudioFrame()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setEnableMixExternalAudioFrame"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x194

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x78

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildBoolean(IZ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$5;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$5;-><init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOnAudioFrameOutputListener(Lcom/tencent/thumbplayer/api/ITPPlayerListener$IOnAudioFrameOutputListener;)V

    return-void
.end method

.method private setSurfaceToPlayer(Landroid/view/Surface;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 2
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setSurface(Landroid/view/Surface;)V

    .line 4
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSurface mSurface:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setTPPLibCustomLoader()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/base/util/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$1;-><init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V

    invoke-static {v0}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->setLibLoader(Lcom/tencent/thumbplayer/api/ITPModuleLoader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setTPPLibCustomLoader, ex = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setTPSystemInfo()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.product.model"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/core/common/TPSystemInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.product.manufacturer"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/core/common/TPSystemInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.build.version.release"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/core/common/TPSystemInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getBoard()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.product.board"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/core/common/TPSystemInfo;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setVideoInfo(Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    if-eqz v0, :cond_9

    .line 2
    new-instance v0, Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;-><init>()V

    .line 3
    new-instance v1, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;-><init>(I)V

    const/16 v3, 0x3f

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 5
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, p1

    .line 6
    :goto_0
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/liteav/txcplayer/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x3

    const-string v6, ".hls"

    if-nez v4, :cond_3

    const-string v4, "hls"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v3, 0x2f

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v7, 0x1

    add-int/2addr v4, v7

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const v8, 0x238ebf

    .line 10
    invoke-static {v8}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->getTPDownloadProxy(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    move-result-object v8

    .line 11
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v8, p1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->updateStoragePath(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v5}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;->setDlType(I)V

    .line 13
    invoke-virtual {v1, v7}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;->setOffline(Z)V

    goto :goto_2

    .line 14
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/tencent/liteav/txcplayer/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15
    :goto_2
    invoke-virtual {v0, v4}, Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;->fileId(Ljava/lang/String;)Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;

    .line 16
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/e;

    if-eqz p1, :cond_5

    .line 17
    iget-boolean p1, p1, Lcom/tencent/liteav/txcplayer/e;->w:Z

    if-eqz p1, :cond_5

    .line 18
    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/e;

    .line 20
    iget p1, p1, Lcom/tencent/liteav/txcplayer/e;->A:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    const/4 p1, 0x5

    .line 21
    invoke-virtual {v1, p1}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;->setDlType(I)V

    goto :goto_3

    .line 22
    :cond_4
    invoke-virtual {v1, v5}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;->setDlType(I)V

    .line 23
    :cond_5
    :goto_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 24
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/e;

    .line 25
    iget v3, v2, Lcom/tencent/liteav/txcplayer/e;->n:I

    const-string v4, "dl_param_buffer_size"

    if-lez v3, :cond_6

    .line 26
    iget-boolean v5, v2, Lcom/tencent/liteav/txcplayer/e;->p:Z

    if-nez v5, :cond_6

    mul-int/lit16 v3, v3, 0x400

    mul-int/lit16 v3, v3, 0x400

    .line 27
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 28
    :cond_6
    iget v2, v2, Lcom/tencent/liteav/txcplayer/e;->m:I

    if-lez v2, :cond_7

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_7
    :goto_4
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 31
    invoke-virtual {v1, p1}, Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;->setExtInfoMap(Ljava/util/Map;)V

    .line 32
    :cond_8
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;->downloadParam(Lcom/tencent/thumbplayer/api/proxy/TPDownloadParamData;)Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;

    .line 33
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/api/TPVideoInfo$Builder;->build()Lcom/tencent/thumbplayer/api/TPVideoInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setVideoInfo(Lcom/tencent/thumbplayer/api/TPVideoInfo;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public addSubtitleSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0, p1, p3, p2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->addSubtitleSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public attachTRTC(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTrtcCloud:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "enableMixExternalAudioFrame"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTrtcCloud:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v5

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "attachTRTC enableMixExternalAudioFrame"

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setEnableMixExternalAudioFrame()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attachTRTC exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public deselectTrack(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    int-to-long v1, p1

    invoke-interface {v0, p1, v1, v2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->deselectTrack(IJ)V

    return-void
.end method

.method public detachTRTC()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "detachTRTC"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTrtcCloud:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "enableMixExternalAudioFrame"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTrtcCloud:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v5

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "detachTRTC exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTrtcCloud:Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TRTCCloudClassInvokeHelper;->access$302(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TRTCCloudClassInvokeHelper;)Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TRTCCloudClassInvokeHelper;

    :cond_0
    return-void
.end method

.method public enableAdaptiveBitrate()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v1, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v1}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v2, 0x1f8

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    return-void
.end method

.method public getBitrateIndex()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_3

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getProgramInfo()[Lcom/tencent/thumbplayer/api/TPProgramInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    array-length v2, v0

    if-lez v2, :cond_1

    .line 4
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 5
    iget-boolean v4, v3, Lcom/tencent/thumbplayer/api/TPProgramInfo;->actived:Z

    if-eqz v4, :cond_0

    .line 6
    iget v0, v3, Lcom/tencent/thumbplayer/api/TPProgramInfo;->programId:I

    iput v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getTrackInfo()[Lcom/tencent/thumbplayer/api/TPTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    array-length v2, v0

    if-lez v2, :cond_3

    .line 9
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 10
    aget-object v2, v0, v1

    iget-boolean v2, v2, Lcom/tencent/thumbplayer/api/TPTrackInfo;->isSelected:Z

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    iget v2, v2, Lcom/tencent/thumbplayer/api/TPTrackInfo;->trackType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 11
    iput v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getBitrateIndex \uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    return v0
.end method

.method public getConfig()Lcom/tencent/liteav/txcplayer/e;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/e;

    return-object v0
.end method

.method public getCurrentPosition()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getCurrentPositionMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaInfo()Lcom/tencent/liteav/txcplayer/model/b;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getMediaInfo"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/tencent/liteav/txcplayer/model/b;

    invoke-direct {v0}, Lcom/tencent/liteav/txcplayer/model/b;-><init>()V

    const-string/jumbo v1, "thumbplayer"

    .line 3
    iput-object v1, v0, Lcom/tencent/liteav/txcplayer/model/b;->a:Ljava/lang/String;

    .line 4
    new-instance v1, Lcom/tencent/liteav/txcplayer/model/c;

    invoke-direct {v1}, Lcom/tencent/liteav/txcplayer/model/c;-><init>()V

    iput-object v1, v0, Lcom/tencent/liteav/txcplayer/model/b;->f:Lcom/tencent/liteav/txcplayer/model/c;

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getPropertyString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    const-string v3, "\\n"

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 8
    array-length v3, v1

    if-lez v3, :cond_b

    .line 9
    iget-object v3, v0, Lcom/tencent/liteav/txcplayer/model/b;->f:Lcom/tencent/liteav/txcplayer/model/c;

    invoke-virtual {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getSupportedBitrates()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/liteav/txcplayer/model/c;->b:Ljava/util/ArrayList;

    .line 10
    iget v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    const/16 v4, -0x3e8

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    .line 11
    :cond_0
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/model/b;->f:Lcom/tencent/liteav/txcplayer/model/c;

    new-instance v5, Lcom/tencent/liteav/txcplayer/model/c$a;

    invoke-direct {v5, v3}, Lcom/tencent/liteav/txcplayer/model/c$a;-><init>(I)V

    iput-object v5, v4, Lcom/tencent/liteav/txcplayer/model/c;->e:Lcom/tencent/liteav/txcplayer/model/c$a;

    .line 12
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/model/b;->f:Lcom/tencent/liteav/txcplayer/model/c;

    new-instance v5, Lcom/tencent/liteav/txcplayer/model/c$a;

    invoke-direct {v5, v3}, Lcom/tencent/liteav/txcplayer/model/c$a;-><init>(I)V

    iput-object v5, v4, Lcom/tencent/liteav/txcplayer/model/c;->d:Lcom/tencent/liteav/txcplayer/model/c$a;

    .line 13
    iget-object v3, v0, Lcom/tencent/liteav/txcplayer/model/b;->f:Lcom/tencent/liteav/txcplayer/model/c;

    iget-object v4, v3, Lcom/tencent/liteav/txcplayer/model/c;->c:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/tencent/liteav/txcplayer/model/c;->e:Lcom/tencent/liteav/txcplayer/model/c$a;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v3, v0, Lcom/tencent/liteav/txcplayer/model/b;->f:Lcom/tencent/liteav/txcplayer/model/c;

    iget-object v4, v3, Lcom/tencent/liteav/txcplayer/model/c;->c:Ljava/util/ArrayList;

    iget-object v3, v3, Lcom/tencent/liteav/txcplayer/model/c;->d:Lcom/tencent/liteav/txcplayer/model/c$a;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_b

    aget-object v4, v1, v2

    if-eqz v4, :cond_a

    const-string v5, "="

    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ContainerFormat="

    .line 17
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 18
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/model/b;->f:Lcom/tencent/liteav/txcplayer/model/c;

    iput-object v5, v4, Lcom/tencent/liteav/txcplayer/model/c;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1
    const-string v6, "VideoCodec="

    .line 19
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "avcodec"

    if-eqz v6, :cond_2

    .line 20
    iput-object v7, v0, Lcom/tencent/liteav/txcplayer/model/b;->b:Ljava/lang/String;

    .line 21
    iput-object v5, v0, Lcom/tencent/liteav/txcplayer/model/b;->c:Ljava/lang/String;

    .line 22
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/model/b;->f:Lcom/tencent/liteav/txcplayer/model/c;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/model/c;->d:Lcom/tencent/liteav/txcplayer/model/c$a;

    iput-object v5, v4, Lcom/tencent/liteav/txcplayer/model/c$a;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    const-string v6, "VideoProfile="

    .line 23
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 24
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/model/b;->f:Lcom/tencent/liteav/txcplayer/model/c;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/model/c;->d:Lcom/tencent/liteav/txcplayer/model/c$a;

    iput-object v5, v4, Lcom/tencent/liteav/txcplayer/model/c$a;->c:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    const-string v6, "Width="

    .line 25
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 26
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/model/b;->f:Lcom/tencent/liteav/txcplayer/model/c;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/model/c;->d:Lcom/tencent/liteav/txcplayer/model/c$a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/tencent/liteav/txcplayer/model/c$a;->e:I

    goto/16 :goto_1

    :cond_4
    const-string v6, "Height="

    .line 27
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 28
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/model/b;->f:Lcom/tencent/liteav/txcplayer/model/c;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/model/c;->d:Lcom/tencent/liteav/txcplayer/model/c$a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/tencent/liteav/txcplayer/model/c$a;->f:I

    goto :goto_1

    :cond_5
    const-string v6, "VideoBitRate="

    .line 29
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 30
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/model/b;->f:Lcom/tencent/liteav/txcplayer/model/c;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/model/c;->d:Lcom/tencent/liteav/txcplayer/model/c$a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/tencent/liteav/txcplayer/model/c$a;->d:J

    goto :goto_1

    :cond_6
    const-string v6, "AudioCodec="

    .line 31
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 32
    iput-object v7, v0, Lcom/tencent/liteav/txcplayer/model/b;->d:Ljava/lang/String;

    .line 33
    iput-object v5, v0, Lcom/tencent/liteav/txcplayer/model/b;->e:Ljava/lang/String;

    .line 34
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/model/b;->f:Lcom/tencent/liteav/txcplayer/model/c;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/model/c;->e:Lcom/tencent/liteav/txcplayer/model/c$a;

    iput-object v5, v4, Lcom/tencent/liteav/txcplayer/model/c$a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v6, "AudioProfile="

    .line 35
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 36
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/model/b;->f:Lcom/tencent/liteav/txcplayer/model/c;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/model/c;->e:Lcom/tencent/liteav/txcplayer/model/c$a;

    iput-object v5, v4, Lcom/tencent/liteav/txcplayer/model/c$a;->c:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v6, "AudioBitRate="

    .line 37
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 38
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/model/b;->f:Lcom/tencent/liteav/txcplayer/model/c;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/model/c;->e:Lcom/tencent/liteav/txcplayer/model/c$a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v4, Lcom/tencent/liteav/txcplayer/model/c$a;->d:J

    goto :goto_1

    :cond_9
    const-string v6, "SampleRate="

    .line 39
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 40
    iget-object v4, v0, Lcom/tencent/liteav/txcplayer/model/b;->f:Lcom/tencent/liteav/txcplayer/model/c;

    iget-object v4, v4, Lcom/tencent/liteav/txcplayer/model/c;->e:Lcom/tencent/liteav/txcplayer/model/c$a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Lcom/tencent/liteav/txcplayer/model/c$a;->g:I

    :cond_a
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-object v0
.end method

.method public getPlayableDurationMs()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getPlayableDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPropertyLong(I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v0, 0xd1

    const/16 v1, 0xd0

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto :goto_0

    .line 1
    :pswitch_0
    iget-wide v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTcpSpeed:J

    return-wide v0

    .line 2
    :pswitch_1
    iget-wide v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrate:J

    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getPlayableDurationMs()J

    move-result-wide v2

    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getCurrentPositionMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0

    .line 3
    :pswitch_2
    iget-wide v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrate:J

    return-wide v0

    :pswitch_3
    const/16 p1, 0xce

    goto :goto_0

    :pswitch_4
    const/16 p1, 0xcd

    goto :goto_0

    :pswitch_5
    const/16 p1, 0xcc

    goto :goto_0

    :pswitch_6
    const/16 p1, 0xcb

    goto :goto_0

    :pswitch_7
    const/16 p1, 0xca

    goto :goto_0

    :pswitch_8
    const/16 p1, 0xc9

    goto :goto_0

    :pswitch_9
    const/16 p1, 0x67

    goto :goto_0

    :pswitch_a
    const/16 p1, 0x66

    goto :goto_0

    :pswitch_b
    const/16 p1, 0x65

    goto :goto_0

    :pswitch_c
    const/16 p1, 0x64

    goto :goto_0

    :cond_1
    const/16 p1, 0xd1

    goto :goto_0

    :cond_2
    const/16 p1, 0xd0

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getPropertyLong(I)J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x12d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRate()F
    .locals 1

    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mRate:F

    return v0
.end method

.method public getSupportedBitrates()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/liteav/txcplayer/model/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getProgramInfo()[Lcom/tencent/thumbplayer/api/TPProgramInfo;

    move-result-object v0

    const-string v1, ":bitrate:"

    const-string v2, ":height:"

    const-string v3, ":width:"

    const-string v4, "getSupportedBitrates item index\uff1a"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    .line 2
    array-length v7, v0

    if-lez v7, :cond_4

    .line 3
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v0

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    array-length v8, v0

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_9

    aget-object v10, v0, v9

    if-eqz v10, :cond_3

    .line 5
    new-instance v11, Lcom/tencent/liteav/txcplayer/model/a;

    invoke-direct {v11}, Lcom/tencent/liteav/txcplayer/model/a;-><init>()V

    .line 6
    iget-object v12, v10, Lcom/tencent/thumbplayer/api/TPProgramInfo;->resolution:Ljava/lang/String;

    const-string/jumbo v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 7
    array-length v13, v12

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    .line 8
    aget-object v13, v12, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v11, Lcom/tencent/liteav/txcplayer/model/a;->b:I

    .line 9
    aget-object v12, v12, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v11, Lcom/tencent/liteav/txcplayer/model/a;->c:I

    .line 10
    :cond_0
    iget-wide v12, v10, Lcom/tencent/thumbplayer/api/TPProgramInfo;->bandwidth:J

    long-to-int v13, v12

    iput v13, v11, Lcom/tencent/liteav/txcplayer/model/a;->d:I

    .line 11
    iget v12, v10, Lcom/tencent/thumbplayer/api/TPProgramInfo;->programId:I

    iput v12, v11, Lcom/tencent/liteav/txcplayer/model/a;->a:I

    .line 12
    iget v14, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    if-eq v12, v14, :cond_1

    iget-boolean v10, v10, Lcom/tencent/thumbplayer/api/TPProgramInfo;->actived:Z

    if-eqz v10, :cond_2

    :cond_1
    int-to-long v12, v13

    .line 13
    iput-wide v12, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrate:J

    .line 14
    :cond_2
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v10, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v11, Lcom/tencent/liteav/txcplayer/model/a;->a:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Lcom/tencent/liteav/txcplayer/model/a;->b:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Lcom/tencent/liteav/txcplayer/model/a;->c:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v11, Lcom/tencent/liteav/txcplayer/model/a;->d:I

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getTrackInfo()[Lcom/tencent/thumbplayer/api/TPTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 17
    array-length v7, v0

    if-lez v7, :cond_8

    .line 18
    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v0

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    :goto_1
    array-length v8, v0

    if-ge v5, v8, :cond_9

    .line 20
    aget-object v8, v0, v5

    if-eqz v8, :cond_7

    aget-object v8, v0, v5

    iget v8, v8, Lcom/tencent/thumbplayer/api/TPTrackInfo;->trackType:I

    if-ne v8, v6, :cond_7

    .line 21
    new-instance v8, Lcom/tencent/liteav/txcplayer/model/a;

    invoke-direct {v8}, Lcom/tencent/liteav/txcplayer/model/a;-><init>()V

    .line 22
    aget-object v9, v0, v5

    iget-object v9, v9, Lcom/tencent/thumbplayer/api/TPTrackInfo;->dashFormat:Lcom/tencent/thumbplayer/api/TPDashFormat;

    iget v9, v9, Lcom/tencent/thumbplayer/api/TPDashFormat;->width:I

    iput v9, v8, Lcom/tencent/liteav/txcplayer/model/a;->b:I

    .line 23
    aget-object v9, v0, v5

    iget-object v9, v9, Lcom/tencent/thumbplayer/api/TPTrackInfo;->dashFormat:Lcom/tencent/thumbplayer/api/TPDashFormat;

    iget v9, v9, Lcom/tencent/thumbplayer/api/TPDashFormat;->height:I

    iput v9, v8, Lcom/tencent/liteav/txcplayer/model/a;->c:I

    .line 24
    aget-object v9, v0, v5

    iget-object v9, v9, Lcom/tencent/thumbplayer/api/TPTrackInfo;->dashFormat:Lcom/tencent/thumbplayer/api/TPDashFormat;

    iget v9, v9, Lcom/tencent/thumbplayer/api/TPDashFormat;->bandwidth:I

    iput v9, v8, Lcom/tencent/liteav/txcplayer/model/a;->d:I

    .line 25
    iput v5, v8, Lcom/tencent/liteav/txcplayer/model/a;->a:I

    .line 26
    iget v10, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    if-eq v5, v10, :cond_5

    aget-object v10, v0, v5

    iget-boolean v10, v10, Lcom/tencent/thumbplayer/api/TPTrackInfo;->isSelected:Z

    if-eqz v10, :cond_6

    :cond_5
    int-to-long v9, v9

    .line 27
    iput-wide v9, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrate:J

    .line 28
    :cond_6
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v9, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v8, Lcom/tencent/liteav/txcplayer/model/a;->a:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/tencent/liteav/txcplayer/model/a;->b:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/tencent/liteav/txcplayer/model/a;->c:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/tencent/liteav/txcplayer/model/a;->d:I

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    .line 30
    :cond_9
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mBitrateIndex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":mBitrate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSurface \uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method getTPPPlayer()Lcom/tencent/thumbplayer/api/ITPPlayer;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    return-object v0
.end method

.method public getTrackInfo()[Lcom/tencent/thumbplayer/api/TPTrackInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getTrackInfo()[Lcom/tencent/thumbplayer/api/TPTrackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getVideoHeight()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getVideoWidth()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isLooping()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isLooping \uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mIsLooping:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mIsLooping:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getCurrentState()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception v1

    .line 2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public onReceiveFirstVideoRenderEvent()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/liteav/txcplayer/a;->getTXCVodVideoViewTargetState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getConfig()Lcom/tencent/liteav/txcplayer/e;

    move-result-object v0

    .line 3
    iget-boolean v0, v0, Lcom/tencent/liteav/txcplayer/e;->p:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 v0, 0x7e1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/tencent/liteav/txcplayer/a;->notifyOnInfo(IIILjava/lang/Object;)Z

    const/16 v0, 0x7ea

    .line 6
    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/tencent/liteav/txcplayer/a;->notifyOnInfo(IIILjava/lang/Object;)Z

    const/16 v0, 0x7d3

    .line 7
    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/tencent/liteav/txcplayer/a;->notifyOnInfo(IIILjava/lang/Object;)Z

    .line 8
    iput-boolean v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mHasReceiveFirstVideoRenderEvent:Z

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mHasReceiveFirstVideoRenderEvent:Z

    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->pause()V

    return-void
.end method

.method public prepareAsync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "prepareAsync"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->prepareAsync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public publishAudioToNetwork()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "publishAudioToNetwork"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTrtcCloud:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "enableMixExternalAudioFrame"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTrtcCloud:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v5

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "publishAudioToNetwork exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->releaseSurfaceTexture()V

    .line 2
    invoke-virtual {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->detachTRTC()V

    .line 3
    invoke-static {}, Lcom/tencent/liteav/txcplayer/common/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$4;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$4;-><init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mReuseSurfaceTexture:Z

    if-nez v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceTextureHost:Lcom/tencent/liteav/txcplayer/c;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1, v0}, Lcom/tencent/liteav/txcplayer/c;->a(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :goto_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->releaseSurfaceTexture()V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string/jumbo v2, "taskInfo_player_start"

    invoke-interface {v0, v2, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->updateTaskInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTo msec: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff1amEnableAccurateSeek\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mEnableAccurateSeek:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mEnableAccurateSeek:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    long-to-int p2, p1

    const/4 p1, 0x3

    invoke-interface {v0, p2, p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->seekTo(II)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->seekTo(I)V

    return-void
.end method

.method public selectTrack(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    int-to-long v1, p1

    invoke-interface {v0, p1, v1, v2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->selectTrack(IJ)V

    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "setAudioStreamType\uff1a"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAudioVolume(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setAudioVolume\uff1a "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v2, v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOutputMute(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v2, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setOutputMute(Z)V

    .line 4
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    int-to-float v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setAudioGainRatio(F)V

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTrtcCloud:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setMixExternalAudioVolume"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTrtcCloud:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAudioVolume exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setBitrateIndex(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setBitrateIndex \uff1a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v4, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v5, 0x1f8

    invoke-virtual {v4, v5, v1, v2}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    :cond_0
    if-eq p1, v3, :cond_2

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getProgramInfo()[Lcom/tencent/thumbplayer/api/TPProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    .line 5
    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0, p1, v1, v2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->selectProgram(IJ)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->getTrackInfo()[Lcom/tencent/thumbplayer/api/TPTrackInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_2

    .line 8
    array-length v1, v0

    if-ge p1, v1, :cond_2

    aget-object v0, v0, p1

    iget v0, v0, Lcom/tencent/thumbplayer/api/TPTrackInfo;->trackType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    const-wide/16 v1, -0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->selectTrack(IJ)V

    .line 10
    :cond_2
    :goto_0
    iput p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    return-void
.end method

.method public setConfig(Lcom/tencent/liteav/txcplayer/e;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/e;

    .line 2
    invoke-static {}, Lcom/tencent/liteav/txcplayer/common/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setProxyDataDir(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/tencent/liteav/txcplayer/common/b;->b()I

    move-result v1

    const/16 v2, 0x64

    if-ltz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/tencent/liteav/txcplayer/common/b;->b()I

    move-result v1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/e;

    .line 7
    iget v1, v1, Lcom/tencent/liteav/txcplayer/e;->f:I

    mul-int/lit8 v1, v1, 0x64

    :goto_0
    if-lez v1, :cond_2

    .line 8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "VodCacheReserveSizeMB"

    .line 9
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "httpproxy_config"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->parseHostConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 11
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 12
    :cond_2
    :goto_1
    iget-boolean v3, p1, Lcom/tencent/liteav/txcplayer/e;->i:Z

    .line 13
    invoke-virtual {p0, v3}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setEnableAccurateSeek(Z)V

    .line 14
    iget-object v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v4, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    .line 15
    iget-wide v5, p1, Lcom/tencent/liteav/txcplayer/e;->o:J

    .line 16
    invoke-virtual {v4, v2, v5, v6}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 17
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0x65

    .line 18
    iget-boolean v5, p1, Lcom/tencent/liteav/txcplayer/e;->i:Z

    .line 19
    invoke-virtual {v3, v4, v5}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildBoolean(IZ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 20
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0x66

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 21
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0x75

    const-wide/32 v7, 0x9c40

    invoke-virtual {v3, v4, v7, v8}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 22
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0x67

    const-wide/16 v7, 0xc8

    invoke-virtual {v3, v4, v7, v8}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 23
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0x69

    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 24
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0x6a

    const-wide/16 v5, 0x1f40

    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 25
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0x6b

    const-wide/16 v5, 0x7530

    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 26
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0x6c

    .line 27
    iget v5, p1, Lcom/tencent/liteav/txcplayer/e;->c:I

    int-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float v5, v5, v6

    float-to-long v5, v5

    .line 28
    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 29
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0x6d

    .line 30
    iget v5, p1, Lcom/tencent/liteav/txcplayer/e;->a:I

    int-to-float v5, v5

    float-to-long v5, v5

    .line 31
    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 32
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0x1f8

    .line 33
    iget-boolean v5, p1, Lcom/tencent/liteav/txcplayer/e;->w:Z

    int-to-long v5, v5

    .line 34
    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 35
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0xb4

    .line 36
    iget-object v5, p1, Lcom/tencent/liteav/txcplayer/e;->u:Ljava/lang/String;

    .line 37
    invoke-virtual {v3, v4, v5}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildString(ILjava/lang/String;)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 38
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0xb5

    .line 39
    iget-object v5, p1, Lcom/tencent/liteav/txcplayer/e;->v:Ljava/lang/String;

    .line 40
    invoke-virtual {v3, v4, v5}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildString(ILjava/lang/String;)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 41
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0xc8

    const-wide/16 v5, 0x50

    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 42
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0xc9

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildBoolean(IZ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 43
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0x191

    invoke-virtual {v3, v4, v5}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildBoolean(IZ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 44
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0xca

    const-wide/16 v6, 0x2

    invoke-virtual {v3, v4, v6, v7}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 45
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0xcb

    .line 46
    iget-boolean v8, p1, Lcom/tencent/liteav/txcplayer/e;->d:Z

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v6, 0x4

    .line 47
    :goto_2
    invoke-virtual {v3, v4, v6, v7}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 48
    iget v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    const/16 v3, -0x3e8

    if-eq v2, v3, :cond_4

    .line 49
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0x84

    iget v6, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrateIndex:I

    int-to-long v6, v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 50
    :cond_4
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0x85

    .line 51
    iget-wide v6, p1, Lcom/tencent/liteav/txcplayer/e;->s:J

    .line 52
    invoke-virtual {v3, v4, v6, v7}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 53
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v3, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v3}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v4, 0x1c2

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v4, v6, v7}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildLong(IJ)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 54
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/e;->a()Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 55
    invoke-virtual {p1}, Lcom/tencent/liteav/txcplayer/e;->a()Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->convertToTPSubtitleRenderModel(Lcom/tencent/liteav/txcplayer/model/TXSubtitleRenderModel;)Lcom/tencent/thumbplayer/api/TPSubtitleRenderModel;

    move-result-object v2

    .line 56
    iget-object v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    new-instance v4, Lcom/tencent/thumbplayer/api/TPOptionalParam;

    invoke-direct {v4}, Lcom/tencent/thumbplayer/api/TPOptionalParam;-><init>()V

    const/16 v6, 0x1fb

    invoke-virtual {v4, v6, v2}, Lcom/tencent/thumbplayer/api/TPOptionalParam;->buildObject(ILjava/lang/Object;)Lcom/tencent/thumbplayer/api/TPOptionalParam;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlayerOptionalParam(Lcom/tencent/thumbplayer/api/TPOptionalParam;)V

    .line 57
    :cond_5
    invoke-static {v5}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setP2PEnable(Z)V

    const v2, 0x238ebf

    .line 58
    invoke-static {v2}, Lcom/tencent/thumbplayer/core/downloadproxy/api/TPDownloadProxyFactory;->getTPDownloadProxy(I)Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 59
    invoke-interface {v2, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->updateStoragePath(Ljava/lang/String;)V

    int-to-long v0, v1

    .line 60
    invoke-interface {v2, v0, v1}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->setMaxStorageSizeMB(J)V

    .line 61
    new-instance v0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TXCDLProxyLogListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$TXCDLProxyLogListener;-><init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$1;)V

    invoke-interface {v2, v0}, Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDownloadProxy;->setLogListener(Lcom/tencent/thumbplayer/core/downloadproxy/api/ITPDLProxyLogListener;)V

    .line 62
    :cond_6
    iget-object p1, p1, Lcom/tencent/liteav/txcplayer/e;->q:Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setVideoInfo(Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mDataSource:Ljava/lang/String;

    .line 4
    invoke-direct {p0, p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->handleDRMAsset(Ljava/lang/String;)Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setP2PEnable(Z)V

    .line 6
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {p1, p2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setDataSource(Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;)V

    return-void

    :cond_0
    const-string p2, ".hls?"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 8
    invoke-static {v1}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setP2PEnable(Z)V

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x5

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 10
    :cond_1
    invoke-static {v1}, Lcom/tencent/thumbplayer/config/TPPlayerConfig;->setP2PEnable(Z)V

    .line 11
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tencent/liteav/txcplayer/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mpd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->handleUrlAsset(Ljava/lang/String;)Lcom/tencent/thumbplayer/api/composition/ITPMediaUrlAsset;

    move-result-object p2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    .line 14
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 15
    invoke-interface {p2, p3}, Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;->setHttpHeader(Ljava/util/Map;)V

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {p1, p2}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setDataSource(Lcom/tencent/thumbplayer/api/composition/ITPMediaAsset;)V

    return-void

    .line 17
    :cond_4
    iget-object p2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {p2, p1, p3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 18
    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {p2, p1, p3}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setDataSource(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 20
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method setEnableAccurateSeek(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mEnableAccurateSeek:Z

    return-void
.end method

.method public setKeepInBackground(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "setKeepInBackground none\uff1a"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0

    invoke-static {p1}, Lcom/tencent/thumbplayer/utils/TPLogUtil;->setDebugEnable(Z)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setLooping \uff1a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-boolean p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mIsLooping:Z

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setLoopback(Z)V

    return-void
.end method

.method public setMaxCacheSize(I)V
    .locals 2

    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/tencent/thumbplayer/api/TPPlayerMgr;->setProxyMaxStorageSizeMB(J)V

    return-void
.end method

.method public setPrivateConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mPrivateConfig:Ljava/util/Map;

    return-void
.end method

.method public setRate(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setRate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mRate:F

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0, p1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->setPlaySpeedRatio(F)V

    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setScreenOnWhilePlaying(true) screenOn:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "setScreenOnWhilePlaying(true) is ineffective without a SurfaceHolder"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mScreenOnWhilePlaying:Z

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    :cond_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setSurfaceToPlayer(Landroid/view/Surface;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSurface mSurface:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->releaseSurfaceTexture()V

    .line 3
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 5
    invoke-direct {p0, p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setSurfaceToPlayer(Landroid/view/Surface;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurface:Landroid/view/Surface;

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, p1}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->setSurfaceToPlayer(Landroid/view/Surface;)V

    return-void
.end method

.method public setSurfaceTextureHost(Lcom/tencent/liteav/txcplayer/c;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mSurfaceTextureHost:Lcom/tencent/liteav/txcplayer/c;

    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setWakeMode \uff1a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iget-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v2, "power"

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/high16 v2, 0x20000000

    or-int/2addr p2, v2

    .line 7
    const-class v2, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {p1, p2, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    if-eqz v0, :cond_2

    .line 11
    iget-object p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string v1, "TPPlayer start"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mHasReceiveFirstVideoRenderEvent:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x7e1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/tencent/liteav/txcplayer/a;->notifyOnInfo(IIILjava/lang/Object;)Z

    const/16 v0, 0x7ea

    .line 4
    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/tencent/liteav/txcplayer/a;->notifyOnInfo(IIILjava/lang/Object;)Z

    const/16 v0, 0x7d3

    .line 5
    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/tencent/liteav/txcplayer/a;->notifyOnInfo(IIILjava/lang/Object;)Z

    .line 6
    iput-boolean v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mHasReceiveFirstVideoRenderEvent:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/e;

    .line 8
    iget v0, v0, Lcom/tencent/liteav/txcplayer/e;->m:I

    if-lez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mConfig:Lcom/tencent/liteav/txcplayer/e;

    .line 10
    iget v1, v1, Lcom/tencent/liteav/txcplayer/e;->m:I

    mul-int/lit16 v1, v1, 0x400

    mul-int/lit16 v1, v1, 0x400

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "taskinfo_buffer_size_byte"

    invoke-interface {v0, v2, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->updateTaskInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v2, "taskInfo_player_start"

    invoke-interface {v0, v2, v1}, Lcom/tencent/thumbplayer/api/ITPPlayer;->updateTaskInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTPPPlayer:Lcom/tencent/thumbplayer/api/ITPPlayer;

    invoke-interface {v0}, Lcom/tencent/thumbplayer/api/ITPPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {}, Lcom/tencent/liteav/txcplayer/common/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$3;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer$3;-><init>(Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unpublishAudioToNetwork()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unpublishAudioToNetwork \uff1anone"

    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTrtcCloud:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "enableMixExternalAudioFrame"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTrtcCloud:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unpublishAudioToNetwork exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method updateBitrate(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1
    iget-wide v3, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTotalFileSize:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTotalFileSize:J

    .line 3
    invoke-virtual {p0}, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->getDuration()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-lez v5, :cond_0

    if-lez v2, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    const-wide/16 v0, 0x8

    mul-long p1, p1, v0

    .line 4
    div-long/2addr p1, v3

    iput-wide p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mBitrate:J

    :cond_0
    return-void
.end method

.method updateTcpSpeed(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/liteav/thumbplayer/ThumbMediaPlayer;->mTcpSpeed:J

    return-void
.end method
