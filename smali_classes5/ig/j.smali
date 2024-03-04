.class public abstract Lig/j;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;
.source "SourceFile"


# instance fields
.field protected final v:Lio/grpc/netty/shaded/io/netty/channel/y;

.field private final w:Lio/grpc/ChannelLogger;


# direct methods
.method protected constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Lio/grpc/ChannelLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V

    .line 2
    iput-object p1, p0, Lig/j;->v:Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 3
    iput-object p5, p0, Lig/j;->w:Lio/grpc/ChannelLogger;

    return-void
.end method


# virtual methods
.method public A0(Lio/grpc/a;Lio/grpc/c0$c;)V
    .locals 0

    return-void
.end method

.method public x0()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public y0()Lio/grpc/a;
    .locals 1

    sget-object v0, Lio/grpc/a;->c:Lio/grpc/a;

    return-object v0
.end method

.method public z0()Lio/grpc/ChannelLogger;
    .locals 2

    .line 1
    iget-object v0, p0, Lig/j;->w:Lio/grpc/ChannelLogger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "NegotiationLogger must not be null"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lig/j;->w:Lio/grpc/ChannelLogger;

    return-object v0
.end method
