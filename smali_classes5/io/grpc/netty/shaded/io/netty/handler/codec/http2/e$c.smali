.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;


# direct methods
.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)V

    return-void
.end method

.method private n(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->J()Ljava/lang/Boolean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->s(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;->configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0$a;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0$a;->a()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0$a;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0$a;->c()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k0;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 5
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->m()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->s(Z)V

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Server sending SETTINGS frame with ENABLE_PUSH specified"

    invoke-static {p1, v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->D()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-interface {v3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->u(I)V

    .line 10
    :cond_2
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->z()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0$a;->a(J)V

    .line 12
    :cond_3
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->H()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->v(J)J

    move-result-wide v5

    invoke-interface {v2, v3, v4, v5, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0$a;->e(JJ)V

    .line 14
    :cond_4
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->F()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k0;->d(I)V

    .line 16
    :cond_5
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->B()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 17
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;->j(I)V

    :cond_6
    return-void
.end method

.method private o(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p3, :cond_1

    .line 1
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->p(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->e()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p1

    aput-object p1, v0, v2

    aput-object p4, v0, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "{} ignoring {} frame for stream {}. Stream sent after GOAWAY sent"

    .line 4
    invoke-interface {p3, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 5
    :cond_0
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->q(I)V

    .line 6
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p4, p3, v2

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v3

    const-string p4, "Received %s frame for an unknown stream %d"

    .line 8
    invoke-static {p2, p1, p4, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 9
    :cond_1
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->g()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->p(I)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    return v2

    .line 10
    :cond_3
    :goto_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->e()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object p2

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->isInfoEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 11
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->e()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p1

    aput-object p1, v0, v2

    aput-object p4, v0, v3

    .line 12
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "RST_STREAM sent."

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Stream created after GOAWAY sent. Last known stream by peer "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    .line 13
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p3

    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object p3

    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->t()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    aput-object p1, v0, v1

    const-string p1, "{} ignoring {} frame for stream {}"

    .line 14
    invoke-interface {p2, p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return v3
.end method

.method private p(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->r(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->t()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private q(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Stream %d does not exist"

    invoke-static {v0, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->l(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZ)V

    return-void
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->t(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->r(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object v0

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->N1(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->r(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->G1(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->t(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->b(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V

    return-void
.end method

.method public c(Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->connection()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->m()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    const-string v2, "PUSH_PROMISE"

    .line 3
    invoke-direct {p0, p1, p2, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->o(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$a;->a:[I

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array p2, v3, [Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v1

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object p3

    aput-object p3, p2, v4

    const-string p3, "Stream %d in unexpected state for receiving push promise: %s"

    .line 7
    invoke-static {p1, p3, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    :goto_0
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;

    move-result-object v2

    invoke-interface {v2, p1, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;->a(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;

    move-result-object v2

    invoke-interface {v2, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;

    move-result-object v2

    invoke-interface {v2, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/u0;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->w(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 12
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;I)V

    return-void

    .line 13
    :cond_3
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array p4, v3, [Ljava/lang/Object;

    .line 14
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v4

    const-string p2, "Promised request on stream %d for promised stream %d is not known to be safe"

    .line 15
    invoke-static {p3, p1, p2, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 16
    :cond_4
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array p4, v3, [Ljava/lang/Object;

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v4

    const-string p2, "Promised request on stream %d for promised stream %d is not known to be cacheable"

    .line 18
    invoke-static {p3, p1, p2, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 19
    :cond_5
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array p4, v3, [Ljava/lang/Object;

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p4, v4

    const-string p2, "Promised request on stream %d for promised stream %d is not authoritative"

    .line 21
    invoke-static {p3, p1, p2, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 22
    :cond_6
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "A client cannot push."

    invoke-static {p1, p3, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public d(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZ)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    .line 1
    iget-object v0, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v9

    .line 2
    iget-object v0, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;

    move-result-object v10

    .line 3
    invoke-virtual/range {p3 .. p3}, Lkg/j;->P1()I

    move-result v0

    add-int v11, v0, v6

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v7, "DATA"

    move-object/from16 v12, p1

    .line 4
    invoke-direct {v1, v12, v4, v9, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->o(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_0

    .line 5
    invoke-interface {v10, v9, v5, v6, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;->i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lkg/j;IZ)V

    .line 6
    invoke-interface {v10, v9, v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;->m(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)Z

    .line 7
    invoke-direct {v1, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->q(I)V

    return v11

    :cond_0
    const/4 v7, 0x0

    .line 8
    sget-object v13, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$a;->a:[I

    invoke-interface {v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v13, v13, v14

    if-eq v13, v3, :cond_2

    const/4 v14, 0x2

    if-eq v13, v14, :cond_2

    const/4 v7, 0x3

    const-string v15, "Stream %d in unexpected state: %s"

    if-eq v13, v7, :cond_1

    const/4 v7, 0x4

    if-eq v13, v7, :cond_1

    .line 9
    invoke-interface {v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v7

    sget-object v13, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v14, v14, [Ljava/lang/Object;

    .line 10
    invoke-interface {v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v2

    invoke-interface {v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v2

    aput-object v2, v14, v3

    .line 11
    invoke-static {v7, v13, v15, v14}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v7

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v7

    sget-object v13, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v14, v14, [Ljava/lang/Object;

    .line 13
    invoke-interface {v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v2

    invoke-interface {v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v2

    aput-object v2, v14, v3

    .line 14
    invoke-static {v7, v13, v15, v14}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v7

    .line 15
    :cond_2
    :goto_0
    iget-object v2, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v2, v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->j(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)I

    move-result v2

    .line 16
    :try_start_1
    invoke-interface {v10, v9, v5, v6, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;->i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lkg/j;IZ)V

    .line 17
    iget-object v3, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v3, v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->j(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)I

    move-result v13
    :try_end_1
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_4

    .line 18
    :try_start_2
    iget-object v2, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v2, v9, v0, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;IZ)V

    .line 19
    iget-object v0, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->d(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZ)I

    move-result v11

    if-eqz v8, :cond_3

    .line 20
    iget-object v0, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->p(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->m()Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v2

    invoke-interface {v0, v9, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;->m(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V
    :try_end_2
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :cond_3
    invoke-interface {v10, v9, v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;->m(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)Z

    return v11

    :catch_0
    move-exception v0

    move v2, v13

    goto :goto_1

    :catch_1
    move-exception v0

    move v2, v13

    goto :goto_2

    .line 22
    :cond_4
    :try_start_3
    throw v7
    :try_end_3
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 23
    :goto_1
    :try_start_4
    iget-object v3, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v3, v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->j(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v11, v2

    .line 24
    throw v0

    :catch_3
    move-exception v0

    .line 25
    :goto_2
    iget-object v3, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v3, v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->j(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v11, v2

    .line 26
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 27
    :goto_3
    invoke-interface {v10, v9, v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;->m(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)Z

    .line 28
    throw v0

    :catchall_1
    move-exception v0

    .line 29
    sget-object v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Unhandled error on data stream id %d"

    invoke-static {v5, v0, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    :catch_4
    move-exception v0

    .line 30
    invoke-interface {v10, v9, v5, v6, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;->i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lkg/j;IZ)V

    .line 31
    invoke-interface {v10, v9, v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;->m(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)Z

    .line 32
    throw v0
.end method

.method public e(Lio/grpc/netty/shaded/io/netty/channel/m;IISZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->r(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4, p5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;->b(IISZ)V

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->e(Lio/grpc/netty/shaded/io/netty/channel/m;IISZ)V

    return-void
.end method

.method public f(Lio/grpc/netty/shaded/io/netty/channel/m;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->q(I)V

    return-void

    .line 3
    :cond_0
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$a;->a:[I

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->f(Lio/grpc/netty/shaded/io/netty/channel/m;IJ)V

    .line 5
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->p(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    move-result-object p2

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->m()Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;->k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V

    return-void

    .line 6
    :cond_1
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p4

    const-string p2, "RST_STREAM received for IDLE stream %d"

    invoke-static {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    :cond_2
    return-void
.end method

.method public g(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->r(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->O()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->n(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->g(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method public h(Lio/grpc/netty/shaded/io/netty/channel/m;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->h(Lio/grpc/netty/shaded/io/netty/channel/m;J)V

    return-void
.end method

.method public i(Lio/grpc/netty/shaded/io/netty/channel/m;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->b(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->r(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v6

    move-object v2, p1

    move-wide v4, p2

    invoke-interface/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->s0(Lio/grpc/netty/shaded/io/netty/channel/m;ZJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->i(Lio/grpc/netty/shaded/io/netty/channel/m;J)V

    return-void
.end method

.method public j(Lio/grpc/netty/shaded/io/netty/channel/m;BILio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;Lkg/j;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->y(Lio/grpc/netty/shaded/io/netty/channel/m;BILio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;Lkg/j;)V

    return-void
.end method

.method public k(Lio/grpc/netty/shaded/io/netty/channel/m;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->CLOSED:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    if-eq v1, v2, :cond_1

    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->p(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->r(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;

    move-result-object v1

    invoke-interface {v1, v0, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;->l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V

    .line 4
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->k(Lio/grpc/netty/shaded/io/netty/channel/m;II)V

    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->q(I)V

    return-void
.end method

.method public l(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v5, p3

    move/from16 v11, p8

    .line 1
    iget-object v2, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 2
    iget-object v6, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v6

    invoke-interface {v6, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->k(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3
    iget-object v2, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v2

    invoke-interface {v2, v0, v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->z(IZ)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v6

    sget-object v7, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_REMOTE:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move-object v12, v2

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->e()Z

    move-result v6

    move-object v12, v2

    move v2, v6

    goto :goto_1

    :cond_2
    move-object v12, v2

    const/4 v2, 0x0

    :goto_1
    const/4 v6, 0x0

    :goto_2
    const-string v7, "HEADERS"

    move-object/from16 v13, p1

    .line 6
    invoke-direct {v1, v13, v0, v12, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->o(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    return-void

    .line 7
    :cond_3
    iget-object v7, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v7

    invoke-interface {v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->m()Z

    move-result v7

    if-nez v7, :cond_4

    .line 8
    invoke-interface/range {p3 .. p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;->t()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpStatusClass;->valueOf(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpStatusClass;

    move-result-object v7

    sget-object v8, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpStatusClass;->INFORMATIONAL:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpStatusClass;

    if-ne v7, v8, :cond_4

    const/4 v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x3

    const/4 v9, 0x2

    if-nez v7, :cond_5

    if-nez v11, :cond_6

    .line 9
    :cond_5
    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->e()Z

    move-result v10

    if-nez v10, :cond_e

    :cond_6
    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->f()Z

    move-result v10

    if-nez v10, :cond_e

    .line 10
    sget-object v10, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$a;->a:[I

    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v10, v10, v14

    if-eq v10, v3, :cond_b

    if-eq v10, v9, :cond_b

    const-string v14, "Stream %d in unexpected state: %s"

    if-eq v10, v8, :cond_9

    const/4 v6, 0x4

    if-eq v10, v6, :cond_8

    const/4 v6, 0x5

    if-ne v10, v6, :cond_7

    .line 11
    invoke-interface {v12, v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->m(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    goto :goto_4

    .line 12
    :cond_7
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v2, v9, [Ljava/lang/Object;

    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 13
    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v4

    aput-object v4, v2, v3

    .line 14
    invoke-static {v0, v14, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 15
    :cond_8
    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v0

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v5, v9, [Ljava/lang/Object;

    .line 16
    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v4

    aput-object v4, v5, v3

    .line 17
    invoke-static {v0, v2, v14, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    :cond_9
    if-eqz v6, :cond_a

    goto :goto_4

    .line 18
    :cond_a
    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v0

    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v5, v9, [Ljava/lang/Object;

    .line 19
    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v4

    aput-object v4, v5, v3

    .line 20
    invoke-static {v0, v2, v14, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    :cond_b
    :goto_4
    if-nez v2, :cond_c

    .line 21
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/r;->w:Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-interface {v5, v2}, Lpg/i;->d0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 22
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_c

    .line 23
    :try_start_0
    invoke-static {v6, v4, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/i0;->j(Ljava/util/List;ZZ)J

    move-result-wide v8

    const-wide/16 v14, -0x1

    cmp-long v3, v8, v14

    if-eqz v3, :cond_c

    .line 24
    invoke-interface {v5, v2, v8, v9}, Lpg/i;->K0(Ljava/lang/Object;J)Lpg/i;

    .line 25
    iget-object v2, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->q(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    move-result-object v2

    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$b;

    invoke-direct {v3, v8, v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$b;-><init>(J)V

    invoke-interface {v12, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 26
    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v2

    sget-object v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Multiple content-length headers received"

    invoke-static {v2, v3, v0, v5, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 27
    :cond_c
    :goto_5
    invoke-interface {v12, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->o(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 28
    iget-object v2, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v2, v12, v4, v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->k(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;IZ)V

    .line 29
    iget-object v2, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->r(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;

    move-result-object v2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-interface {v2, v0, v6, v7, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;->b(IISZ)V

    .line 30
    iget-object v2, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;->l(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZ)V

    if-eqz v11, :cond_d

    .line 31
    iget-object v0, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->p(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->m()Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v2

    invoke-interface {v0, v12, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;->m(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V

    :cond_d
    return-void

    .line 32
    :cond_e
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v5, v8, [Ljava/lang/Object;

    .line 33
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-interface {v12}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v3

    aput-object v3, v5, v9

    const-string v3, "Stream %d received too many headers EOS: %s state: %s"

    .line 34
    invoke-static {v0, v2, v3, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->streamError(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method public m(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e$c;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;->w(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;)V

    return-void
.end method
