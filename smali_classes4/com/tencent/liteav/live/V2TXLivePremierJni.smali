.class public Lcom/tencent/liteav/live/V2TXLivePremierJni;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "V2TXLivePremierJni"

.field private static mNativeV2TXLivePremierJni:J

.field private static sObserver:Lcom/tencent/live2/V2TXLivePremier$V2TXLivePremierObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableAudioPlayoutObserver(ZLcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameObserverFormat;)I
    .locals 8

    .line 1
    const-class v0, Lcom/tencent/liteav/live/V2TXLivePremierJni;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-wide v1, Lcom/tencent/liteav/live/V2TXLivePremierJni;->mNativeV2TXLivePremierJni:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3
    invoke-static {}, Lcom/tencent/liteav/live/V2TXLivePremierJni;->nativeCreate()J

    move-result-wide v1

    sput-wide v1, Lcom/tencent/liteav/live/V2TXLivePremierJni;->mNativeV2TXLivePremierJni:J

    .line 4
    :cond_0
    sget-wide v1, Lcom/tencent/liteav/live/V2TXLivePremierJni;->mNativeV2TXLivePremierJni:J

    iget v4, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameObserverFormat;->sampleRate:I

    iget v5, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameObserverFormat;->channel:I

    iget v6, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameObserverFormat;->samplesPerCall:I

    iget-object p1, p1, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameObserverFormat;->mode:Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrameOperationMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    move v3, p0

    invoke-static/range {v1 .. v7}, Lcom/tencent/liteav/live/V2TXLivePremierJni;->nativeEnableAudioPlayoutObserver(JZIIII)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static native nativeCreate()J
.end method

.method private static native nativeEnableAudioPlayoutObserver(JZIIII)I
.end method

.method public static onAudioPlayoutData([BJII)V
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    sget-object p1, Lcom/tencent/liteav/live/V2TXLivePremierJni;->sObserver:Lcom/tencent/live2/V2TXLivePremier$V2TXLivePremierObserver;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p2, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrame;

    invoke-direct {p2}, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrame;-><init>()V

    .line 3
    iput-object p0, p2, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrame;->data:[B

    .line 4
    iput p3, p2, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrame;->sampleRate:I

    .line 5
    iput p4, p2, Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrame;->channel:I

    .line 6
    invoke-virtual {p1, p2}, Lcom/tencent/live2/V2TXLivePremier$V2TXLivePremierObserver;->onPlayoutAudioFrame(Lcom/tencent/live2/V2TXLiveDef$V2TXLiveAudioFrame;)V

    return-void
.end method

.method public static setObserver(Lcom/tencent/live2/V2TXLivePremier$V2TXLivePremierObserver;)V
    .locals 0

    sput-object p0, Lcom/tencent/liteav/live/V2TXLivePremierJni;->sObserver:Lcom/tencent/live2/V2TXLivePremier$V2TXLivePremierObserver;

    return-void
.end method
