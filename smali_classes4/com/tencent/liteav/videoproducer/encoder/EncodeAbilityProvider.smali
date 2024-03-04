.class public Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::video"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider$a;
    }
.end annotation


# static fields
.field private static final DEVICE_SUPPORT_CHECK_FPS:I = 0x1e

.field private static final DEVICE_SUPPORT_CHECK_HEIGHT:I = 0x780

.field private static final DEVICE_SUPPORT_CHECK_WIDTH:I = 0x438

.field private static final KEY_HEVC_ENCODE_ABILITY:Ljava/lang/String; = "Liteav.Video.android.local.encoder.enable.hw.hevc"

.field private static final TAG:Ljava/lang/String; = "EncodeAbilityProvider"


# instance fields
.field private final mAsyncRunner:Lcom/tencent/liteav/base/util/j;

.field private final mEncodeAbility:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;

    invoke-direct {v0}, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->mEncodeAbility:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;

    .line 4
    new-instance v1, Lcom/tencent/liteav/base/util/j;

    invoke-direct {v1}, Lcom/tencent/liteav/base/util/j;-><init>()V

    iput-object v1, p0, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->mAsyncRunner:Lcom/tencent/liteav/base/util/j;

    .line 5
    invoke-static {p0}, Lcom/tencent/liteav/videoproducer/encoder/a;->a(Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/base/util/j;->a(Ljava/lang/Runnable;)V

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->isHWHevcEncodeSupport()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->isSWHevcEncodeSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;->c:Z

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider$a;->a()Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;

    move-result-object v0

    return-object v0
.end method

.method private static isDeviceHWHevcEncodeSupport(III)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->isHWHevcEncodeAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    move-result v0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->isMediaCodecSupportHevc(III)Z

    move-result p0

    return p0
.end method

.method private static isMediaCodecSupportHevc(III)Z
    .locals 12
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "EncodeAbilityProvider"

    if-ge v4, v2, :cond_4

    aget-object v6, v0, v4

    .line 4
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v7

    .line 6
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    aget-object v10, v7, v9

    const-string/jumbo v11, "video/hevc"

    .line 7
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 8
    invoke-virtual {v6, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v7

    if-nez v7, :cond_0

    return v3

    .line 9
    :cond_0
    invoke-virtual {v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v7

    if-nez v7, :cond_1

    return v3

    :cond_1
    int-to-double v8, p2

    .line 10
    invoke-virtual {v7, p0, p1, v8, v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 11
    invoke-virtual {v7, p1, p0, v8, v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v6}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v3

    aput-object v10, p0, v1

    const-string p1, "got hevc encoder:%s, type:%s"

    invoke-static {v5, p1, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const-string p0, "not got hevc encoder"

    .line 13
    invoke-static {v5, p0}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method static synthetic lambda$new$0(Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;)V
    .locals 3

    const/16 v0, 0x438

    const/16 v1, 0x780

    const/16 v2, 0x1e

    .line 1
    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->isDeviceHWHevcEncodeSupport(III)Z

    move-result v0

    .line 2
    new-instance v1, Lcom/tencent/liteav/base/storage/PersistStorage;

    const-string v2, "com.liteav.storage.global"

    invoke-direct {v1, v2}, Lcom/tencent/liteav/base/storage/PersistStorage;-><init>(Ljava/lang/String;)V

    const-string v2, "Liteav.Video.android.local.encoder.enable.hw.hevc"

    .line 3
    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/base/storage/PersistStorage;->put(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v1}, Lcom/tencent/liteav/base/storage/PersistStorage;->commit()V

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->mEncodeAbility:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->isHWHevcEncodeSupport()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->isSWHevcEncodeSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;->c:Z

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getEncodeAbility()Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->mEncodeAbility:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;

    return-object v0
.end method

.method public isHWHevcEncodeSupport()Z
    .locals 3
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {}, Lcom/tencent/liteav/videoproducer/producer/ServerVideoProducerConfig;->isHWHevcEncodeAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Lcom/tencent/liteav/base/storage/PersistStorage;

    const-string v2, "com.liteav.storage.global"

    invoke-direct {v0, v2}, Lcom/tencent/liteav/base/storage/PersistStorage;-><init>(Ljava/lang/String;)V

    const-string v2, "Liteav.Video.android.local.encoder.enable.hw.hevc"

    .line 3
    invoke-virtual {v0, v2}, Lcom/tencent/liteav/base/storage/PersistStorage;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isHevcEncodeSupport()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->mEncodeAbility:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;

    iget-boolean v0, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;->c:Z

    return v0
.end method

.method public isSWHevcEncodeSupport()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setHevcEncodeSupported(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->mEncodeAbility:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;

    iput-boolean p1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;->c:Z

    return-void
.end method

.method public setRPSEncodeSupported(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/liteav/videoproducer/encoder/EncodeAbilityProvider;->mEncodeAbility:Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;

    iput-boolean p1, v0, Lcom/tencent/liteav/videoproducer/encoder/VideoEncoderDef$EncodeAbility;->a:Z

    return-void
.end method
