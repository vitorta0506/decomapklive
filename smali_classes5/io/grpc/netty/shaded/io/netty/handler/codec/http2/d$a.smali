.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;->r(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

.field final synthetic c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$a;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$a;->a:I

    iput-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v0

    iget v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$a;->a:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$a;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$e;->r(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->close()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
