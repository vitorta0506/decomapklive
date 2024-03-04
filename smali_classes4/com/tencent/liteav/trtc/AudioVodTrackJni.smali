.class public Lcom/tencent/liteav/trtc/AudioVodTrackJni;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::trtc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/trtc/AudioVodTrackJni$AudioFrame;
    }
.end annotation


# instance fields
.field private mNativeAudioVodTrackJni:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->mNativeAudioVodTrackJni:J

    .line 3
    invoke-static {p0}, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->nativeCreateAudioVodTrackJni(Lcom/tencent/liteav/trtc/AudioVodTrackJni;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->mNativeAudioVodTrackJni:J

    return-void
.end method

.method private static native nativeClean(J)V
.end method

.method private static native nativeCreateAudioVodTrackJni(Lcom/tencent/liteav/trtc/AudioVodTrackJni;)J
.end method

.method private static native nativeEnablePlayout(JZ)V
.end method

.method private static native nativePause(J)V
.end method

.method private static native nativeResume(J)V
.end method

.method private static native nativeSeek(J)V
.end method

.method private static native nativeSetPlayoutVolume(JI)V
.end method

.method private static native nativeWriteData(JLcom/tencent/liteav/trtc/AudioVodTrackJni$AudioFrame;)I
.end method


# virtual methods
.method public declared-synchronized clean()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->mNativeAudioVodTrackJni:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->nativeClean(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enablePlayout(Z)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->mNativeAudioVodTrackJni:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->nativeEnablePlayout(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pause()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->mNativeAudioVodTrackJni:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->nativePause(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->mNativeAudioVodTrackJni:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->nativeResume(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seek()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->mNativeAudioVodTrackJni:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->nativeSeek(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPlayoutVolume(I)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->mNativeAudioVodTrackJni:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->nativeSetPlayoutVolume(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeData(Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;)I
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->mNativeAudioVodTrackJni:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    new-instance v2, Lcom/tencent/liteav/trtc/AudioVodTrackJni$AudioFrame;

    invoke-direct {v2, p1}, Lcom/tencent/liteav/trtc/AudioVodTrackJni$AudioFrame;-><init>(Lcom/tencent/trtc/TRTCCloudDef$TRTCAudioFrame;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/trtc/AudioVodTrackJni;->nativeWriteData(JLcom/tencent/liteav/trtc/AudioVodTrackJni$AudioFrame;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, -0x1

    .line 3
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
