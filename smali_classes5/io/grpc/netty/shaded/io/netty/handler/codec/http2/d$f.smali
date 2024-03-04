.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final a:I

.field final synthetic b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;->a:I

    return-void
.end method


# virtual methods
.method a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d$f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Using a key that was not created by this connection"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
