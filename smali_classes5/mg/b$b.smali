.class public abstract Lmg/b$b;
.super Lio/grpc/netty/shaded/io/netty/channel/a$a;
.source "SourceFile"

# interfaces
.implements Lmg/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "b"
.end annotation


# instance fields
.field final synthetic f:Lmg/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmg/b;

    return-void
.end method

.method protected constructor <init>(Lmg/b;)V
    .locals 0

    iput-object p1, p0, Lmg/b$b;->f:Lmg/b;

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a;)V

    return-void
.end method

.method private A(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1, p2}, Lug/x;->z(Ljava/lang/Throwable;)Z

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->l()V

    return-void
.end method

.method private B(Lio/grpc/netty/shaded/io/netty/channel/y;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lmg/b$b;->f:Lmg/b;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v0

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->I()Z

    move-result p1

    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    .line 3
    iget-object p2, p0, Lmg/b$b;->f:Lmg/b;

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/a;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p2

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/w;->q()Lio/grpc/netty/shaded/io/netty/channel/w;

    :cond_1
    if-nez p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    :cond_2
    return-void
.end method

.method private C()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lmg/b$b;->f:Lmg/b;

    invoke-virtual {v0}, Lmg/b;->T0()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected final D()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmg/b$b;->f:Lmg/b;

    invoke-virtual {v0}, Lmg/b;->T0()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    .line 4
    iget-object v2, p0, Lmg/b$b;->f:Lmg/b;

    iget v2, v2, Lmg/b;->t:I

    and-int v3, v1, v2

    if-eqz v3, :cond_1

    not-int v2, v2

    and-int/2addr v1, v2

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_1
    return-void
.end method

.method public final Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 5

    .line 1
    invoke-interface {p3}, Lug/x;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p3}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->p(Lio/grpc/netty/shaded/io/netty/channel/y;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmg/b$b;->f:Lmg/b;

    invoke-static {v0}, Lmg/b;->E0(Lmg/b;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lmg/b$b;->f:Lmg/b;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lmg/b$b;->f:Lmg/b;

    invoke-virtual {v1, p1, p2}, Lmg/b;->N0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-direct {p0, p3, v0}, Lmg/b$b;->B(Lio/grpc/netty/shaded/io/netty/channel/y;Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lmg/b$b;->f:Lmg/b;

    invoke-static {p2, p3}, Lmg/b;->F0(Lmg/b;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 7
    iget-object p2, p0, Lmg/b$b;->f:Lmg/b;

    invoke-static {p2, p1}, Lmg/b;->H0(Lmg/b;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    .line 8
    iget-object p2, p0, Lmg/b$b;->f:Lmg/b;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object p2

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/f;->c()I

    move-result p2

    if-lez p2, :cond_2

    .line 9
    iget-object v0, p0, Lmg/b$b;->f:Lmg/b;

    invoke-virtual {v0}, Lmg/b;->Q0()Lmg/d;

    move-result-object v1

    new-instance v2, Lmg/b$b$a;

    invoke-direct {v2, p0, p1}, Lmg/b$b$a;-><init>(Lmg/b$b;Ljava/net/SocketAddress;)V

    int-to-long v3, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p2}, Lug/d;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lug/d0;

    move-result-object p2

    invoke-static {v0, p2}, Lmg/b;->K0(Lmg/b;Lug/q;)Lug/q;

    .line 10
    :cond_2
    new-instance p2, Lmg/b$b$b;

    invoke-direct {p2, p0}, Lmg/b$b$b;-><init>(Lmg/b$b;)V

    invoke-interface {p3, p2}, Lio/grpc/netty/shaded/io/netty/channel/y;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    goto :goto_0

    .line 11
    :cond_3
    new-instance p2, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {p2}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p2

    .line 12
    invoke-virtual {p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->i(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lug/x;->z(Ljava/lang/Throwable;)Z

    .line 13
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->l()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a()V
    .locals 0

    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->r()V

    return-void
.end method

.method public final b()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lmg/b$b;->f:Lmg/b;

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v2

    .line 2
    iget-object v3, p0, Lmg/b$b;->f:Lmg/b;

    invoke-virtual {v3}, Lmg/b;->P0()V

    .line 3
    iget-object v3, p0, Lmg/b$b;->f:Lmg/b;

    invoke-static {v3}, Lmg/b;->E0(Lmg/b;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lmg/b$b;->B(Lio/grpc/netty/shaded/io/netty/channel/y;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v2, p0, Lmg/b$b;->f:Lmg/b;

    invoke-static {v2}, Lmg/b;->I0(Lmg/b;)Lug/q;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    :goto_0
    iget-object v2, p0, Lmg/b$b;->f:Lmg/b;

    invoke-static {v2}, Lmg/b;->I0(Lmg/b;)Lug/q;

    move-result-object v2

    invoke-interface {v2, v0}, Lug/q;->cancel(Z)Z

    .line 6
    :cond_0
    iget-object v0, p0, Lmg/b$b;->f:Lmg/b;

    invoke-static {v0, v1}, Lmg/b;->F0(Lmg/b;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/y;

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 7
    :try_start_1
    iget-object v3, p0, Lmg/b$b;->f:Lmg/b;

    invoke-static {v3}, Lmg/b;->E0(Lmg/b;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v3

    iget-object v4, p0, Lmg/b$b;->f:Lmg/b;

    invoke-static {v4}, Lmg/b;->G0(Lmg/b;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->i(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lmg/b$b;->A(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    iget-object v2, p0, Lmg/b$b;->f:Lmg/b;

    invoke-static {v2}, Lmg/b;->I0(Lmg/b;)Lug/q;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v2

    iget-object v3, p0, Lmg/b$b;->f:Lmg/b;

    invoke-static {v3}, Lmg/b;->I0(Lmg/b;)Lug/q;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, p0, Lmg/b$b;->f:Lmg/b;

    invoke-static {v3}, Lmg/b;->I0(Lmg/b;)Lug/q;

    move-result-object v3

    invoke-interface {v3, v0}, Lug/q;->cancel(Z)Z

    .line 10
    :cond_1
    iget-object v0, p0, Lmg/b$b;->f:Lmg/b;

    invoke-static {v0, v1}, Lmg/b;->F0(Lmg/b;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 11
    throw v2
.end method

.method protected final r()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmg/b$b;->C()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->r()V

    :cond_0
    return-void
.end method
