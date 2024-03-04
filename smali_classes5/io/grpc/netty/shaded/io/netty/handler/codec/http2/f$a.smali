.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->j(Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/m;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$a;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$a;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;)V

    :cond_0
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

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$a;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method
