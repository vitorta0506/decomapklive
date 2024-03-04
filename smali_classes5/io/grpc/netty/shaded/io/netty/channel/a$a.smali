.class public abstract Lio/grpc/netty/shaded/io/netty/channel/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "a"
.end annotation


# instance fields
.field private volatile a:Lio/grpc/netty/shaded/io/netty/channel/s;

.field private b:Lio/grpc/netty/shaded/io/netty/channel/v0$c;

.field private c:Z

.field private d:Z

.field final synthetic e:Lio/grpc/netty/shaded/io/netty/channel/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/a;

    return-void
.end method

.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/s;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/s;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/s;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->d:Z

    return-void
.end method

.method static synthetic d(Lio/grpc/netty/shaded/io/netty/channel/a$a;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->o(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method static synthetic e(Lio/grpc/netty/shaded/io/netty/channel/a$a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->q(Z)V

    return-void
.end method

.method static synthetic f(Lio/grpc/netty/shaded/io/netty/channel/a$a;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic g(Lio/grpc/netty/shaded/io/netty/channel/a$a;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->w(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method static synthetic h(Lio/grpc/netty/shaded/io/netty/channel/a$a;Lio/grpc/netty/shaded/io/netty/channel/w;Lio/grpc/netty/shaded/io/netty/channel/s;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->m(Lio/grpc/netty/shaded/io/netty/channel/w;Lio/grpc/netty/shaded/io/netty/channel/s;Ljava/lang/Throwable;)V

    return-void
.end method

.method private j()V
    .locals 0

    return-void
.end method

.method private k(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;Ljava/nio/channels/ClosedChannelException;Z)V
    .locals 10

    .line 1
    invoke-interface {p1}, Lug/x;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->Y(Lio/grpc/netty/shaded/io/netty/channel/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/channel/a;->A(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/a$e;

    move-result-object p2

    invoke-virtual {p2}, Lug/h;->isDone()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->y(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of p2, p1, Lio/grpc/netty/shaded/io/netty/channel/e1;

    if-nez p2, :cond_2

    .line 6
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/channel/a;->A(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/a$e;

    move-result-object p2

    new-instance p3, Lio/grpc/netty/shaded/io/netty/channel/a$a$d;

    invoke-direct {p3, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a$d;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a$a;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    invoke-virtual {p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/f0;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    :cond_2
    :goto_0
    return-void

    .line 7
    :cond_3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->Z(Lio/grpc/netty/shaded/io/netty/channel/a;Z)Z

    .line 8
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v8

    .line 9
    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/s;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/s;

    .line 11
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->v()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    new-instance v9, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p4

    move-object v7, p3

    invoke-direct/range {v1 .. v8}, Lio/grpc/netty/shaded/io/netty/channel/a$a$e;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a$a;Lio/grpc/netty/shaded/io/netty/channel/y;Lio/grpc/netty/shaded/io/netty/channel/s;Ljava/lang/Throwable;ZLjava/nio/channels/ClosedChannelException;Z)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 13
    :cond_4
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->o(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    .line 14
    invoke-virtual {v4, p2, p4}, Lio/grpc/netty/shaded/io/netty/channel/s;->k(Ljava/lang/Throwable;Z)V

    .line 15
    invoke-virtual {v4, p3}, Lio/grpc/netty/shaded/io/netty/channel/s;->f(Ljava/nio/channels/ClosedChannelException;)V

    .line 16
    :cond_5
    iget-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->c:Z

    if-eqz p1, :cond_6

    .line 17
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/a$a$f;

    invoke-direct {p1, p0, v8}, Lio/grpc/netty/shaded/io/netty/channel/a$a$f;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a$a;Z)V

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->t(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 18
    :cond_6
    invoke-direct {p0, v8}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->q(Z)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v4, :cond_7

    .line 19
    invoke-virtual {v4, p2, p4}, Lio/grpc/netty/shaded/io/netty/channel/s;->k(Ljava/lang/Throwable;Z)V

    .line 20
    invoke-virtual {v4, p3}, Lio/grpc/netty/shaded/io/netty/channel/s;->f(Ljava/nio/channels/ClosedChannelException;)V

    .line 21
    :cond_7
    throw p1
.end method

.method private m(Lio/grpc/netty/shaded/io/netty/channel/w;Lio/grpc/netty/shaded/io/netty/channel/s;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->k(Ljava/lang/Throwable;Z)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, p3, v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->e(Ljava/lang/Throwable;Z)V

    .line 3
    sget-object p2, Lng/c;->a:Lng/c;

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/w;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/w;

    return-void
.end method

.method private n(Lio/grpc/netty/shaded/io/netty/channel/y;Z)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lug/x;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->e(Lio/grpc/netty/shaded/io/netty/channel/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->y(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;

    invoke-direct {v0, p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a$g;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a$a;ZLio/grpc/netty/shaded/io/netty/channel/y;)V

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->t(Ljava/lang/Runnable;)V

    return-void
.end method

.method private o(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->h0()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->A(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/a$e;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a$e;->n0()Z

    .line 3
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->y(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->A(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/a$e;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/a$e;->n0()Z

    .line 5
    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->x(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private q(Z)V
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->n(Lio/grpc/netty/shaded/io/netty/channel/y;Z)V

    return-void
.end method

.method private t(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/a;->t()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    const-string v1, "Can\'t invoke task later as EventLoop rejected it"

    invoke-interface {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private u(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/nio/channels/ClosedChannelException;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/a$a;

    .line 2
    invoke-static {v0, p2}, Lio/grpc/netty/shaded/io/netty/channel/c1;->a(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/c1;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Ljava/nio/channels/ClosedChannelException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object p2
.end method

.method private w(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-interface {p1}, Lug/x;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->p(Lio/grpc/netty/shaded/io/netty/channel/y;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->d:Z

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->l0()V

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->d:Z

    .line 5
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/a;->h(Lio/grpc/netty/shaded/io/netty/channel/a;Z)Z

    .line 6
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->C(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->v1()V

    .line 7
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->y(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    .line 8
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->C(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/e0;->n1()Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 9
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->C(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->q()Lio/grpc/netty/shaded/io/netty/channel/w;

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->T()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 13
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->V()V

    .line 14
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->A(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/a$e;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/a$e;->n0()Z

    .line 15
    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->x(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private z(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lug/x;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/s;

    if-nez v0, :cond_1

    .line 3
    new-instance p2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/s;

    const-string v1, "Channel output shutdown"

    if-nez p2, :cond_2

    .line 5
    new-instance p2, Lio/grpc/netty/shaded/io/netty/channel/socket/ChannelOutputShutdownException;

    invoke-direct {p2, v1}, Lio/grpc/netty/shaded/io/netty/channel/socket/ChannelOutputShutdownException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lio/grpc/netty/shaded/io/netty/channel/socket/ChannelOutputShutdownException;

    invoke-direct {v2, v1, p2}, Lio/grpc/netty/shaded/io/netty/channel/socket/ChannelOutputShutdownException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p2, v2

    .line 6
    :goto_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->v()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 7
    new-instance v2, Lio/grpc/netty/shaded/io/netty/channel/a$a$c;

    invoke-direct {v2, p0, p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/channel/a$a$c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a$a;Lio/grpc/netty/shaded/io/netty/channel/y;Lio/grpc/netty/shaded/io/netty/channel/s;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 8
    :cond_3
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->o0()V

    .line 9
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->m()Lio/grpc/netty/shaded/io/netty/channel/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    invoke-interface {p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :goto_1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/a;->C(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object p1

    invoke-direct {p0, p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->m(Lio/grpc/netty/shaded/io/netty/channel/w;Lio/grpc/netty/shaded/io/netty/channel/s;Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->C(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->m(Lio/grpc/netty/shaded/io/netty/channel/w;Lio/grpc/netty/shaded/io/netty/channel/s;Ljava/lang/Throwable;)V

    .line 12
    throw p1
.end method


# virtual methods
.method public final H()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->B0()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final K()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->v0()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public L(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->j()V

    .line 2
    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/a;

    const-string v1, "close(ChannelPromise)"

    .line 3
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/c1;->a(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/channel/c1;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, p1, v0, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->k(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;Ljava/nio/channels/ClosedChannelException;Z)V

    return-void
.end method

.method public final M(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->j()V

    .line 2
    invoke-interface {p1}, Lug/x;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->j0()V

    .line 5
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/a;->V(Lio/grpc/netty/shaded/io/netty/channel/a;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    .line 6
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/a;->X(Lio/grpc/netty/shaded/io/netty/channel/a;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/a$a$b;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a$a;)V

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->t(Ljava/lang/Runnable;)V

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->y(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    .line 10
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->l()V

    return-void

    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->x(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->l()V

    return-void
.end method

.method public final N()Lio/grpc/netty/shaded/io/netty/channel/y;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->j()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->r(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/e1;

    move-result-object v0

    return-object v0
.end method

.method public R()Lio/grpc/netty/shaded/io/netty/channel/v0$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->b:Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->m()Lio/grpc/netty/shaded/io/netty/channel/v0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v0;->a()Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->b:Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->b:Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    return-object v0
.end method

.method public final S()Lio/grpc/netty/shaded/io/netty/channel/s;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/s;

    return-object v0
.end method

.method public final T()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->j()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->g0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/a$a$h;

    invoke-direct {v1, p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a$h;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a$a;Ljava/lang/Exception;)V

    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->t(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    :goto_0
    return-void
.end method

.method public final U(Lio/grpc/netty/shaded/io/netty/channel/l0;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 3

    const-string v0, "eventLoop"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "registered to an event loop already"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a;->u0(Lio/grpc/netty/shaded/io/netty/channel/l0;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incompatible event loop type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-interface {p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a;->j(Lio/grpc/netty/shaded/io/netty/channel/a;Lio/grpc/netty/shaded/io/netty/channel/l0;)Lio/grpc/netty/shaded/io/netty/channel/l0;

    .line 9
    invoke-interface {p1}, Lug/j;->Y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->w(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 11
    :cond_2
    :try_start_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/a$a$a;

    invoke-direct {v0, p0, p2}, Lio/grpc/netty/shaded/io/netty/channel/a$a$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a$a;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/a;->t()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    const-string v2, "Force-closing a channel whose registration task was not accepted by an event loop: {}"

    invoke-interface {v0, v2, v1, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->V()V

    .line 14
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->A(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/a$e;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a$e;->n0()Z

    .line 15
    invoke-virtual {p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->x(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final V()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->j()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->h0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/a;->t()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v1

    const-string v2, "Failed to close a channel."

    invoke-interface {v1, v2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 2

    const-string v0, "write(Object, ChannelPromise)"

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->j()V

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/s;

    if-nez v1, :cond_0

    .line 3
    :try_start_0
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    .line 5
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/a;->l(Lio/grpc/netty/shaded/io/netty/channel/a;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->u(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/nio/channels/ClosedChannelException;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->x(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    .line 7
    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->l(Lio/grpc/netty/shaded/io/netty/channel/a;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->u(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/nio/channels/ClosedChannelException;

    move-result-object v0

    .line 8
    invoke-virtual {p0, p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->x(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V

    .line 9
    throw p1

    .line 10
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a;->r0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->C(Lio/grpc/netty/shaded/io/netty/channel/a;)Lio/grpc/netty/shaded/io/netty/channel/e0;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/e0;->k1()Lio/grpc/netty/shaded/io/netty/channel/r0$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/r0$a;->size(Ljava/lang/Object;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 12
    :cond_1
    invoke-virtual {v1, p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/channel/s;->b(Ljava/lang/Object;ILio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void

    :catchall_1
    move-exception v0

    .line 13
    :try_start_2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/r;->a(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 14
    invoke-virtual {p0, p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->x(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->x(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V

    .line 15
    throw p1
.end method

.method public final flush()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->j()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/s;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->a()V

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->r()V

    return-void
.end method

.method protected final i(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Ljava/lang/Throwable;
    .locals 1

    .line 1
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/a$b;

    check-cast p1, Ljava/net/ConnectException;

    invoke-direct {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/a$b;-><init>(Ljava/net/ConnectException;Ljava/net/SocketAddress;)V

    return-object v0

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/a$c;

    check-cast p1, Ljava/net/NoRouteToHostException;

    invoke-direct {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/a$c;-><init>(Ljava/net/NoRouteToHostException;Ljava/net/SocketAddress;)V

    return-object v0

    .line 5
    :cond_1
    instance-of v0, p1, Ljava/net/SocketException;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/a$d;

    check-cast p1, Ljava/net/SocketException;

    invoke-direct {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/a$d;-><init>(Ljava/net/SocketException;Ljava/net/SocketAddress;)V

    return-object v0

    :cond_2
    return-object p1
.end method

.method protected final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method protected final p(Lio/grpc/netty/shaded/io/netty/channel/y;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->l(Lio/grpc/netty/shaded/io/netty/channel/a;)Ljava/lang/Throwable;

    move-result-object v0

    const-string v1, "ensureOpen(ChannelPromise)"

    invoke-direct {p0, v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->u(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/nio/channels/ClosedChannelException;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->x(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected r()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->a:Lio/grpc/netty/shaded/io/netty/channel/s;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->c:Z

    .line 5
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    .line 6
    :try_start_0
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/s;->p()Z

    move-result v2

    if-nez v2, :cond_3

    .line 7
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/channel/e;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    new-instance v2, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    invoke-virtual {v0, v2, v1}, Lio/grpc/netty/shaded/io/netty/channel/s;->k(Ljava/lang/Throwable;Z)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->l(Lio/grpc/netty/shaded/io/netty/channel/a;)Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "flush0()"

    invoke-direct {p0, v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->u(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/nio/channels/ClosedChannelException;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lio/grpc/netty/shaded/io/netty/channel/s;->k(Ljava/lang/Throwable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :cond_3
    :goto_0
    iput-boolean v3, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->c:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->c:Z

    .line 11
    throw v0

    .line 12
    :cond_4
    :try_start_1
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-virtual {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->p0(Lio/grpc/netty/shaded/io/netty/channel/s;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    :goto_1
    iput-boolean v3, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->c:Z

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 14
    :try_start_2
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->s(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :goto_2
    return-void

    :catchall_2
    move-exception v0

    .line 15
    iput-boolean v3, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->c:Z

    .line 16
    throw v0

    :cond_5
    :goto_3
    return-void
.end method

.method protected final s(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    instance-of v0, p1, Ljava/io/IOException;

    const/4 v1, 0x0

    const-string v2, "flush0()"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/f;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a;->o(Lio/grpc/netty/shaded/io/netty/channel/a;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    invoke-direct {p0, p1, v2}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->u(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/nio/channels/ClosedChannelException;

    move-result-object v2

    invoke-direct {p0, v0, p1, v2, v1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->k(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;Ljava/nio/channels/ClosedChannelException;Z)V

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->z(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/channel/a$a;->e:Lio/grpc/netty/shaded/io/netty/channel/a;

    invoke-static {v3, p1}, Lio/grpc/netty/shaded/io/netty/channel/a;->o(Lio/grpc/netty/shaded/io/netty/channel/a;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 6
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v3

    invoke-direct {p0, p1, v2}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->u(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/nio/channels/ClosedChannelException;

    move-result-object p1

    invoke-direct {p0, v3, v0, p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->k(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;Ljava/nio/channels/ClosedChannelException;Z)V

    :goto_0
    return-void
.end method

.method protected v()Ljava/util/concurrent/Executor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final x(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/channel/e1;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lug/x;->z(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/a;->t()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    const-string v1, "Failed to mark a promise as failure because it\'s done already: {}"

    invoke-interface {v0, v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected final y(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/channel/e1;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->I()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/channel/a;->t()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    const-string v1, "Failed to mark a promise as success because it is done already: {}"

    invoke-interface {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
