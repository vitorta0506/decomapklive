.class Lig/z$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/z$b;->b(Lio/grpc/s0;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lig/z$b;


# direct methods
.method constructor <init>(Lig/z$b;)V
    .locals 0

    iput-object p1, p0, Lig/z$b$a;->a:Lig/z$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lug/q;->p0()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lig/z$b$a;->a:Lig/z$b;

    iget-object v0, v0, Lig/z$b;->a:Lig/z;

    invoke-virtual {v0}, Lig/z;->I()Lig/z$c;

    move-result-object v0

    invoke-static {v0}, Lig/z$c;->Y(Lig/z$c;)Lig/y;

    move-result-object v0

    invoke-virtual {v0}, Lig/y;->b1()Lig/d;

    move-result-object v0

    invoke-virtual {v0}, Lig/d;->a()Lio/grpc/Status;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lig/z$b$a;->a:Lig/z$b;

    iget-object v0, v0, Lig/z$b;->a:Lig/z;

    invoke-virtual {v0}, Lig/z;->I()Lig/z$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lig/z$c;->e0(Lio/grpc/netty/shaded/io/netty/channel/i;)Lio/grpc/Status;

    move-result-object v0

    .line 4
    :cond_0
    iget-object p1, p0, Lig/z$b$a;->a:Lig/z$b;

    iget-object p1, p1, Lig/z$b;->a:Lig/z;

    invoke-virtual {p1}, Lig/z;->I()Lig/z$c;

    move-result-object p1

    invoke-virtual {p1}, Lig/z$c;->a0()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lig/z$b$a;->a:Lig/z$b;

    iget-object p1, p1, Lig/z$b;->a:Lig/z;

    invoke-virtual {p1}, Lig/z;->I()Lig/z$c;

    move-result-object p1

    sget-object v2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->MISCARRIED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v3, Lio/grpc/s0;

    invoke-direct {v3}, Lio/grpc/s0;-><init>()V

    invoke-virtual {p1, v0, v2, v1, v3}, Lio/grpc/internal/a$c;->O(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/s0;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lig/z$b$a;->a:Lig/z$b;

    iget-object p1, p1, Lig/z$b;->a:Lig/z;

    invoke-virtual {p1}, Lig/z;->I()Lig/z$c;

    move-result-object p1

    sget-object v2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v3, Lio/grpc/s0;

    invoke-direct {v3}, Lio/grpc/s0;-><init>()V

    invoke-virtual {p1, v0, v2, v1, v3}, Lio/grpc/internal/a$c;->O(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/s0;)V

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

    invoke-virtual {p0, p1}, Lig/z$b$a;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method
