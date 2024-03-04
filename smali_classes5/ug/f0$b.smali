.class Lug/f0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lug/f0;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lug/f0;


# direct methods
.method constructor <init>(Lug/f0;)V
    .locals 0

    iput-object p1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "An event executor terminated with non-empty task queue ("

    .line 1
    iget-object v1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v1, v2}, Lug/f0;->N(Lug/f0;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2
    iget-object v1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v1}, Lug/f0;->O(Lug/f0;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v1}, Lug/f0;->M(Lug/f0;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 4
    :cond_0
    iget-object v1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v1}, Lug/f0;->T0()V

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/16 v3, 0x29

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 5
    :try_start_0
    iget-object v6, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v6}, Lug/f0;->F0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    :cond_1
    iget-object v6, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v6}, Lug/f0;->Q(Lug/f0;)I

    move-result v6

    if-ge v6, v2, :cond_2

    .line 7
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v7

    iget-object v8, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v7, v8, v6, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    :cond_2
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v2}, Lug/f0;->S(Lug/f0;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_3

    .line 9
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Buggy "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lug/j;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " implementation; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v7, Lug/f0;

    .line 11
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".confirmShutdown() must be called before run() implementation terminates."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-interface {v2, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->error(Ljava/lang/String;)V

    .line 13
    :cond_3
    :try_start_1
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2}, Lug/f0;->k0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    :cond_4
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v2}, Lug/f0;->Q(Lug/f0;)I

    move-result v2

    if-ge v2, v1, :cond_5

    .line 15
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v6

    iget-object v7, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v6, v7, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    :cond_5
    iget-object v1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v1}, Lug/f0;->k0()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    iget-object v1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v1}, Lug/f0;->f0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    invoke-static {}, Lug/n;->j()V

    .line 19
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 20
    iget-object v1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v1}, Lug/f0;->a0(Lug/f0;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 21
    iget-object v1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v1}, Lug/f0;->n0()I

    move-result v1

    if-lez v1, :cond_6

    .line 22
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 23
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;)V

    .line 24
    :cond_6
    iget-object v0, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v0}, Lug/f0;->b0(Lug/f0;)Lug/x;

    move-result-object v0

    invoke-interface {v0, v4}, Lug/x;->m0(Ljava/lang/Object;)Lug/x;

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    .line 25
    invoke-static {}, Lug/n;->j()V

    .line 26
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v6, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 27
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v2}, Lug/f0;->a0(Lug/f0;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 28
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2}, Lug/f0;->n0()I

    move-result v2

    if-lez v2, :cond_7

    .line 29
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 30
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;)V

    .line 31
    :cond_7
    iget-object v0, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v0}, Lug/f0;->b0(Lug/f0;)Lug/x;

    move-result-object v0

    invoke-interface {v0, v4}, Lug/x;->m0(Ljava/lang/Object;)Lug/x;

    .line 32
    throw v1

    :catchall_1
    move-exception v1

    .line 33
    :try_start_3
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2}, Lug/f0;->f0()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 34
    invoke-static {}, Lug/n;->j()V

    .line 35
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v6, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 36
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v2}, Lug/f0;->a0(Lug/f0;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 37
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2}, Lug/f0;->n0()I

    move-result v2

    if-lez v2, :cond_8

    .line 38
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 39
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;)V

    .line 40
    :cond_8
    iget-object v0, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v0}, Lug/f0;->b0(Lug/f0;)Lug/x;

    move-result-object v0

    invoke-interface {v0, v4}, Lug/x;->m0(Ljava/lang/Object;)Lug/x;

    .line 41
    throw v1

    :catchall_2
    move-exception v1

    .line 42
    invoke-static {}, Lug/n;->j()V

    .line 43
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v6, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 44
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v2}, Lug/f0;->a0(Lug/f0;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 45
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2}, Lug/f0;->n0()I

    move-result v2

    if-lez v2, :cond_9

    .line 46
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 47
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;)V

    .line 48
    :cond_9
    iget-object v0, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v0}, Lug/f0;->b0(Lug/f0;)Lug/x;

    move-result-object v0

    invoke-interface {v0, v4}, Lug/x;->m0(Ljava/lang/Object;)Lug/x;

    .line 49
    throw v1

    :catchall_3
    move-exception v6

    .line 50
    :try_start_4
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v7

    const-string v8, "Unexpected exception from an event executor: "

    invoke-interface {v7, v8, v6}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 51
    :cond_a
    iget-object v6, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v6}, Lug/f0;->Q(Lug/f0;)I

    move-result v6

    if-ge v6, v2, :cond_b

    .line 52
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v7

    iget-object v8, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v7, v8, v6, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 53
    :cond_b
    :try_start_5
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2}, Lug/f0;->k0()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 54
    :cond_c
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v2}, Lug/f0;->Q(Lug/f0;)I

    move-result v2

    if-ge v2, v1, :cond_d

    .line 55
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v6

    iget-object v7, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v6, v7, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 56
    :cond_d
    iget-object v1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v1}, Lug/f0;->k0()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 57
    :try_start_6
    iget-object v1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v1}, Lug/f0;->f0()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 58
    invoke-static {}, Lug/n;->j()V

    .line 59
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 60
    iget-object v1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v1}, Lug/f0;->a0(Lug/f0;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 61
    iget-object v1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v1}, Lug/f0;->n0()I

    move-result v1

    if-lez v1, :cond_6

    .line 62
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 63
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_0

    :goto_1
    return-void

    :catchall_4
    move-exception v1

    .line 64
    invoke-static {}, Lug/n;->j()V

    .line 65
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v6, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 66
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v2}, Lug/f0;->a0(Lug/f0;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 67
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2}, Lug/f0;->n0()I

    move-result v2

    if-lez v2, :cond_e

    .line 68
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 69
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;)V

    .line 70
    :cond_e
    iget-object v0, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v0}, Lug/f0;->b0(Lug/f0;)Lug/x;

    move-result-object v0

    invoke-interface {v0, v4}, Lug/x;->m0(Ljava/lang/Object;)Lug/x;

    .line 71
    throw v1

    :catchall_5
    move-exception v1

    .line 72
    :try_start_7
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2}, Lug/f0;->f0()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 73
    invoke-static {}, Lug/n;->j()V

    .line 74
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v6, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 75
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v2}, Lug/f0;->a0(Lug/f0;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 76
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2}, Lug/f0;->n0()I

    move-result v2

    if-lez v2, :cond_f

    .line 77
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 78
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;)V

    .line 79
    :cond_f
    iget-object v0, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v0}, Lug/f0;->b0(Lug/f0;)Lug/x;

    move-result-object v0

    invoke-interface {v0, v4}, Lug/x;->m0(Ljava/lang/Object;)Lug/x;

    .line 80
    throw v1

    :catchall_6
    move-exception v1

    .line 81
    invoke-static {}, Lug/n;->j()V

    .line 82
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v6, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 83
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v2}, Lug/f0;->a0(Lug/f0;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 84
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2}, Lug/f0;->n0()I

    move-result v2

    if-lez v2, :cond_10

    .line 85
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 86
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;)V

    .line 87
    :cond_10
    iget-object v0, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v0}, Lug/f0;->b0(Lug/f0;)Lug/x;

    move-result-object v0

    invoke-interface {v0, v4}, Lug/x;->m0(Ljava/lang/Object;)Lug/x;

    .line 88
    throw v1

    :catchall_7
    move-exception v6

    .line 89
    :cond_11
    iget-object v7, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v7}, Lug/f0;->Q(Lug/f0;)I

    move-result v7

    if-ge v7, v2, :cond_12

    .line 90
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v8

    iget-object v9, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v8, v9, v7, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 91
    :cond_12
    :try_start_8
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2}, Lug/f0;->k0()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 92
    :cond_13
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v2}, Lug/f0;->Q(Lug/f0;)I

    move-result v2

    if-ge v2, v1, :cond_14

    .line 93
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v7

    iget-object v8, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v7, v8, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 94
    :cond_14
    iget-object v1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v1}, Lug/f0;->k0()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 95
    :try_start_9
    iget-object v1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v1}, Lug/f0;->f0()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 96
    invoke-static {}, Lug/n;->j()V

    .line 97
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v1, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 98
    iget-object v1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v1}, Lug/f0;->a0(Lug/f0;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 99
    iget-object v1, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v1}, Lug/f0;->n0()I

    move-result v1

    if-lez v1, :cond_15

    .line 100
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 101
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;)V

    .line 102
    :cond_15
    iget-object v0, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v0}, Lug/f0;->b0(Lug/f0;)Lug/x;

    move-result-object v0

    invoke-interface {v0, v4}, Lug/x;->m0(Ljava/lang/Object;)Lug/x;

    .line 103
    throw v6

    :catchall_8
    move-exception v1

    .line 104
    invoke-static {}, Lug/n;->j()V

    .line 105
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v6, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 106
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v2}, Lug/f0;->a0(Lug/f0;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 107
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2}, Lug/f0;->n0()I

    move-result v2

    if-lez v2, :cond_16

    .line 108
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 109
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;)V

    .line 110
    :cond_16
    iget-object v0, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v0}, Lug/f0;->b0(Lug/f0;)Lug/x;

    move-result-object v0

    invoke-interface {v0, v4}, Lug/x;->m0(Ljava/lang/Object;)Lug/x;

    .line 111
    throw v1

    :catchall_9
    move-exception v1

    .line 112
    :try_start_a
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2}, Lug/f0;->f0()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 113
    invoke-static {}, Lug/n;->j()V

    .line 114
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v6, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 115
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v2}, Lug/f0;->a0(Lug/f0;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 116
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2}, Lug/f0;->n0()I

    move-result v2

    if-lez v2, :cond_17

    .line 117
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 118
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;)V

    .line 119
    :cond_17
    iget-object v0, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v0}, Lug/f0;->b0(Lug/f0;)Lug/x;

    move-result-object v0

    invoke-interface {v0, v4}, Lug/x;->m0(Ljava/lang/Object;)Lug/x;

    .line 120
    throw v1

    :catchall_a
    move-exception v1

    .line 121
    invoke-static {}, Lug/n;->j()V

    .line 122
    invoke-static {}, Lug/f0;->R()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    iget-object v6, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 123
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v2}, Lug/f0;->a0(Lug/f0;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 124
    iget-object v2, p0, Lug/f0$b;->a:Lug/f0;

    invoke-virtual {v2}, Lug/f0;->n0()I

    move-result v2

    if-lez v2, :cond_18

    .line 125
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 126
    invoke-static {}, Lug/f0;->P()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;)V

    .line 127
    :cond_18
    iget-object v0, p0, Lug/f0$b;->a:Lug/f0;

    invoke-static {v0}, Lug/f0;->b0(Lug/f0;)Lug/x;

    move-result-object v0

    invoke-interface {v0, v4}, Lug/x;->m0(Ljava/lang/Object;)Lug/x;

    .line 128
    throw v1
.end method
