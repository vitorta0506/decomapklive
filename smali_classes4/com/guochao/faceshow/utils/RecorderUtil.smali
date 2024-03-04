.class public Lcom/guochao/faceshow/utils/RecorderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/utils/RecorderUtil$OnRecordListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecorderUtil"


# instance fields
.field MAX_VU_SIZE:I

.field private isRecording:Z

.field private mCalledStopListener:Z

.field mCountDownTimerUtil:Lcom/guochao/faceshow/views/g;

.field private mFileName:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mMaxDuration:I

.field private mNow:I

.field mOnRecordListener:Lcom/guochao/faceshow/utils/RecorderUtil$OnRecordListener;

.field private mRecorder:Landroid/media/MediaRecorder;

.field mRunnable:Ljava/lang/Runnable;

.field mTimeUsingRunnable:Ljava/lang/Runnable;

.field private startTime:J

.field private timeInterval:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mFileName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRecorder:Landroid/media/MediaRecorder;

    const v0, 0xea60

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mMaxDuration:I

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->MAX_VU_SIZE:I

    .line 7
    new-instance v0, Lcom/guochao/faceshow/utils/RecorderUtil$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/utils/RecorderUtil$1;-><init>(Lcom/guochao/faceshow/utils/RecorderUtil;)V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mCalledStopListener:Z

    .line 9
    new-instance v0, Lcom/guochao/faceshow/utils/RecorderUtil$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/utils/RecorderUtil$2;-><init>(Lcom/guochao/faceshow/utils/RecorderUtil;)V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mTimeUsingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/utils/RecorderUtil;)Landroid/media/MediaRecorder;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/utils/RecorderUtil;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mNow:I

    return p0
.end method

.method static synthetic access$112(Lcom/guochao/faceshow/utils/RecorderUtil;I)I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mNow:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mNow:I

    return v0
.end method

.method static synthetic access$200(Lcom/guochao/faceshow/utils/RecorderUtil;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mMaxDuration:I

    return p0
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDuration()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mMaxDuration:I

    return v0
.end method

.method public getTimeInterval()J
    .locals 4

    iget-wide v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->timeInterval:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public setMaxDuration(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mMaxDuration:I

    return-void
.end method

.method public setOnRecordListener(Lcom/guochao/faceshow/utils/RecorderUtil$OnRecordListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mOnRecordListener:Lcom/guochao/faceshow/utils/RecorderUtil$OnRecordListener;

    return-void
.end method

.method public startRecording()V
    .locals 9

    .line 1
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lz8/c;->E(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mCountDownTimerUtil:Lcom/guochao/faceshow/views/g;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record"

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getIMResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".m4a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mFileName:Ljava/lang/String;

    .line 5
    iget-boolean v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->isRecording:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRecorder:Landroid/media/MediaRecorder;

    .line 8
    :cond_1
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRecorder:Landroid/media/MediaRecorder;

    .line 9
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRecorder:Landroid/media/MediaRecorder;

    iget v2, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mMaxDuration:I

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->startTime:J

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mNow:I

    .line 16
    iget-object v2, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRecorder:Landroid/media/MediaRecorder;

    new-instance v3, Lcom/guochao/faceshow/utils/RecorderUtil$3;

    invoke-direct {v3, p0}, Lcom/guochao/faceshow/utils/RecorderUtil$3;-><init>(Lcom/guochao/faceshow/utils/RecorderUtil;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    .line 18
    iget-object v2, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V

    .line 19
    iput-boolean v1, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->isRecording:Z

    .line 20
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mCalledStopListener:Z

    .line 21
    new-instance v0, Lcom/guochao/faceshow/utils/RecorderUtil$4;

    iget v1, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mMaxDuration:I

    int-to-long v5, v1

    const-wide/16 v7, 0x3e8

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/guochao/faceshow/utils/RecorderUtil$4;-><init>(Lcom/guochao/faceshow/utils/RecorderUtil;JJ)V

    iput-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mCountDownTimerUtil:Lcom/guochao/faceshow/views/g;

    .line 22
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->start()Lcom/guochao/faceshow/views/g;

    .line 23
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "RecorderUtil"

    const-string v1, "prepare() failed"

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public stopRecording()V
    .locals 6

    .line 1
    invoke-static {}, Lz8/c;->o()Lz8/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lz8/c;->E(Z)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->startTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->timeInterval:J

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mCountDownTimerUtil:Lcom/guochao/faceshow/views/g;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/views/g;->cancel()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mTimeUsingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-wide v2, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->timeInterval:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    :catch_0
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mOnRecordListener:Lcom/guochao/faceshow/utils/RecorderUtil$OnRecordListener;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mCalledStopListener:Z

    if-nez v2, :cond_2

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mFileName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->timeInterval:J

    invoke-interface {v0, v2, v3, v4}, Lcom/guochao/faceshow/utils/RecorderUtil$OnRecordListener;->onAutoStopRecord(Ljava/lang/String;J)V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mCalledStopListener:Z

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->mRecorder:Landroid/media/MediaRecorder;

    .line 14
    iput-boolean v1, p0, Lcom/guochao/faceshow/utils/RecorderUtil;->isRecording:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    const-string v0, "RecorderUtil"

    const-string v1, "release() failed"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
