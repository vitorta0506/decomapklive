.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->v0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;JLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/channel/m;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

.field final synthetic c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$d;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

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

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$d;->a:Lio/grpc/netty/shaded/io/netty/channel/m;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$d;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    invoke-static {v0, v1, v2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->N(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V

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

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$d;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method
