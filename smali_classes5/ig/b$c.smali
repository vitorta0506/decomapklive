.class final Lig/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field private final a:Lig/b$d;

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:F

.field private g:J

.field final synthetic h:Lig/b;


# direct methods
.method public constructor <init>(Lig/b;Lig/b$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lig/b$c;->h:Lig/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "pingLimiter"

    .line 2
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lig/b$c;->a:Lig/b$d;

    return-void
.end method

.method private b(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lig/b$c;->a()I

    move-result v0

    add-int/2addr v0, p1

    .line 2
    invoke-direct {p0, v0}, Lig/b$c;->g(I)V

    return-void
.end method

.method private c()Z
    .locals 1

    iget-boolean v0, p0, Lig/b$c;->d:Z

    return v0
.end method

.method private f(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lig/b$c;->g(I)V

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lig/b$c;->g:J

    .line 3
    iget-object v0, p0, Lig/b$c;->h:Lig/b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->i0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object v1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v6

    const/4 v3, 0x0

    const-wide/16 v4, 0x4d2

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->s0(Lio/grpc/netty/shaded/io/netty/channel/m;ZJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 4
    iget p1, p0, Lig/b$c;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lig/b$c;->b:I

    return-void
.end method

.method private g(I)V
    .locals 0

    iput p1, p0, Lig/b$c;->e:I

    return-void
.end method

.method private h(Z)V
    .locals 0

    iput-boolean p1, p0, Lig/b$c;->d:Z

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lig/b$c;->e:I

    return v0
.end method

.method public d(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lig/b$c;->h:Lig/b;

    invoke-static {v0}, Lig/b;->B0(Lig/b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lig/b$c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lig/b$c;->a:Lig/b$d;

    invoke-interface {v0}, Lig/b$d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lig/b$c;->h(Z)V

    .line 4
    iget-object v0, p0, Lig/b$c;->h:Lig/b;

    invoke-virtual {v0}, Lig/b;->D0()Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    invoke-direct {p0, v0}, Lig/b$c;->f(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    :cond_1
    add-int/2addr p1, p2

    .line 5
    invoke-direct {p0, p1}, Lig/b$c;->b(I)V

    return-void
.end method

.method public e()J
    .locals 2

    const-wide/16 v0, 0x4d2

    return-wide v0
.end method

.method public i()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lig/b$c;->h:Lig/b;

    invoke-static {v0}, Lig/b;->B0(Lig/b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lig/b$c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lig/b$c;->c:I

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lig/b$c;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    move-wide v0, v4

    .line 4
    :cond_1
    invoke-virtual {p0}, Lig/b$c;->a()I

    move-result v2

    int-to-long v2, v2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    mul-long v2, v2, v4

    div-long/2addr v2, v0

    .line 5
    iget-object v0, p0, Lig/b$c;->h:Lig/b;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->g0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lig/b$c;->a()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/high16 v4, 0x800000

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v4, 0x0

    .line 7
    invoke-direct {p0, v4}, Lig/b$c;->h(Z)V

    .line 8
    iget-object v4, p0, Lig/b$c;->h:Lig/b;

    invoke-virtual {v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v4

    invoke-interface {v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v4

    invoke-interface {v0, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;->e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)I

    move-result v4

    if-le v1, v4, :cond_2

    long-to-float v2, v2

    .line 9
    iget v3, p0, Lig/b$c;->f:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 10
    iput v2, p0, Lig/b$c;->f:F

    sub-int v2, v1, v4

    .line 11
    iget-object v3, p0, Lig/b$c;->h:Lig/b;

    invoke-virtual {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;->l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V

    .line 12
    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;->j(I)V

    .line 13
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;-><init>()V

    .line 14
    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->A(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    .line 15
    iget-object v1, p0, Lig/b$c;->h:Lig/b;

    invoke-static {v1}, Lig/b;->C0(Lig/b;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-result-object v1

    iget-object v2, p0, Lig/b$c;->h:Lig/b;

    invoke-virtual {v2}, Lig/b;->D0()Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v2

    iget-object v3, p0, Lig/b$c;->h:Lig/b;

    invoke-virtual {v3}, Lig/b;->D0()Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->m0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :cond_2
    return-void
.end method
