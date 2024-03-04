.class final Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;
.super Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "j"
.end annotation


# instance fields
.field private b:Lkg/j;

.field private c:Z

.field final synthetic d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;


# direct methods
.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$a;)V

    .line 2
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->M(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->connection()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->P(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;)Lkg/j;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->b:Lkg/j;

    .line 3
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->h(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->b:Lkg/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->b:Lkg/j;

    :cond_0
    return-void
.end method

.method private g(Lkg/j;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->b:Lkg/j;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lkg/j;->P1()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v3

    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->b:Lkg/j;

    .line 5
    invoke-virtual {v4}, Lkg/j;->Q1()I

    move-result v5

    .line 6
    invoke-static {p1, v3, v4, v5, v0}, Lkg/n;->n(Lkg/j;ILkg/j;II)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1, v0}, Lkg/j;->l2(I)Lkg/j;

    .line 8
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->b:Lkg/j;

    invoke-virtual {p1, v0}, Lkg/j;->l2(I)Lkg/j;

    .line 9
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->b:Lkg/j;

    invoke-virtual {p1}, Lkg/j;->j1()Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->b:Lkg/j;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->b:Lkg/j;

    return v1

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/16 v0, 0x400

    .line 12
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->S()Lkg/j;

    move-result-object v3

    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v4

    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v4, v0}, Lkg/j;->n2(II)Lkg/j;

    move-result-object v0

    invoke-static {v3, v0}, Lkg/n;->y(Lkg/j;Lkg/j;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 13
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v3

    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v4

    sub-int/2addr v0, v4

    sget-object v4, Lio/grpc/netty/shaded/io/netty/util/h;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3, v0, v4}, Lkg/j;->o2(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    .line 14
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Unexpected HTTP/1.x request: %s"

    invoke-static {v0, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 15
    :cond_4
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v0

    .line 16
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v3

    iget-object v4, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->b:Lkg/j;

    invoke-virtual {v4}, Lkg/j;->P1()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 17
    invoke-static {p1, v0, v3}, Lkg/n;->w(Lkg/j;II)Ljava/lang/String;

    move-result-object p1

    .line 18
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "HTTP/2 client preface string missing or corrupt. Hex dump for received bytes: %s"

    invoke-static {v0, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method private h(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->c:Z

    if-nez v0, :cond_2

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->c:Z

    .line 3
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->m()Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->b()Lkg/j;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/grpc/netty/shaded/io/netty/channel/v;->c0(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v1

    sget-object v2, Lio/grpc/netty/shaded/io/netty/channel/j;->i3:Lio/grpc/netty/shaded/io/netty/channel/j;

    invoke-interface {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 5
    :cond_1
    iget-object v1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    invoke-static {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->M(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    invoke-static {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->T(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    move-result-object v2

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->m0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v1

    sget-object v2, Lio/grpc/netty/shaded/io/netty/channel/j;->i3:Lio/grpc/netty/shaded/io/netty/channel/j;

    invoke-interface {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d0;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d0;

    invoke-virtual {v0, p1, v1}, Lpg/a;->X(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private i(Lkg/j;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lkg/j;->P1()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Lkg/j;->R0(I)S

    move-result v0

    .line 3
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v3

    const/4 v4, 0x4

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Lkg/j;->R0(I)S

    move-result v3

    const/4 v5, 0x1

    if-ne v0, v4, :cond_1

    and-int/lit8 v0, v3, 0x1

    if-nez v0, :cond_1

    return v5

    .line 4
    :cond_1
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    new-array v3, v5, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lkg/j;->Q1()I

    move-result v4

    invoke-static {p1, v4, v2}, Lkg/n;->w(Lkg/j;II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "First received frame was not SETTINGS. Hex dump for first 5 bytes: %s"

    .line 6
    invoke-static {v0, p1, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->h(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->f()V

    .line 2
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;->b(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method

.method public c(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m;",
            "Lkg/j;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->g(Lkg/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->i(Lkg/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$i;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$i;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$a;)V

    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->R(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->Q(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$g;->c(Lio/grpc/netty/shaded/io/netty/channel/m;Lkg/j;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 4
    iget-object p3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->d:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public d(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->f()V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0$j;->c:Z

    return v0
.end method
