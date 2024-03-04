.class public abstract Lcom/guochao/faceshow/views/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private isRunning:Z

.field private mCountdownInterval:J

.field private mCurrentTime:J

.field private mHandler:Landroid/os/Handler;

.field private mMillisInFuture:J

.field private mStopTime:J

.field mTimer:Ljava/util/Timer;

.field mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/g;->mHandler:Landroid/os/Handler;

    .line 3
    iput-wide p1, p0, Lcom/guochao/faceshow/views/g;->mMillisInFuture:J

    .line 4
    iput-wide p3, p0, Lcom/guochao/faceshow/views/g;->mCountdownInterval:J

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/views/g;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/g;->mStopTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/guochao/faceshow/views/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/g;->isRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/guochao/faceshow/views/g;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/g;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public addTime(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/views/g;->mStopTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/guochao/faceshow/views/g;->mStopTime:J

    .line 2
    iget-wide v0, p0, Lcom/guochao/faceshow/views/g;->mMillisInFuture:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/guochao/faceshow/views/g;->mMillisInFuture:J

    return-void
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/g;->isRunning:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/g;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/g;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_1
    return-void
.end method

.method public getLeaveTime()J
    .locals 4

    iget-wide v0, p0, Lcom/guochao/faceshow/views/g;->mStopTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isCancel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/views/g;->isRunning:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
.end method

.method public final setCountdownInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/views/g;->mCountdownInterval:J

    return-void
.end method

.method public final setMillisInFuture(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/views/g;->mMillisInFuture:J

    return-void
.end method

.method public final declared-synchronized start()Lcom/guochao/faceshow/views/g;
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/guochao/faceshow/views/g;->mMillisInFuture:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/g;->isRunning:Z

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/g;->onFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object p0

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/g;->cancel()V

    .line 6
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/g;->mTimer:Ljava/util/Timer;

    .line 7
    new-instance v0, Lcom/guochao/faceshow/views/g$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/g$a;-><init>(Lcom/guochao/faceshow/views/g;)V

    iput-object v0, p0, Lcom/guochao/faceshow/views/g;->mTimerTask:Ljava/util/TimerTask;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/guochao/faceshow/views/g;->mCurrentTime:J

    .line 9
    iget-wide v2, p0, Lcom/guochao/faceshow/views/g;->mMillisInFuture:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/guochao/faceshow/views/g;->mStopTime:J

    .line 10
    iget-object v2, p0, Lcom/guochao/faceshow/views/g;->mTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/guochao/faceshow/views/g;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/guochao/faceshow/views/g;->mCountdownInterval:J

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
