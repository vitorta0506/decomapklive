.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$b;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

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

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$b;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->W(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/i;)V

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

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$b;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method
