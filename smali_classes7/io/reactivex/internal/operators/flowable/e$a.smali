.class final Lio/reactivex/internal/operators/flowable/e$a;
.super Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription<",
        "TT;>;",
        "Lio/reactivex/f<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x22e56f1b1faaa1c2L


# instance fields
.field final a:Lil/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lil/b<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lyh/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyh/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:Lvh/a;

.field e:Lil/c;

.field volatile f:Z

.field volatile g:Z

.field h:Ljava/lang/Throwable;

.field final i:Ljava/util/concurrent/atomic/AtomicLong;

.field j:Z


# direct methods
.method constructor <init>(Lil/b;IZZLvh/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lil/b<",
            "-TT;>;IZZ",
            "Lvh/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/subscriptions/BasicIntQueueSubscription;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/e$a;->a:Lil/b;

    .line 4
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/e$a;->d:Lvh/a;

    .line 5
    iput-boolean p4, p0, Lio/reactivex/internal/operators/flowable/e$a;->c:Z

    if-eqz p3, :cond_0

    .line 6
    new-instance p1, Lio/reactivex/internal/queue/b;

    invoke-direct {p1, p2}, Lio/reactivex/internal/queue/b;-><init>(I)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lio/reactivex/internal/queue/SpscArrayQueue;

    invoke-direct {p1, p2}, Lio/reactivex/internal/queue/SpscArrayQueue;-><init>(I)V

    .line 8
    :goto_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/e$a;->b:Lyh/f;

    return-void
.end method


# virtual methods
.method b(ZZLil/b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lil/b<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/e$a;->b:Lyh/f;

    invoke-interface {p1}, Lyh/g;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/e$a;->c:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_4

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/e$a;->h:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p3, p1}, Lil/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p3}, Lil/b;->onComplete()V

    :goto_0
    return v1

    .line 7
    :cond_2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/e$a;->h:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 8
    iget-object p2, p0, Lio/reactivex/internal/operators/flowable/e$a;->b:Lyh/f;

    invoke-interface {p2}, Lyh/g;->clear()V

    .line 9
    invoke-interface {p3, p1}, Lil/b;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 10
    invoke-interface {p3}, Lil/b;->onComplete()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->f:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->e:Lil/c;

    invoke-interface {v0}, Lil/c;->cancel()V

    .line 4
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->b:Lyh/f;

    invoke-interface {v0}, Lyh/g;->clear()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->b:Lyh/f;

    invoke-interface {v0}, Lyh/g;->clear()V

    return-void
.end method

.method drain()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->b:Lyh/f;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/e$a;->a:Lil/b;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 4
    :cond_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/flowable/e$a;->g:Z

    invoke-interface {v0}, Lyh/g;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v1}, Lio/reactivex/internal/operators/flowable/e$a;->b(ZZLil/b;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/e$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_5

    .line 6
    iget-boolean v11, p0, Lio/reactivex/internal/operators/flowable/e$a;->g:Z

    .line 7
    invoke-interface {v0}, Lyh/f;->poll()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    .line 8
    :goto_1
    invoke-virtual {p0, v11, v13, v1}, Lio/reactivex/internal/operators/flowable/e$a;->b(ZZLil/b;)Z

    move-result v11

    if-eqz v11, :cond_3

    return-void

    :cond_3
    if-eqz v13, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-interface {v1, v12}, Lil/b;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :cond_5
    :goto_2
    if-nez v10, :cond_6

    .line 10
    iget-boolean v10, p0, Lio/reactivex/internal/operators/flowable/e$a;->g:Z

    .line 11
    invoke-interface {v0}, Lyh/g;->isEmpty()Z

    move-result v11

    .line 12
    invoke-virtual {p0, v10, v11, v1}, Lio/reactivex/internal/operators/flowable/e$a;->b(ZZLil/b;)Z

    move-result v10

    if-eqz v10, :cond_6

    return-void

    :cond_6
    cmp-long v10, v8, v6

    if-eqz v10, :cond_7

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v10, v4, v6

    if-eqz v10, :cond_7

    .line 13
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/e$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_7
    neg-int v3, v3

    .line 14
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_0

    :cond_8
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->b:Lyh/f;

    invoke-interface {v0}, Lyh/g;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->g:Z

    .line 2
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->j:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->a:Lil/b;

    invoke-interface {v0}, Lil/b;->onComplete()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/e$a;->drain()V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/e$a;->h:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->g:Z

    .line 3
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->j:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->a:Lil/b;

    invoke-interface {v0, p1}, Lil/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/e$a;->drain()V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->b:Lyh/f;

    invoke-interface {v0, p1}, Lyh/g;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/e$a;->e:Lil/c;

    invoke-interface {p1}, Lil/c;->cancel()V

    .line 3
    new-instance p1, Lio/reactivex/exceptions/MissingBackpressureException;

    const-string v0, "Buffer is full"

    invoke-direct {p1, v0}, Lio/reactivex/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->d:Lvh/a;

    invoke-interface {v0}, Lvh/a;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/e$a;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 8
    :cond_0
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/e$a;->j:Z

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/e$a;->a:Lil/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lil/b;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/e$a;->drain()V

    :goto_1
    return-void
.end method

.method public onSubscribe(Lil/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->e:Lil/c;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lil/c;Lil/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/e$a;->e:Lil/c;

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->a:Lil/b;

    invoke-interface {v0, p0}, Lil/b;->onSubscribe(Lil/c;)V

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    invoke-interface {p1, v0, v1}, Lil/c;->request(J)V

    :cond_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->b:Lyh/f;

    invoke-interface {v0}, Lyh/f;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->j:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/e$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lio/reactivex/internal/util/b;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/e$a;->drain()V

    :cond_0
    return-void
.end method

.method public requestFusion(I)I
    .locals 1

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/e$a;->j:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
