.class public interface abstract Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpg/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lpg/i<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract t()Ljava/lang/CharSequence;
.end method
