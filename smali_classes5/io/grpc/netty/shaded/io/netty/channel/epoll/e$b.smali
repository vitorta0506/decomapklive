.class final Lio/grpc/netty/shaded/io/netty/channel/epoll/e$b;
.super Lio/grpc/netty/shaded/io/netty/channel/epoll/c$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/epoll/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic l:Lio/grpc/netty/shaded/io/netty/channel/epoll/e;


# direct methods
.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e$b;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/e;

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/e;Lio/grpc/netty/shaded/io/netty/channel/epoll/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/e$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/e;)V

    return-void
.end method

.method private b0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e$b;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/e;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->A()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e$b;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/e;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;->s1()Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->Y()Lio/grpc/netty/shaded/io/netty/channel/epoll/j;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e$b;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/e;

    sget v3, Lio/grpc/netty/shaded/io/netty/channel/epoll/Native;->e:I

    invoke-virtual {v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->Y0(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->m(Z)V

    .line 6
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e$b;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/e;

    invoke-virtual {v2}, Lio/grpc/netty/shaded/io/netty/channel/a;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->c(Lio/grpc/netty/shaded/io/netty/channel/f;)V

    .line 8
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->D()V

    .line 9
    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e$b;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/e;

    iget-object v3, v3, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->s:Lio/grpc/netty/shaded/io/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v3}, Lio/grpc/netty/shaded/io/netty/channel/unix/Socket;->J()I

    move-result v3

    invoke-virtual {v1, v3}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->h(I)V

    .line 10
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->k()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 11
    invoke-virtual {v1, v3}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->e(I)V

    const/4 v3, 0x0

    .line 12
    iput-boolean v3, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->f:Z

    .line 13
    new-instance v3, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->k()I

    move-result v4

    invoke-direct {v3, v4}, Lio/grpc/netty/shaded/io/netty/channel/unix/FileDescriptor;-><init>(I)V

    invoke-interface {v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/w;->p(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 14
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/j;->g()Z

    move-result v3

    if-nez v3, :cond_1

    .line 15
    :cond_2
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->d()V

    .line 16
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/channel/w;->k()Lio/grpc/netty/shaded/io/netty/channel/w;

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->E(Lio/grpc/netty/shaded/io/netty/channel/f;)V

    return-void

    :catchall_0
    move-exception v3

    .line 19
    :try_start_1
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/v0$a;->d()V

    .line 20
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/channel/w;->k()Lio/grpc/netty/shaded/io/netty/channel/w;

    .line 21
    invoke-interface {v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/w;->v(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    :goto_0
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->E(Lio/grpc/netty/shaded/io/netty/channel/f;)V

    return-void

    :catchall_1
    move-exception v1

    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->E(Lio/grpc/netty/shaded/io/netty/channel/f;)V

    .line 23
    throw v1
.end method


# virtual methods
.method F()V
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e$a;->a:[I

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/e$b;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/e;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/e;->s1()Lio/grpc/netty/shaded/io/netty/channel/epoll/f;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/f;->W()Lio/grpc/netty/shaded/io/netty/channel/unix/DomainSocketReadMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/e$b;->b0()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 4
    :cond_1
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$c;->F()V

    :goto_0
    return-void
.end method
