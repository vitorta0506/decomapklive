.class public Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;
.implements Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$c;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;,
        Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

.field private final b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

.field private c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->d:Ljava/util/Queue;

    const-string v0, "connection"

    .line 3
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    const-string v0, "frameWriter"

    .line 4
    invoke-static {p2, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    iput-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    .line 5
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object p2

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;

    move-result-object p2

    if-nez p2, :cond_0

    .line 6
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object p2

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-direct {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;)V

    invoke-interface {p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    return-object p0
.end method

.method static synthetic d(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    return-object p0
.end method

.method static synthetic e(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZZ)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->p(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZZ)Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    return-object p0
.end method

.method static synthetic i(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 0

    invoke-static/range {p0 .. p10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p0

    return-object p0
.end method

.method private j(Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 1

    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$a;

    invoke-direct {v0, p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method private k(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->k(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stream no longer exists: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stream does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method private static o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 10

    if-eqz p4, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    .line 1
    invoke-interface/range {v0 .. v9}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->B(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p10

    .line 2
    invoke-interface/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->i1(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    return-object v0
.end method

.method private static p(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZZ)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;->t()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpStatusClass;->valueOf(Ljava/lang/CharSequence;)Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpStatusClass;

    move-result-object p1

    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpStatusClass;->INFORMATIONAL:Lio/grpc/netty/shaded/io/netty/handler/codec/http/HttpStatusClass;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    if-nez p3, :cond_2

    .line 2
    :cond_1
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->i()Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->j()Z

    move-result p2

    if-nez p2, :cond_3

    return p1

    .line 3
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stream "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " sent too many headers EOS: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private q(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 17

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v3, p2

    move/from16 v0, p9

    move-object/from16 v14, p10

    const/4 v15, 0x1

    .line 1
    :try_start_0
    iget-object v1, v12, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v1, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_2

    .line 2
    :try_start_1
    iget-object v1, v12, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->z(IZ)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v1
    :try_end_1
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_0
    :goto_0
    move-object v11, v1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3
    :try_start_2
    iget-object v1, v12, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v1

    invoke-interface {v1, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->p(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stream no longer exists: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v14, v1}, Lug/x;->z(Ljava/lang/Throwable;)Z

    return-object v14

    .line 5
    :cond_1
    throw v0

    .line 6
    :cond_2
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$b;->a:[I

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    if-eq v2, v15, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 7
    invoke-interface {v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->m(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    goto :goto_0

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in unexpected state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_5

    .line 11
    :try_start_3
    invoke-interface {v10, v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;->n(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;

    const/16 v16, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v11

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v15, v10

    move/from16 v10, v16

    move-object v13, v11

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZISZIZLio/grpc/netty/shaded/io/netty/channel/y;)V

    invoke-interface {v15, v13, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;)V

    return-object v14

    :cond_5
    :goto_2
    move-object v13, v11

    .line 13
    invoke-interface/range {p10 .. p10}, Lio/grpc/netty/shaded/io/netty/channel/y;->f0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v14

    .line 14
    iget-object v1, v12, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->m()Z

    move-result v1

    move-object/from16 v4, p3

    invoke-static {v13, v4, v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->p(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZZ)Z

    move-result v15

    .line 15
    iget-object v1, v12, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object v11, v14

    invoke-static/range {v1 .. v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v1

    .line 16
    invoke-interface {v1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_7

    .line 17
    invoke-interface {v13, v15}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->p(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 18
    invoke-interface {v1}, Lug/q;->p0()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v2, :cond_6

    move-object/from16 v3, p1

    move-object v4, v13

    .line 19
    :try_start_4
    invoke-direct {v12, v1, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->j(Lio/grpc/netty/shaded/io/netty/channel/i;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    goto :goto_3

    :cond_6
    move-object/from16 v3, p1

    move-object v4, v13

    goto :goto_3

    :cond_7
    move-object/from16 v3, p1

    move-object v4, v13

    .line 20
    iget-object v5, v12, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    const/4 v6, 0x1

    invoke-interface {v5, v3, v6, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;)V

    :goto_3
    if-eqz v0, :cond_8

    .line 21
    iget-object v0, v12, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    invoke-interface {v0, v4, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;->g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/channel/i;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v13

    .line 22
    :goto_4
    iget-object v1, v12, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    const/4 v2, 0x1

    invoke-interface {v1, v3, v2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;)V

    .line 23
    invoke-interface {v14, v0}, Lug/x;->z(Ljava/lang/Throwable;)Z

    return-object v14
.end method


# virtual methods
.method public B(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 11

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->q(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    return-object v0
.end method

.method public F1(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 6

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;->d(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public G1(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V
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
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0$a;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0$a;->a()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$c;

    move-result-object v2

    .line 4
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0$a;->c()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k0;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 5
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->m()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Client received a value of ENABLE_PUSH specified to other than 0"

    invoke-static {p1, v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1

    .line 7
    :cond_1
    :goto_0
    iget-object v3, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v3, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->s(Z)V

    .line 8
    :cond_2
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->D()Ljava/lang/Long;

    move-result-object v0

    const-wide/32 v3, 0x7fffffff

    if-eqz v0, :cond_3

    .line 9
    iget-object v5, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    invoke-interface {v5, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->u(I)V

    .line 10
    :cond_3
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->z()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v0, v3

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$c;->a(J)V

    .line 12
    :cond_4
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->H()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/o0$c;->b(J)V

    .line 14
    :cond_5
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->F()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/k0;->d(I)V

    .line 16
    :cond_6
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->B()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 17
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;->j(I)V

    :cond_7
    return-void
.end method

.method public N1(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->e:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->N1(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    if-nez v0, :cond_1

    .line 4
    new-instance p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const-string v1, "attempted to write a SETTINGS ACK with no  pending SETTINGS"

    invoke-direct {p1, v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v2

    .line 6
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->m0()Lug/j;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;-><init>(Lio/grpc/netty/shaded/io/netty/channel/y;Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;)V

    .line 7
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->N1(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 8
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->v0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p2

    .line 9
    :try_start_0
    invoke-virtual {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->G1(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V

    .line 10
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/y;->m()Lio/grpc/netty/shaded/io/netty/channel/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    invoke-interface {p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 12
    iget-object p2, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    const/4 v2, 0x1

    invoke-interface {p2, p1, v2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;->c(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;)V

    .line 13
    :goto_0
    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x$a;->u0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public O()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    return-object v0
.end method

.method public S0(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 7

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;->b(Lio/grpc/netty/shaded/io/netty/channel/m;IJLkg/j;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method

.method public Y0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    return-object v0
.end method

.method public a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->e:Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->e:Ljava/util/Queue;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 8

    .line 1
    invoke-interface {p6}, Lio/grpc/netty/shaded/io/netty/channel/y;->f0()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->k(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object p2

    .line 3
    sget-object p6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$b;->a:[I

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p6, p6, v0

    const/4 v0, 0x1

    if-eq p6, v0, :cond_1

    const/4 v0, 0x2

    if-ne p6, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Stream "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->G()I

    move-result p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, " in unexpected state "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->h()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream$State;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;

    move-result-object p6

    new-instance v7, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)V

    invoke-interface {p6, p2, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;->c(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0$a;)V

    return-object p1

    :catchall_0
    move-exception p2

    .line 6
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    .line 7
    invoke-interface {p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->close()V

    return-void
.end method

.method public configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0$a;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->configuration()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0$a;

    move-result-object v0

    return-object v0
.end method

.method public connection()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    return-object v0
.end method

.method public f(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;)V
    .locals 1

    const-string v0, "lifecycleManager"

    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->c:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/q0;

    return-void
.end method

.method public i1(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->q(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZISZIZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    return-object v0
.end method

.method public k0(Lio/grpc/netty/shaded/io/netty/channel/m;IILio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Use the Http2[Inbound|Outbound]FlowController objects to control window sizes"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public final m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->connection()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/v0;

    return-object v0
.end method

.method public m0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->d:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->J()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->b:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    const-string p2, "Server sending SETTINGS frame with ENABLE_PUSH specified"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;

    move-result-object p1

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->m0(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    invoke-interface {p3, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    return-object p1
.end method

.method public s0(Lio/grpc/netty/shaded/io/netty/channel/m;ZJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 6

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;->a:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->s0(Lio/grpc/netty/shaded/io/netty/channel/m;ZJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    return-object p1
.end method
