.class Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->Q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$c;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$c;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->I0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Lug/q;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$c;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->I0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;)Lug/q;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lug/q;->cancel(Z)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$c;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    iget-object p1, p1, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;->j:Lio/grpc/netty/shaded/io/netty/channel/epoll/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a;->F0(Lio/grpc/netty/shaded/io/netty/channel/epoll/a;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 5
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$c;->a:Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->N()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/a$a;->L(Lio/grpc/netty/shaded/io/netty/channel/y;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic e(Lug/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/i;

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/epoll/a$c$c;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method
