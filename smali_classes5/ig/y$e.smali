.class Lig/y$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/y;->p1(Lio/grpc/netty/shaded/io/netty/channel/m;Lig/j0;Lio/grpc/netty/shaded/io/netty/channel/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/internal/v0;

.field final synthetic b:Lig/y;


# direct methods
.method constructor <init>(Lig/y;Lio/grpc/internal/v0;)V
    .locals 0

    iput-object p1, p0, Lig/y$e;->b:Lig/y;

    iput-object p2, p0, Lig/y$e;->a:Lio/grpc/internal/v0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lug/q;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lig/y$e;->b:Lig/y;

    invoke-static {p1}, Lig/y;->T0(Lig/y;)Lio/grpc/internal/p2;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/p2;->b()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lig/y$e;->b:Lig/y;

    invoke-static {v0}, Lig/y;->G0(Lig/y;)Lig/d;

    move-result-object v0

    invoke-virtual {v0}, Lig/d;->b()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    sget-object v0, Lio/grpc/Status;->h:Lio/grpc/Status;

    const-string v1, "Ping failed but for unknown reason."

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 7
    invoke-interface {p1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/Status;->c()Lio/grpc/StatusException;

    move-result-object v0

    .line 8
    :cond_1
    iget-object p1, p0, Lig/y$e;->a:Lio/grpc/internal/v0;

    invoke-virtual {p1, v0}, Lio/grpc/internal/v0;->f(Ljava/lang/Throwable;)V

    .line 9
    iget-object p1, p0, Lig/y$e;->b:Lig/y;

    invoke-static {p1}, Lig/y;->H0(Lig/y;)Lio/grpc/internal/v0;

    move-result-object p1

    iget-object v0, p0, Lig/y$e;->a:Lio/grpc/internal/v0;

    if-ne p1, v0, :cond_2

    .line 10
    iget-object p1, p0, Lig/y$e;->b:Lig/y;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lig/y;->I0(Lig/y;Lio/grpc/internal/v0;)Lio/grpc/internal/v0;

    :cond_2
    :goto_0
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

    invoke-virtual {p0, p1}, Lig/y$e;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method
