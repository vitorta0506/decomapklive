.class final Lio/grpc/internal/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f0;
.implements Lio/grpc/internal/o2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/y0$m;,
        Lio/grpc/internal/y0$k;,
        Lio/grpc/internal/y0$i;,
        Lio/grpc/internal/y0$j;,
        Lio/grpc/internal/y0$l;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/f0<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/grpc/internal/o2;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/g0;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lio/grpc/internal/k$a;

.field private final e:Lio/grpc/internal/y0$j;

.field private final f:Lio/grpc/internal/s;

.field private final g:Ljava/util/concurrent/ScheduledExecutorService;

.field private final h:Lio/grpc/c0;

.field private final i:Lio/grpc/internal/m;

.field private final j:Lio/grpc/internal/o;

.field private final k:Lio/grpc/ChannelLogger;

.field private final l:Lio/grpc/d1;

.field private final m:Lio/grpc/internal/y0$k;

.field private volatile n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lio/grpc/internal/k;

.field private final p:Lcom/google/common/base/u;

.field private q:Lio/grpc/d1$c;

.field private r:Lio/grpc/d1$c;

.field private s:Lio/grpc/internal/k1;

.field private final t:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/internal/u;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lio/grpc/internal/w0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/w0<",
            "Lio/grpc/internal/u;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lio/grpc/internal/u;

.field private volatile w:Lio/grpc/internal/k1;

.field private volatile x:Lio/grpc/q;

.field private y:Lio/grpc/Status;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lio/grpc/internal/k$a;Lio/grpc/internal/s;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/w;Lio/grpc/d1;Lio/grpc/internal/y0$j;Lio/grpc/c0;Lio/grpc/internal/m;Lio/grpc/internal/o;Lio/grpc/g0;Lio/grpc/ChannelLogger;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/internal/k$a;",
            "Lio/grpc/internal/s;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/common/base/w<",
            "Lcom/google/common/base/u;",
            ">;",
            "Lio/grpc/d1;",
            "Lio/grpc/internal/y0$j;",
            "Lio/grpc/c0;",
            "Lio/grpc/internal/m;",
            "Lio/grpc/internal/o;",
            "Lio/grpc/g0;",
            "Lio/grpc/ChannelLogger;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lio/grpc/internal/y0;->t:Ljava/util/Collection;

    .line 3
    new-instance v2, Lio/grpc/internal/y0$a;

    invoke-direct {v2, p0}, Lio/grpc/internal/y0$a;-><init>(Lio/grpc/internal/y0;)V

    iput-object v2, v0, Lio/grpc/internal/y0;->u:Lio/grpc/internal/w0;

    .line 4
    sget-object v2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    invoke-static {v2}, Lio/grpc/q;->a(Lio/grpc/ConnectivityState;)Lio/grpc/q;

    move-result-object v2

    iput-object v2, v0, Lio/grpc/internal/y0;->x:Lio/grpc/q;

    const-string v2, "addressGroups"

    .line 5
    invoke-static {p1, v2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "addressGroups is empty"

    invoke-static {v2, v3}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    const-string v2, "addressGroups contains null entry"

    .line 7
    invoke-static {p1, v2}, Lio/grpc/internal/y0;->M(Ljava/util/List;Ljava/lang/String;)V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 10
    iput-object v1, v0, Lio/grpc/internal/y0;->n:Ljava/util/List;

    .line 11
    new-instance v2, Lio/grpc/internal/y0$k;

    invoke-direct {v2, v1}, Lio/grpc/internal/y0$k;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Lio/grpc/internal/y0;->m:Lio/grpc/internal/y0$k;

    move-object v1, p2

    .line 12
    iput-object v1, v0, Lio/grpc/internal/y0;->b:Ljava/lang/String;

    move-object v1, p3

    .line 13
    iput-object v1, v0, Lio/grpc/internal/y0;->c:Ljava/lang/String;

    move-object v1, p4

    .line 14
    iput-object v1, v0, Lio/grpc/internal/y0;->d:Lio/grpc/internal/k$a;

    move-object v1, p5

    .line 15
    iput-object v1, v0, Lio/grpc/internal/y0;->f:Lio/grpc/internal/s;

    move-object v1, p6

    .line 16
    iput-object v1, v0, Lio/grpc/internal/y0;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    invoke-interface {p7}, Lcom/google/common/base/w;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/u;

    iput-object v1, v0, Lio/grpc/internal/y0;->p:Lcom/google/common/base/u;

    move-object v1, p8

    .line 18
    iput-object v1, v0, Lio/grpc/internal/y0;->l:Lio/grpc/d1;

    move-object v1, p9

    .line 19
    iput-object v1, v0, Lio/grpc/internal/y0;->e:Lio/grpc/internal/y0$j;

    move-object v1, p10

    .line 20
    iput-object v1, v0, Lio/grpc/internal/y0;->h:Lio/grpc/c0;

    move-object v1, p11

    .line 21
    iput-object v1, v0, Lio/grpc/internal/y0;->i:Lio/grpc/internal/m;

    const-string v1, "channelTracer"

    move-object/from16 v2, p12

    .line 22
    invoke-static {v2, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/o;

    iput-object v1, v0, Lio/grpc/internal/y0;->j:Lio/grpc/internal/o;

    const-string v1, "logId"

    move-object/from16 v2, p13

    .line 23
    invoke-static {v2, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/g0;

    iput-object v1, v0, Lio/grpc/internal/y0;->a:Lio/grpc/g0;

    const-string v1, "channelLogger"

    move-object/from16 v2, p14

    .line 24
    invoke-static {v2, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ChannelLogger;

    iput-object v1, v0, Lio/grpc/internal/y0;->k:Lio/grpc/ChannelLogger;

    return-void
.end method

.method static synthetic A(Lio/grpc/internal/y0;Lio/grpc/internal/k;)Lio/grpc/internal/k;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/y0;->o:Lio/grpc/internal/k;

    return-object p1
.end method

.method static synthetic B(Lio/grpc/internal/y0;Lio/grpc/internal/u;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/internal/y0;->T(Lio/grpc/internal/u;Z)V

    return-void
.end method

.method static synthetic C(Lio/grpc/internal/y0;Lio/grpc/Status;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/internal/y0;->U(Lio/grpc/Status;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic D(Lio/grpc/internal/y0;Lio/grpc/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/internal/y0;->V(Lio/grpc/Status;)V

    return-void
.end method

.method static synthetic E(Lio/grpc/internal/y0;)Lio/grpc/c0;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/y0;->h:Lio/grpc/c0;

    return-object p0
.end method

.method static synthetic F(Lio/grpc/internal/y0;Lio/grpc/ConnectivityState;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/grpc/internal/y0;->Q(Lio/grpc/ConnectivityState;)V

    return-void
.end method

.method static synthetic G(Lio/grpc/internal/y0;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/internal/y0;->W()V

    return-void
.end method

.method static synthetic H(Lio/grpc/internal/y0;Lio/grpc/d1$c;)Lio/grpc/d1$c;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/y0;->q:Lio/grpc/d1$c;

    return-object p1
.end method

.method static synthetic I(Lio/grpc/internal/y0;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/internal/y0;->L()V

    return-void
.end method

.method static synthetic J(Lio/grpc/internal/y0;)Lio/grpc/internal/y0$k;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/y0;->m:Lio/grpc/internal/y0$k;

    return-object p0
.end method

.method static synthetic K(Lio/grpc/internal/y0;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/y0;->n:Ljava/util/List;

    return-object p1
.end method

.method private L()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/internal/y0;->l:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/y0;->q:Lio/grpc/d1$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lio/grpc/internal/y0;->q:Lio/grpc/d1$c;

    .line 5
    iput-object v0, p0, Lio/grpc/internal/y0;->o:Lio/grpc/internal/k;

    :cond_0
    return-void
.end method

.method private static M(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Q(Lio/grpc/ConnectivityState;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/internal/y0;->l:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    invoke-static {p1}, Lio/grpc/q;->a(Lio/grpc/ConnectivityState;)Lio/grpc/q;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/internal/y0;->R(Lio/grpc/q;)V

    return-void
.end method

.method private R(Lio/grpc/q;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/internal/y0;->l:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/y0;->x:Lio/grpc/q;

    invoke-virtual {v0}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/internal/y0;->x:Lio/grpc/q;

    invoke-virtual {v0}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot transition out of SHUTDOWN to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lio/grpc/internal/y0;->x:Lio/grpc/q;

    .line 5
    iget-object v0, p0, Lio/grpc/internal/y0;->e:Lio/grpc/internal/y0$j;

    invoke-virtual {v0, p0, p1}, Lio/grpc/internal/y0$j;->c(Lio/grpc/internal/y0;Lio/grpc/q;)V

    :cond_1
    return-void
.end method

.method private S()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/y0;->l:Lio/grpc/d1;

    new-instance v1, Lio/grpc/internal/y0$f;

    invoke-direct {v1, p0}, Lio/grpc/internal/y0$f;-><init>(Lio/grpc/internal/y0;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private T(Lio/grpc/internal/u;Z)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/y0;->l:Lio/grpc/d1;

    new-instance v1, Lio/grpc/internal/y0$g;

    invoke-direct {v1, p0, p1, p2}, Lio/grpc/internal/y0$g;-><init>(Lio/grpc/internal/y0;Lio/grpc/internal/u;Z)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private U(Lio/grpc/Status;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p1}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lio/grpc/Status;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "("

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/grpc/Status;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-virtual {p1}, Lio/grpc/Status;->m()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "["

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/grpc/Status;->m()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private V(Lio/grpc/Status;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/grpc/internal/y0;->l:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    invoke-static {p1}, Lio/grpc/q;->b(Lio/grpc/Status;)Lio/grpc/q;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/internal/y0;->R(Lio/grpc/q;)V

    .line 3
    iget-object v0, p0, Lio/grpc/internal/y0;->o:Lio/grpc/internal/k;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/grpc/internal/y0;->d:Lio/grpc/internal/k$a;

    invoke-interface {v0}, Lio/grpc/internal/k$a;->get()Lio/grpc/internal/k;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/y0;->o:Lio/grpc/internal/k;

    .line 5
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/y0;->o:Lio/grpc/internal/k;

    .line 6
    invoke-interface {v0}, Lio/grpc/internal/k;->a()J

    move-result-wide v0

    iget-object v2, p0, Lio/grpc/internal/y0;->p:Lcom/google/common/base/u;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v7}, Lcom/google/common/base/u;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sub-long v5, v0, v2

    .line 7
    iget-object v0, p0, Lio/grpc/internal/y0;->k:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    invoke-direct {p0, p1}, Lio/grpc/internal/y0;->U(Lio/grpc/Status;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string p1, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns"

    .line 9
    invoke-virtual {v0, v1, p1, v2}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lio/grpc/internal/y0;->q:Lio/grpc/d1$c;

    if-nez p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    const-string p1, "previous reconnectTask is not done"

    invoke-static {v3, p1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 11
    iget-object v3, p0, Lio/grpc/internal/y0;->l:Lio/grpc/d1;

    new-instance v4, Lio/grpc/internal/y0$b;

    invoke-direct {v4, p0}, Lio/grpc/internal/y0$b;-><init>(Lio/grpc/internal/y0;)V

    iget-object v8, p0, Lio/grpc/internal/y0;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual/range {v3 .. v8}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/y0;->q:Lio/grpc/d1$c;

    return-void
.end method

.method private W()V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/grpc/internal/y0;->l:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/y0;->q:Lio/grpc/d1$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "Should have no reconnectTask scheduled"

    invoke-static {v0, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/grpc/internal/y0;->m:Lio/grpc/internal/y0$k;

    invoke-virtual {v0}, Lio/grpc/internal/y0$k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/internal/y0;->p:Lcom/google/common/base/u;

    invoke-virtual {v0}, Lcom/google/common/base/u;->f()Lcom/google/common/base/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/u;->g()Lcom/google/common/base/u;

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/y0;->m:Lio/grpc/internal/y0$k;

    invoke-virtual {v0}, Lio/grpc/internal/y0$k;->a()Ljava/net/SocketAddress;

    move-result-object v0

    .line 6
    instance-of v3, v0, Lio/grpc/HttpConnectProxiedSocketAddress;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 7
    check-cast v0, Lio/grpc/HttpConnectProxiedSocketAddress;

    .line 8
    invoke-virtual {v0}, Lio/grpc/HttpConnectProxiedSocketAddress;->getTargetAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    move-object v0, v4

    .line 9
    :goto_1
    iget-object v5, p0, Lio/grpc/internal/y0;->m:Lio/grpc/internal/y0$k;

    invoke-virtual {v5}, Lio/grpc/internal/y0$k;->b()Lio/grpc/a;

    move-result-object v5

    .line 10
    sget-object v6, Lio/grpc/x;->d:Lio/grpc/a$c;

    .line 11
    invoke-virtual {v5, v6}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 12
    new-instance v7, Lio/grpc/internal/s$a;

    invoke-direct {v7}, Lio/grpc/internal/s$a;-><init>()V

    if-eqz v6, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    iget-object v6, p0, Lio/grpc/internal/y0;->b:Ljava/lang/String;

    :goto_2
    invoke-virtual {v7, v6}, Lio/grpc/internal/s$a;->e(Ljava/lang/String;)Lio/grpc/internal/s$a;

    move-result-object v6

    .line 14
    invoke-virtual {v6, v5}, Lio/grpc/internal/s$a;->f(Lio/grpc/a;)Lio/grpc/internal/s$a;

    move-result-object v5

    iget-object v6, p0, Lio/grpc/internal/y0;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v5, v6}, Lio/grpc/internal/s$a;->h(Ljava/lang/String;)Lio/grpc/internal/s$a;

    move-result-object v5

    .line 16
    invoke-virtual {v5, v0}, Lio/grpc/internal/s$a;->g(Lio/grpc/HttpConnectProxiedSocketAddress;)Lio/grpc/internal/s$a;

    move-result-object v0

    .line 17
    new-instance v5, Lio/grpc/internal/y0$m;

    invoke-direct {v5}, Lio/grpc/internal/y0$m;-><init>()V

    .line 18
    invoke-virtual {p0}, Lio/grpc/internal/y0;->c()Lio/grpc/g0;

    move-result-object v6

    iput-object v6, v5, Lio/grpc/internal/y0$m;->a:Lio/grpc/g0;

    .line 19
    new-instance v6, Lio/grpc/internal/y0$i;

    iget-object v7, p0, Lio/grpc/internal/y0;->f:Lio/grpc/internal/s;

    .line 20
    invoke-interface {v7, v3, v0, v5}, Lio/grpc/internal/s;->h1(Ljava/net/SocketAddress;Lio/grpc/internal/s$a;Lio/grpc/ChannelLogger;)Lio/grpc/internal/u;

    move-result-object v0

    iget-object v7, p0, Lio/grpc/internal/y0;->i:Lio/grpc/internal/m;

    invoke-direct {v6, v0, v7, v4}, Lio/grpc/internal/y0$i;-><init>(Lio/grpc/internal/u;Lio/grpc/internal/m;Lio/grpc/internal/y0$a;)V

    .line 21
    invoke-interface {v6}, Lio/grpc/l0;->c()Lio/grpc/g0;

    move-result-object v0

    iput-object v0, v5, Lio/grpc/internal/y0$m;->a:Lio/grpc/g0;

    .line 22
    iget-object v0, p0, Lio/grpc/internal/y0;->h:Lio/grpc/c0;

    invoke-virtual {v0, v6}, Lio/grpc/c0;->c(Lio/grpc/f0;)V

    .line 23
    iput-object v6, p0, Lio/grpc/internal/y0;->v:Lio/grpc/internal/u;

    .line 24
    iget-object v0, p0, Lio/grpc/internal/y0;->t:Ljava/util/Collection;

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Lio/grpc/internal/y0$l;

    invoke-direct {v0, p0, v6, v3}, Lio/grpc/internal/y0$l;-><init>(Lio/grpc/internal/y0;Lio/grpc/internal/u;Ljava/net/SocketAddress;)V

    invoke-interface {v6, v0}, Lio/grpc/internal/k1;->h(Lio/grpc/internal/k1$a;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 26
    iget-object v3, p0, Lio/grpc/internal/y0;->l:Lio/grpc/d1;

    invoke-virtual {v3, v0}, Lio/grpc/d1;->b(Ljava/lang/Runnable;)V

    .line 27
    :cond_4
    iget-object v0, p0, Lio/grpc/internal/y0;->k:Lio/grpc/ChannelLogger;

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, v5, Lio/grpc/internal/y0$m;->a:Lio/grpc/g0;

    aput-object v4, v1, v2

    const-string v2, "Started transport {0}"

    invoke-virtual {v0, v3, v2, v1}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic i(Lio/grpc/internal/y0;)Lio/grpc/internal/y0$j;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/y0;->e:Lio/grpc/internal/y0$j;

    return-object p0
.end method

.method static synthetic j(Lio/grpc/internal/y0;)Lio/grpc/q;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/y0;->x:Lio/grpc/q;

    return-object p0
.end method

.method static synthetic k(Lio/grpc/internal/y0;)Lio/grpc/internal/k1;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/y0;->w:Lio/grpc/internal/k1;

    return-object p0
.end method

.method static synthetic l(Lio/grpc/internal/y0;Lio/grpc/internal/k1;)Lio/grpc/internal/k1;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/y0;->w:Lio/grpc/internal/k1;

    return-object p1
.end method

.method static synthetic m(Lio/grpc/internal/y0;)Lio/grpc/internal/u;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/y0;->v:Lio/grpc/internal/u;

    return-object p0
.end method

.method static synthetic n(Lio/grpc/internal/y0;Lio/grpc/internal/u;)Lio/grpc/internal/u;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/y0;->v:Lio/grpc/internal/u;

    return-object p1
.end method

.method static synthetic o(Lio/grpc/internal/y0;)Lio/grpc/d1$c;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/y0;->r:Lio/grpc/d1$c;

    return-object p0
.end method

.method static synthetic p(Lio/grpc/internal/y0;Lio/grpc/d1$c;)Lio/grpc/d1$c;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/y0;->r:Lio/grpc/d1$c;

    return-object p1
.end method

.method static synthetic q(Lio/grpc/internal/y0;)Lio/grpc/internal/k1;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/y0;->s:Lio/grpc/internal/k1;

    return-object p0
.end method

.method static synthetic r(Lio/grpc/internal/y0;Lio/grpc/internal/k1;)Lio/grpc/internal/k1;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/y0;->s:Lio/grpc/internal/k1;

    return-object p1
.end method

.method static synthetic s(Lio/grpc/internal/y0;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/y0;->g:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic t(Lio/grpc/internal/y0;)Lio/grpc/d1;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/y0;->l:Lio/grpc/d1;

    return-object p0
.end method

.method static synthetic u(Lio/grpc/internal/y0;)Lio/grpc/Status;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/y0;->y:Lio/grpc/Status;

    return-object p0
.end method

.method static synthetic v(Lio/grpc/internal/y0;Lio/grpc/Status;)Lio/grpc/Status;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/y0;->y:Lio/grpc/Status;

    return-object p1
.end method

.method static synthetic w(Lio/grpc/internal/y0;)Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/y0;->t:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic x(Lio/grpc/internal/y0;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/internal/y0;->S()V

    return-void
.end method

.method static synthetic y(Lio/grpc/internal/y0;)Lio/grpc/internal/w0;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/y0;->u:Lio/grpc/internal/w0;

    return-object p0
.end method

.method static synthetic z(Lio/grpc/internal/y0;)Lio/grpc/ChannelLogger;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/y0;->k:Lio/grpc/ChannelLogger;

    return-object p0
.end method


# virtual methods
.method N()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/y0;->n:Ljava/util/List;

    return-object v0
.end method

.method O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/y0;->b:Ljava/lang/String;

    return-object v0
.end method

.method P()Lio/grpc/internal/r;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/y0;->w:Lio/grpc/internal/k1;

    return-object v0
.end method

.method public X(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newAddressGroups"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "newAddressGroups contains null entry"

    .line 2
    invoke-static {p1, v0}, Lio/grpc/internal/y0;->M(Ljava/util/List;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "newAddressGroups is empty"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lio/grpc/internal/y0;->l:Lio/grpc/d1;

    new-instance v1, Lio/grpc/internal/y0$d;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/y0$d;-><init>(Lio/grpc/internal/y0;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a()Lio/grpc/internal/r;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/y0;->w:Lio/grpc/internal/k1;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/y0;->l:Lio/grpc/d1;

    new-instance v1, Lio/grpc/internal/y0$c;

    invoke-direct {v1, p0}, Lio/grpc/internal/y0$c;-><init>(Lio/grpc/internal/y0;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method b(Lio/grpc/Status;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/internal/y0;->g(Lio/grpc/Status;)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/y0;->l:Lio/grpc/d1;

    new-instance v1, Lio/grpc/internal/y0$h;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/y0$h;-><init>(Lio/grpc/internal/y0;Lio/grpc/Status;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()Lio/grpc/g0;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/y0;->a:Lio/grpc/g0;

    return-object v0
.end method

.method public g(Lio/grpc/Status;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/y0;->l:Lio/grpc/d1;

    new-instance v1, Lio/grpc/internal/y0$e;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/y0$e;-><init>(Lio/grpc/internal/y0;Lio/grpc/Status;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/y0;->a:Lio/grpc/g0;

    .line 2
    invoke-virtual {v1}, Lio/grpc/g0;->d()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/y0;->n:Ljava/util/List;

    const-string v2, "addressGroups"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
