.class public final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompositeStreamException"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;",
        "Ljava/lang/Iterable<",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6268c5954637dca7L


# instance fields
.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;I)V
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;->NO_SHUTDOWN:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;->exceptions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;)V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;->exceptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$CompositeStreamException;->exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
