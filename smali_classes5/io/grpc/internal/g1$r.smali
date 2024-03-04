.class final Lio/grpc/internal/g1$r;
.super Lio/grpc/n0$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "r"
.end annotation


# instance fields
.field a:Lio/grpc/internal/j$b;

.field b:Z

.field c:Z

.field final synthetic d:Lio/grpc/internal/g1;


# direct methods
.method private constructor <init>(Lio/grpc/internal/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-direct {p0}, Lio/grpc/n0$d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/g1;Lio/grpc/internal/g1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/internal/g1$r;-><init>(Lio/grpc/internal/g1;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/lang/String;)Lio/grpc/q0;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/q0;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v1, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v1}, Lio/grpc/internal/g1;->R(Lio/grpc/internal/g1;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v3, "Channel is terminated"

    invoke-static {v1, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v1, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v1}, Lio/grpc/internal/g1;->d0(Lio/grpc/internal/g1;)Lio/grpc/internal/m2;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/m2;->a()J

    move-result-wide v14

    const/4 v1, 0x0

    const-string v3, "OobChannel"

    .line 3
    invoke-static {v3, v1}, Lio/grpc/g0;->b(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object v4

    const-string v1, "Subchannel-OOB"

    move-object/from16 v13, p2

    .line 4
    invoke-static {v1, v13}, Lio/grpc/g0;->b(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object v16

    .line 5
    new-instance v1, Lio/grpc/internal/o;

    iget-object v3, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    .line 6
    invoke-static {v3}, Lio/grpc/internal/g1;->e0(Lio/grpc/internal/g1;)I

    move-result v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OobChannel for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v1

    move-wide v6, v14

    invoke-direct/range {v3 .. v8}, Lio/grpc/internal/o;-><init>(Lio/grpc/g0;IJLjava/lang/String;)V

    .line 7
    new-instance v4, Lio/grpc/internal/q1;

    iget-object v3, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    .line 8
    invoke-static {v3}, Lio/grpc/internal/g1;->f0(Lio/grpc/internal/g1;)Lio/grpc/internal/p1;

    move-result-object v7

    iget-object v3, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v3}, Lio/grpc/internal/g1;->g0(Lio/grpc/internal/g1;)Lio/grpc/internal/s;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/internal/s;->o0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    iget-object v3, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    iget-object v9, v3, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    .line 9
    invoke-static {v3}, Lio/grpc/internal/g1;->h0(Lio/grpc/internal/g1;)Lio/grpc/internal/m$b;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/internal/m$b;->a()Lio/grpc/internal/m;

    move-result-object v10

    iget-object v3, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v3}, Lio/grpc/internal/g1;->i0(Lio/grpc/internal/g1;)Lio/grpc/c0;

    move-result-object v12

    iget-object v3, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v3}, Lio/grpc/internal/g1;->d0(Lio/grpc/internal/g1;)Lio/grpc/internal/m2;

    move-result-object v3

    move-object v5, v4

    move-object/from16 v6, p2

    move-object v11, v1

    move-object v13, v3

    invoke-direct/range {v5 .. v13}, Lio/grpc/internal/q1;-><init>(Ljava/lang/String;Lio/grpc/internal/p1;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/d1;Lio/grpc/internal/m;Lio/grpc/internal/o;Lio/grpc/c0;Lio/grpc/internal/m2;)V

    .line 10
    iget-object v3, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v3}, Lio/grpc/internal/g1;->P(Lio/grpc/internal/g1;)Lio/grpc/internal/o;

    move-result-object v3

    new-instance v5, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    invoke-direct {v5}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;-><init>()V

    const-string v6, "Child OobChannel created"

    .line 11
    invoke-virtual {v5, v6}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->c(Ljava/lang/String;)Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    move-result-object v5

    sget-object v13, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->CT_INFO:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    .line 12
    invoke-virtual {v5, v13}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->d(Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;)Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    move-result-object v5

    .line 13
    invoke-virtual {v5, v14, v15}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->f(J)Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    move-result-object v5

    .line 14
    invoke-virtual {v5, v4}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->b(Lio/grpc/l0;)Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    move-result-object v5

    .line 15
    invoke-virtual {v5}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->a()Lio/grpc/InternalChannelz$ChannelTrace$Event;

    move-result-object v5

    .line 16
    invoke-virtual {v3, v5}, Lio/grpc/internal/o;->e(Lio/grpc/InternalChannelz$ChannelTrace$Event;)V

    .line 17
    new-instance v12, Lio/grpc/internal/o;

    iget-object v3, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    .line 18
    invoke-static {v3}, Lio/grpc/internal/g1;->e0(Lio/grpc/internal/g1;)I

    move-result v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Subchannel for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v12

    move-object v11, v4

    move-object/from16 v4, v16

    move-wide v6, v14

    invoke-direct/range {v3 .. v8}, Lio/grpc/internal/o;-><init>(Lio/grpc/g0;IJLjava/lang/String;)V

    .line 19
    new-instance v10, Lio/grpc/internal/n;

    iget-object v3, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v3}, Lio/grpc/internal/g1;->d0(Lio/grpc/internal/g1;)Lio/grpc/internal/m2;

    move-result-object v3

    invoke-direct {v10, v12, v3}, Lio/grpc/internal/n;-><init>(Lio/grpc/internal/o;Lio/grpc/internal/m2;)V

    .line 20
    new-instance v9, Lio/grpc/internal/y0;

    iget-object v3, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    .line 21
    invoke-static {v3}, Lio/grpc/internal/g1;->l0(Lio/grpc/internal/g1;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v3}, Lio/grpc/internal/g1;->m0(Lio/grpc/internal/g1;)Lio/grpc/internal/k$a;

    move-result-object v5

    iget-object v3, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v3}, Lio/grpc/internal/g1;->g0(Lio/grpc/internal/g1;)Lio/grpc/internal/s;

    move-result-object v6

    iget-object v3, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    .line 22
    invoke-static {v3}, Lio/grpc/internal/g1;->g0(Lio/grpc/internal/g1;)Lio/grpc/internal/s;

    move-result-object v3

    invoke-interface {v3}, Lio/grpc/internal/s;->o0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    iget-object v3, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v3}, Lio/grpc/internal/g1;->n0(Lio/grpc/internal/g1;)Lcom/google/common/base/w;

    move-result-object v8

    iget-object v3, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    iget-object v3, v3, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    move-object/from16 v17, v10

    new-instance v10, Lio/grpc/internal/g1$r$c;

    invoke-direct {v10, v0, v11}, Lio/grpc/internal/g1$r$c;-><init>(Lio/grpc/internal/g1$r;Lio/grpc/internal/q1;)V

    move-object/from16 v18, v1

    iget-object v1, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    .line 23
    invoke-static {v1}, Lio/grpc/internal/g1;->i0(Lio/grpc/internal/g1;)Lio/grpc/c0;

    move-result-object v19

    iget-object v1, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    .line 24
    invoke-static {v1}, Lio/grpc/internal/g1;->h0(Lio/grpc/internal/g1;)Lio/grpc/internal/m$b;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/m$b;->a()Lio/grpc/internal/m;

    move-result-object v20

    move-object/from16 v0, v18

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v18, v3

    move-object/from16 v3, p2

    move-object/from16 v21, v0

    move-object v0, v9

    move-object/from16 v9, v18

    move-object/from16 v22, v11

    move-object/from16 v11, v19

    move-object/from16 v18, v12

    move-object/from16 v12, v20

    move-object/from16 v19, v0

    move-object v0, v13

    move-object/from16 v13, v18

    move-wide/from16 v23, v14

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Lio/grpc/internal/y0;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lio/grpc/internal/k$a;Lio/grpc/internal/s;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/w;Lio/grpc/d1;Lio/grpc/internal/y0$j;Lio/grpc/c0;Lio/grpc/internal/m;Lio/grpc/internal/o;Lio/grpc/g0;Lio/grpc/ChannelLogger;)V

    .line 25
    new-instance v1, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    invoke-direct {v1}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;-><init>()V

    const-string v2, "Child Subchannel created"

    .line 26
    invoke-virtual {v1, v2}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->c(Ljava/lang/String;)Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    move-result-object v1

    .line 27
    invoke-virtual {v1, v0}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->d(Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;)Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    move-result-object v0

    move-wide/from16 v1, v23

    .line 28
    invoke-virtual {v0, v1, v2}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->f(J)Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    move-result-object v0

    move-object/from16 v1, v19

    .line 29
    invoke-virtual {v0, v1}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->e(Lio/grpc/l0;)Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->a()Lio/grpc/InternalChannelz$ChannelTrace$Event;

    move-result-object v0

    move-object/from16 v2, v21

    .line 31
    invoke-virtual {v2, v0}, Lio/grpc/internal/o;->e(Lio/grpc/InternalChannelz$ChannelTrace$Event;)V

    move-object/from16 v0, p0

    .line 32
    iget-object v2, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v2}, Lio/grpc/internal/g1;->i0(Lio/grpc/internal/g1;)Lio/grpc/c0;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-virtual {v2, v3}, Lio/grpc/c0;->e(Lio/grpc/f0;)V

    .line 33
    iget-object v2, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v2}, Lio/grpc/internal/g1;->i0(Lio/grpc/internal/g1;)Lio/grpc/c0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/grpc/c0;->e(Lio/grpc/f0;)V

    .line 34
    invoke-virtual {v3, v1}, Lio/grpc/internal/q1;->t(Lio/grpc/internal/y0;)V

    .line 35
    iget-object v1, v0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    iget-object v1, v1, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    new-instance v2, Lio/grpc/internal/g1$r$a;

    invoke-direct {v2, v0, v3}, Lio/grpc/internal/g1$r$a;-><init>(Lio/grpc/internal/g1$r;Lio/grpc/internal/q1;)V

    invoke-virtual {v1, v2}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-object v3
.end method

.method public bridge synthetic b(Lio/grpc/n0$b;)Lio/grpc/n0$h;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/g1$r;->m(Lio/grpc/n0$b;)Lio/grpc/internal/e;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-virtual {v0}, Lio/grpc/internal/g1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lio/grpc/ChannelLogger;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->G(Lio/grpc/internal/g1;)Lio/grpc/ChannelLogger;

    move-result-object v0

    return-object v0
.end method

.method public e()Lio/grpc/t0$b;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->o0(Lio/grpc/internal/g1;)Lio/grpc/t0$b;

    move-result-object v0

    return-object v0
.end method

.method public f()Lio/grpc/v0;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->p0(Lio/grpc/internal/g1;)Lio/grpc/v0;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->V(Lio/grpc/internal/g1;)Lio/grpc/internal/g1$v;

    move-result-object v0

    return-object v0
.end method

.method public h()Lio/grpc/d1;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    return-object v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/g1$r;->c:Z

    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/grpc/internal/g1$r;->b:Z

    .line 3
    iget-object v0, p0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    new-instance v1, Lio/grpc/internal/g1$r$b;

    invoke-direct {v1, p0}, Lio/grpc/internal/g1$r$b;-><init>(Lio/grpc/internal/g1$r;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    const-string v0, "newState"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "newPicker"

    .line 3
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    new-instance v1, Lio/grpc/internal/g1$r$d;

    invoke-direct {v1, p0, p2, p1}, Lio/grpc/internal/g1$r$d;-><init>(Lio/grpc/internal/g1$r;Lio/grpc/n0$i;Lio/grpc/ConnectivityState;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l(Lio/grpc/q0;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/q0;",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lio/grpc/internal/q1;

    const-string v1, "channel must have been returned from createOobChannel"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    check-cast p1, Lio/grpc/internal/q1;

    invoke-virtual {p1, p2}, Lio/grpc/internal/q1;->u(Ljava/util/List;)V

    return-void
.end method

.method public m(Lio/grpc/n0$b;)Lio/grpc/internal/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->a0(Lio/grpc/internal/g1;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Channel is being terminated"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    new-instance v0, Lio/grpc/internal/g1$w;

    iget-object v1, p0, Lio/grpc/internal/g1$r;->d:Lio/grpc/internal/g1;

    invoke-direct {v0, v1, p1, p0}, Lio/grpc/internal/g1$w;-><init>(Lio/grpc/internal/g1;Lio/grpc/n0$b;Lio/grpc/internal/g1$r;)V

    return-object v0
.end method
