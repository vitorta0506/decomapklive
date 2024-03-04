.class Lig/y$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/channel/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/y;->Y0(ILig/z$c;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZZLio/grpc/netty/shaded/io/netty/channel/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lig/z$c;

.field final synthetic c:Z

.field final synthetic d:Lio/grpc/netty/shaded/io/netty/channel/y;

.field final synthetic e:Lig/y;


# direct methods
.method constructor <init>(Lig/y;ILig/z$c;ZLio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    iput-object p1, p0, Lig/y$d;->e:Lig/y;

    iput p2, p0, Lig/y$d;->a:I

    iput-object p3, p0, Lig/y$d;->b:Lig/z$c;

    iput-boolean p4, p0, Lig/y$d;->c:Z

    iput-object p5, p0, Lig/y$d;->d:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/i;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lug/q;->p0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lig/y$d;->e:Lig/y;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p1

    iget v0, p0, Lig/y$d;->a:I

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lig/y$d;->b:Lig/z$c;

    invoke-virtual {v0}, Lio/grpc/internal/d$a;->l()Lio/grpc/internal/i2;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/i2;->c()V

    .line 4
    iget-object v0, p0, Lig/y$d;->e:Lig/y;

    invoke-static {v0}, Lig/y;->R0(Lig/y;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    move-result-object v0

    iget-object v2, p0, Lig/y$d;->b:Lig/z$c;

    invoke-interface {p1, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v0, p0, Lig/y$d;->c:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lig/y$d;->e:Lig/y;

    invoke-static {v0}, Lig/y;->P0(Lig/y;)Lio/grpc/internal/w0;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lio/grpc/internal/w0;->e(Ljava/lang/Object;Z)V

    .line 7
    :cond_0
    iget-object v0, p0, Lig/y$d;->b:Lig/z$c;

    invoke-virtual {v0, p1}, Lig/z$c;->b0(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lig/y$d;->d:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->m()Lio/grpc/netty/shaded/io/netty/channel/y;

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {p1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p1

    .line 10
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;

    if-eqz v0, :cond_3

    .line 11
    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;

    .line 12
    iget-object v2, p0, Lig/y$d;->e:Lig/y;

    sget-object v3, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    .line 13
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;->errorCode()J

    move-result-wide v5

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;->debugData()[B

    move-result-object v7

    const-string v4, "GOAWAY closed buffered stream"

    .line 14
    invoke-static/range {v2 .. v7}, Lig/y;->S0(Lig/y;Lio/grpc/Status$Code;Ljava/lang/String;J[B)Lio/grpc/Status;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lio/grpc/Status;->d()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    .line 16
    iget-object v2, p0, Lig/y$d;->b:Lig/z$c;

    sget-object v3, Lio/grpc/internal/ClientStreamListener$RpcProgress;->MISCARRIED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v4, Lio/grpc/s0;

    invoke-direct {v4}, Lio/grpc/s0;-><init>()V

    invoke-virtual {v2, p1, v3, v1, v4}, Lio/grpc/internal/a$c;->O(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/s0;)V

    move-object p1, v0

    goto :goto_0

    .line 17
    :cond_3
    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2ChannelClosedException;

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lig/y$d;->e:Lig/y;

    invoke-static {v0}, Lig/y;->G0(Lig/y;)Lig/d;

    move-result-object v0

    invoke-virtual {v0}, Lig/d;->a()Lio/grpc/Status;

    move-result-object v0

    if-nez v0, :cond_4

    .line 19
    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    invoke-virtual {v0, p1}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    const-string v2, "Connection closed while stream is buffered"

    .line 20
    invoke-virtual {v0, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 21
    :cond_4
    iget-object v2, p0, Lig/y$d;->b:Lig/z$c;

    sget-object v3, Lio/grpc/internal/ClientStreamListener$RpcProgress;->MISCARRIED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v4, Lio/grpc/s0;

    invoke-direct {v4}, Lio/grpc/s0;-><init>()V

    invoke-virtual {v2, v0, v3, v1, v4}, Lio/grpc/internal/a$c;->O(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/s0;)V

    .line 22
    :cond_5
    :goto_0
    iget-object v0, p0, Lig/y$d;->d:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    :goto_1
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

    invoke-virtual {p0, p1}, Lig/y$d;->a(Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void
.end method
