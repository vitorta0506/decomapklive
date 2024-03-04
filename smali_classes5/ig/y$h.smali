.class Lig/y$h;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lig/y;


# direct methods
.method private constructor <init>(Lig/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lig/y$h;->b:Lig/y;

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h0;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lig/y$h;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lig/y;Lig/y$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lig/y$h;-><init>(Lig/y;)V

    return-void
.end method


# virtual methods
.method public b(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lig/y$h;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lig/y$h;->a:Z

    .line 3
    iget-object p1, p0, Lig/y$h;->b:Lig/y;

    invoke-static {p1}, Lig/y;->G0(Lig/y;)Lig/d;

    move-result-object p1

    invoke-virtual {p1}, Lig/d;->e()V

    :cond_0
    return-void
.end method

.method public d(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object p1, p0, Lig/y$h;->b:Lig/y;

    invoke-static {p1, p2, p3, p4, p5}, Lig/y;->J0(Lig/y;ILkg/j;IZ)V

    return p4
.end method

.method public f(Lio/grpc/netty/shaded/io/netty/channel/m;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object p1, p0, Lig/y$h;->b:Lig/y;

    invoke-static {p1, p2, p3, p4}, Lig/y;->L0(Lig/y;IJ)V

    return-void
.end method

.method public h(Lio/grpc/netty/shaded/io/netty/channel/m;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lig/y$h;->b:Lig/y;

    invoke-static {p1}, Lig/y;->H0(Lig/y;)Lio/grpc/internal/v0;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lig/y$h;->b:Lig/y;

    invoke-virtual {v0}, Lig/b;->E0()Lig/b$c;

    move-result-object v0

    invoke-virtual {v0}, Lig/b$c;->e()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p2, v0

    if-nez v4, :cond_0

    .line 3
    iget-object p1, p0, Lig/y$h;->b:Lig/y;

    invoke-virtual {p1}, Lig/b;->E0()Lig/b$c;

    move-result-object p1

    invoke-virtual {p1}, Lig/b$c;->i()V

    .line 4
    invoke-static {}, Lig/y;->N0()Ljava/util/logging/Logger;

    move-result-object p1

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    invoke-static {}, Lig/y;->N0()Ljava/util/logging/Logger;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lig/y$h;->b:Lig/y;

    .line 6
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->g0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;

    move-result-object v0

    iget-object v1, p0, Lig/y$h;->b:Lig/y;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;->e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v2

    const-string v0, "Window: %d"

    .line 7
    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lio/grpc/internal/v0;->h()J

    move-result-wide v0

    cmp-long v4, v0, p2

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {p1}, Lio/grpc/internal/v0;->d()Z

    .line 10
    iget-object p1, p0, Lig/y$h;->b:Lig/y;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lig/y;->I0(Lig/y;Lio/grpc/internal/v0;)Lio/grpc/internal/v0;

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lig/y;->N0()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Lio/grpc/internal/v0;->h()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "Received unexpected ping ack. Expecting %d, got %d"

    .line 13
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {}, Lig/y;->N0()Ljava/util/logging/Logger;

    move-result-object p1

    const-string p2, "Received unexpected ping ack. No ping outstanding"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 15
    :cond_3
    :goto_0
    iget-object p1, p0, Lig/y$h;->b:Lig/y;

    invoke-static {p1}, Lig/y;->O0(Lig/y;)Lio/grpc/internal/c1;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Lig/y$h;->b:Lig/y;

    invoke-static {p1}, Lig/y;->O0(Lig/y;)Lio/grpc/internal/c1;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/c1;->n()V

    :cond_4
    return-void
.end method

.method public i(Lio/grpc/netty/shaded/io/netty/channel/m;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lig/y$h;->b:Lig/y;

    invoke-static {p1}, Lig/y;->O0(Lig/y;)Lio/grpc/internal/c1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lig/y$h;->b:Lig/y;

    invoke-static {p1}, Lig/y;->O0(Lig/y;)Lio/grpc/internal/c1;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/c1;->n()V

    :cond_0
    return-void
.end method

.method public l(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object p1, p0, Lig/y$h;->b:Lig/y;

    invoke-static {p1, p2, p3, p8}, Lig/y;->K0(Lig/y;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Z)V

    return-void
.end method
