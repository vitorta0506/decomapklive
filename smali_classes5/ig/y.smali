.class Lig/y;
.super Lig/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lig/y$i;,
        Lig/y$h;
    }
.end annotation


# static fields
.field private static final Q:Ljava/util/logging/Logger;

.field static final R:Ljava/lang/Object;

.field private static final a1:Lio/grpc/Status;


# instance fields
.field private final C:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

.field private final D:Lig/d;

.field private final E:Lio/grpc/internal/c1;

.field private final F:Lcom/google/common/base/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/w<",
            "Lcom/google/common/base/u;",
            ">;"
        }
    .end annotation
.end field

.field private final G:Lio/grpc/internal/p2;

.field private final H:Lio/grpc/a;

.field private final I:Ljava/lang/String;

.field private final J:Lio/grpc/internal/w0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/w0<",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field

.field private K:Lig/o0;

.field private L:Lio/grpc/internal/v0;

.field private M:Lio/grpc/a;

.field private N:Lio/grpc/c0$c;

.field private O:Lio/grpc/Status;

.field private P:Lio/grpc/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lig/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lig/y;->Q:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lig/y;->R:Ljava/lang/Object;

    .line 3
    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v1, "Stream IDs have been exhausted"

    .line 4
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lig/y;->a1:Lio/grpc/Status;

    return-void
.end method

.method private constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Lio/grpc/ChannelLogger;Lig/d;Lio/grpc/internal/c1;Lcom/google/common/base/w;Ljava/lang/Runnable;Lio/grpc/internal/p2;Lio/grpc/a;Ljava/lang/String;ZLig/b$d;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;",
            "Lio/grpc/ChannelLogger;",
            "Lig/d;",
            "Lio/grpc/internal/c1;",
            "Lcom/google/common/base/w<",
            "Lcom/google/common/base/u;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lio/grpc/internal/p2;",
            "Lio/grpc/a;",
            "Ljava/lang/String;",
            "Z",
            "Lig/b$d;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p10

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p12

    move-object/from16 v7, p13

    .line 1
    invoke-direct/range {v0 .. v7}, Lig/b;-><init>(Lio/grpc/netty/shaded/io/netty/channel/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Lio/grpc/ChannelLogger;ZLig/b$d;)V

    .line 2
    new-instance v0, Lig/y$a;

    invoke-direct {v0, p0}, Lig/y$a;-><init>(Lig/y;)V

    iput-object v0, v8, Lig/y;->J:Lio/grpc/internal/w0;

    move-object v0, p5

    .line 3
    iput-object v0, v8, Lig/y;->D:Lig/d;

    move-object/from16 v0, p6

    .line 4
    iput-object v0, v8, Lig/y;->E:Lio/grpc/internal/c1;

    move-object/from16 v0, p7

    .line 5
    iput-object v0, v8, Lig/y;->F:Lcom/google/common/base/w;

    .line 6
    invoke-static/range {p9 .. p9}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/p2;

    iput-object v0, v8, Lig/y;->G:Lio/grpc/internal/p2;

    .line 7
    iput-object v9, v8, Lig/y;->H:Lio/grpc/a;

    move-object/from16 v0, p11

    .line 8
    iput-object v0, v8, Lig/y;->I:Ljava/lang/String;

    .line 9
    invoke-static {}, Lio/grpc/a;->c()Lio/grpc/a$b;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/r0;->b:Lio/grpc/a$c;

    .line 10
    invoke-virtual {v0, v1, v9}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v0

    iput-object v0, v8, Lig/y;->M:Lio/grpc/a;

    .line 11
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->g0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;

    move-result-object v0

    new-instance v1, Lig/y$h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lig/y$h;-><init>(Lig/y;Lig/y$a;)V

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;->S(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/i0;)V

    .line 12
    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;->connection()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->a()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    move-result-object v1

    iput-object v1, v8, Lig/y;->C:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    .line 14
    new-instance v1, Lig/y$b;

    move-object/from16 v2, p8

    invoke-direct {v1, p0, v2}, Lig/y$b;-><init>(Lig/y;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->g(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$b;)V

    return-void
.end method

.method static synthetic G0(Lig/y;)Lig/d;
    .locals 0

    iget-object p0, p0, Lig/y;->D:Lig/d;

    return-object p0
.end method

.method static synthetic H0(Lig/y;)Lio/grpc/internal/v0;
    .locals 0

    iget-object p0, p0, Lig/y;->L:Lio/grpc/internal/v0;

    return-object p0
.end method

.method static synthetic I0(Lig/y;Lio/grpc/internal/v0;)Lio/grpc/internal/v0;
    .locals 0

    iput-object p1, p0, Lig/y;->L:Lio/grpc/internal/v0;

    return-object p1
.end method

.method static synthetic J0(Lig/y;ILkg/j;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lig/y;->i1(ILkg/j;IZ)V

    return-void
.end method

.method static synthetic K0(Lig/y;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lig/y;->j1(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Z)V

    return-void
.end method

.method static synthetic L0(Lig/y;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lig/y;->k1(IJ)V

    return-void
.end method

.method static synthetic M0(Lig/y;J[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lig/y;->d1(J[B)V

    return-void
.end method

.method static synthetic N0()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lig/y;->Q:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic O0(Lig/y;)Lio/grpc/internal/c1;
    .locals 0

    iget-object p0, p0, Lig/y;->E:Lio/grpc/internal/c1;

    return-object p0
.end method

.method static synthetic P0(Lig/y;)Lio/grpc/internal/w0;
    .locals 0

    iget-object p0, p0, Lig/y;->J:Lio/grpc/internal/w0;

    return-object p0
.end method

.method static synthetic Q0(Lig/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lig/z$c;
    .locals 0

    invoke-direct {p0, p1}, Lig/y;->W0(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lig/z$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic R0(Lig/y;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;
    .locals 0

    iget-object p0, p0, Lig/y;->C:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    return-object p0
.end method

.method static synthetic S0(Lig/y;Lio/grpc/Status$Code;Ljava/lang/String;J[B)Lio/grpc/Status;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lig/y;->r1(Lio/grpc/Status$Code;Ljava/lang/String;J[B)Lio/grpc/Status;

    move-result-object p0

    return-object p0
.end method

.method static synthetic T0(Lig/y;)Lio/grpc/internal/p2;
    .locals 0

    iget-object p0, p0, Lig/y;->G:Lio/grpc/internal/p2;

    return-object p0
.end method

.method private U0(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lig/y;->L:Lio/grpc/internal/v0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lio/grpc/internal/v0;->f(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lig/y;->L:Lio/grpc/internal/v0;

    :cond_0
    return-void
.end method

.method private V0(Lio/grpc/netty/shaded/io/netty/channel/m;Lig/c;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Lig/c;->f()Lig/z$c;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lig/z$c;->tag()Lqh/d;

    move-result-object v1

    const-string v2, "NettyClientHandler.cancelStream"

    invoke-static {v2, v1}, Lqh/c;->h(Ljava/lang/String;Lqh/d;)V

    .line 3
    invoke-virtual {p2}, Lig/o0$b;->c()Lqh/b;

    move-result-object v1

    invoke-static {v1}, Lqh/c;->e(Lqh/b;)V

    .line 4
    :try_start_0
    invoke-virtual {p2}, Lig/c;->d()Lio/grpc/Status;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 5
    new-instance v4, Lio/grpc/s0;

    invoke-direct {v4}, Lio/grpc/s0;-><init>()V

    invoke-virtual {v0, v1, v3, v4}, Lio/grpc/internal/a$c;->P(Lio/grpc/Status;ZLio/grpc/s0;)V

    .line 6
    :cond_0
    invoke-virtual {p2}, Lig/c;->f()Lig/z$c;

    move-result-object p2

    invoke-virtual {p2}, Lig/z$c;->a0()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->i0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object v3

    invoke-virtual {v0}, Lig/z$c;->G()I

    move-result v5

    sget-object p2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->CANCEL:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    invoke-virtual {p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v6

    move-object v4, p1

    move-object v8, p3

    invoke-interface/range {v3 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->F1(Lio/grpc/netty/shaded/io/netty/channel/m;IJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/channel/y;->m()Lio/grpc/netty/shaded/io/netty/channel/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    invoke-virtual {v0}, Lig/z$c;->tag()Lqh/d;

    move-result-object p1

    invoke-static {v2, p1}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lig/z$c;->tag()Lqh/d;

    move-result-object p2

    invoke-static {v2, p2}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    throw p1
.end method

.method private W0(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lig/z$c;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lig/y;->C:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;

    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;->a(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lig/z$c;

    :goto_0
    return-object p1
.end method

.method private X0(Lig/e;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lig/y;->D:Lig/d;

    invoke-virtual {v0}, Lig/d;->b()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lig/e;->h()Lig/z$c;

    move-result-object v0

    invoke-virtual {v0}, Lig/z$c;->d0()V

    .line 3
    invoke-virtual {p1}, Lig/e;->h()Lig/z$c;

    move-result-object p1

    iget-object v0, p0, Lig/y;->D:Lig/d;

    .line 4
    invoke-virtual {v0}, Lig/d;->a()Lio/grpc/Status;

    move-result-object v0

    sget-object v2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->MISCARRIED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v3, Lio/grpc/s0;

    invoke-direct {v3}, Lio/grpc/s0;-><init>()V

    .line 5
    invoke-virtual {p1, v0, v2, v1, v3}, Lio/grpc/internal/a$c;->O(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/s0;)V

    .line 6
    iget-object p1, p0, Lig/y;->D:Lig/d;

    invoke-virtual {p1}, Lig/d;->b()Ljava/lang/Throwable;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lig/y;->f1()I

    move-result v2
    :try_end_0
    .catch Lio/grpc/StatusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->o()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lig/y;->O:Lio/grpc/Status;

    .line 10
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->A()I

    move-result v3

    .line 11
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v4

    invoke-interface {v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v4

    invoke-interface {v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->t()I

    move-result v4

    if-nez v0, :cond_1

    .line 12
    sget-object v0, Lio/grpc/Status;->t:Lio/grpc/Status;

    const-string v5, "Failed due to abrupt GOAWAY, but can\'t find GOAWAY details"

    invoke-virtual {v0, v5}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-le v2, v4, :cond_2

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stream id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", GOAWAY Last-Stream-ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/grpc/Status;->f(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v5

    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v5

    invoke-interface {v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->n()I

    move-result v5

    if-ne v5, v3, :cond_3

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "At MAX_CONCURRENT_STREAMS limit. limit: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/grpc/Status;->f(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    :cond_3
    :goto_0
    if-gt v2, v4, :cond_4

    .line 16
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v4

    invoke-interface {v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v4

    invoke-interface {v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->n()I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 17
    :cond_4
    invoke-virtual {p1}, Lig/e;->h()Lig/z$c;

    move-result-object v2

    invoke-virtual {v2}, Lig/z$c;->d0()V

    .line 18
    invoke-virtual {p1}, Lig/e;->h()Lig/z$c;

    move-result-object p1

    sget-object v2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->MISCARRIED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v3, Lio/grpc/s0;

    invoke-direct {v3}, Lio/grpc/s0;-><init>()V

    invoke-virtual {p1, v0, v2, v1, v3}, Lio/grpc/internal/a$c;->O(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/s0;)V

    .line 19
    invoke-virtual {v0}, Lio/grpc/Status;->d()Lio/grpc/StatusRuntimeException;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void

    .line 20
    :cond_5
    invoke-virtual {p1}, Lig/e;->h()Lig/z$c;

    move-result-object v7

    .line 21
    invoke-virtual {p1}, Lig/e;->d()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;

    move-result-object v3

    .line 22
    invoke-virtual {v7, v2}, Lig/z$c;->c0(I)V

    .line 23
    invoke-virtual {v7}, Lig/z$c;->tag()Lqh/d;

    move-result-object v0

    const-string v8, "NettyClientHandler.createStream"

    invoke-static {v8, v0}, Lqh/c;->h(Ljava/lang/String;Lqh/d;)V

    .line 24
    invoke-virtual {p1}, Lig/o0$b;->c()Lqh/b;

    move-result-object v0

    invoke-static {v0}, Lqh/c;->e(Lqh/b;)V

    .line 25
    :try_start_1
    invoke-virtual {p1}, Lig/e;->f()Z

    move-result v4

    invoke-virtual {p1}, Lig/e;->g()Z

    move-result v5

    move-object v0, p0

    move v1, v2

    move-object v2, v7

    move-object v6, p2

    .line 26
    invoke-direct/range {v0 .. v6}, Lig/y;->Y0(ILig/z$c;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZZLio/grpc/netty/shaded/io/netty/channel/y;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual {v7}, Lig/z$c;->tag()Lqh/d;

    move-result-object p1

    invoke-static {v8, p1}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v7}, Lig/z$c;->tag()Lqh/d;

    move-result-object p2

    invoke-static {v8, p2}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    throw p1

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {p1}, Lig/e;->h()Lig/z$c;

    move-result-object p1

    invoke-virtual {p1}, Lig/z$c;->d0()V

    .line 29
    invoke-interface {p2, v0}, Lio/grpc/netty/shaded/io/netty/channel/y;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 30
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->e()Z

    move-result p1

    if-nez p1, :cond_6

    .line 31
    sget-object p1, Lig/y;->Q:Ljava/util/logging/Logger;

    const-string p2, "Stream IDs have been exhausted for this connection. Initiating graceful shutdown of the connection."

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lig/y;->D:Lig/d;

    invoke-virtual {v0}, Lio/grpc/StatusException;->getStatus()Lio/grpc/Status;

    move-result-object p2

    invoke-virtual {p1, p2}, Lig/d;->f(Lio/grpc/Status;)Z

    .line 33
    invoke-virtual {p0}, Lig/b;->D0()Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object p1

    invoke-virtual {p0}, Lig/b;->D0()Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object p2

    invoke-interface {p2}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lig/y;->l(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    :cond_6
    return-void
.end method

.method private Y0(ILig/z$c;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;ZZLio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lig/b;->D0()Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v7

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->i0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object v1

    invoke-virtual {p0}, Lig/b;->D0()Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object v2

    const/4 v5, 0x0

    move v3, p1

    move-object v4, p3

    move v6, p4

    invoke-interface/range {v1 .. v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->i1(Lio/grpc/netty/shaded/io/netty/channel/m;ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p3

    new-instance p4, Lig/y$d;

    move-object v0, p4

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lig/y$d;-><init>(Lig/y;ILig/z$c;ZLio/grpc/netty/shaded/io/netty/channel/y;)V

    .line 3
    invoke-interface {p3, p4}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method private Z0(Lio/grpc/netty/shaded/io/netty/channel/m;Lig/h;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    new-instance v1, Lig/y$f;

    invoke-direct {v1, p0, p2, p1}, Lig/y$f;-><init>(Lig/y;Lig/h;Lio/grpc/netty/shaded/io/netty/channel/m;)V

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    .line 2
    invoke-virtual {p0, p1, p3}, Lig/y;->l(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method private d1(J[B)V
    .locals 9

    .line 1
    sget-object v6, Lio/grpc/Status$Code;->UNAVAILABLE:Lio/grpc/Status$Code;

    const-string v2, "GOAWAY shut down transport"

    move-object v0, p0

    move-object v1, v6

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lig/y;->r1(Lio/grpc/Status$Code;Ljava/lang/String;J[B)Lio/grpc/Status;

    move-result-object v7

    .line 2
    iget-object v0, p0, Lig/y;->D:Lig/d;

    invoke-virtual {v0, v7}, Lig/d;->c(Lio/grpc/Status;)V

    const-string v2, "Abrupt GOAWAY closed unsent stream"

    move-object v0, p0

    .line 3
    invoke-direct/range {v0 .. v5}, Lig/y;->r1(Lio/grpc/Status$Code;Ljava/lang/String;J[B)Lio/grpc/Status;

    move-result-object v0

    iput-object v0, p0, Lig/y;->O:Lio/grpc/Status;

    const/4 v2, 0x0

    const-string v3, "Abrupt GOAWAY closed sent stream"

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    .line 4
    invoke-direct/range {v1 .. v6}, Lig/y;->r1(Lio/grpc/Status$Code;Ljava/lang/String;J[B)Lio/grpc/Status;

    move-result-object v0

    .line 5
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->NO_ERROR:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lig/y;->K:Lig/o0;

    invoke-virtual {v2}, Lig/o0;->b()V

    .line 7
    iget-object v2, p0, Lig/y;->D:Lig/d;

    invoke-virtual {v2, v7}, Lig/d;->f(Lio/grpc/Status;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    const-string v5, "Connection closed after GOAWAY"

    move-object v3, p0

    move-wide v6, p1

    move-object v8, p3

    .line 8
    invoke-direct/range {v3 .. v8}, Lig/y;->r1(Lio/grpc/Status$Code;Ljava/lang/String;J[B)Lio/grpc/Status;

    move-result-object p1

    iput-object p1, p0, Lig/y;->P:Lio/grpc/Status;

    .line 9
    :cond_1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->t()I

    move-result p1

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object p2

    new-instance p3, Lig/y$g;

    invoke-direct {p3, p0, p1, v1, v0}, Lig/y$g;-><init>(Lig/y;IZLio/grpc/Status;)V

    invoke-interface {p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private e1(Lio/grpc/netty/shaded/io/netty/channel/m;Lig/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lig/y;->D:Lig/d;

    invoke-virtual {p2}, Lig/i;->d()Lio/grpc/Status;

    move-result-object p2

    invoke-virtual {v0, p2}, Lig/d;->f(Lio/grpc/Status;)Z

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->n(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 3
    invoke-virtual {p0, p1, p3}, Lig/y;->l(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method private f1()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/StatusException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->y()I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    .line 2
    :cond_0
    sget-object v0, Lig/y;->Q:Ljava/util/logging/Logger;

    const-string v1, "Stream IDs have been exhausted for this connection. Initiating graceful shutdown of the connection."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lig/y;->a1:Lio/grpc/Status;

    invoke-virtual {v0}, Lio/grpc/Status;->c()Lio/grpc/StatusException;

    move-result-object v0

    throw v0
.end method

.method static g1(Lig/d;Lio/grpc/internal/c1;ZIILcom/google/common/base/w;Ljava/lang/Runnable;Lio/grpc/internal/p2;Lio/grpc/a;Ljava/lang/String;Lio/grpc/ChannelLogger;)Lig/y;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lig/d;",
            "Lio/grpc/internal/c1;",
            "ZII",
            "Lcom/google/common/base/w<",
            "Lcom/google/common/base/u;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lio/grpc/internal/p2;",
            "Lio/grpc/a;",
            "Ljava/lang/String;",
            "Lio/grpc/ChannelLogger;",
            ")",
            "Lig/y;"
        }
    .end annotation

    move/from16 v7, p4

    const/4 v0, 0x0

    if-lez v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "maxHeaderListSize must be positive"

    .line 1
    invoke-static {v1, v2}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    new-instance v1, Lig/k;

    int-to-long v2, v7

    invoke-direct {v1, v2, v3}, Lig/k;-><init>(J)V

    .line 3
    new-instance v2, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;

    invoke-direct {v2, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/n0;)V

    .line 4
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;

    invoke-direct {v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/h;-><init>()V

    .line 5
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;

    invoke-direct {v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/d;-><init>(Z)V

    .line 6
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;

    invoke-direct {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;)V

    const/16 v4, 0x4000

    .line 7
    invoke-virtual {v0, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c1;->j(I)V

    .line 8
    new-instance v4, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;

    invoke-direct {v4, v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b1;)V

    .line 9
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->b()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v0

    invoke-interface {v0, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, p0

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    .line 10
    invoke-static/range {v0 .. v13}, Lig/y;->h1(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;Lig/d;Lio/grpc/internal/c1;ZIILcom/google/common/base/w;Ljava/lang/Runnable;Lio/grpc/internal/p2;Lio/grpc/a;Ljava/lang/String;Lio/grpc/ChannelLogger;)Lig/y;

    move-result-object v0

    return-object v0
.end method

.method static h1(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;Lig/d;Lio/grpc/internal/c1;ZIILcom/google/common/base/w;Ljava/lang/Runnable;Lio/grpc/internal/p2;Lio/grpc/a;Ljava/lang/String;Lio/grpc/ChannelLogger;)Lig/y;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;",
            "Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;",
            "Lig/d;",
            "Lio/grpc/internal/c1;",
            "ZII",
            "Lcom/google/common/base/w<",
            "Lcom/google/common/base/u;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lio/grpc/internal/p2;",
            "Lio/grpc/a;",
            "Ljava/lang/String;",
            "Lio/grpc/ChannelLogger;",
            ")",
            "Lig/y;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move/from16 v3, p7

    const-string v4, "connection"

    .line 1
    invoke-static {v0, v4}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "frameReader"

    .line 2
    invoke-static {v1, v4}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "lifecycleManager"

    move-object/from16 v10, p3

    .line 3
    invoke-static {v10, v4}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "flowControlWindow must be positive"

    .line 4
    invoke-static {v6, v7}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    if-lez v3, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-string v7, "maxHeaderListSize must be positive"

    .line 5
    invoke-static {v6, v7}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    const-string v6, "stopwatchFactory"

    move-object/from16 v12, p8

    .line 6
    invoke-static {v12, v6}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "tooManyPingsRunnable"

    move-object/from16 v13, p9

    .line 7
    invoke-static {v13, v6}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "eagAttributes"

    move-object/from16 v15, p11

    .line 8
    invoke-static {v15, v6}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "authority"

    move-object/from16 v14, p12

    .line 9
    invoke-static {v14, v6}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;

    sget-object v7, Lio/grpc/netty/shaded/io/netty/handler/logging/LogLevel;->DEBUG:Lio/grpc/netty/shaded/io/netty/handler/logging/LogLevel;

    const-class v8, Lig/y;

    invoke-direct {v6, v7, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;-><init>(Lio/grpc/netty/shaded/io/netty/handler/logging/LogLevel;Ljava/lang/Class;)V

    .line 11
    new-instance v7, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;

    invoke-direct {v7, v1, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/p0;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;)V

    .line 12
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;

    move-object/from16 v8, p2

    invoke-direct {v1, v8, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/t0;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2FrameLogger;)V

    .line 13
    new-instance v11, Lig/y$i;

    invoke-direct {v11, v1}, Lig/y$i;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;)V

    .line 14
    new-instance v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;

    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;

    invoke-direct {v6, v0, v11}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/f;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;)V

    invoke-direct {v1, v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;)V

    .line 15
    invoke-interface/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->f()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;

    move-result-object v6

    new-instance v8, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct {v8, v0, v9, v4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/l;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;FZ)V

    invoke-interface {v6, v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y$a;->o(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/g0;)V

    .line 16
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;

    invoke-direct {v6, v0, v1, v7}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/j0;)V

    .line 17
    new-instance v4, Lig/m0$g;

    invoke-direct {v4, v0}, Lig/m0$g;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;)V

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Lio/grpc/internal/p2;->g(Lio/grpc/internal/p2$c;)V

    .line 18
    new-instance v8, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    invoke-direct {v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;-><init>()V

    .line 19
    invoke-virtual {v8, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->I(Z)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    .line 20
    invoke-virtual {v8, v2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->A(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    const-wide/16 v4, 0x0

    .line 21
    invoke-virtual {v8, v4, v5}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->C(J)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    int-to-long v2, v3

    .line 22
    invoke-virtual {v8, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;->G(J)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;

    .line 23
    new-instance v2, Lig/y;

    move-object v5, v2

    move-object v7, v1

    move-object/from16 v9, p13

    move-object/from16 v10, p3

    move-object v1, v11

    move-object/from16 v11, p4

    move-object/from16 v14, p10

    move-object/from16 v16, p12

    move/from16 v17, p5

    move-object/from16 v18, v1

    invoke-direct/range {v5 .. v18}, Lig/y;-><init>(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/x0;Lio/grpc/ChannelLogger;Lig/d;Lio/grpc/internal/c1;Lcom/google/common/base/w;Ljava/lang/Runnable;Lio/grpc/internal/p2;Lio/grpc/a;Ljava/lang/String;ZLig/b$d;)V

    return-object v2
.end method

.method private i1(ILkg/j;IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lig/b;->E0()Lig/b$c;

    move-result-object v0

    invoke-virtual {p2}, Lkg/j;->P1()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lig/b$c;->d(II)V

    .line 2
    invoke-direct {p0, p1}, Lig/y;->l1(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object p1

    invoke-direct {p0, p1}, Lig/y;->W0(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lig/z$c;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lig/z$c;->tag()Lqh/d;

    move-result-object p3

    const-string v0, "NettyClientHandler.onDataRead"

    invoke-static {v0, p3}, Lqh/c;->d(Ljava/lang/String;Lqh/d;)V

    .line 4
    invoke-virtual {p1, p2, p4}, Lig/z$c;->f0(Lkg/j;Z)V

    .line 5
    iget-object p1, p0, Lig/y;->E:Lio/grpc/internal/c1;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lio/grpc/internal/c1;->n()V

    :cond_0
    return-void
.end method

.method private j1(ILio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Z)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lig/y;->l1(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object p1

    invoke-direct {p0, p1}, Lig/y;->W0(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lig/z$c;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lig/z$c;->tag()Lqh/d;

    move-result-object v0

    const-string v1, "NettyClientHandler.onHeadersRead"

    invoke-static {v1, v0}, Lqh/c;->d(Ljava/lang/String;Lqh/d;)V

    .line 3
    invoke-virtual {p1, p2, p3}, Lig/z$c;->g0(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Headers;Z)V

    .line 4
    :cond_0
    iget-object p1, p0, Lig/y;->E:Lio/grpc/internal/c1;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lio/grpc/internal/c1;->n()V

    :cond_1
    return-void
.end method

.method private k1(IJ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object p1

    invoke-direct {p0, p1}, Lig/y;->W0(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lig/z$c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lig/z$c;->tag()Lqh/d;

    move-result-object v0

    const-string v1, "NettyClientHandler.onRstStreamRead"

    invoke-static {v1, v0}, Lqh/c;->d(Ljava/lang/String;Lqh/d;)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    const-string v4, "RST_STREAM closed stream"

    move-object v2, p0

    move-wide v5, p2

    .line 3
    invoke-direct/range {v2 .. v7}, Lig/y;->r1(Lio/grpc/Status$Code;Ljava/lang/String;J[B)Lio/grpc/Status;

    move-result-object v0

    .line 4
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->REFUSED_STREAM:Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;

    invoke-virtual {v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Error;->code()J

    move-result-wide v1

    cmp-long v3, p2, v1

    if-nez v3, :cond_0

    .line 5
    sget-object p2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->REFUSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    goto :goto_0

    :cond_0
    sget-object p2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    :goto_0
    const/4 p3, 0x0

    new-instance v1, Lio/grpc/s0;

    invoke-direct {v1}, Lio/grpc/s0;-><init>()V

    .line 6
    invoke-virtual {p1, v0, p2, p3, v1}, Lio/grpc/internal/a$c;->O(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/s0;)V

    .line 7
    iget-object p1, p0, Lig/y;->E:Lio/grpc/internal/c1;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lio/grpc/internal/c1;->n()V

    :cond_1
    return-void
.end method

.method private l1(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private n1(Lio/grpc/netty/shaded/io/netty/channel/m;Lig/i0;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Lig/i0;->n()Lig/k0;

    move-result-object v0

    invoke-interface {v0}, Lig/k0;->tag()Lqh/d;

    move-result-object v0

    const-string v1, "NettyClientHandler.sendGrpcFrame"

    invoke-static {v1, v0}, Lqh/c;->h(Ljava/lang/String;Lqh/d;)V

    .line 2
    invoke-virtual {p2}, Lig/i0;->k()Lqh/b;

    move-result-object v0

    invoke-static {v0}, Lqh/c;->e(Lqh/b;)V

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->i0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object v2

    invoke-virtual {p2}, Lig/i0;->n()Lig/k0;

    move-result-object v0

    invoke-interface {v0}, Lig/k0;->G()I

    move-result v4

    invoke-virtual {p2}, Lkg/p;->content()Lkg/j;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p2}, Lig/i0;->j()Z

    move-result v7

    move-object v3, p1

    move-object v8, p3

    invoke-interface/range {v2 .. v8}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/e0;->b(Lio/grpc/netty/shaded/io/netty/channel/m;ILkg/j;IZLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p2}, Lig/i0;->n()Lig/k0;

    move-result-object p1

    invoke-interface {p1}, Lig/k0;->tag()Lqh/d;

    move-result-object p1

    invoke-static {v1, p1}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lig/i0;->n()Lig/k0;

    move-result-object p2

    invoke-interface {p2}, Lig/k0;->tag()Lqh/d;

    move-result-object p2

    invoke-static {v1, p2}, Lqh/c;->j(Ljava/lang/String;Lqh/d;)V

    throw p1
.end method

.method private o1(Lio/grpc/netty/shaded/io/netty/channel/m;Lig/j0;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 2

    const-string v0, "NettyClientHandler.sendPingFrame"

    .line 1
    invoke-static {v0}, Lqh/c;->g(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lig/o0$b;->c()Lqh/b;

    move-result-object v1

    invoke-static {v1}, Lqh/c;->e(Lqh/b;)V

    .line 3
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lig/y;->p1(Lio/grpc/netty/shaded/io/netty/channel/m;Lig/j0;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Lqh/c;->i(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lqh/c;->i(Ljava/lang/String;)V

    throw p1
.end method

.method private p1(Lio/grpc/netty/shaded/io/netty/channel/m;Lig/j0;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lig/j0;->d()Lio/grpc/internal/r$a;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lig/j0;->f()Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 3
    iget-object v1, p0, Lig/y;->L:Lio/grpc/internal/v0;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/channel/y;->m()Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 5
    iget-object p1, p0, Lig/y;->L:Lio/grpc/internal/v0;

    invoke-virtual {p1, v0, p2}, Lio/grpc/internal/v0;->a(Lio/grpc/internal/r$a;Ljava/util/concurrent/Executor;)V

    return-void

    .line 6
    :cond_0
    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/channel/y;->m()Lio/grpc/netty/shaded/io/netty/channel/y;

    .line 7
    invoke-virtual {p0}, Lig/b;->D0()Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object p3

    invoke-interface {p3}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p3

    const-wide/16 v1, 0x457

    .line 8
    iget-object v3, p0, Lig/y;->F:Lcom/google/common/base/w;

    invoke-interface {v3}, Lcom/google/common/base/w;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/base/u;

    .line 9
    invoke-virtual {v3}, Lcom/google/common/base/u;->g()Lcom/google/common/base/u;

    .line 10
    new-instance v4, Lio/grpc/internal/v0;

    invoke-direct {v4, v1, v2, v3}, Lio/grpc/internal/v0;-><init>(JLcom/google/common/base/u;)V

    iput-object v4, p0, Lig/y;->L:Lio/grpc/internal/v0;

    .line 11
    invoke-virtual {v4, v0, p2}, Lio/grpc/internal/v0;->a(Lio/grpc/internal/r$a;Ljava/util/concurrent/Executor;)V

    .line 12
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->i0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x457

    move-object v2, p1

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/m0;->s0(Lio/grpc/netty/shaded/io/netty/channel/m;ZJLio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 13
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->flush()Lio/grpc/netty/shaded/io/netty/channel/m;

    .line 14
    iget-object p1, p0, Lig/y;->L:Lio/grpc/internal/v0;

    .line 15
    new-instance p2, Lig/y$e;

    invoke-direct {p2, p0, p1}, Lig/y$e;-><init>(Lig/y;Lio/grpc/internal/v0;)V

    invoke-interface {p3, p2}, Lio/grpc/netty/shaded/io/netty/channel/y;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void
.end method

.method private r1(Lio/grpc/Status$Code;Ljava/lang/String;J[B)Lio/grpc/Status;
    .locals 2

    long-to-int p4, p3

    int-to-long p3, p4

    .line 1
    invoke-static {p3, p4}, Lio/grpc/internal/GrpcUtil$Http2Error;->statusForCode(J)Lio/grpc/Status;

    move-result-object p3

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p3}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object p1

    :cond_0
    if-eqz p5, :cond_1

    .line 3
    array-length p4, p5

    if-lez p4, :cond_1

    .line 4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", debug data: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lio/grpc/netty/shaded/io/netty/util/h;->d:Ljava/nio/charset/Charset;

    invoke-direct {v0, p5, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_1
    const-string p4, ""

    .line 5
    :goto_0
    invoke-virtual {p1}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object p1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p3}, Lio/grpc/Status;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    return-object p1
.end method

.method static s1(Lio/grpc/netty/shaded/io/netty/channel/e;)V
    .locals 1

    const-string v0, "channel"

    .line 1
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/e;->J()Lio/grpc/netty/shaded/io/netty/channel/w;

    move-result-object p0

    const-class v0, Lig/n0;

    invoke-interface {p0, v0}, Lio/grpc/netty/shaded/io/netty/channel/w;->W(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/m;->z()Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v0

    check-cast v0, Lig/n0;

    invoke-virtual {v0, p0}, Lig/n0;->w(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    return-void
.end method


# virtual methods
.method public A0(Lio/grpc/a;Lio/grpc/c0$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lig/y;->M:Lio/grpc/a;

    invoke-virtual {v0}, Lio/grpc/a;->d()Lio/grpc/a$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/a$b;->e(Lio/grpc/a;)Lio/grpc/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v0

    iput-object v0, p0, Lig/y;->M:Lio/grpc/a;

    .line 2
    iput-object p2, p0, Lig/y;->N:Lio/grpc/c0$c;

    .line 3
    invoke-super {p0, p1, p2}, Lig/j;->A0(Lio/grpc/a;Lio/grpc/c0$c;)V

    .line 4
    invoke-virtual {p0}, Lig/b;->D0()Lio/grpc/netty/shaded/io/netty/channel/m;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object p1

    invoke-static {p1}, Lig/y;->s1(Lio/grpc/netty/shaded/io/netty/channel/e;)V

    return-void
.end method

.method a1()Lio/grpc/a;
    .locals 1

    iget-object v0, p0, Lig/y;->M:Lio/grpc/a;

    return-object v0
.end method

.method b1()Lig/d;
    .locals 1

    iget-object v0, p0, Lig/y;->D:Lig/d;

    return-object v0
.end method

.method c1()Lig/o0;
    .locals 1

    iget-object v0, p0, Lig/y;->K:Lig/o0;

    return-object v0
.end method

.method public e(Lio/grpc/netty/shaded/io/netty/channel/m;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lig/e;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lig/e;

    invoke-direct {p0, p2, p3}, Lig/y;->X0(Lig/e;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p2, Lig/i0;

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Lig/i0;

    invoke-direct {p0, p1, p2, p3}, Lig/y;->n1(Lio/grpc/netty/shaded/io/netty/channel/m;Lig/i0;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p2, Lig/c;

    if-eqz v0, :cond_2

    .line 6
    check-cast p2, Lig/c;

    invoke-direct {p0, p1, p2, p3}, Lig/y;->V0(Lio/grpc/netty/shaded/io/netty/channel/m;Lig/c;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 7
    :cond_2
    instance-of v0, p2, Lig/j0;

    if-eqz v0, :cond_3

    .line 8
    check-cast p2, Lig/j0;

    invoke-direct {p0, p1, p2, p3}, Lig/y;->o1(Lio/grpc/netty/shaded/io/netty/channel/m;Lig/j0;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 9
    :cond_3
    instance-of v0, p2, Lig/i;

    if-eqz v0, :cond_4

    .line 10
    check-cast p2, Lig/i;

    invoke-direct {p0, p1, p2, p3}, Lig/y;->e1(Lio/grpc/netty/shaded/io/netty/channel/m;Lig/i;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 11
    :cond_4
    instance-of v0, p2, Lig/h;

    if-eqz v0, :cond_5

    .line 12
    check-cast p2, Lig/h;

    invoke-direct {p0, p1, p2, p3}, Lig/y;->Z0(Lio/grpc/netty/shaded/io/netty/channel/m;Lig/h;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    goto :goto_0

    .line 13
    :cond_5
    sget-object v0, Lig/y;->R:Ljava/lang/Object;

    if-ne p2, v0, :cond_6

    .line 14
    sget-object p2, Lkg/s0;->d:Lkg/j;

    invoke-interface {p1, p2, p3}, Lio/grpc/netty/shaded/io/netty/channel/v;->c(Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/channel/y;)Lio/grpc/netty/shaded/io/netty/channel/i;

    :goto_0
    return-void

    .line 15
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Write called for unexpected type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public l(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lig/y;->Q:Ljava/util/logging/Logger;

    const-string v1, "Network channel being closed by the application."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/m;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lig/y;->D:Lig/d;

    sget-object v1, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v2, "Transport closed for unknown reason"

    .line 4
    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lig/d;->f(Lio/grpc/Status;)Z

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->l(Lio/grpc/netty/shaded/io/netty/channel/m;Lio/grpc/netty/shaded/io/netty/channel/y;)V

    return-void
.end method

.method m1(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->g0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/a0;->m()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/r0;->m(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;I)Z
    :try_end_0
    .catch Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected n0()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->n0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->i0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/b0;

    move-result-object v0

    check-cast v0, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;

    invoke-virtual {v0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder;->p()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected p0(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;)V
    .locals 3

    .line 1
    sget-object v0, Lig/y;->Q:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Caught a connection error"

    invoke-virtual {v0, v1, v2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lig/y;->D:Lig/d;

    invoke-static {p3}, Lig/m0;->s(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lig/d;->f(Lio/grpc/Status;)Z

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->p0(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception;)V

    return-void
.end method

.method q1(Lio/grpc/netty/shaded/io/netty/channel/e;)V
    .locals 1

    new-instance v0, Lig/o0;

    invoke-direct {v0, p1}, Lig/o0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;)V

    iput-object v0, p0, Lig/y;->K:Lig/o0;

    return-void
.end method

.method protected r0(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v0

    invoke-virtual {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;->streamId()I

    move-result v1

    invoke-interface {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->c(I)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    invoke-direct {p0, v0}, Lig/y;->W0(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;)Lig/z$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p3}, Lig/m0;->s(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lio/grpc/s0;

    invoke-direct {v3}, Lio/grpc/s0;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lio/grpc/internal/a$c;->P(Lio/grpc/Status;ZLio/grpc/s0;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lig/y;->Q:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stream error for unknown stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;->streamId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->r0(Lio/grpc/netty/shaded/io/netty/channel/m;ZLjava/lang/Throwable;Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Exception$StreamException;)V

    return-void
.end method

.method public t(Lio/grpc/netty/shaded/io/netty/channel/m;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lig/y;->Q:Ljava/util/logging/Logger;

    const-string v1, "Network channel is closed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v1, "Network closed for unknown reason"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lig/y;->D:Lig/d;

    invoke-virtual {v1, v0}, Lig/d;->f(Lio/grpc/Status;)Z

    .line 4
    iget-object v1, p0, Lig/y;->P:Lio/grpc/Status;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lig/y;->D:Lig/d;

    invoke-virtual {v1}, Lig/d;->a()Lio/grpc/Status;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :goto_0
    :try_start_1
    iget-object v2, p0, Lig/y;->D:Lig/d;

    invoke-virtual {v2}, Lig/d;->b()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v2}, Lig/y;->U0(Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->f0()Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;

    move-result-object v2

    new-instance v3, Lig/y$c;

    invoke-direct {v3, p0, v1}, Lig/y$c;-><init>(Lig/y;Lio/grpc/Status;)V

    invoke-interface {v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/y;->l(Lio/grpc/netty/shaded/io/netty/handler/codec/http2/z0;)Lio/grpc/netty/shaded/io/netty/handler/codec/http2/Http2Stream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    iget-object v1, p0, Lig/y;->D:Lig/d;

    invoke-virtual {v1, v0}, Lig/d;->g(Lio/grpc/Status;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->t(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 10
    iget-object p1, p0, Lig/y;->E:Lio/grpc/internal/c1;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p1}, Lio/grpc/internal/c1;->r()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_3
    iget-object v2, p0, Lig/y;->D:Lig/d;

    invoke-virtual {v2, v0}, Lig/d;->g(Lio/grpc/Status;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 13
    invoke-super {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/c0;->t(Lio/grpc/netty/shaded/io/netty/channel/m;)V

    .line 14
    iget-object p1, p0, Lig/y;->E:Lio/grpc/internal/c1;

    if-eqz p1, :cond_2

    .line 15
    invoke-virtual {p1}, Lio/grpc/internal/c1;->r()V

    :cond_2
    throw v0
.end method

.method public x0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lig/y;->I:Ljava/lang/String;

    return-object v0
.end method

.method public y0()Lio/grpc/a;
    .locals 1

    iget-object v0, p0, Lig/y;->H:Lio/grpc/a;

    return-object v0
.end method
