.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->g(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;I)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;

    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;

    iget-object v0, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->r(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    move-result-object p1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d$a;->a:I

    invoke-virtual {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->k(I)I

    const/4 p1, 0x1

    return p1
.end method
