.class final Lig/m0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/p2$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;

.field private final c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;

    move-result-object v0

    iput-object v0, p0, Lig/m0$g;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;

    move-result-object v0

    iput-object v0, p0, Lig/m0$g;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object p1

    iput-object p1, p0, Lig/m0$g;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    return-void
.end method
