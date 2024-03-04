.class public abstract Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;
.super Lio/grpc/netty/shaded/io/netty/channel/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/epoll/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "c"
.end annotation


# instance fields
.field f:Z

.field g:Z

.field private h:Lio/grpc/netty/shaded/io/netty/channel/epoll/j;

.field private final i:Ljava/lang/Runnable;

.field final synthetic j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    return-void
.end method

.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/a;)V

    .line 2
    new-instance p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$a;

    invoke-direct {p1, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->i:Ljava/lang/Runnable;

    return-void
.end method

.method private B()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    sget v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->d:I

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->P0(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/w;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    :goto_0
    return-void
.end method

.method private C()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    sget v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->c:I

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->P0(I)V

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->G0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->G0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    iget-object v2, v2, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->K()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-static {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/unix/h;->a(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->L0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    .line 5
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->H0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    const/4 v0, 0x1

    return v0

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    sget v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->c:I

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->e1(I)V

    const/4 v0, 0x0

    return v0
.end method

.method private O(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/w;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method private P(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V
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

.method private W(Lio/grpc/netty/shaded/io/netty/channel/y;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->B:Z

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->isActive()Z

    move-result v0

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->I()Z

    move-result p1

    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    .line 4
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/a;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p2

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/w;->q()Lio/grpc/netty/shaded/io/netty/channel/w;

    :cond_1
    if-nez p1, :cond_2

    .line 5
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    :cond_2
    return-void
.end method

.method private b()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->isActive()Z

    move-result v2

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->C()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->E0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->W(Lio/grpc/netty/shaded/io/netty/channel/y;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->I0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Lug/q;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    :goto_0
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->I0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Lug/q;

    move-result-object v2

    invoke-interface {v2, v0}, Lug/q;->cancel(Z)Z

    .line 6
    :cond_1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->F0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/y;

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 7
    :try_start_1
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->E0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {v4}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->G0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Ljava/net/SocketAddress;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->i(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->P(Lio/grpc/netty/shaded/io/netty/channel/y;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->I0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Lug/q;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v2

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->I0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Lug/q;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->I0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Lug/q;

    move-result-object v3

    invoke-interface {v3, v0}, Lug/q;->cancel(Z)Z

    .line 10
    :cond_2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->F0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 11
    throw v2
.end method


# virtual methods
.method protected final A()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->f:Z

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    sget v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->b:I

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->P0(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/w;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/a;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    :goto_0
    return-void
.end method

.method final D()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->g:Z

    return-void
.end method

.method final E(Lio/grpc/netty/shaded/io/netty/channel/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->h:Lio/grpc/netty/shaded/io/netty/channel/epoll/j;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->o()Z

    move-result v0

    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->g:Z

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->h:Lio/grpc/netty/shaded/io/netty/channel/epoll/j;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->g:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/f;->l()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->N0()V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->J(Lio/grpc/netty/shaded/io/netty/channel/f;)V

    :cond_2
    :goto_1
    return-void
.end method

.method abstract F()V
.end method

.method final G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->E0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->b()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->C()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->r()V

    :cond_1
    :goto_0
    return-void
.end method

.method final I()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->Y()Lio/grpc/netty/shaded/io/netty/channel/epoll/j;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->p()V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->F()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->Z(Z)V

    .line 5
    :goto_0
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->B()V

    return-void
.end method

.method final J(Lio/grpc/netty/shaded/io/netty/channel/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    iget-boolean v1, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->A:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->f1(Lio/grpc/netty/shaded/io/netty/channel/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->A:Z

    .line 3
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/a;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->i:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V
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
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->E0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->isActive()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {v1, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->R0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-direct {p0, p3, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->W(Lio/grpc/netty/shaded/io/netty/channel/y;Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->F0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 7
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->H0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;

    .line 8
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/channel/c0;->c()I

    move-result p2

    if-lez p2, :cond_2

    .line 9
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v1

    new-instance v2, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$b;

    invoke-direct {v2, p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;Ljava/net/SocketAddress;)V

    int-to-long v3, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4, p2}, Lug/l;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lug/d0;

    move-result-object p2

    invoke-static {v0, p2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->K0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Lug/q;)Lug/q;

    .line 10
    :cond_2
    new-instance p2, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$c;

    invoke-direct {p2, p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;)V

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
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->l()V

    .line 13
    invoke-virtual {p0, p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->i(Ljava/lang/Throwable;Ljava/net/SocketAddress;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p3, p1}, Lug/x;->z(Ljava/lang/Throwable;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic R()Lio/grpc/netty/shaded/io/netty/channel/v0$c;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->Y()Lio/grpc/netty/shaded/io/netty/channel/epoll/j;

    move-result-object v0

    return-object v0
.end method

.method X(Lio/grpc/netty/shaded/io/netty/channel/v0$b;)Lio/grpc/netty/shaded/io/netty/channel/epoll/j;
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;-><init>(Lio/grpc/netty/shaded/io/netty/channel/v0$b;)V

    return-object v0
.end method

.method public Y()Lio/grpc/netty/shaded/io/netty/channel/epoll/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->h:Lio/grpc/netty/shaded/io/netty/channel/epoll/j;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->R()Lio/grpc/netty/shaded/io/netty/channel/v0$c;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/v0$b;

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->X(Lio/grpc/netty/shaded/io/netty/channel/v0$b;)Lio/grpc/netty/shaded/io/netty/channel/epoll/j;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->h:Lio/grpc/netty/shaded/io/netty/channel/epoll/j;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->h:Lio/grpc/netty/shaded/io/netty/channel/epoll/j;

    return-object v0
.end method

.method Z(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->A()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->D0(Lio/grpc/netty/shaded/io/netty/channel/f;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->X(ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/NotYetConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->N0()V

    .line 5
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/a;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p1

    sget-object v0, Lng/a;->a:Lng/a;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/w;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/w;

    goto :goto_0

    .line 6
    :catch_1
    sget-object p1, Lng/a;->a:Lng/a;

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->O(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    iput-boolean v1, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->z:Z

    .line 9
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/a;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p1

    sget-object v0, Lng/b;->a:Lng/b;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/w;->s(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/w;

    :cond_2
    :goto_0
    return-void
.end method

.method protected final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    sget v1, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->c:I

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Y0(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->r()V

    :cond_0
    return-void
.end method
