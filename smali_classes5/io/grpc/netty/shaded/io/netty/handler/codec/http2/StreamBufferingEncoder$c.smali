.class abstract Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "c"
.end annotation


# instance fields
.field final a:Lio/grpc/netty/shaded/io/netty/channel/y;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$c;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$c;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->m()Lio/grpc/netty/shaded/io/netty/channel/y;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$c;->a:Lio/grpc/netty/shaded/io/netty/channel/y;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    :goto_0
    return-void
.end method

.method abstract b(Lio/grpc/netty/shaded/io/netty/channel/m;I)V
.end method
