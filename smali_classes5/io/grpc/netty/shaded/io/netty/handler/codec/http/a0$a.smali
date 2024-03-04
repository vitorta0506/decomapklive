.class Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->W(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/m;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

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

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0;->Q()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    invoke-interface {p1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p1

    const-string v1, "Failed to send a 413 Request Entity Too Large."

    invoke-interface {v0, v1, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$a;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->close()Lio/grpc/netty/shaded/io/netty/channel/i;

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

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/a0$a;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method
