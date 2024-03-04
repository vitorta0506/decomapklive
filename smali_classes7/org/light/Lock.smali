.class public Lorg/light/Lock;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static FORCE_USE_COMMON_LOCK:Z = false


# instance fields
.field private count:Ljava/util/concurrent/atomic/AtomicInteger;

.field private lock:Ljava/util/concurrent/Semaphore;

.field private useCAS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/light/Lock;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p2, p0, Lorg/light/Lock;->useCAS:Z

    .line 4
    sget-boolean p2, Lorg/light/Lock;->FORCE_USE_COMMON_LOCK:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lorg/light/Lock;->useCAS:Z

    .line 6
    :cond_0
    iget-boolean p2, p0, Lorg/light/Lock;->useCAS:Z

    if-eqz p2, :cond_1

    .line 7
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lorg/light/Lock;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_0

    .line 8
    :cond_1
    new-instance p2, Ljava/util/concurrent/Semaphore;

    invoke-direct {p2, p1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p2, p0, Lorg/light/Lock;->lock:Ljava/util/concurrent/Semaphore;

    :goto_0
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/light/Lock;->useCAS:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    .line 2
    invoke-virtual {p0, v0}, Lorg/light/Lock;->acquire(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/light/Lock;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public acquire(Ljava/lang/String;)V
    .locals 0

    .line 5
    iget-boolean p1, p0, Lorg/light/Lock;->useCAS:Z

    if-eqz p1, :cond_1

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 7
    iget-object p1, p0, Lorg/light/Lock;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lorg/light/Lock;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 9
    :cond_1
    :try_start_0
    iget-object p1, p0, Lorg/light/Lock;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/light/Lock;->useCAS:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/light/Lock;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/light/Lock;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    :goto_0
    return-void
.end method
