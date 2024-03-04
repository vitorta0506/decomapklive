.class public Lcom/tencent/ugc/UGCAudioProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::ugc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/ugc/UGCAudioProcessor$AudioProgressListener;,
        Lcom/tencent/ugc/UGCAudioProcessor$AudioEncodedFrameListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UGCAudioProcessor"


# instance fields
.field private mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

.field private final mBGMLock:Ljava/lang/Object;

.field private mBGMSource:Lcom/tencent/ugc/UGCMediaListSource;

.field private mEncodeListener:Lcom/tencent/ugc/UGCAudioProcessor$AudioEncodedFrameListener;

.field private mNativeProcessor:J

.field private mProgressListener:Lcom/tencent/ugc/UGCAudioProcessor$AudioProgressListener;

.field private mVideoSource:Lcom/tencent/ugc/UGCMediaListSource;


# direct methods
.method public constructor <init>(Lcom/tencent/ugc/UGCAVSyncer;Lcom/tencent/ugc/UGCMediaListSource;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mProgressListener:Lcom/tencent/ugc/UGCAudioProcessor$AudioProgressListener;

    .line 4
    iput-object v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mEncodeListener:Lcom/tencent/ugc/UGCAudioProcessor$AudioEncodedFrameListener;

    .line 5
    iput-object v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mBGMSource:Lcom/tencent/ugc/UGCMediaListSource;

    .line 6
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mBGMLock:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mVideoSource:Lcom/tencent/ugc/UGCMediaListSource;

    .line 8
    iput-object p1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    .line 9
    invoke-static {p0}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeCreateProcessor(Lcom/tencent/ugc/UGCAudioProcessor;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    return-void
.end method

.method private destroyBGMSource()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mBGMLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mBGMSource:Lcom/tencent/ugc/UGCMediaListSource;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/tencent/ugc/UGCMediaListSource;->uninitialize()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mBGMSource:Lcom/tencent/ugc/UGCMediaListSource;

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static native nativeCreateProcessor(Lcom/tencent/ugc/UGCAudioProcessor;)J
.end method

.method private static native nativeDestroyProcessor(J)V
.end method

.method private static native nativeEnableBGM(JZ)V
.end method

.method private static native nativeInitialize(J)V
.end method

.method private static native nativeSetBGMAtVideoTime(JJ)V
.end method

.method private static native nativeSetBGMLoop(JZ)V
.end method

.method private static native nativeSetBGMStartTime(JJJ)V
.end method

.method private static native nativeSetBGMVolume(JF)V
.end method

.method private static native nativeSetEncodeParams(JIIII)V
.end method

.method private static native nativeSetFadeInOutDuration(JJJ)V
.end method

.method private static native nativeSetSpeedList(J[I[J[J)V
.end method

.method private static native nativeSetVideoVolume(JF)V
.end method

.method private static native nativeSetVideoVolumes(J[F)V
.end method

.method private static native nativeStart(JZ)V
.end method

.method private static native nativeStop(J)V
.end method

.method private static native nativeUnInitialize(J)V
.end method

.method private readNextAudioFrame(Z)[Lcom/tencent/ugc/AudioFrame;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mBGMLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mBGMSource:Lcom/tencent/ugc/UGCMediaListSource;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mVideoSource:Lcom/tencent/ugc/UGCMediaListSource;

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_2

    const-string v1, "UGCAudioProcessor"

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "readNextAudioFrame failed for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p1, "BGM"

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "video"

    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v3}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    monitor-exit v0

    return-object v2

    .line 5
    :cond_2
    invoke-virtual {v1}, Lcom/tencent/ugc/UGCMediaListSource;->readNextAudioFrame()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    new-array p1, v3, [Lcom/tencent/ugc/AudioFrame;

    .line 7
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/tencent/ugc/AudioFrame;

    monitor-exit v0

    return-object p1

    :cond_4
    :goto_2
    const-string v1, "UGCAudioProcessor"

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "readNextAudioFrame eos for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const-string p1, "BGM"

    goto :goto_3

    :cond_5
    const-string/jumbo p1, "video"

    :goto_3
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, v3}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public createAudioFrameFromNative(IIJII)Lcom/tencent/ugc/AudioFrame;
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/ugc/AudioFrame;

    invoke-direct {v0}, Lcom/tencent/ugc/AudioFrame;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/tencent/ugc/AudioFrame;->setSampleRate(I)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/tencent/ugc/AudioFrame;->setChannelCount(I)V

    .line 4
    invoke-static {p6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lcom/tencent/ugc/AudioFrame;->setData(Ljava/nio/ByteBuffer;)V

    .line 6
    invoke-virtual {v0, p3, p4}, Lcom/tencent/ugc/AudioFrame;->setTimestamp(J)V

    .line 7
    sget-object p1, Lcom/tencent/ugc/AudioFrame$AudioCodecFormat;->AAC:Lcom/tencent/ugc/AudioFrame$AudioCodecFormat;

    .line 8
    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame$AudioCodecFormat;->getValue()I

    move-result p2

    if-ne p5, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/tencent/ugc/AudioFrame$AudioCodecFormat;->PCM:Lcom/tencent/ugc/AudioFrame$AudioCodecFormat;

    .line 9
    :goto_0
    invoke-virtual {v0, p1}, Lcom/tencent/ugc/AudioFrame;->setCodecFormat(Lcom/tencent/ugc/AudioFrame$AudioCodecFormat;)V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCAudioProcessor;->destroyBGMSource()V

    .line 2
    iget-wide v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    invoke-static {v0, v1}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeDestroyProcessor(J)V

    return-void
.end method

.method public initialize()V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    invoke-static {v0, v1}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeInitialize(J)V

    return-void
.end method

.method public notifyEncodedDataFromNative(Lcom/tencent/ugc/AudioFrame;)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mEncodeListener:Lcom/tencent/ugc/UGCAudioProcessor$AudioEncodedFrameListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/tencent/ugc/UGCAudioProcessor$AudioEncodedFrameListener;->onAudioFrameEncoded(Lcom/tencent/ugc/AudioFrame;)V

    :cond_0
    return-void
.end method

.method public notifyEncodingCompletedFromNative()V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mEncodeListener:Lcom/tencent/ugc/UGCAudioProcessor$AudioEncodedFrameListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/ugc/UGCAudioProcessor$AudioEncodedFrameListener;->onAudioEncodingCompleted()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/tencent/ugc/UGCAVSyncer;->setAudioEos()V

    :cond_1
    return-void
.end method

.method public notifyEncodingStartedFromNative()V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mEncodeListener:Lcom/tencent/ugc/UGCAudioProcessor$AudioEncodedFrameListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/tencent/ugc/UGCAudioProcessor$AudioEncodedFrameListener;->onAudioEncodingStarted()V

    :cond_0
    return-void
.end method

.method public notifyPlayoutCompletedFromNative(ILjava/lang/String;)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mProgressListener:Lcom/tencent/ugc/UGCAudioProcessor$AudioProgressListener;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;

    invoke-direct {v0}, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;-><init>()V

    .line 3
    iput p1, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->retCode:I

    .line 4
    iput-object p2, v0, Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;->descMsg:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mProgressListener:Lcom/tencent/ugc/UGCAudioProcessor$AudioProgressListener;

    invoke-interface {p1, v0}, Lcom/tencent/ugc/UGCAudioProcessor$AudioProgressListener;->onComplete(Lcom/tencent/ugc/TXVideoEditConstants$TXGenerateResult;)V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/tencent/ugc/UGCAVSyncer;->setAudioEos()V

    :cond_1
    return-void
.end method

.method public notifyProgressFromNative(J)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mProgressListener:Lcom/tencent/ugc/UGCAudioProcessor$AudioProgressListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/tencent/ugc/UGCAudioProcessor$AudioProgressListener;->onProgress(J)V

    :cond_0
    return-void
.end method

.method public requestAudioDataFromNative()[Lcom/tencent/ugc/AudioFrame;
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCAudioProcessor;->readNextAudioFrame(Z)[Lcom/tencent/ugc/AudioFrame;

    move-result-object v0

    return-object v0
.end method

.method public requestBGMDataFromNative()[Lcom/tencent/ugc/AudioFrame;
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/ugc/UGCAudioProcessor;->readNextAudioFrame(Z)[Lcom/tencent/ugc/AudioFrame;

    move-result-object v0

    return-object v0
.end method

.method public requestBGMSeekFromNative(J)Z
    .locals 4
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mBGMLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mBGMSource:Lcom/tencent/ugc/UGCMediaListSource;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tencent/ugc/UGCMediaListSource;->hasAudioData()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mBGMSource:Lcom/tencent/ugc/UGCMediaListSource;

    .line 3
    invoke-virtual {v1}, Lcom/tencent/ugc/UGCMediaListSource;->getDuration()J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-gez v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mBGMSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/ugc/UGCMediaListSource;->seekTo(J)V

    .line 5
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 6
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAudioEncodedFrameListener(Lcom/tencent/ugc/UGCAudioProcessor$AudioEncodedFrameListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mEncodeListener:Lcom/tencent/ugc/UGCAudioProcessor$AudioEncodedFrameListener;

    return-void
.end method

.method public setBGM(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCAudioProcessor;->destroyBGMSource()V

    .line 2
    iget-wide v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeEnableBGM(JZ)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mBGMLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/ugc/UGCAudioProcessor;->destroyBGMSource()V

    .line 5
    new-instance v1, Lcom/tencent/ugc/UGCMediaListSource;

    invoke-direct {v1}, Lcom/tencent/ugc/UGCMediaListSource;-><init>()V

    iput-object v1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mBGMSource:Lcom/tencent/ugc/UGCMediaListSource;

    .line 6
    invoke-virtual {v1}, Lcom/tencent/ugc/UGCMediaListSource;->initialize()V

    .line 7
    iget-object v1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mBGMSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/tencent/ugc/UGCMediaListSource;->setVideoSources(Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mBGMSource:Lcom/tencent/ugc/UGCMediaListSource;

    invoke-virtual {p1}, Lcom/tencent/ugc/UGCMediaListSource;->getDuration()J

    move-result-wide v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iget-wide v3, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    const/4 p1, 0x1

    invoke-static {v3, v4, p1}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeEnableBGM(JZ)V

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    .line 11
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/tencent/ugc/UGCAudioProcessor;->setBGMStartTime(JJ)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setBGMAtVideoTime(J)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeSetBGMAtVideoTime(JJ)V

    return-void
.end method

.method public setBGMLoop(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    invoke-static {v0, v1, p1}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeSetBGMLoop(JZ)V

    return-void
.end method

.method public setBGMStartTime(JJ)V
    .locals 6

    iget-wide v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeSetBGMStartTime(JJJ)V

    return-void
.end method

.method public setBGMVolume(F)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    invoke-static {v0, v1, p1}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeSetBGMVolume(JF)V

    return-void
.end method

.method public setEncodeParams(Lcom/tencent/ugc/AudioEncodeParams;)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    invoke-virtual {p1}, Lcom/tencent/ugc/AudioEncodeParams;->getSampleRate()I

    move-result v2

    .line 2
    invoke-virtual {p1}, Lcom/tencent/ugc/AudioEncodeParams;->getChannels()I

    move-result v3

    invoke-virtual {p1}, Lcom/tencent/ugc/AudioEncodeParams;->getBitsPerChannel()I

    move-result v4

    .line 3
    invoke-virtual {p1}, Lcom/tencent/ugc/AudioEncodeParams;->getBitrate()I

    move-result v5

    .line 4
    invoke-static/range {v0 .. v5}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeSetEncodeParams(JIIII)V

    return-void
.end method

.method public setFadeInOutDuration(JJ)V
    .locals 6

    iget-wide v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeSetFadeInOutDuration(JJJ)V

    return-void
.end method

.method public setMediaListSource(Lcom/tencent/ugc/UGCMediaListSource;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mVideoSource:Lcom/tencent/ugc/UGCMediaListSource;

    return-void
.end method

.method public setProgressListener(Lcom/tencent/ugc/UGCAudioProcessor$AudioProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mProgressListener:Lcom/tencent/ugc/UGCAudioProcessor$AudioProgressListener;

    return-void
.end method

.method public setSpeedList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [J

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 6
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    .line 7
    iget v5, v4, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->speedLevel:I

    aput v5, v0, v3

    .line 8
    iget-wide v5, v4, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->startTime:J

    aput-wide v5, v1, v3

    .line 9
    iget-wide v4, v4, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v0

    move-object v2, v1

    .line 10
    :cond_1
    iget-wide v3, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    invoke-static {v3, v4, v0, v1, v2}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeSetSpeedList(J[I[J[J)V

    return-void
.end method

.method public setVideoVolume(F)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    invoke-static {v0, v1, p1}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeSetVideoVolume(JF)V

    return-void
.end method

.method public setVideoVolumes([F)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    invoke-static {v0, v1, p1}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeSetVideoVolumes(J[F)V

    return-void
.end method

.method public start(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    invoke-static {v0, v1, p1}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeStart(JZ)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    invoke-static {v0, v1}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeStop(J)V

    return-void
.end method

.method public syncAudioFromNative(J)I
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mAVSyncer:Lcom/tencent/ugc/UGCAVSyncer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/tencent/ugc/UGCAVSyncer;->syncAudio(J)Lcom/tencent/ugc/UGCAVSyncer$SkipMode;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/tencent/ugc/UGCAVSyncer$SkipMode;->getNativeValue()I

    move-result p1

    return p1

    .line 4
    :cond_0
    sget-object p1, Lcom/tencent/ugc/UGCAVSyncer$SkipMode;->NOOP:Lcom/tencent/ugc/UGCAVSyncer$SkipMode;

    invoke-virtual {p1}, Lcom/tencent/ugc/UGCAVSyncer$SkipMode;->getNativeValue()I

    move-result p1

    return p1
.end method

.method public unInitialize()V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/ugc/UGCAudioProcessor;->mNativeProcessor:J

    invoke-static {v0, v1}, Lcom/tencent/ugc/UGCAudioProcessor;->nativeUnInitialize(J)V

    return-void
.end method
