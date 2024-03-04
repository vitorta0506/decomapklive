.class public Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/liteav/audio/TXAudioEffectManager;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::manager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;,
        Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;,
        Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;
    }
.end annotation


# static fields
.field private static final EFFECT_PLAYER_ID_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TXAudioEffectManagerImpl"


# instance fields
.field private mEffectIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeAudioEffectMgr:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mEffectIdList:Ljava/util/List;

    .line 4
    iput-wide p1, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    return-void
.end method

.method private static convertToEffectId(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0x200000000L

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeEnableAudioEarMonitoring(JZ)V
.end method

.method private static native nativeGetMusicCurrentPosInMS(JJ)J
.end method

.method private static native nativeGetMusicDurationInMS(JLjava/lang/String;)J
.end method

.method private static native nativePausePlayMusic(JJ)V
.end method

.method private static native nativePreloadMusic(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;)V
.end method

.method private static native nativeResumePlayMusic(JJ)V
.end method

.method private static native nativeSeekMusicToPosInMS(JJJ)V
.end method

.method private static native nativeSetAllMusicVolume(JI)V
.end method

.method private static native nativeSetAudioEarMonitoringVolume(JI)V
.end method

.method private static native nativeSetMusicObserver(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;)V
.end method

.method private static native nativeSetMusicPitch(JJF)V
.end method

.method private static native nativeSetMusicPlayoutVolume(JJI)V
.end method

.method private static native nativeSetMusicPublishVolume(JJI)V
.end method

.method private static native nativeSetMusicScratchSpeedRate(JJF)V
.end method

.method private static native nativeSetMusicSpeedRate(JJF)V
.end method

.method private static native nativeSetPreloadObserver(JLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;)V
.end method

.method private static native nativeSetVoiceCaptureVolume(JI)V
.end method

.method private static native nativeSetVoiceChangerType(JI)V
.end method

.method private static native nativeSetVoicePitch(JD)V
.end method

.method private static native nativeSetVoiceReverbType(JI)V
.end method

.method private static native nativeStartPlayMusic(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;)V
.end method

.method private static native nativeStopPlayMusic(JJ)V
.end method

.method public static voiceChangerTypeFromInt(I)Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_0:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 2
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_1:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 3
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_2:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 4
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_3:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 5
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_4:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 6
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_5:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 7
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_6:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 8
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_7:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 9
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_8:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 10
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_9:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 11
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_10:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    return-object p0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 12
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_11:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    return-object p0

    .line 13
    :cond_b
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->TXLiveVoiceChangerType_0:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;

    return-object p0
.end method

.method public static voiceReverbTypeFromInt(I)Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_0:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 2
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_1:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 3
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_2:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 4
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_3:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 5
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_4:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 6
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_5:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 7
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_6:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 8
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_7:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 9
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_8:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 10
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_9:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 11
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_10:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    return-object p0

    .line 12
    :cond_a
    sget-object p0, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->TXLiveVoiceReverbType_0:Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;

    return-object p0
.end method


# virtual methods
.method public enableVoiceEarMonitor(Z)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeEnableAudioEarMonitoring(JZ)V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeDestroy(J)V

    .line 4
    iput-wide v2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    :cond_0
    return-void
.end method

.method public getMusicCurrentPosInMS(I)J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    int-to-long v2, p1

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeGetMusicCurrentPosInMS(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public getMusicDurationInMS(Ljava/lang/String;)J
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "TXAudioEffectManagerImpl"

    const-string v0, "getMusicDurationInMS invalid params"

    .line 2
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    .line 3
    :cond_0
    iget-wide v3, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v3, v4, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeGetMusicDurationInMS(JLjava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method public pauseAudioEffect(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativePausePlayMusic(JJ)V

    :cond_0
    return-void
.end method

.method public pausePlayMusic(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    int-to-long v2, p1

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativePausePlayMusic(JJ)V

    :cond_0
    return-void
.end method

.method public playAudioEffect(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    iget v2, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->id:I

    invoke-static {v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    move-result-wide v2

    new-instance v4, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;

    invoke-direct {v4, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;-><init>(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeStartPlayMusic(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;)V

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mEffectIdList:Ljava/util/List;

    iget p1, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "TXAudioEffectManagerImpl"

    const-string/jumbo v0, "startPlayMusic invalid params"

    .line 7
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public preloadMusic(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)Z
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    iget v2, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->id:I

    int-to-long v2, v2

    new-instance v4, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;

    invoke-direct {v4, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;-><init>(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativePreloadMusic(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const-string p1, "TXAudioEffectManagerImpl"

    const-string v0, "preloadMusic invalid params"

    .line 4
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public resumeAudioEffect(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeResumePlayMusic(JJ)V

    :cond_0
    return-void
.end method

.method public resumePlayMusic(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    int-to-long v2, p1

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeResumePlayMusic(JJ)V

    :cond_0
    return-void
.end method

.method public seekMusicToPosInMS(II)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    int-to-long v2, p1

    int-to-long v4, p2

    .line 2
    invoke-static/range {v0 .. v5}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSeekMusicToPosInMS(JJJ)V

    :cond_0
    return-void
.end method

.method public setAllAudioEffectsVolume(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mEffectIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->setAudioEffectVolume(II)V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public setAllMusicVolume(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetAllMusicVolume(JI)V

    :cond_0
    return-void
.end method

.method public setAudioEffectVolume(II)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicPlayoutVolume(JJI)V

    .line 3
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicPublishVolume(JJI)V

    :cond_0
    return-void
.end method

.method public setEffectObserver(ILcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    move-result-wide v2

    new-instance p1, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;

    invoke-direct {p1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;-><init>(Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;)V

    invoke-static {v0, v1, v2, v3, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicObserver(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    move-result-wide p1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicObserver(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;)V

    :cond_1
    return-void
.end method

.method public setMusicObserver(ILcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    if-eqz p2, :cond_0

    int-to-long v2, p1

    .line 2
    new-instance p1, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;

    invoke-direct {p1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;-><init>(Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPlayObserver;)V

    invoke-static {v0, v1, v2, v3, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicObserver(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;)V

    return-void

    :cond_0
    int-to-long p1, p1

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v1, p1, p2, v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicObserver(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;)V

    :cond_1
    return-void
.end method

.method public setMusicPitch(IF)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    int-to-long v2, p1

    .line 2
    invoke-static {v0, v1, v2, v3, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicPitch(JJF)V

    :cond_0
    return-void
.end method

.method public setMusicPlayoutVolume(II)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    int-to-long v2, p1

    .line 2
    invoke-static {v0, v1, v2, v3, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicPlayoutVolume(JJI)V

    :cond_0
    return-void
.end method

.method public setMusicPublishVolume(II)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    int-to-long v2, p1

    .line 2
    invoke-static {v0, v1, v2, v3, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicPublishVolume(JJI)V

    :cond_0
    return-void
.end method

.method public setMusicScratchSpeedRate(IF)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    int-to-long v2, p1

    .line 2
    invoke-static {v0, v1, v2, v3, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicScratchSpeedRate(JJF)V

    :cond_0
    return-void
.end method

.method public setMusicSpeedRate(IF)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    int-to-long v2, p1

    .line 2
    invoke-static {v0, v1, v2, v3, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicSpeedRate(JJF)V

    :cond_0
    return-void
.end method

.method public setPreloadObserver(Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPreloadObserver;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    new-instance v2, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;

    invoke-direct {v2, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;-><init>(Lcom/tencent/liteav/audio/TXAudioEffectManager$TXMusicPreloadObserver;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetPreloadObserver(JLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPreloadObserver;)V

    :cond_0
    return-void
.end method

.method public setVoiceCaptureVolume(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetVoiceCaptureVolume(JI)V

    :cond_0
    return-void
.end method

.method public setVoiceChangerType(Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceChangerType;->getNativeValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetVoiceChangerType(JI)V

    :cond_0
    return-void
.end method

.method public setVoiceEarMonitorVolume(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetAudioEarMonitoringVolume(JI)V

    :cond_0
    return-void
.end method

.method public setVoicePitch(D)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetVoicePitch(JD)V

    :cond_0
    return-void
.end method

.method public setVoiceReverbType(Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManager$TXVoiceReverbType;->getNativeValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetVoiceReverbType(JI)V

    :cond_0
    return-void
.end method

.method public startPlayMusic(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)Z
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->path:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    iget v2, p1, Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;->id:I

    int-to-long v2, v2

    new-instance v4, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;

    invoke-direct {v4, p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;-><init>(Lcom/tencent/liteav/audio/TXAudioEffectManager$AudioMusicParam;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeStartPlayMusic(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$AudioBgmParams;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const-string p1, "TXAudioEffectManagerImpl"

    const-string/jumbo v0, "startPlayMusic invalid params"

    .line 4
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public stopAllAudioEffects()V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mEffectIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 4
    iget-wide v2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    move-result-wide v4

    const/4 v6, 0x0

    .line 6
    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicObserver(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;)V

    .line 7
    iget-wide v2, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeStopPlayMusic(JJ)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mEffectIdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public stopAudioEffect(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeSetMusicObserver(JJLcom/tencent/liteav/audio/TXAudioEffectManagerImpl$MusicPlayObserver;)V

    .line 3
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    invoke-static {p1}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->convertToEffectId(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeStopPlayMusic(JJ)V

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mEffectIdList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mEffectIdList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method public stopPlayMusic(I)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->mNativeAudioEffectMgr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    int-to-long v2, p1

    .line 2
    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/TXAudioEffectManagerImpl;->nativeStopPlayMusic(JJ)V

    :cond_0
    return-void
.end method
