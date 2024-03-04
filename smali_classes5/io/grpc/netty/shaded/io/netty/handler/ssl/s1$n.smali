.class final Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "n"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/Runnable;

.field final synthetic c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n$a;

    invoke-direct {p1, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->b:Ljava/lang/Runnable;

    .line 3
    iput-boolean p2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->a:Z

    return-void
.end method

.method static synthetic b(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->f()V

    return-void
.end method

.method static synthetic c(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->h(Ljava/lang/Throwable;)V

    return-void
.end method

.method private d(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lug/j;->Y()Z

    move-result v1

    const/16 v2, 0x80

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->R(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;I)V

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->h(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n$c;

    invoke-direct {v1, p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->R(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;I)V

    .line 7
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->R(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;I)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 3
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$b;->a:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 4
    :try_start_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->W(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;)I
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 5
    :try_start_2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->j()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 6
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->N(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 8
    :cond_1
    :try_start_3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->a0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->a:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->W(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;)I

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->P(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    :try_start_4
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->j()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->i(Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->T(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 14
    :try_start_5
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v1

    iget-boolean v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->a:Z

    invoke-static {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->U(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 15
    :try_start_6
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->a:Z

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->W(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;)I

    .line 17
    :cond_4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->P(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 18
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->j()V

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 19
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->i(Ljava/lang/Throwable;)V

    return-void

    .line 20
    :cond_5
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->S(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    .line 21
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->h(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private h(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v1

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->k(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->a(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/m;

    :goto_0
    return-void
.end method

.method private i(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->a:Z

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->N(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->h(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->O(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->P(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    :goto_0
    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v1

    sget-object v2, Lkg/s0;->d:Lkg/j;

    invoke-virtual {v0, v1, v2}, Lpg/a;->h(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    :try_start_1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->h(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Q(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v2

    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->Q(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 4
    throw v0
.end method

.method private k(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->a:Z

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method


# virtual methods
.method g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->n0(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object v0

    .line 2
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n$b;

    invoke-direct {v1, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->c:Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;->M(Lio/grpc/netty/shaded/io/netty/handler/ssl/s1;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v1, v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/d;

    .line 4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s1$n;->d(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
