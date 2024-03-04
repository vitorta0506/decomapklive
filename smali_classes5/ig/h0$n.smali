.class final Lig/h0$n;
.super Lig/h0$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "n"
.end annotation


# instance fields
.field f:Z


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/ChannelLogger;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lig/h0$k;-><init>(Lio/grpc/netty/shaded/io/netty/channel/k;Lio/grpc/ChannelLogger;)V

    return-void
.end method

.method private z(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lig/h0$k;->u()Lig/f0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lig/f0;->a()Lio/grpc/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/a;->d()Lio/grpc/a$b;

    move-result-object v1

    sget-object v2, Lio/grpc/a0;->b:Lio/grpc/a$c;

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/channel/e;->K()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v1

    sget-object v2, Lio/grpc/a0;->a:Lio/grpc/a$c;

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/e;->H()Ljava/net/SocketAddress;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object p1

    sget-object v1, Lio/grpc/internal/r0;->a:Lio/grpc/a$c;

    sget-object v2, Lio/grpc/SecurityLevel;->NONE:Lio/grpc/SecurityLevel;

    .line 5
    invoke-virtual {p1, v1, v2}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lig/f0;->c(Lio/grpc/a;)Lig/f0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lig/h0$k;->x(Lig/f0;)V

    return-void
.end method


# virtual methods
.method public D(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lig/h0$n;->f:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lig/h0$n;->z(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 3
    invoke-virtual {p0, p1}, Lig/h0$k;->s(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/channel/p;->D(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method protected w(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lig/h0$n;->f:Z

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lig/h0$n;->z(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 4
    invoke-virtual {p0, p1}, Lig/h0$k;->s(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    :cond_0
    return-void
.end method
