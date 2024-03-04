.class abstract Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "e"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;


# direct methods
.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;->b()V

    return-void
.end method

.method abstract b()I
.end method

.method final c()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$e;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g$d;

    return-object v0
.end method

.method abstract d(ZLkg/j;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation
.end method
