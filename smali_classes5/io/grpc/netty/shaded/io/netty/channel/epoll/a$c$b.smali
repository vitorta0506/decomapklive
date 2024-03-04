.class Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/SocketAddress;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;Ljava/net/SocketAddress;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$b;->b:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$b;->a:Ljava/net/SocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$b;->b:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->E0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lio/grpc/netty/shaded/io/netty/channel/ConnectTimeoutException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connection timed out: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$b;->a:Ljava/net/SocketAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Lug/x;->z(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$b;->b:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    :cond_0
    return-void
.end method
