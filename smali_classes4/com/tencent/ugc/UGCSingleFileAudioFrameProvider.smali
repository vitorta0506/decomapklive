.class public Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/ugc/UGCAudioFrameProvider;
.implements Lcom/tencent/ugc/UGCFrameQueue$UGCFrameQueueListener;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::ugc"
.end annotation


# static fields
.field private static final DEFAULT_CHANNEL_COUNT:I = 0x2

.field private static final DEFAULT_SAMPLE_RATE:I = 0xbb80

.field private static final MAX_FRAME_SIZE:I = 0x5

.field private static final MUTE_AUDIO_FRAME_DURATION:I = 0x14

.field public static final MUTE_VIRTUAL_FILE_PATH:Ljava/lang/String; = "mute_virtual_file_path"

.field private static final TAG:Ljava/lang/String; = "UGCAudioFileProvider"


# instance fields
.field private final mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/ugc/UGCFrameQueue<",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/AudioFrame;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mClip:Lcom/tencent/ugc/Clip;

.field private mCurrentTimestamp:J

.field private mEndPlayPts:J

.field private mNativeHandle:J

.field private final mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;


# direct methods
.method public constructor <init>(Lcom/tencent/ugc/Clip;Lcom/tencent/liteav/base/util/CustomHandler;)V
    .locals 2
    .param p1    # Lcom/tencent/ugc/Clip;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/tencent/liteav/base/util/CustomHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mCurrentTimestamp:J

    const-wide v0, 0x7fffffffffffffffL

    .line 3
    iput-wide v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mEndPlayPts:J

    .line 4
    new-instance v0, Lcom/tencent/ugc/Clip;

    invoke-direct {v0, p1}, Lcom/tencent/ugc/Clip;-><init>(Lcom/tencent/ugc/Clip;)V

    iput-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    .line 5
    new-instance p1, Lcom/tencent/ugc/UGCFrameQueue;

    invoke-direct {p1}, Lcom/tencent/ugc/UGCFrameQueue;-><init>()V

    iput-object p1, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    .line 6
    iput-object p2, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    return-void
.end method

.method private DecodeOrAppendMuteFrame()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCFrameQueue;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    invoke-static {v0, v1}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->nativeDecode(J)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->appendMuteFrame()V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/ev;->a(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/ew;->a(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->startInternal()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->stopInternal()V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->DecodeOrAppendMuteFrame()V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->DecodeOrAppendMuteFrame()V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->DecodeOrAppendMuteFrame()V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->DecodeOrAppendMuteFrame()V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->DecodeOrAppendMuteFrame()V

    return-void
.end method

.method private appendMuteFrame()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v1, v0, Lcom/tencent/ugc/Clip;->startInClipsTimeline:J

    iget-wide v3, v0, Lcom/tencent/ugc/Clip;->endInFileTime:J

    iget-wide v5, v0, Lcom/tencent/ugc/Clip;->startInFileTime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 2
    iget-wide v3, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mCurrentTimestamp:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v1, Lcom/tencent/ugc/UGCAudioFrameProvider;->END_OF_STREAM:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/tencent/ugc/AudioFrame;

    invoke-direct {v0}, Lcom/tencent/ugc/AudioFrame;-><init>()V

    const/16 v1, 0xf00

    .line 5
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/tencent/ugc/AudioFrame;->setData(Ljava/nio/ByteBuffer;)V

    const/4 v1, 0x2

    .line 8
    invoke-virtual {v0, v1}, Lcom/tencent/ugc/AudioFrame;->setChannelCount(I)V

    const v1, 0xbb80

    .line 9
    invoke-virtual {v0, v1}, Lcom/tencent/ugc/AudioFrame;->setSampleRate(I)V

    .line 10
    sget-object v1, Lcom/tencent/ugc/AudioFrame$AudioCodecFormat;->PCM:Lcom/tencent/ugc/AudioFrame$AudioCodecFormat;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/AudioFrame;->setCodecFormat(Lcom/tencent/ugc/AudioFrame$AudioCodecFormat;)V

    .line 11
    iget-wide v1, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mCurrentTimestamp:J

    const-wide/16 v3, 0x14

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mCurrentTimestamp:J

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/tencent/ugc/AudioFrame;->setTimestamp(J)V

    .line 13
    iget-object v1, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void
.end method

.method private fileTimeToTimelineNoSpeed(J)J
    .locals 5

    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v1, v0, Lcom/tencent/ugc/Clip;->startTimelineNoSpeed:J

    iget-wide v3, v0, Lcom/tencent/ugc/Clip;->startInFileTime:J

    sub-long/2addr p1, v3

    add-long/2addr v1, p1

    return-wide v1
.end method

.method private getByteBufferFromAudioFrame(Lcom/tencent/ugc/AudioFrame;)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame;->getData()Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private getTimeMultipleInSpeed(I)F
    .locals 0

    invoke-static {p1}, Lcom/tencent/ugc/UGCMediaListSource;->getSpeed(I)F

    move-result p1

    return p1
.end method

.method static synthetic lambda$initialize$0(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-object v0, v0, Lcom/tencent/ugc/Clip;->path:Ljava/lang/String;

    const-string v1, "mute_virtual_file_path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-wide v1, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mNativeHandle:J

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->nativeCreate(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mNativeHandle:J

    cmp-long p0, v3, v1

    if-nez p0, :cond_1

    const-string p0, "UGCAudioFileProvider"

    const-string v0, "create native instance failed."

    .line 4
    invoke-static {p0, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$seekTo$2(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mCurrentTimestamp:J

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->timelineToFileTime(J)J

    move-result-wide p1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->seekToInFileTime(J)V

    return-void
.end method

.method static synthetic lambda$uninitialize$1(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->nativeClose(J)V

    .line 3
    iget-wide v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->nativeDestroy(J)V

    .line 4
    iput-wide v2, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mNativeHandle:J

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {p0}, Lcom/tencent/ugc/UGCFrameQueue;->clear()V

    return-void
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeCreate(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)J
.end method

.method private static native nativeDecode(J)V
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetDuration(J)J
.end method

.method private static native nativeOpen(JLjava/lang/String;)I
.end method

.method private static native nativeSeekTo(JJ)I
.end method

.method private obtainAudioFrame(IIJI)Lcom/tencent/ugc/AudioFrame;
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
    invoke-virtual {v0, p3, p4}, Lcom/tencent/ugc/AudioFrame;->setTimestamp(J)V

    .line 5
    invoke-static {p5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/AudioFrame;->setData(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method private onDecodeEndOfFile()V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    const-string v0, "UGCAudioFileProvider"

    const-string v1, "onDecodeEndOfFile"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v1, Lcom/tencent/ugc/UGCAudioFrameProvider;->END_OF_STREAM:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void
.end method

.method private onDecodeError(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDecodeError reason = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UGCAudioFileProvider"

    invoke-static {v0, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v0, Lcom/tencent/ugc/UGCAudioFrameProvider;->END_OF_STREAM:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void
.end method

.method private onDecodeFrame(Lcom/tencent/ugc/AudioFrame;)V
    .locals 5
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v2, v2, Lcom/tencent/ugc/Clip;->startInFileTime:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v2, v2, Lcom/tencent/ugc/Clip;->endInFileTime:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame;->getTimestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mEndPlayPts:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/ugc/AudioFrame;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->fileTimeToTimelineNoSpeed(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/ugc/AudioFrame;->setTimestamp(J)V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "UGCAudioFileProvider"

    const-string v0, "decode frame pts is bigger than end time"

    .line 6
    invoke-static {p1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v0, Lcom/tencent/ugc/UGCAudioFrameProvider;->END_OF_STREAM:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void
.end method

.method private seekToInFileTime(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v3, v0, Lcom/tencent/ugc/Clip;->startInFileTime:J

    iget-wide v5, v0, Lcom/tencent/ugc/Clip;->endInFileTime:J

    move-wide v1, p1

    invoke-static/range {v1 .. v6}, Lcom/tencent/liteav/base/util/g;->a(JJJ)J

    move-result-wide p1

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "seekTo fileTime "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UGCAudioFileProvider"

    invoke-static {v1, v0}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-wide v2, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mNativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {v2, v3, p1, p2}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->nativeSeekTo(JJ)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "nativeSeekTo fail"

    .line 4
    invoke-static {v1, p1}, Lcom/tencent/liteav/base/util/LiteavLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {p1}, Lcom/tencent/ugc/UGCFrameQueue;->clear()V

    .line 6
    iget-object p1, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/eu;->a(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)Ljava/lang/Runnable;

    move-result-object p2

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, p2, v0}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method private startInternal()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-object v4, v4, Lcom/tencent/ugc/Clip;->path:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->nativeOpen(JLjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UGCAudioFileProvider"

    const-string v1, "native AudioFileReaderFFmpeg open failed."

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-wide v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->nativeClose(J)V

    .line 4
    iget-wide v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mNativeHandle:J

    invoke-static {v0, v1}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->nativeDestroy(J)V

    .line 5
    iput-wide v2, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mNativeHandle:J

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v0, v0, Lcom/tencent/ugc/Clip;->startInClipsTimeline:J

    iput-wide v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mCurrentTimestamp:J

    .line 7
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0, p0}, Lcom/tencent/ugc/UGCFrameQueue;->setUGCFrameQueueListener(Lcom/tencent/ugc/UGCFrameQueue$UGCFrameQueueListener;)V

    .line 8
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCFrameQueue;->clear()V

    .line 9
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-wide v0, v0, Lcom/tencent/ugc/Clip;->startInFileTime:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->seekToInFileTime(J)V

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->DecodeOrAppendMuteFrame()V

    return-void
.end method

.method private stopInternal()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->nativeClose(J)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCFrameQueue;->setUGCFrameQueueListener(Lcom/tencent/ugc/UGCFrameQueue$UGCFrameQueueListener;)V

    .line 4
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/es;->a(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    invoke-virtual {v0}, Lcom/tencent/ugc/UGCFrameQueue;->clear()V

    .line 6
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    sget-object v1, Lcom/tencent/ugc/UGCAudioFrameProvider;->END_OF_STREAM:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tencent/ugc/UGCFrameQueue;->queue(Ljava/lang/Object;)V

    return-void
.end method

.method private timelineToFileTime(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mClip:Lcom/tencent/ugc/Clip;

    iget-object v1, v0, Lcom/tencent/ugc/Clip;->speedList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 2
    iget-wide v0, v0, Lcom/tencent/ugc/Clip;->startInFileTime:J

    add-long/2addr p1, v0

    return-wide p1

    .line 3
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    iget v3, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->speedLevel:I

    invoke-direct {p0, v3}, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->getTimeMultipleInSpeed(I)F

    move-result v3

    div-float/2addr v2, v3

    .line 5
    iget-wide v3, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->endTime:J

    iget-wide v5, v1, Lcom/tencent/ugc/TXVideoEditConstants$TXSpeed;->startTime:J

    sub-long/2addr v3, v5

    long-to-float v1, v3

    mul-float v1, v1, v2

    float-to-long v3, v1

    long-to-float v1, p1

    div-float/2addr v1, v2

    float-to-long v1, v1

    add-long/2addr v1, v5

    cmp-long v5, p1, v3

    if-ltz v5, :cond_1

    sub-long/2addr p1, v3

    goto :goto_0

    :cond_1
    return-wide v1
.end method


# virtual methods
.method public getFrameQueue()Lcom/tencent/ugc/UGCFrameQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/ugc/UGCFrameQueue<",
            "Ljava/util/List<",
            "Lcom/tencent/ugc/AudioFrame;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mAudioFrameQueue:Lcom/tencent/ugc/UGCFrameQueue;

    return-object v0
.end method

.method public initialize()V
    .locals 3

    const-string v0, "UGCAudioFileProvider"

    const-string v1, "initialize"

    .line 1
    invoke-static {v0, v1}, Lcom/tencent/liteav/base/util/LiteavLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/en;->a(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public onFrameDequeued()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/eo;->a(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public seekTo(J)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0, p1, p2}, Lcom/tencent/ugc/et;->a(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;J)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setPlayEndPts(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mEndPlayPts:J

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/eq;->a(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/er;->a(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method public uninitialize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;->mWorkHandler:Lcom/tencent/liteav/base/util/CustomHandler;

    invoke-static {p0}, Lcom/tencent/ugc/ep;->a(Lcom/tencent/ugc/UGCSingleFileAudioFrameProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/base/util/CustomHandler;->a(Ljava/lang/Runnable;I)Z

    return-void
.end method
