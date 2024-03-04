.class final Lio/grpc/netty/shaded/io/netty/channel/epoll/o$b;
.super Lio/grpc/netty/shaded/io/netty/channel/epoll/c$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/channel/epoll/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic l:Lio/grpc/netty/shaded/io/netty/channel/epoll/o;


# direct methods
.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o$b;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c$c;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/c;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/o;Lio/grpc/netty/shaded/io/netty/channel/epoll/o$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/o$b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/o;)V

    return-void
.end method


# virtual methods
.method protected v()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o$b;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/c;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o$b;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/o;->s1()Lio/grpc/netty/shaded/io/netty/channel/epoll/p;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/p;->h()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o$b;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/o$b;->l:Lio/grpc/netty/shaded/io/netty/channel/epoll/o;

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/h;->q1(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)V

    .line 3
    sget-object v0, Lug/s;->q:Lug/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
