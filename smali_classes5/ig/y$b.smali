.class Lig/y$b;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lig/y;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Lio/grpc/ChannelLogger;Lig/d;Lio/grpc/internal/c1;Lcom/google/common/base/w;Ljava/lang/Runnable;Lio/grpc/internal/p2;Lio/grpc/a;Ljava/lang/String;ZLig/b$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lig/y;


# direct methods
.method constructor <init>(Lig/y;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lig/y$b;->b:Lig/y;

    iput-object p2, p0, Lig/y$b;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z;-><init>()V

    return-void
.end method


# virtual methods
.method public e(IJLkg/j;)V
    .locals 2

    .line 1
    invoke-static {p4}, Lkg/n;->r(Lkg/j;)[B

    move-result-object p1

    .line 2
    iget-object p4, p0, Lig/y$b;->b:Lig/y;

    invoke-static {p4, p2, p3, p1}, Lig/y;->M0(Lig/y;J[B)V

    .line 3
    sget-object p4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->ENHANCE_YOUR_CALM:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    invoke-virtual {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v0

    cmp-long p4, p2, v0

    if-nez p4, :cond_0

    .line 4
    new-instance p2, Ljava/lang/String;

    sget-object p3, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 5
    invoke-static {}, Lig/y;->N0()Ljava/util/logging/Logger;

    move-result-object p1

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string p4, "Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: {0}"

    invoke-virtual {p1, p3, p4, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "too_many_pings"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lig/y$b;->a:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lig/y$b;->b:Lig/y;

    invoke-static {v0}, Lig/y;->P0(Lig/y;)Lio/grpc/internal/w0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/grpc/internal/w0;->e(Ljava/lang/Object;Z)V

    .line 2
    iget-object p1, p0, Lig/y$b;->b:Lig/y;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->n()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lig/y$b;->b:Lig/y;

    .line 3
    invoke-static {p1}, Lig/y;->O0(Lig/y;)Lio/grpc/internal/c1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lig/y$b;->b:Lig/y;

    invoke-static {p1}, Lig/y;->O0(Lig/y;)Lio/grpc/internal/c1;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/c1;->p()V

    :cond_0
    return-void
.end method

.method public g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lig/y$b;->b:Lig/y;

    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->n()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lig/y$b;->b:Lig/y;

    .line 2
    invoke-static {p1}, Lig/y;->O0(Lig/y;)Lio/grpc/internal/c1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lig/y$b;->b:Lig/y;

    invoke-static {p1}, Lig/y;->O0(Lig/y;)Lio/grpc/internal/c1;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/c1;->o()V

    :cond_0
    return-void
.end method
