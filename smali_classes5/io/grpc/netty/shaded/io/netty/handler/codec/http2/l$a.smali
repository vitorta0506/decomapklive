.class Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$a;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->q(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    move-result-object v0

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->r()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->t(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;->f()I

    move-result v1

    .line 3
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->u(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v2

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    .line 4
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-static {v2, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->v(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->u(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/m;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 6
    :try_start_1
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->q(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    move-result-object v0

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->r()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :goto_1
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->q(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    move-result-object v1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->r()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    throw v0
.end method

.method public g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 4

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->q(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    move-result-object v0

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$a;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->s(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;)I

    move-result v3

    invoke-direct {v1, v2, p1, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V

    invoke-interface {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
