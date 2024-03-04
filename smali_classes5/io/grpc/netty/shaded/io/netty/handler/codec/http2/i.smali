.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i;
.super Lpg/g;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg/g<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;",
        ">;",
        "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;"
    }
.end annotation


# static fields
.field private static final h:Lio/grpc/netty/shaded/io/netty/util/g;

.field static final i:Lpg/g$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpg/g$d<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i$a;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i$a;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i;->h:Lio/grpc/netty/shaded/io/netty/util/g;

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i$b;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i$b;-><init>()V

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i;->i:Lpg/g$d;

    return-void
.end method

.method static synthetic a0()Lio/grpc/netty/shaded/io/netty/util/g;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i;->h:Lio/grpc/netty/shaded/io/netty/util/g;

    return-object v0
.end method
