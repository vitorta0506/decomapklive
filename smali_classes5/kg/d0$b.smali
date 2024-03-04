.class final Lkg/d0$b;
.super Lug/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lug/n<",
        "Lkg/b0;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Z

.field final synthetic d:Lkg/d0;


# direct methods
.method constructor <init>(Lkg/d0;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkg/d0$b;->d:Lkg/d0;

    invoke-direct {p0}, Lug/n;-><init>()V

    .line 2
    iput-boolean p2, p0, Lkg/d0$b;->c:Z

    return-void
.end method

.method private p([Lkg/v;)Lkg/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lkg/v<",
            "TT;>;)",
            "Lkg/v<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget-object v0, p1, v0

    const/4 v1, 0x1

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 4
    aget-object v2, p1, v1

    .line 5
    iget-object v3, v2, Lkg/v;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget-object v4, v0, Lkg/v;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-ge v3, v4, :cond_1

    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lkg/d0$b;->o()Lkg/b0;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lkg/b0;

    invoke-virtual {p0, p1}, Lkg/d0$b;->q(Lkg/b0;)V

    return-void
.end method

.method protected declared-synchronized o()Lkg/b0;
    .locals 13

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lkg/d0$b;->d:Lkg/d0;

    invoke-static {v0}, Lkg/d0;->t(Lkg/d0;)[Lkg/v;

    move-result-object v0

    invoke-direct {p0, v0}, Lkg/d0$b;->p([Lkg/v;)Lkg/v;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lkg/d0$b;->d:Lkg/d0;

    invoke-static {v0}, Lkg/d0;->u(Lkg/d0;)[Lkg/v;

    move-result-object v0

    invoke-direct {p0, v0}, Lkg/d0$b;->p([Lkg/v;)Lkg/v;

    move-result-object v3

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 4
    iget-boolean v1, p0, Lkg/d0$b;->c:Z

    if-nez v1, :cond_1

    instance-of v0, v0, Lug/p;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lkg/b0;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lkg/b0;-><init>(Lkg/v;Lkg/v;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 6
    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Lkg/b0;

    iget-object v1, p0, Lkg/d0$b;->d:Lkg/d0;

    .line 7
    invoke-static {v1}, Lkg/d0;->v(Lkg/d0;)I

    move-result v4

    iget-object v1, p0, Lkg/d0$b;->d:Lkg/d0;

    invoke-static {v1}, Lkg/d0;->w(Lkg/d0;)I

    move-result v5

    sget v6, Lkg/d0;->u:I

    .line 8
    invoke-static {}, Lkg/d0;->x()I

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lkg/b0;-><init>(Lkg/v;Lkg/v;IIII)V

    .line 9
    invoke-static {}, Lkg/d0;->y()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 10
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/d0;->e()Lug/j;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 11
    iget-object v1, p0, Lkg/d0$b;->d:Lkg/d0;

    invoke-static {v1}, Lkg/d0;->z(Lkg/d0;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-static {}, Lkg/d0;->y()J

    move-result-wide v8

    .line 12
    invoke-static {}, Lkg/d0;->y()J

    move-result-wide v10

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    invoke-interface/range {v6 .. v12}, Lug/l;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lug/d0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected q(Lkg/b0;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lkg/b0;->m(Z)V

    return-void
.end method
