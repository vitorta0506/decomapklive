.class Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/liteav/audio/SystemLoopbackRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Recorder"
.end annotation


# instance fields
.field private a:Landroid/media/AudioRecord;

.field private b:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
        value = "Recorder"
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    const-string v1, "audio"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->b:Landroid/media/AudioManager;

    return-void
.end method

.method private static a(Landroid/media/projection/MediaProjection;III)Landroid/media/AudioRecord;
    .locals 8

    .line 1
    new-instance v0, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    invoke-direct {v0, p0}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;-><init>(Landroid/media/projection/MediaProjection;)V

    const/4 p0, 0x1

    .line 2
    invoke-virtual {v0, p0}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    const/16 v1, 0xe

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    .line 4
    invoke-virtual {v0}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->build()Landroid/media/AudioPlaybackCaptureConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-ne p2, p0, :cond_1

    const/16 p2, 0x10

    goto :goto_0

    :cond_1
    const/16 p2, 0xc

    .line 5
    :goto_0
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v3, 0x2

    .line 6
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 7
    invoke-virtual {v2, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 8
    invoke-virtual {v2, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    .line 10
    invoke-static {p1, p2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    move-object v4, v1

    const/4 p2, 0x1

    :goto_1
    if-gt p2, v3, :cond_5

    if-nez v4, :cond_5

    mul-int v5, p1, p2

    mul-int/lit8 v6, p3, 0x4

    if-ge v5, v6, :cond_2

    if-lt p2, v3, :cond_4

    .line 11
    :cond_2
    new-instance v4, Landroid/media/AudioRecord$Builder;

    invoke-direct {v4}, Landroid/media/AudioRecord$Builder;-><init>()V

    .line 12
    invoke-virtual {v4, v2}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v4

    .line 13
    invoke-virtual {v4, v5}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object v4

    .line 14
    invoke-virtual {v4, v0}, Landroid/media/AudioRecord$Builder;->setAudioPlaybackCaptureConfig(Landroid/media/AudioPlaybackCaptureConfiguration;)Landroid/media/AudioRecord$Builder;

    move-result-object v4

    .line 15
    invoke-virtual {v4}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object v4

    .line 16
    invoke-virtual {v4}, Landroid/media/AudioRecord;->getState()I

    move-result v5

    const/4 v6, 0x0

    const-string v7, "SystemLoopbackRecorder"

    if-eq v5, p0, :cond_3

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "Audio record state error"

    .line 17
    invoke-static {v7, v6, v5}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {v4}, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a(Landroid/media/AudioRecord;)V

    move-object v4, v1

    goto :goto_2

    .line 19
    :cond_3
    invoke-virtual {v4}, Landroid/media/AudioRecord;->startRecording()V

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "Create audio record success"

    .line 20
    invoke-static {v7, v6, v5}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    return-object v4
.end method

.method private a(I)V
    .locals 2

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->b:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set audio mode exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SystemLoopbackRecorder"

    invoke-static {v1, p1, v0}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Landroid/media/AudioRecord;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 21
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 22
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V

    .line 23
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destroy AudioRecord failed."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "SystemLoopbackRecorder"

    invoke-static {v1, p0, v0}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 3
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
        value = "Recorder"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a:Landroid/media/AudioRecord;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3
    iget-object v2, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a:Landroid/media/AudioRecord;

    invoke-virtual {v2, p1, p2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result p1

    if-gtz p1, :cond_1

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Read failed "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "SystemLoopbackRecorder"

    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    return p1
.end method

.method public startRecording(Landroid/media/projection/MediaProjection;III)I
    .locals 4
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
        value = "Recorder"
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->b:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    .line 2
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setAllowedCapturePolicy(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ForbidCaptureAudioFromCurrentApp error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "SystemLoopbackRecorder"

    invoke-static {v3, v1, v2}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->b:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_1
    invoke-direct {p0, v0}, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a(I)V

    .line 7
    invoke-static {p1, p2, p3, p4}, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a(Landroid/media/projection/MediaProjection;III)Landroid/media/AudioRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a:Landroid/media/AudioRecord;

    .line 8
    invoke-direct {p0, v1}, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a(I)V

    .line 9
    iget-object p1, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a:Landroid/media/AudioRecord;

    if-nez p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const/16 p1, -0x13

    .line 10
    invoke-static {p1}, Landroid/os/Process;->setThreadPriority(I)V

    return v0
.end method

.method public stopRecording()V
    .locals 1
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
        value = "Recorder"
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a:Landroid/media/AudioRecord;

    invoke-static {v0}, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a(Landroid/media/AudioRecord;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tencent/liteav/audio/SystemLoopbackRecorder$Recorder;->a:Landroid/media/AudioRecord;

    return-void
.end method
