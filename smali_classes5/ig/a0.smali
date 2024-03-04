.class Lig/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/u;


# instance fields
.field private final A:Lio/grpc/ChannelLogger;

.field private final B:Z

.field private final a:Lio/grpc/g0;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "*>;*>;"
        }
    .end annotation
.end field

.field private final c:Ljava/net/SocketAddress;

.field private final d:Lio/grpc/netty/shaded/io/netty/channel/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/netty/shaded/io/netty/channel/h<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/e;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lio/grpc/netty/shaded/io/netty/channel/m0;

.field private final f:Lig/g0;

.field private final g:Ljava/lang/String;

.field private final h:Lio/grpc/netty/shaded/io/netty/util/c;

.field private final i:Lio/grpc/netty/shaded/io/netty/util/c;

.field private final j:Z

.field private final k:I

.field private final l:I

.field private final m:I

.field private n:Lio/grpc/internal/c1;

.field private final o:J

.field private final p:J

.field private final q:Z

.field private final r:Lio/grpc/netty/shaded/io/netty/util/c;

.field private final s:Ljava/lang/Runnable;

.field private t:Lig/y;

.field private u:Lio/grpc/netty/shaded/io/netty/channel/e;

.field private v:Lio/grpc/Status;

.field private w:Lig/d;

.field private final x:Lio/grpc/internal/p2;

.field private final y:Lio/grpc/a;

.field private final z:Lig/v$c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/net/SocketAddress;Lio/grpc/netty/shaded/io/netty/channel/h;Ljava/util/Map;Lio/grpc/netty/shaded/io/netty/channel/m0;Lig/g0;ZIIIJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Lio/grpc/internal/p2;Lio/grpc/a;Lig/v$c;Lio/grpc/ChannelLogger;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lio/grpc/netty/shaded/io/netty/channel/h<",
            "+",
            "Lio/grpc/netty/shaded/io/netty/channel/e;",
            ">;",
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "*>;*>;",
            "Lio/grpc/netty/shaded/io/netty/channel/m0;",
            "Lig/g0;",
            "ZIIIJJZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/grpc/internal/p2;",
            "Lio/grpc/a;",
            "Lig/v$c;",
            "Lio/grpc/ChannelLogger;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p15

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "negotiator"

    move-object v3, p5

    .line 2
    invoke-static {p5, v2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lig/g0;

    iput-object v2, v0, Lig/a0;->f:Lig/g0;

    .line 3
    invoke-interface {v2}, Lig/g0;->b()Lio/grpc/netty/shaded/io/netty/util/c;

    move-result-object v2

    iput-object v2, v0, Lig/a0;->r:Lio/grpc/netty/shaded/io/netty/util/c;

    const-string v2, "address"

    move-object v3, p1

    .line 4
    invoke-static {p1, v2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/SocketAddress;

    iput-object v2, v0, Lig/a0;->c:Ljava/net/SocketAddress;

    const-string v3, "group"

    move-object v4, p4

    .line 5
    invoke-static {p4, v3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/netty/shaded/io/netty/channel/m0;

    iput-object v3, v0, Lig/a0;->e:Lio/grpc/netty/shaded/io/netty/channel/m0;

    move-object v3, p2

    .line 6
    iput-object v3, v0, Lig/a0;->d:Lio/grpc/netty/shaded/io/netty/channel/h;

    const-string v3, "channelOptions"

    move-object v4, p3

    .line 7
    invoke-static {p3, v3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iput-object v3, v0, Lig/a0;->b:Ljava/util/Map;

    move v3, p6

    .line 8
    iput-boolean v3, v0, Lig/a0;->j:Z

    move v3, p7

    .line 9
    iput v3, v0, Lig/a0;->k:I

    move v3, p8

    .line 10
    iput v3, v0, Lig/a0;->l:I

    move v3, p9

    .line 11
    iput v3, v0, Lig/a0;->m:I

    move-wide v3, p10

    .line 12
    iput-wide v3, v0, Lig/a0;->o:J

    move-wide/from16 v3, p12

    .line 13
    iput-wide v3, v0, Lig/a0;->p:J

    move/from16 v3, p14

    .line 14
    iput-boolean v3, v0, Lig/a0;->q:Z

    .line 15
    iput-object v1, v0, Lig/a0;->g:Ljava/lang/String;

    .line 16
    new-instance v3, Lio/grpc/netty/shaded/io/netty/util/c;

    invoke-direct {v3, v1}, Lio/grpc/netty/shaded/io/netty/util/c;-><init>(Ljava/lang/CharSequence;)V

    iput-object v3, v0, Lig/a0;->h:Lio/grpc/netty/shaded/io/netty/util/c;

    .line 17
    new-instance v1, Lio/grpc/netty/shaded/io/netty/util/c;

    const-string v3, "netty"

    move-object/from16 v4, p16

    invoke-static {v3, v4}, Lio/grpc/internal/GrpcUtil;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lio/grpc/netty/shaded/io/netty/util/c;-><init>(Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lig/a0;->i:Lio/grpc/netty/shaded/io/netty/util/c;

    const-string v1, "tooManyPingsRunnable"

    move-object/from16 v3, p17

    .line 18
    invoke-static {v3, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, v0, Lig/a0;->s:Ljava/lang/Runnable;

    const-string v1, "transportTracer"

    move-object/from16 v3, p18

    .line 19
    invoke-static {v3, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/p2;

    iput-object v1, v0, Lig/a0;->x:Lio/grpc/internal/p2;

    const-string v1, "eagAttributes"

    move-object/from16 v3, p19

    .line 20
    invoke-static {v3, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/a;

    iput-object v1, v0, Lig/a0;->y:Lio/grpc/a;

    const-string v1, "localSocketPicker"

    move-object/from16 v3, p20

    .line 21
    invoke-static {v3, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lig/v$c;

    iput-object v1, v0, Lig/a0;->z:Lig/v$c;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/grpc/g0;->a(Ljava/lang/Class;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object v1

    iput-object v1, v0, Lig/a0;->a:Lio/grpc/g0;

    const-string v1, "channelLogger"

    move-object/from16 v2, p21

    .line 23
    invoke-static {v2, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ChannelLogger;

    iput-object v1, v0, Lig/a0;->A:Lio/grpc/ChannelLogger;

    move/from16 v1, p22

    .line 24
    iput-boolean v1, v0, Lig/a0;->B:Z

    return-void
.end method

.method static synthetic a(Lig/a0;)Lio/grpc/Status;
    .locals 0

    iget-object p0, p0, Lig/a0;->v:Lio/grpc/Status;

    return-object p0
.end method

.method static synthetic i(Lig/a0;Lio/grpc/netty/shaded/io/netty/channel/i;)Lio/grpc/Status;
    .locals 0

    invoke-direct {p0, p1}, Lig/a0;->l(Lio/grpc/netty/shaded/io/netty/channel/i;)Lio/grpc/Status;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lig/a0;)Lig/d;
    .locals 0

    iget-object p0, p0, Lig/a0;->w:Lig/d;

    return-object p0
.end method

.method static synthetic k(Lig/a0;)Lio/grpc/netty/shaded/io/netty/channel/e;
    .locals 0

    iget-object p0, p0, Lig/a0;->u:Lio/grpc/netty/shaded/io/netty/channel/e;

    return-object p0
.end method

.method private l(Lio/grpc/netty/shaded/io/netty/channel/i;)Lio/grpc/Status;
    .locals 2

    .line 1
    invoke-interface {p1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/nio/channels/ClosedChannelException;

    if-nez v0, :cond_1

    instance-of v0, p1, Lio/grpc/netty/shaded/io/netty/handler/codec/http2/StreamBufferingEncoder$Http2ChannelClosedException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lig/m0;->s(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lig/a0;->w:Lig/d;

    invoke-virtual {v0}, Lig/d;->a()Lio/grpc/Status;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5
    sget-object v0, Lio/grpc/Status;->h:Lio/grpc/Status;

    const-string v1, "Channel closed but for unknown reason"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 6
    invoke-virtual {v1, p1}, Ljava/nio/channels/ClosedChannelException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public b(Lio/grpc/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lig/a0;->u:Lio/grpc/netty/shaded/io/netty/channel/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lig/a0;->t:Lig/y;

    invoke-virtual {v0}, Lig/y;->c1()Lig/o0;

    move-result-object v0

    new-instance v1, Lig/a0$f;

    invoke-direct {v1, p0, p1}, Lig/a0$f;-><init>(Lig/a0;Lio/grpc/Status;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lig/o0;->d(Ljava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method

.method public c()Lio/grpc/g0;
    .locals 1

    iget-object v0, p0, Lig/a0;->a:Lio/grpc/g0;

    return-object v0
.end method

.method public d(Lio/grpc/internal/r$a;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lig/a0;->u:Lio/grpc/netty/shaded/io/netty/channel/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lig/a0$a;

    invoke-direct {v0, p0, p1}, Lig/a0$a;-><init>(Lig/a0;Lio/grpc/internal/r$a;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lig/a0$b;

    invoke-direct {v0, p0, p1, p2}, Lig/a0$b;-><init>(Lig/a0;Lio/grpc/internal/r$a;Ljava/util/concurrent/Executor;)V

    .line 4
    iget-object v1, p0, Lig/a0;->t:Lig/y;

    invoke-virtual {v1}, Lig/y;->c1()Lig/o0;

    move-result-object v1

    new-instance v2, Lig/j0;

    invoke-direct {v2, p1, p2}, Lig/j0;-><init>(Lio/grpc/internal/r$a;Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x1

    invoke-virtual {v1, v2, p1}, Lig/o0;->c(Lig/o0$c;Z)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    .line 5
    invoke-interface {p1, v0}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    return-void
.end method

.method public e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/s0;",
            "Lio/grpc/c;",
            "[",
            "Lio/grpc/k;",
            ")",
            "Lio/grpc/internal/q;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object/from16 v0, p4

    const-string v1, "method"

    move-object/from16 v11, p1

    .line 1
    invoke-static {v11, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "headers"

    .line 2
    invoke-static {v12, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v8, Lig/a0;->u:Lio/grpc/netty/shaded/io/netty/channel/e;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lio/grpc/internal/f0;

    iget-object v2, v8, Lig/a0;->v:Lio/grpc/Status;

    invoke-direct {v1, v2, v0}, Lio/grpc/internal/f0;-><init>(Lio/grpc/Status;[Lio/grpc/k;)V

    return-object v1

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lig/a0;->f()Lio/grpc/a;

    move-result-object v1

    invoke-static {v0, v1, v12}, Lio/grpc/internal/i2;->h([Lio/grpc/k;Lio/grpc/a;Lio/grpc/s0;)Lio/grpc/internal/i2;

    move-result-object v17

    .line 6
    new-instance v21, Lig/z;

    new-instance v10, Lig/a0$c;

    iget-object v2, v8, Lig/a0;->t:Lig/y;

    iget-object v0, v8, Lig/a0;->u:Lio/grpc/netty/shaded/io/netty/channel/e;

    .line 7
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->a0()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v3

    iget v4, v8, Lig/a0;->l:I

    iget-object v6, v8, Lig/a0;->x:Lio/grpc/internal/p2;

    .line 8
    invoke-virtual/range {p1 .. p1}, Lio/grpc/MethodDescriptor;->c()Ljava/lang/String;

    move-result-object v7

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v7}, Lig/a0$c;-><init>(Lig/a0;Lig/y;Lio/grpc/netty/shaded/io/netty/channel/l0;ILio/grpc/internal/i2;Lio/grpc/internal/p2;Ljava/lang/String;)V

    iget-object v13, v8, Lig/a0;->u:Lio/grpc/netty/shaded/io/netty/channel/e;

    iget-object v14, v8, Lig/a0;->h:Lio/grpc/netty/shaded/io/netty/util/c;

    iget-object v15, v8, Lig/a0;->r:Lio/grpc/netty/shaded/io/netty/util/c;

    iget-object v0, v8, Lig/a0;->i:Lio/grpc/netty/shaded/io/netty/util/c;

    iget-object v1, v8, Lig/a0;->x:Lio/grpc/internal/p2;

    iget-boolean v2, v8, Lig/a0;->B:Z

    move-object/from16 v9, v21

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v16, v0

    move-object/from16 v18, v1

    move-object/from16 v19, p3

    move/from16 v20, v2

    invoke-direct/range {v9 .. v20}, Lig/z;-><init>(Lig/z$c;Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/netty/shaded/io/netty/util/c;Lio/grpc/internal/i2;Lio/grpc/internal/p2;Lio/grpc/c;Z)V

    return-object v21
.end method

.method public f()Lio/grpc/a;
    .locals 1

    iget-object v0, p0, Lig/a0;->t:Lig/y;

    invoke-virtual {v0}, Lig/y;->a1()Lio/grpc/a;

    move-result-object v0

    return-object v0
.end method

.method public g(Lio/grpc/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lig/a0;->u:Lio/grpc/netty/shaded/io/netty/channel/e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lig/a0;->t:Lig/y;

    invoke-virtual {v0}, Lig/y;->c1()Lig/o0;

    move-result-object v0

    new-instance v1, Lig/i;

    invoke-direct {v1, p1}, Lig/i;-><init>(Lio/grpc/Status;)V

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lig/o0;->c(Lig/o0$c;Z)Lio/grpc/netty/shaded/io/netty/channel/i;

    :cond_1
    return-void
.end method

.method public h(Lio/grpc/internal/k1$a;)Ljava/lang/Runnable;
    .locals 24

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lig/d;

    const-string v2, "listener"

    move-object/from16 v3, p1

    .line 2
    invoke-static {v3, v2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/k1$a;

    invoke-direct {v1, v2}, Lig/d;-><init>(Lio/grpc/internal/k1$a;)V

    iput-object v1, v0, Lig/a0;->w:Lig/d;

    .line 3
    iget-object v1, v0, Lig/a0;->e:Lio/grpc/netty/shaded/io/netty/channel/m0;

    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/m0;->next()Lio/grpc/netty/shaded/io/netty/channel/l0;

    move-result-object v1

    .line 4
    iget-wide v2, v0, Lig/a0;->o:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v2, v10

    if-eqz v4, :cond_0

    .line 5
    new-instance v12, Lio/grpc/internal/c1;

    new-instance v3, Lio/grpc/internal/c1$c;

    invoke-direct {v3, v0}, Lio/grpc/internal/c1$c;-><init>(Lio/grpc/internal/u;)V

    iget-wide v5, v0, Lig/a0;->o:J

    iget-wide v7, v0, Lig/a0;->p:J

    iget-boolean v9, v0, Lig/a0;->q:Z

    move-object v2, v12

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lio/grpc/internal/c1;-><init>(Lio/grpc/internal/c1$d;Ljava/util/concurrent/ScheduledExecutorService;JJZ)V

    iput-object v12, v0, Lig/a0;->n:Lio/grpc/internal/c1;

    .line 6
    :cond_0
    iget-object v13, v0, Lig/a0;->w:Lig/d;

    iget-object v14, v0, Lig/a0;->n:Lio/grpc/internal/c1;

    iget-boolean v15, v0, Lig/a0;->j:Z

    iget v2, v0, Lig/a0;->k:I

    iget v3, v0, Lig/a0;->m:I

    sget-object v18, Lio/grpc/internal/GrpcUtil;->v:Lcom/google/common/base/w;

    iget-object v4, v0, Lig/a0;->s:Ljava/lang/Runnable;

    iget-object v5, v0, Lig/a0;->x:Lio/grpc/internal/p2;

    iget-object v6, v0, Lig/a0;->y:Lio/grpc/a;

    iget-object v7, v0, Lig/a0;->g:Ljava/lang/String;

    iget-object v8, v0, Lig/a0;->A:Lio/grpc/ChannelLogger;

    move/from16 v16, v2

    move/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    invoke-static/range {v13 .. v23}, Lig/y;->g1(Lig/d;Lio/grpc/internal/c1;ZIILcom/google/common/base/w;Ljava/lang/Runnable;Lio/grpc/internal/p2;Lio/grpc/a;Ljava/lang/String;Lio/grpc/ChannelLogger;)Lig/y;

    move-result-object v2

    iput-object v2, v0, Lig/a0;->t:Lig/y;

    .line 7
    iget-object v3, v0, Lig/a0;->f:Lig/g0;

    invoke-interface {v3, v2}, Lig/g0;->a(Lig/j;)Lio/grpc/netty/shaded/io/netty/channel/k;

    move-result-object v2

    .line 8
    new-instance v3, Ljg/c;

    invoke-direct {v3}, Ljg/c;-><init>()V

    .line 9
    sget-object v4, Lio/grpc/netty/shaded/io/netty/channel/r;->f:Lio/grpc/netty/shaded/io/netty/channel/r;

    const/4 v5, 0x0

    invoke-static {v5}, Lig/m0;->m(Z)Lkg/k;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljg/a;->u(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Ljg/a;

    .line 10
    invoke-virtual {v3, v1}, Ljg/a;->k(Lio/grpc/netty/shaded/io/netty/channel/m0;)Ljg/a;

    .line 11
    iget-object v1, v0, Lig/a0;->d:Lio/grpc/netty/shaded/io/netty/channel/h;

    invoke-virtual {v3, v1}, Ljg/a;->d(Lio/grpc/netty/shaded/io/netty/channel/h;)Ljg/a;

    .line 12
    sget-object v1, Lio/grpc/netty/shaded/io/netty/channel/r;->t:Lio/grpc/netty/shaded/io/netty/channel/r;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v1, v4}, Ljg/a;->u(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Ljg/a;

    .line 13
    iget-wide v4, v0, Lig/a0;->o:J

    cmp-long v1, v4, v10

    if-eqz v1, :cond_1

    .line 14
    invoke-static {}, Lig/m0;->q()Lio/grpc/netty/shaded/io/netty/channel/r;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 15
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, v0, Lig/a0;->p:J

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    long-to-int v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljg/a;->u(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Ljg/a;

    .line 16
    :cond_1
    iget-object v1, v0, Lig/a0;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/netty/shaded/io/netty/channel/r;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljg/a;->u(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Ljg/a;

    goto :goto_0

    .line 18
    :cond_2
    new-instance v1, Lig/n0;

    invoke-direct {v1, v2}, Lig/n0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/k;)V

    .line 19
    invoke-virtual {v3, v1}, Ljg/a;->m(Lio/grpc/netty/shaded/io/netty/channel/k;)Ljg/a;

    .line 20
    invoke-virtual {v3}, Ljg/a;->w()Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Lug/q;->p0()Z

    move-result v2

    if-nez v2, :cond_4

    .line 22
    iput-object v3, v0, Lig/a0;->u:Lio/grpc/netty/shaded/io/netty/channel/e;

    .line 23
    invoke-interface {v1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3

    .line 24
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Channel is null, but future doesn\'t have a cause"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    :cond_3
    invoke-static {v1}, Lig/m0;->s(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v1

    iput-object v1, v0, Lig/a0;->v:Lio/grpc/Status;

    .line 26
    new-instance v1, Lig/a0$d;

    invoke-direct {v1, v0}, Lig/a0$d;-><init>(Lig/a0;)V

    return-object v1

    .line 27
    :cond_4
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/i;->d()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v1

    iput-object v1, v0, Lig/a0;->u:Lio/grpc/netty/shaded/io/netty/channel/e;

    .line 28
    iget-object v2, v0, Lig/a0;->t:Lig/y;

    invoke-virtual {v2, v1}, Lig/y;->q1(Lio/grpc/netty/shaded/io/netty/channel/e;)V

    .line 29
    iget-object v1, v0, Lig/a0;->u:Lio/grpc/netty/shaded/io/netty/channel/e;

    sget-object v2, Lig/y;->R:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/v;->g(Ljava/lang/Object;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v1

    new-instance v2, Lig/a0$e;

    invoke-direct {v2, v0}, Lig/a0$e;-><init>(Lig/a0;)V

    invoke-interface {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/i;->c(Lug/r;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 30
    iget-object v1, v0, Lig/a0;->z:Lig/v$c;

    iget-object v2, v0, Lig/a0;->c:Ljava/net/SocketAddress;

    iget-object v4, v0, Lig/a0;->y:Lio/grpc/a;

    .line 31
    invoke-virtual {v1, v2, v4}, Lig/v$c;->a(Ljava/net/SocketAddress;Lio/grpc/a;)Ljava/net/SocketAddress;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 32
    iget-object v2, v0, Lig/a0;->u:Lio/grpc/netty/shaded/io/netty/channel/e;

    iget-object v4, v0, Lig/a0;->c:Ljava/net/SocketAddress;

    invoke-interface {v2, v4, v1}, Lio/grpc/netty/shaded/io/netty/channel/v;->I(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_1

    .line 33
    :cond_5
    iget-object v1, v0, Lig/a0;->u:Lio/grpc/netty/shaded/io/netty/channel/e;

    iget-object v2, v0, Lig/a0;->c:Ljava/net/SocketAddress;

    invoke-interface {v1, v2}, Lio/grpc/netty/shaded/io/netty/channel/v;->f(Ljava/net/SocketAddress;)Lio/grpc/netty/shaded/io/netty/channel/i;

    .line 34
    :goto_1
    iget-object v1, v0, Lig/a0;->n:Lio/grpc/internal/c1;

    if-eqz v1, :cond_6

    .line 35
    invoke-virtual {v1}, Lio/grpc/internal/c1;->q()V

    :cond_6
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lig/a0;->a:Lio/grpc/g0;

    .line 2
    invoke-virtual {v1}, Lio/grpc/g0;->d()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lig/a0;->c:Ljava/net/SocketAddress;

    const-string v2, "remoteAddress"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lig/a0;->u:Lio/grpc/netty/shaded/io/netty/channel/e;

    const-string v2, "channel"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
