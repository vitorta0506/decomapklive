.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field private a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

.field private final b:I

.field final synthetic c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$f;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$f;->b:I

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$f;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    invoke-static {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;->t(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;

    move-result-object p1

    .line 2
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$f;->b:I

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;->g(I)V

    .line 3
    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$f;->b:I

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$e;->d(I)V
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$f;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->error()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;I)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$f;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

    .line 6
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$f;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;->add(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l$f;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    throw v0
.end method
