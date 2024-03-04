.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$a;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 2

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_LOCAL:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->r(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    move-result-object p1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 3

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->q(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-direct {v1, v2, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V

    invoke-interface {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->r(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    move-result-object p1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;->e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;)V

    return-void
.end method

.method public g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->y(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v1, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->r(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;

    move-result-object p1

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;->w(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$d;->k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m$b;I)V

    return-void
.end method
