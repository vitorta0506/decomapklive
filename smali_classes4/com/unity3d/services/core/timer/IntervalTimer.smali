.class public Lcom/unity3d/services/core/timer/IntervalTimer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/services/core/timer/IIntervalTimer;
.implements Lcom/unity3d/services/core/lifecycle/IAppActiveListener;


# instance fields
.field private final _currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _delayMs:Ljava/lang/Integer;

.field private final _hasPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final _intervalDuration:Ljava/lang/Integer;

.field private final _isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private _lifecycleCache:Lcom/unity3d/services/core/lifecycle/LifecycleCache;

.field private _nextInterval:Ljava/lang/Integer;

.field private final _timedActivityName:Ljava/lang/String;

.field private _timerListener:Lcom/unity3d/services/core/timer/IIntervalTimerListener;

.field private _timerService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final _totalDurationMs:Ljava/lang/Integer;

.field private final _totalIntervals:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/unity3d/services/core/timer/IIntervalTimerListener;Lcom/unity3d/services/core/lifecycle/LifecycleCache;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_hasPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0x3e8

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_delayMs:Ljava/lang/Integer;

    .line 6
    iput-object p1, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_timedActivityName:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_totalDurationMs:Ljava/lang/Integer;

    .line 8
    iput-object p3, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_totalIntervals:Ljava/lang/Integer;

    .line 9
    iput-object p4, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_timerListener:Lcom/unity3d/services/core/timer/IIntervalTimerListener;

    .line 10
    iput-object p5, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_lifecycleCache:Lcom/unity3d/services/core/lifecycle/LifecycleCache;

    .line 11
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    div-int/2addr p2, p3

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_intervalDuration:Ljava/lang/Integer;

    .line 12
    iput-object p2, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_nextInterval:Ljava/lang/Integer;

    .line 13
    iget-object p2, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_lifecycleCache:Lcom/unity3d/services/core/lifecycle/LifecycleCache;

    invoke-virtual {p2, p1, p0}, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->addListener(Ljava/lang/String;Lcom/unity3d/services/core/lifecycle/IAppActiveListener;)V

    return-void
.end method

.method private schedule()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_timerService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/unity3d/services/core/timer/IntervalTimer$1;

    invoke-direct {v1, p0}, Lcom/unity3d/services/core/timer/IntervalTimer$1;-><init>(Lcom/unity3d/services/core/timer/IntervalTimer;)V

    iget-object v2, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_delayMs:Ljava/lang/Integer;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_delayMs:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 4
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: IntervalTimer failed to start due to exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public kill()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/unity3d/services/core/timer/IntervalTimer;->stopTimer()V

    .line 2
    iget-object v0, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_lifecycleCache:Lcom/unity3d/services/core/lifecycle/LifecycleCache;

    iget-object v1, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_timedActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->removeListener(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_timerListener:Lcom/unity3d/services/core/timer/IIntervalTimerListener;

    return-void
.end method

.method public killIfCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_nextInterval:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_totalDurationMs:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/unity3d/services/core/timer/IntervalTimer;->kill()V

    :cond_0
    return-void
.end method

.method public onAppStateChanged(Lcom/unity3d/services/core/lifecycle/LifecycleEvent;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/unity3d/services/core/timer/IntervalTimer$2;->$SwitchMap$com$unity3d$services$core$lifecycle$LifecycleEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_hasPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_hasPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/timer/IntervalTimer;->start(Ljava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_hasPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 6
    invoke-virtual {p0}, Lcom/unity3d/services/core/timer/IntervalTimer;->stopTimer()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onNextInterval()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_timerListener:Lcom/unity3d/services/core/timer/IIntervalTimerListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/unity3d/services/core/timer/IIntervalTimerListener;->onNextIntervalTriggered()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/services/core/timer/IntervalTimer;->killIfCompleted()V

    .line 4
    iget-object v0, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_nextInterval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_intervalDuration:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_nextInterval:Ljava/lang/Integer;

    return-void
.end method

.method public onNextMs()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_currentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_delayMs:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    iget-object v1, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_nextInterval:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/unity3d/services/core/timer/IntervalTimer;->onNextInterval()V

    :cond_0
    return-void
.end method

.method public start(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_timerService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    invoke-direct {p0}, Lcom/unity3d/services/core/timer/IntervalTimer;->schedule()V

    :cond_0
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_timerService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_timerService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/unity3d/services/core/timer/IntervalTimer;->_isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method
