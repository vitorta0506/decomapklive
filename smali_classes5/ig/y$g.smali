.class Lig/y$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/y;->d1(J[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:Lio/grpc/Status;

.field final synthetic d:Lig/y;


# direct methods
.method constructor <init>(Lig/y;IZLio/grpc/Status;)V
    .locals 0

    iput-object p1, p0, Lig/y$g;->d:Lig/y;

    iput p2, p0, Lig/y$g;->a:I

    iput-boolean p3, p0, Lig/y$g;->b:Z

    iput-object p4, p0, Lig/y$g;->c:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v0

    iget v1, p0, Lig/y$g;->a:I

    if-le v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lig/y$g;->d:Lig/y;

    invoke-static {v0, p1}, Lig/y;->Q0(Lig/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lig/z$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v1, p0, Lig/y$g;->b:Z

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lio/grpc/internal/ClientStreamListener$RpcProgress;->REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    .line 6
    :goto_0
    iget-object v2, p0, Lig/y$g;->c:Lio/grpc/Status;

    const/4 v3, 0x0

    new-instance v4, Lio/grpc/s0;

    invoke-direct {v4}, Lio/grpc/s0;-><init>()V

    invoke-virtual {v0, v2, v1, v3, v4}, Lio/grpc/internal/a$c;->O(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/s0;)V

    .line 7
    :cond_1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->close()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
