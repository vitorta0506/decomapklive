.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;


# instance fields
.field private final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;)V

    const-string v0, "delegate"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    return-void
.end method


# virtual methods
.method public G1(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->G1(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V

    return-void
.end method

.method public O()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->O()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    move-result-object v0

    return-object v0
.end method

.method public Y0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->Y0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    instance-of v1, v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delegate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not an instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connection()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->connection()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    return-object v0
.end method

.method public f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;)V

    return-void
.end method

.method public m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;

    move-result-object v0

    return-object v0
.end method
