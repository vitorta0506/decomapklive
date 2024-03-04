.class final Lio/grpc/netty/shaded/io/netty/channel/epoll/b$a;
.super Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/epoll/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final k:[B

.field final synthetic l:Lio/grpc/netty/shaded/io/netty/channel/epoll/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/b;

    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/b$a;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/b;

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V

    const/16 p1, 0x1a

    new-array p1, p1, [B

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/b$a;->k:[B

    return-void
.end method


# virtual methods
.method F()V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/b$a;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Q0()Lio/grpc/netty/shaded/io/netty/channel/epoll/d;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/b$a;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/b;

    invoke-virtual {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->f1(Lio/grpc/netty/shaded/io/netty/channel/f;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->A()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->Y()Lio/grpc/netty/shaded/io/netty/channel/epoll/j;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/b$a;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/b;

    sget v3, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->e:I

    invoke-virtual {v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Y0(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->m(Z)V

    .line 6
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/b$a;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/b;

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/channel/a;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->c(Lio/grpc/netty/shaded/io/netty/channel/f;)V

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v1, v3}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->b(I)V

    .line 9
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->D()V

    const/4 v4, 0x0

    .line 10
    :cond_1
    :try_start_0
    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/b$a;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/b;

    iget-object v5, v5, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/b$a;->k:[B

    invoke-virtual {v5, v6}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->q([B)I

    move-result v5

    invoke-virtual {v1, v5}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->h(I)V

    .line 11
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->k()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v1, v3}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->e(I)V

    const/4 v5, 0x0

    .line 13
    iput-boolean v5, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->f:Z

    .line 14
    iget-object v6, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/b$a;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/b;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->k()I

    move-result v7

    iget-object v8, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/b$a;->k:[B

    aget-byte v5, v8, v5

    invoke-virtual {v6, v7, v8, v3, v5}, Lio/grpc/netty/shaded/io/netty/channel/epoll/b;->g1(I[BII)Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v5

    invoke-interface {v2, v5}, Lio/grpc/netty/shaded/io/netty/channel/w;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 15
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->g()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v4, v3

    .line 16
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->d()V

    .line 17
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/channel/w;->k()Lio/grpc/netty/shaded/io/netty/channel/w;

    if-eqz v4, :cond_3

    .line 18
    invoke-interface {v2, v4}, Lio/grpc/netty/shaded/io/netty/channel/w;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    :cond_3
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->E(Lio/grpc/netty/shaded/io/netty/channel/f;)V

    return-void

    :catchall_1
    move-exception v1

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->E(Lio/grpc/netty/shaded/io/netty/channel/f;)V

    .line 20
    throw v1
.end method

.method public Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-interface {p3, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void
.end method
