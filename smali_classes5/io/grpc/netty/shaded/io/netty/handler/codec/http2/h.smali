.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k0;
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0$a;


# static fields
.field private static final c:Lkg/j;


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xff

    invoke-static {v0}, Lkg/s0;->g(I)Lkg/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkg/j;->J2(I)Lkg/j;

    move-result-object v0

    invoke-static {v0}, Lkg/s0;->i(Lkg/j;)Lkg/j;

    move-result-object v0

    invoke-virtual {v0}, Lkg/j;->B()Lkg/j;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->c:Lkg/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k;-><init>()V

    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0;

    const/16 p1, 0x4000

    .line 4
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->b:I

    return-void
.end method

.method private static h(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static i(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static j(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->l(ILjava/lang/String;)I

    return-void
.end method

.method private static k(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    return-void
.end method

.method private static o(S)V
    .locals 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x100

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid weight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static p(I)V
    .locals 1

    const-string v0, "windowSizeIncrement"

    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->n(ILjava/lang/String;)I

    return-void
.end method

.method private q(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 7

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;-><init>()V

    .line 2
    invoke-virtual {p3}, Lkg/j;->j1()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p3}, Lkg/j;->P1()I

    move-result v1

    iget v2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lkg/k;->l(I)Lkg/j;

    move-result-object v2

    const/16 v4, 0x9

    .line 5
    invoke-static {v2, v1, v4, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->k(Lkg/j;IBLio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;I)V

    .line 6
    :cond_0
    invoke-virtual {p3}, Lkg/j;->P1()I

    move-result v1

    iget v5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->b:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 7
    invoke-virtual {p3, v1}, Lkg/j;->I1(I)Lkg/j;

    move-result-object v5

    .line 8
    invoke-virtual {p3}, Lkg/j;->j1()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    invoke-virtual {v2}, Lkg/j;->T1()Lkg/j;

    move-result-object v1

    invoke-virtual {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v6

    invoke-interface {p1, v1, v6}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    .line 10
    invoke-virtual {v0, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->c(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    move-result-object v0

    .line 11
    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 12
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v2

    invoke-interface {v2, v3}, Lkg/k;->l(I)Lkg/j;

    move-result-object v2

    .line 13
    invoke-static {v2, v1, v4, v0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->k(Lkg/j;IBLio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;I)V

    .line 14
    invoke-virtual {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 15
    :goto_0
    invoke-virtual {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v1

    invoke-interface {p1, v5, v1}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 16
    invoke-virtual {p3}, Lkg/j;->j1()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    return-object p4
.end method

.method private r(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZZISZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p6

    move/from16 v5, p7

    .line 1
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;

    .line 2
    invoke-interface/range {p1 .. p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object v8

    move-object/from16 v9, p10

    invoke-direct {v6, v9, v7, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/y;Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;)V

    const/4 v7, 0x0

    :try_start_0
    const-string v8, "Stream ID"

    .line 3
    invoke-static {v2, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->j(ILjava/lang/String;)V

    if-eqz v4, :cond_0

    const-string v8, "Stream Dependency"

    .line 4
    invoke-static {v5, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->k(ILjava/lang/String;)V

    .line 5
    invoke-static/range {p4 .. p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->j(I)V

    .line 6
    invoke-static/range {p8 .. p8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->o(S)V

    .line 7
    :cond_0
    invoke-interface/range {p1 .. p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v8

    invoke-interface {v8}, Lkg/k;->buffer()Lkg/j;

    move-result-object v7

    .line 8
    iget-object v8, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0;

    move-object/from16 v9, p3

    invoke-interface {v8, v2, v9, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0;->c(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Lkg/j;)V

    .line 9
    new-instance v8, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-direct {v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;-><init>()V

    move/from16 v9, p5

    .line 10
    invoke-virtual {v8, v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->e(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    move-result-object v8

    invoke-virtual {v8, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->l(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lez v3, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v8, v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->j(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    move-result-object v8

    .line 11
    invoke-virtual {v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->g()I

    move-result v11

    add-int/2addr v11, v3

    .line 12
    iget v12, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->b:I

    sub-int/2addr v12, v11

    .line 13
    invoke-virtual {v7}, Lkg/j;->P1()I

    move-result v13

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v7, v12}, Lkg/j;->I1(I)Lkg/j;

    move-result-object v12

    .line 14
    invoke-virtual {v7}, Lkg/j;->j1()Z

    move-result v13

    if-nez v13, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v8, v13}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->c(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    .line 15
    invoke-virtual {v12}, Lkg/j;->P1()I

    move-result v13

    add-int/2addr v13, v11

    .line 16
    invoke-interface/range {p1 .. p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v11

    const/16 v14, 0xf

    invoke-interface {v11, v14}, Lkg/k;->l(I)Lkg/j;

    move-result-object v11

    .line 17
    invoke-static {v11, v13, v10, v8, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->k(Lkg/j;IBLio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;I)V

    .line 18
    invoke-static {v11, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->s(Lkg/j;I)V

    if-eqz v4, :cond_4

    if-eqz p9, :cond_3

    const-wide v13, 0x80000000L

    int-to-long v4, v5

    or-long/2addr v4, v13

    long-to-int v5, v4

    .line 19
    :cond_3
    invoke-virtual {v11, v5}, Lkg/j;->E2(I)Lkg/j;

    add-int/lit8 v4, p8, -0x1

    .line 20
    invoke-virtual {v11, v4}, Lkg/j;->u2(I)Lkg/j;

    .line 21
    :cond_4
    invoke-virtual {v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v4

    invoke-interface {v0, v11, v4}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 22
    invoke-virtual {v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v4

    invoke-interface {v0, v12, v4}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 23
    invoke-static/range {p4 .. p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->h(I)I

    move-result v4

    if-lez v4, :cond_5

    .line 24
    sget-object v4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->c:Lkg/j;

    invoke-static/range {p4 .. p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->h(I)I

    move-result v3

    invoke-virtual {v4, v9, v3}, Lkg/j;->n2(II)Lkg/j;

    move-result-object v3

    invoke-virtual {v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 25
    :cond_5
    invoke-virtual {v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->d()Z

    move-result v3

    if-nez v3, :cond_6

    .line 26
    invoke-direct {p0, v0, v2, v7, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->q(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;)Lio/grpc/netty/shaded/io/netty/channel/i;
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 27
    :try_start_1
    invoke-virtual {v6, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 28
    invoke-virtual {v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->u0()Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 29
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->R0(Ljava/lang/Throwable;)V

    if-eqz v7, :cond_7

    goto :goto_2

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v6, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_7

    .line 31
    :cond_6
    :goto_2
    invoke-interface {v7}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 32
    :cond_7
    invoke-virtual {v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->u0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    if-eqz v7, :cond_8

    .line 33
    invoke-interface {v7}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 34
    :cond_8
    throw v0
.end method

.method private static s(Lkg/j;I)V
    .locals 0

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lkg/j;->u2(I)Lkg/j;

    :cond_0
    return-void
.end method


# virtual methods
.method public B(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 11

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p7

    move/from16 v5, p8

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->r(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZZISZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    return-object v0
.end method

.method public F1(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 4

    :try_start_0
    const-string v0, "Stream ID"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->j(ILjava/lang/String;)V

    .line 2
    invoke-static {p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->i(J)V

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lkg/k;->l(I)Lkg/j;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    .line 4
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-direct {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;-><init>()V

    invoke-static {v0, v1, v2, v3, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->k(Lkg/j;IBLio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;I)V

    long-to-int p2, p3

    .line 5
    invoke-virtual {v0, p2}, Lkg/j;->E2(I)Lkg/j;

    .line 6
    invoke-interface {p1, v0, p5}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    invoke-interface {p5, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public N1(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 4

    .line 1
    :try_start_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Lkg/k;->l(I)Lkg/j;

    move-result-object v0

    const/4 v1, 0x4

    .line 2
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-direct {v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->a(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->k(Lkg/j;IBLio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;I)V

    .line 3
    invoke-interface {p1, v0, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    invoke-interface {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public S0(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 5

    .line 1
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object v2

    invoke-direct {v0, p6, v1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/y;Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;)V

    :try_start_0
    const-string p6, "Last Stream ID"

    .line 3
    invoke-static {p2, p6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->k(ILjava/lang/String;)V

    .line 4
    invoke-static {p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->i(J)V

    .line 5
    invoke-virtual {p5}, Lkg/j;->P1()I

    move-result p6

    add-int/lit8 p6, p6, 0x8

    .line 6
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v1

    const/16 v2, 0x11

    invoke-interface {v1, v2}, Lkg/k;->l(I)Lkg/j;

    move-result-object v1

    const/4 v2, 0x7

    .line 7
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-direct {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;-><init>()V

    const/4 v4, 0x0

    invoke-static {v1, p6, v2, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->k(Lkg/j;IBLio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;I)V

    .line 8
    invoke-virtual {v1, p2}, Lkg/j;->E2(I)Lkg/j;

    long-to-int p2, p3

    .line 9
    invoke-virtual {v1, p2}, Lkg/j;->E2(I)Lkg/j;

    .line 10
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p2

    invoke-interface {p1, p5, p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 13
    :goto_0
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->u0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    .line 14
    :try_start_2
    invoke-interface {p5}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 15
    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 16
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->u0()Lio/grpc/netty/shaded/io/netty/channel/y;

    return-object v0

    :catchall_2
    move-exception p2

    .line 17
    invoke-virtual {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 18
    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->u0()Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 19
    throw p2
.end method

.method public a()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$c;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0;->configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$c;

    move-result-object v0

    return-object v0
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    .line 1
    new-instance v5, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;

    .line 2
    invoke-interface/range {p1 .. p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object v7

    move-object/from16 v8, p6

    invoke-direct {v5, v8, v6, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/y;Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;)V

    :try_start_0
    const-string v7, "Stream ID"

    .line 3
    invoke-static {v2, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->j(ILjava/lang/String;)V

    .line 4
    invoke-static/range {p4 .. p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->j(I)V

    .line 5
    invoke-virtual/range {p3 .. p3}, Lkg/j;->P1()I

    move-result v7

    .line 6
    new-instance v8, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-direct {v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;-><init>()V

    const/4 v9, 0x0

    .line 7
    invoke-virtual {v8, v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->e(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    .line 8
    invoke-virtual {v8, v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->j(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    .line 9
    iget v10, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->b:I

    const/16 v11, 0x9

    if-le v7, v10, :cond_1

    .line 10
    invoke-interface/range {p1 .. p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v10

    invoke-interface {v10, v11}, Lkg/k;->l(I)Lkg/j;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 11
    :try_start_1
    iget v12, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->b:I

    invoke-static {v10, v12, v9, v8, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->k(Lkg/j;IBLio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;I)V

    .line 12
    :cond_0
    invoke-virtual {v10}, Lkg/j;->W1()Lkg/j;

    move-result-object v12

    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 13
    iget v12, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->b:I

    invoke-virtual {v3, v12}, Lkg/j;->I1(I)Lkg/j;

    move-result-object v12

    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 14
    iget v12, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->b:I

    sub-int/2addr v7, v12

    if-gt v7, v12, :cond_0

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    if-nez p4, :cond_3

    if-eqz v10, :cond_2

    .line 15
    invoke-interface {v10}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    const/4 v10, 0x0

    .line 16
    :cond_2
    invoke-interface/range {p1 .. p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v12

    invoke-interface {v12, v11}, Lkg/k;->l(I)Lkg/j;

    move-result-object v11

    .line 17
    invoke-virtual {v8, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->e(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    .line 18
    invoke-static {v11, v7, v9, v8, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->k(Lkg/j;IBLio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;I)V

    .line 19
    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v2

    invoke-interface {v0, v11, v2}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 20
    invoke-virtual {v3, v7}, Lkg/j;->K1(I)Lkg/j;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 21
    :try_start_2
    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v6, v10

    :goto_1
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 22
    :cond_3
    :try_start_3
    iget v12, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->b:I

    if-eq v7, v12, :cond_5

    if-eqz v10, :cond_4

    .line 23
    invoke-interface {v10}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    move v10, v7

    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    move-object v11, v10

    :goto_2
    move v10, v7

    :goto_3
    move/from16 v7, p4

    goto :goto_5

    :cond_5
    sub-int/2addr v7, v12

    if-nez v10, :cond_6

    .line 24
    invoke-interface/range {p1 .. p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v12

    invoke-interface {v12, v11}, Lkg/k;->l(I)Lkg/j;

    move-result-object v11

    .line 25
    iget v12, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->b:I

    invoke-static {v11, v12, v9, v8, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->k(Lkg/j;IBLio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;I)V

    goto :goto_4

    .line 26
    :cond_6
    invoke-virtual {v10}, Lkg/j;->m2()Lkg/j;

    move-result-object v11

    const/4 v10, 0x0

    .line 27
    :goto_4
    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 28
    invoke-virtual/range {p3 .. p3}, Lkg/j;->P1()I

    move-result v11

    iget v12, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->b:I

    if-eq v11, v12, :cond_7

    invoke-virtual {v3, v12}, Lkg/j;->K1(I)Lkg/j;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 29
    :cond_7
    :try_start_4
    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v11

    invoke-interface {v0, v3, v11}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v11, v10

    const/4 v3, 0x0

    goto :goto_2

    .line 30
    :cond_8
    :goto_5
    :try_start_5
    iget v12, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->b:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 31
    iget v13, v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->b:I

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    sub-int/2addr v13, v12

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    sub-int/2addr v7, v13

    sub-int/2addr v10, v12

    .line 32
    invoke-interface/range {p1 .. p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v15

    const/16 v6, 0xa

    invoke-interface {v15, v6}, Lkg/k;->l(I)Lkg/j;

    move-result-object v6

    if-eqz v4, :cond_9

    if-nez v10, :cond_9

    if-nez v7, :cond_9

    const/4 v15, 0x1

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    .line 33
    :goto_6
    invoke-virtual {v8, v15}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->e(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    if-lez v13, :cond_a

    goto :goto_7

    :cond_a
    const/4 v14, 0x0

    .line 34
    :goto_7
    invoke-virtual {v8, v14}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->j(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    add-int v14, v13, v12

    .line 35
    invoke-static {v6, v14, v9, v8, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->k(Lkg/j;IBLio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;I)V

    .line 36
    invoke-static {v6, v13}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->s(Lkg/j;I)V

    .line 37
    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v14

    invoke-interface {v0, v6, v14}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    if-eqz v3, :cond_c

    if-nez v10, :cond_b

    .line 38
    invoke-virtual {v3, v12}, Lkg/j;->K1(I)Lkg/j;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 39
    :try_start_6
    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v3, 0x0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v6, v11

    goto/16 :goto_1

    .line 40
    :cond_b
    :try_start_7
    invoke-virtual {v3, v12}, Lkg/j;->I1(I)Lkg/j;

    move-result-object v6

    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v12

    invoke-interface {v0, v6, v12}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 41
    :cond_c
    :goto_8
    invoke-static {v13}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->h(I)I

    move-result v6

    if-lez v6, :cond_d

    .line 42
    sget-object v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->c:Lkg/j;

    invoke-static {v13}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->h(I)I

    move-result v12

    invoke-virtual {v6, v9, v12}, Lkg/j;->n2(II)Lkg/j;

    move-result-object v6

    .line 43
    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v12

    .line 44
    invoke-interface {v0, v6, v12}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_d
    if-nez v10, :cond_8

    if-nez v7, :cond_8

    .line 45
    :goto_9
    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->u0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v6, v11

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v6, v10

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v2, v0

    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_e

    .line 46
    invoke-interface {v6}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    :cond_e
    if-eqz v3, :cond_f

    .line 47
    :try_start_8
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v3, v0

    .line 48
    invoke-virtual {v5, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 49
    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->u0()Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 50
    throw v3

    .line 51
    :cond_f
    :goto_b
    invoke-virtual {v5, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 52
    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->u0()Lio/grpc/netty/shaded/io/netty/channel/y;

    return-object v5
.end method

.method public c()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k0;
    .locals 0

    return-object p0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0$a;
    .locals 0

    return-object p0
.end method

.method public d(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->b:I

    return-void

    .line 3
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->FRAME_SIZE_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Invalid MAX_FRAME_SIZE specified in sent settings: %d"

    invoke-static {v0, p1, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->b:I

    return v0
.end method

.method public i1(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->r(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZZISZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    return-object v0
.end method

.method public k0(Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 4

    :try_start_0
    const-string v0, "Stream ID"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->k(ILjava/lang/String;)V

    .line 2
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;->p(I)V

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Lkg/k;->l(I)Lkg/j;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    .line 4
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-direct {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;-><init>()V

    invoke-static {v0, v1, v2, v3, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->k(Lkg/j;IBLio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;I)V

    .line 5
    invoke-virtual {v0, p3}, Lkg/j;->E2(I)Lkg/j;

    .line 6
    invoke-interface {p1, v0, p4}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    invoke-interface {p4, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public m0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 5

    :try_start_0
    const-string v0, "settings"

    .line 1
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Ltg/a;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    .line 3
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v1

    add-int/lit8 v2, v0, 0x9

    invoke-interface {v1, v2}, Lkg/k;->l(I)Lkg/j;

    move-result-object v1

    const/4 v2, 0x4

    .line 4
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-direct {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;-><init>()V

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->k(Lkg/j;IBLio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;I)V

    .line 5
    invoke-virtual {p2}, Ltg/a;->entries()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltg/b$a;

    .line 6
    invoke-interface {v0}, Ltg/b$a;->key()C

    move-result v2

    invoke-virtual {v1, v2}, Lkg/j;->C2(I)Lkg/j;

    .line 7
    invoke-interface {v0}, Ltg/b$a;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lkg/j;->E2(I)Lkg/j;

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1, v1, p3}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    invoke-interface {p3, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public s0(Lio/grpc/netty/shaded/io/netty/channel/m;ZJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 4

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-direct {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;->a(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;

    invoke-direct {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;-><init>()V

    .line 2
    :goto_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->P()Lkg/k;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Lkg/k;->l(I)Lkg/j;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x6

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v1, v2, p2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x;->k(Lkg/j;IBLio/grpc/netty/shaded/io/netty/handler/codec/http2/f0;I)V

    .line 4
    invoke-virtual {v0, p3, p4}, Lkg/j;->G2(J)Lkg/j;

    .line 5
    invoke-interface {p1, v0, p5}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method
