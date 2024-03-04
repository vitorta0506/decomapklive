.class final Lhg/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhg/i$o;,
        Lhg/i$g;,
        Lhg/i$i;,
        Lhg/i$e;,
        Lhg/i$n;,
        Lhg/i$f;,
        Lhg/i$k;,
        Lhg/i$l;,
        Lhg/i$j;,
        Lhg/i$h;,
        Lhg/i$m;
    }
.end annotation


# static fields
.field private static final A:Lio/grpc/a;

.field static final B:Z

.field static final C:Lio/grpc/n0$e;

.field static final D:Lio/grpc/Status;

.field static final E:Lio/grpc/Status;

.field static final F:Lio/grpc/Status;

.field static final G:Lio/grpc/Status;

.field private static final H:Lio/grpc/Status;

.field static final I:Lhg/i$n;

.field private static final J:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/q;",
            ">;>;"
        }
    .end annotation
.end field

.field static final z:J


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lio/grpc/n0$d;

.field private final c:Lio/grpc/r;

.field private final d:Lio/grpc/d1;

.field private final e:Lhg/k;

.field private final f:Lio/grpc/internal/m2;

.field private final g:Lcom/google/common/base/u;

.field private final h:Ljava/util/concurrent/ScheduledExecutorService;

.field private final i:Lio/grpc/internal/k$a;

.field private final j:Lio/grpc/ChannelLogger;

.field private k:Lio/grpc/d1$c;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Lio/grpc/Status;

.field private o:Z

.field private p:Lio/grpc/internal/k;

.field private q:Lio/grpc/d1$c;

.field private r:Lio/grpc/q0;

.field private s:Lhg/i$k;

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;",
            "Lio/grpc/n0$h;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lhg/d;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhg/i$f;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhg/i$e;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lhg/i$o;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lhg/i;->z:J

    .line 2
    invoke-static {}, Lio/grpc/a;->c()Lio/grpc/a$b;

    move-result-object v0

    sget-object v1, Lhg/e;->e:Lio/grpc/a$c;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v0

    sput-object v0, Lhg/i;->A:Lio/grpc/a;

    const-string v0, "io.grpc.grpclb.LogServerLists"

    const-string v1, "true"

    .line 3
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lhg/i;->B:Z

    .line 4
    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v1, "Dropped as requested by balancer"

    .line 5
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/n0$e;->e(Lio/grpc/Status;)Lio/grpc/n0$e;

    move-result-object v1

    sput-object v1, Lhg/i;->C:Lio/grpc/n0$e;

    const-string v1, "LoadBalancer responded without any backends"

    .line 6
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    sput-object v1, Lhg/i;->D:Lio/grpc/Status;

    const-string v1, "Timeout waiting for remote balancer"

    .line 7
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    sput-object v1, Lhg/i;->E:Lio/grpc/Status;

    const-string v1, "Fallback requested by balancer"

    .line 8
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    sput-object v1, Lhg/i;->F:Lio/grpc/Status;

    const-string v1, "Unable to fallback, no fallback addresses found"

    .line 9
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    sput-object v1, Lhg/i;->G:Lio/grpc/Status;

    const-string v1, "No balancer address found"

    .line 10
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lhg/i;->H:Lio/grpc/Status;

    .line 11
    new-instance v0, Lhg/i$a;

    invoke-direct {v0}, Lhg/i$a;-><init>()V

    sput-object v0, Lhg/i;->I:Lhg/i$n;

    const-string v0, "io.grpc.grpclb.GrpclbLoadBalancer.stateInfo"

    .line 12
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Lhg/i;->J:Lio/grpc/a$c;

    return-void
.end method

.method constructor <init>(Lhg/d;Lio/grpc/n0$d;Lio/grpc/r;Lhg/k;Lio/grpc/internal/m2;Lcom/google/common/base/u;Lio/grpc/internal/k$a;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lhg/i;->l:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lhg/i;->t:Ljava/util/Map;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lhg/i;->v:Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lhg/i;->w:Ljava/util/List;

    .line 6
    new-instance v0, Lhg/i$o;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lhg/i$n;

    sget-object v4, Lhg/i;->I:Lhg/i$n;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lhg/i$o;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lhg/i;->x:Lhg/i$o;

    const-string v0, "config"

    .line 8
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg/d;

    iput-object v0, p0, Lhg/i;->u:Lhg/d;

    const-string v0, "helper"

    .line 9
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/n0$d;

    iput-object v0, p0, Lhg/i;->b:Lio/grpc/n0$d;

    const-string v0, "context"

    .line 10
    invoke-static {p3, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/r;

    iput-object p3, p0, Lhg/i;->c:Lio/grpc/r;

    .line 11
    invoke-virtual {p2}, Lio/grpc/n0$d;->h()Lio/grpc/d1;

    move-result-object p3

    const-string v0, "syncContext"

    invoke-static {p3, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/d1;

    iput-object p3, p0, Lhg/i;->d:Lio/grpc/d1;

    .line 12
    invoke-virtual {p1}, Lhg/d;->c()Lhg/i$m;

    move-result-object p3

    sget-object v0, Lhg/i$m;->a:Lhg/i$m;

    if-ne p3, v0, :cond_0

    const-string p3, "subchannelPool"

    .line 13
    invoke-static {p4, p3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lhg/k;

    iput-object p3, p0, Lhg/i;->e:Lhg/k;

    .line 14
    new-instance p3, Lhg/i$b;

    invoke-direct {p3, p0}, Lhg/i$b;-><init>(Lhg/i;)V

    invoke-interface {p4, p3}, Lhg/k;->b(Lhg/k$a;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 15
    iput-object p3, p0, Lhg/i;->e:Lhg/k;

    :goto_0
    const-string p3, "time provider"

    .line 16
    invoke-static {p5, p3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/internal/m2;

    iput-object p3, p0, Lhg/i;->f:Lio/grpc/internal/m2;

    const-string p3, "stopwatch"

    .line 17
    invoke-static {p6, p3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/common/base/u;

    iput-object p3, p0, Lhg/i;->g:Lcom/google/common/base/u;

    .line 18
    invoke-virtual {p2}, Lio/grpc/n0$d;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    const-string p4, "timerService"

    invoke-static {p3, p4}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lhg/i;->h:Ljava/util/concurrent/ScheduledExecutorService;

    const-string p3, "backoffPolicyProvider"

    .line 19
    invoke-static {p7, p3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/internal/k$a;

    iput-object p3, p0, Lhg/i;->i:Lio/grpc/internal/k$a;

    .line 20
    invoke-virtual {p1}, Lhg/d;->d()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 21
    invoke-virtual {p1}, Lhg/d;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lhg/i;->a:Ljava/lang/String;

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p2}, Lio/grpc/n0$d;->c()Ljava/lang/String;

    move-result-object p1

    const-string p3, "helper returns null authority"

    invoke-static {p1, p3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lhg/i;->a:Ljava/lang/String;

    .line 23
    :goto_1
    invoke-virtual {p2}, Lio/grpc/n0$d;->d()Lio/grpc/ChannelLogger;

    move-result-object p1

    const-string p2, "logger"

    invoke-static {p1, p2}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/ChannelLogger;

    iput-object p1, p0, Lhg/i;->j:Lio/grpc/ChannelLogger;

    .line 24
    sget-object p2, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array p3, v2, [Ljava/lang/Object;

    iget-object p4, p0, Lhg/i;->a:Ljava/lang/String;

    aput-object p4, p3, v5

    const-string p4, "[grpclb-<{0}>] Created"

    invoke-virtual {p1, p2, p4, p3}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static A()Lio/grpc/a;
    .locals 4

    .line 1
    invoke-static {}, Lio/grpc/a;->c()Lio/grpc/a$b;

    move-result-object v0

    sget-object v1, Lhg/i;->J:Lio/grpc/a$c;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    .line 2
    invoke-static {v3}, Lio/grpc/q;->a(Lio/grpc/ConnectivityState;)Lio/grpc/q;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0, v1, v2}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v0

    return-object v0
.end method

.method private D()V
    .locals 9

    .line 1
    iget-object v0, p0, Lhg/i;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lhg/i;->m:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lhg/i;->G:Lio/grpc/Status;

    iget-object v1, p0, Lhg/i;->n:Lio/grpc/Status;

    .line 4
    invoke-virtual {v1}, Lio/grpc/Status;->m()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    iget-object v1, p0, Lhg/i;->n:Lio/grpc/Status;

    .line 5
    invoke-virtual {v1}, Lio/grpc/Status;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->f(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 6
    new-instance v1, Lhg/i$g;

    invoke-direct {v1, v0}, Lhg/i$g;-><init>(Lio/grpc/Status;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v0, p0, Lhg/i;->o:Z

    if-eqz v0, :cond_1

    .line 9
    new-instance v0, Lhg/i$g;

    sget-object v1, Lhg/i;->D:Lio/grpc/Status;

    invoke-direct {v0, v1}, Lhg/i$g;-><init>(Lio/grpc/Status;)V

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 11
    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    goto :goto_0

    .line 12
    :cond_1
    sget-object v0, Lhg/i;->I:Lhg/i$n;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 13
    sget-object v1, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    .line 14
    :goto_0
    new-instance v2, Lhg/i$o;

    iget-object v3, p0, Lhg/i;->v:Ljava/util/List;

    invoke-direct {v2, v3, v0}, Lhg/i$o;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, v1, v2}, Lhg/i;->E(Lio/grpc/ConnectivityState;Lhg/i$o;)V

    return-void

    .line 15
    :cond_2
    sget-object v0, Lhg/i$d;->a:[I

    iget-object v1, p0, Lhg/i;->u:Lhg/d;

    invoke-virtual {v1}, Lhg/d;->c()Lhg/i$m;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 16
    iget-object v0, p0, Lhg/i;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lhg/i;->w:Ljava/util/List;

    const-string v5, "Excessive backend entries: %s"

    invoke-static {v0, v5, v4}, Lcom/google/common/base/o;->D(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lhg/i;->w:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhg/i$e;

    .line 18
    iget-object v1, v0, Lhg/i$e;->a:Lio/grpc/n0$h;

    .line 19
    invoke-virtual {v1}, Lio/grpc/n0$h;->d()Lio/grpc/a;

    move-result-object v1

    sget-object v4, Lhg/i;->J:Lio/grpc/a$c;

    invoke-virtual {v1, v4}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/q;

    .line 20
    invoke-virtual {v1}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v4

    .line 21
    sget-object v5, Lhg/i$d;->b:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v2, :cond_6

    if-eq v5, v3, :cond_5

    const/4 v1, 0x3

    if-eq v5, v1, :cond_4

    .line 22
    new-instance v1, Lhg/i$i;

    iget-object v0, v0, Lhg/i$e;->a:Lio/grpc/n0$h;

    iget-object v2, p0, Lhg/i;->d:Lio/grpc/d1;

    invoke-direct {v1, v0, v2}, Lhg/i$i;-><init>(Lio/grpc/n0$h;Lio/grpc/d1;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_3

    .line 23
    :cond_4
    sget-object v0, Lhg/i;->I:Lhg/i$n;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_3

    .line 24
    :cond_5
    new-instance v0, Lhg/i$g;

    .line 25
    invoke-virtual {v1}, Lio/grpc/q;->d()Lio/grpc/Status;

    move-result-object v1

    invoke-direct {v0, v1}, Lhg/i$g;-><init>(Lio/grpc/Status;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_3

    .line 26
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_3

    .line 27
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing case for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhg/i;->u:Lhg/d;

    invoke-virtual {v2}, Lhg/d;->c()Lhg/i$m;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 28
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lhg/i;->w:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 29
    iget-object v4, p0, Lhg/i;->w:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhg/i$e;

    .line 30
    iget-object v6, v5, Lhg/i$e;->a:Lio/grpc/n0$h;

    .line 31
    invoke-virtual {v6}, Lio/grpc/n0$h;->d()Lio/grpc/a;

    move-result-object v6

    .line 32
    sget-object v7, Lhg/i;->J:Lio/grpc/a$c;

    invoke-virtual {v6, v7}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/q;

    .line 33
    invoke-virtual {v6}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v7

    sget-object v8, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne v7, v8, :cond_9

    .line 34
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    :cond_9
    invoke-virtual {v6}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v5

    sget-object v7, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-ne v5, v7, :cond_a

    .line 36
    invoke-virtual {v6}, Lio/grpc/q;->d()Lio/grpc/Status;

    move-result-object v3

    goto :goto_2

    :cond_a
    const/4 v1, 0x1

    goto :goto_2

    .line 37
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 38
    sget-object v1, Lhg/i;->I:Lhg/i$n;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v4, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    goto :goto_3

    .line 40
    :cond_c
    new-instance v1, Lhg/i$g;

    invoke-direct {v1, v3}, Lhg/i$g;-><init>(Lio/grpc/Status;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v4, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    goto :goto_3

    .line 42
    :cond_d
    sget-object v4, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    .line 43
    :goto_3
    new-instance v1, Lhg/i$o;

    iget-object v2, p0, Lhg/i;->v:Ljava/util/List;

    invoke-direct {v1, v2, v0}, Lhg/i$o;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0, v4, v1}, Lhg/i;->E(Lio/grpc/ConnectivityState;Lhg/i$o;)V

    return-void
.end method

.method private E(Lio/grpc/ConnectivityState;Lhg/i$o;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lhg/i$o;->a:Ljava/util/List;

    iget-object v1, p0, Lhg/i;->x:Lhg/i$o;

    iget-object v1, v1, Lhg/i$o;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lhg/i$o;->c:Ljava/util/List;

    iget-object v1, p0, Lhg/i;->x:Lhg/i$o;

    iget-object v1, v1, Lhg/i$o;->c:Ljava/util/List;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput-object p2, p0, Lhg/i;->x:Lhg/i$o;

    .line 4
    iget-object v0, p0, Lhg/i;->b:Lio/grpc/n0$d;

    invoke-virtual {v0, p1, p2}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    return-void
.end method

.method private F()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lhg/i;->o:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lhg/i;->m:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lhg/i;->n:Lio/grpc/Status;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "no reason to fallback"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lhg/i;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/n0$h;

    .line 4
    invoke-virtual {v1}, Lio/grpc/n0$h;->d()Lio/grpc/a;

    move-result-object v1

    sget-object v2, Lhg/i;->J:Lio/grpc/a$c;

    invoke-virtual {v1, v2}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/q;

    .line 5
    invoke-virtual {v1}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v2

    sget-object v3, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne v2, v3, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {v1}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v2

    sget-object v3, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-ne v2, v3, :cond_2

    .line 7
    invoke-virtual {v1}, Lio/grpc/q;->d()Lio/grpc/Status;

    move-result-object v1

    iput-object v1, p0, Lhg/i;->n:Lio/grpc/Status;

    goto :goto_1

    .line 8
    :cond_4
    invoke-direct {p0}, Lhg/i;->O()V

    :cond_5
    :goto_2
    return-void
.end method

.method private H(Lio/grpc/n0$h;)V
    .locals 3

    iget-object v0, p0, Lhg/i;->e:Lhg/k;

    invoke-virtual {p1}, Lio/grpc/n0$h;->d()Lio/grpc/a;

    move-result-object v1

    sget-object v2, Lhg/i;->J:Lio/grpc/a$c;

    invoke-virtual {v1, v2}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/q;

    invoke-interface {v0, p1, v1}, Lhg/k;->c(Lio/grpc/n0$h;Lio/grpc/q;)V

    return-void
.end method

.method private J()V
    .locals 1

    .line 1
    iget-object v0, p0, Lhg/i;->r:Lio/grpc/q0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/grpc/q0;->m()Lio/grpc/q0;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lhg/i;->r:Lio/grpc/q0;

    .line 4
    :cond_0
    invoke-direct {p0}, Lhg/i;->K()V

    return-void
.end method

.method private K()V
    .locals 3

    .line 1
    iget-object v0, p0, Lhg/i;->s:Lhg/i$k;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lio/grpc/Status;->g:Lio/grpc/Status;

    const-string v2, "balancer shutdown"

    invoke-virtual {v1, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/Status;->c()Lio/grpc/StatusException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhg/i$k;->f(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private L(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;)V"
        }
    .end annotation

    const-string v0, "overrideAuthorityEags"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/x;

    invoke-virtual {v2}, Lio/grpc/x;->b()Lio/grpc/a;

    move-result-object v2

    sget-object v3, Lio/grpc/x;->d:Lio/grpc/a$c;

    .line 3
    invoke-virtual {v2, v3}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-notIntendedToBeUsed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lhg/i;->r:Lio/grpc/q0;

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lhg/i;->b:Lio/grpc/n0$d;

    invoke-virtual {v2, p1, v0}, Lio/grpc/n0$d;->a(Ljava/util/List;Ljava/lang/String;)Lio/grpc/q0;

    move-result-object v0

    iput-object v0, p0, Lhg/i;->r:Lio/grpc/q0;

    .line 6
    iget-object v0, p0, Lhg/i;->j:Lio/grpc/ChannelLogger;

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lhg/i;->a:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object p1, v3, v1

    const-string p1, "[grpclb-<{0}>] Created grpclb channel: EAG={1}"

    invoke-virtual {v0, v2, p1, v3}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lhg/i;->b:Lio/grpc/n0$d;

    invoke-virtual {v0, v2, p1}, Lio/grpc/n0$d;->l(Lio/grpc/q0;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private M()V
    .locals 7

    .line 1
    iget-object v0, p0, Lhg/i;->s:Lhg/i$k;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "previous lbStream has not been cleared yet"

    invoke-static {v0, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lhg/i;->r:Lio/grpc/q0;

    invoke-static {v0}, Lio/grpc/lb/v1/f;->b(Lio/grpc/d;)Lio/grpc/lb/v1/f$d;

    move-result-object v0

    .line 3
    new-instance v3, Lhg/i$k;

    invoke-direct {v3, p0, v0}, Lhg/i$k;-><init>(Lhg/i;Lio/grpc/lb/v1/f$d;)V

    iput-object v3, p0, Lhg/i;->s:Lhg/i$k;

    .line 4
    iget-object v0, p0, Lhg/i;->c:Lio/grpc/r;

    invoke-virtual {v0}, Lio/grpc/r;->c()Lio/grpc/r;

    move-result-object v0

    .line 5
    :try_start_0
    iget-object v3, p0, Lhg/i;->s:Lhg/i$k;

    invoke-virtual {v3}, Lhg/i$k;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v3, p0, Lhg/i;->c:Lio/grpc/r;

    invoke-virtual {v3, v0}, Lio/grpc/r;->k(Lio/grpc/r;)V

    .line 7
    iget-object v0, p0, Lhg/i;->g:Lcom/google/common/base/u;

    invoke-virtual {v0}, Lcom/google/common/base/u;->f()Lcom/google/common/base/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/u;->g()Lcom/google/common/base/u;

    .line 8
    invoke-static {}, Lio/grpc/lb/v1/LoadBalanceRequest;->newBuilder()Lio/grpc/lb/v1/LoadBalanceRequest$c;

    move-result-object v0

    .line 9
    invoke-static {}, Lio/grpc/lb/v1/InitialLoadBalanceRequest;->newBuilder()Lio/grpc/lb/v1/InitialLoadBalanceRequest$b;

    move-result-object v3

    iget-object v4, p0, Lhg/i;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v4}, Lio/grpc/lb/v1/InitialLoadBalanceRequest$b;->j0(Ljava/lang/String;)Lio/grpc/lb/v1/InitialLoadBalanceRequest$b;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/lb/v1/InitialLoadBalanceRequest$b;->X()Lio/grpc/lb/v1/InitialLoadBalanceRequest;

    move-result-object v3

    .line 11
    invoke-virtual {v0, v3}, Lio/grpc/lb/v1/LoadBalanceRequest$c;->m0(Lio/grpc/lb/v1/InitialLoadBalanceRequest;)Lio/grpc/lb/v1/LoadBalanceRequest$c;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lio/grpc/lb/v1/LoadBalanceRequest$c;->X()Lio/grpc/lb/v1/LoadBalanceRequest;

    move-result-object v0

    .line 13
    iget-object v3, p0, Lhg/i;->j:Lio/grpc/ChannelLogger;

    sget-object v4, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lhg/i;->a:Ljava/lang/String;

    aput-object v6, v5, v2

    aput-object v0, v5, v1

    const-string v1, "[grpclb-<{0}>] Sent initial grpclb request {1}"

    invoke-virtual {v3, v4, v1, v5}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :try_start_1
    iget-object v1, p0, Lhg/i;->s:Lhg/i$k;

    iget-object v1, v1, Lhg/i$k;->c:Lio/grpc/stub/h;

    invoke-interface {v1, v0}, Lio/grpc/stub/h;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lhg/i;->s:Lhg/i$k;

    invoke-virtual {v1, v0}, Lhg/i$k;->f(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    .line 16
    iget-object v2, p0, Lhg/i;->c:Lio/grpc/r;

    invoke-virtual {v2, v0}, Lio/grpc/r;->k(Lio/grpc/r;)V

    throw v1
.end method

.method private N(Ljava/util/List;Ljava/util/List;Lhg/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhg/i$f;",
            ">;",
            "Ljava/util/List<",
            "Lhg/a;",
            ">;",
            "Lhg/c;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v2, Lhg/i$d;->a:[I

    iget-object v3, p0, Lhg/i;->u:Lhg/d;

    invoke-virtual {v3}, Lhg/d;->c()Lhg/i$m;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v0, 0x2

    if-ne v2, v0, :cond_6

    .line 4
    iget-object v0, p0, Lhg/i;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v2, 0x0

    if-gt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lhg/i;->t:Ljava/util/Map;

    const-string v5, "Unexpected Subchannel count: %s"

    invoke-static {v0, v5, v4}, Lcom/google/common/base/o;->D(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p2, p0, Lhg/i;->t:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    if-ne p2, v3, :cond_e

    .line 7
    iget-object p2, p0, Lhg/i;->t:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/n0$h;

    .line 8
    invoke-virtual {p2}, Lio/grpc/n0$h;->h()V

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lhg/i;->t:Ljava/util/Map;

    goto/16 :goto_6

    .line 10
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhg/a;

    .line 12
    invoke-virtual {v3}, Lhg/a;->a()Lio/grpc/x;

    move-result-object v4

    .line 13
    invoke-virtual {v4}, Lio/grpc/x;->b()Lio/grpc/a;

    move-result-object v5

    .line 14
    invoke-virtual {v3}, Lhg/a;->b()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 15
    invoke-virtual {v5}, Lio/grpc/a;->d()Lio/grpc/a$b;

    move-result-object v5

    sget-object v6, Lhg/e;->b:Lio/grpc/a$c;

    .line 16
    invoke-virtual {v3}, Lhg/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v5

    .line 17
    :cond_2
    new-instance v3, Lio/grpc/x;

    invoke-virtual {v4}, Lio/grpc/x;->a()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Lio/grpc/x;-><init>(Ljava/util/List;Lio/grpc/a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_3
    iget-object p2, p0, Lhg/i;->t:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 19
    iget-object p2, p0, Lhg/i;->b:Lio/grpc/n0$d;

    .line 20
    invoke-static {}, Lio/grpc/n0$b;->c()Lio/grpc/n0$b$a;

    move-result-object v3

    .line 21
    invoke-virtual {v3, v0}, Lio/grpc/n0$b$a;->e(Ljava/util/List;)Lio/grpc/n0$b$a;

    move-result-object v3

    .line 22
    invoke-static {}, Lhg/i;->A()Lio/grpc/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/grpc/n0$b$a;->f(Lio/grpc/a;)Lio/grpc/n0$b$a;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lio/grpc/n0$b$a;->b()Lio/grpc/n0$b;

    move-result-object v3

    .line 24
    invoke-virtual {p2, v3}, Lio/grpc/n0$d;->b(Lio/grpc/n0$b;)Lio/grpc/n0$h;

    move-result-object p2

    .line 25
    new-instance v3, Lhg/i$c;

    invoke-direct {v3, p0, p2}, Lhg/i$c;-><init>(Lhg/i;Lio/grpc/n0$h;)V

    invoke-virtual {p2, v3}, Lio/grpc/n0$h;->i(Lio/grpc/n0$j;)V

    .line 26
    iget-boolean v3, p0, Lhg/i;->y:Z

    if-eqz v3, :cond_5

    .line 27
    invoke-virtual {p2}, Lio/grpc/n0$h;->g()V

    .line 28
    iput-boolean v2, p0, Lhg/i;->y:Z

    goto :goto_2

    .line 29
    :cond_4
    iget-object p2, p0, Lhg/i;->t:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/n0$h;

    .line 30
    invoke-virtual {p2, v0}, Lio/grpc/n0$h;->j(Ljava/util/List;)V

    .line 31
    :cond_5
    :goto_2
    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lhg/i;->t:Ljava/util/Map;

    .line 32
    new-instance v0, Lhg/i$e;

    new-instance v2, Lhg/l;

    invoke-direct {v2, p3}, Lhg/l;-><init>(Lio/grpc/k$a;)V

    invoke-direct {v0, p2, v2}, Lhg/i$e;-><init>(Lio/grpc/n0$h;Lhg/l;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 33
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing case for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lhg/i;->u:Lhg/d;

    invoke-virtual {p3}, Lhg/d;->c()Lhg/i$m;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 34
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhg/a;

    .line 35
    invoke-virtual {v2}, Lhg/a;->a()Lio/grpc/x;

    move-result-object v3

    .line 36
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 37
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/n0$h;

    if-nez v5, :cond_9

    .line 38
    iget-object v5, p0, Lhg/i;->t:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/n0$h;

    if-nez v5, :cond_8

    .line 39
    iget-object v5, p0, Lhg/i;->e:Lhg/k;

    invoke-static {}, Lhg/i;->A()Lio/grpc/a;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Lhg/k;->a(Lio/grpc/x;Lio/grpc/a;)Lio/grpc/n0$h;

    move-result-object v3

    .line 40
    invoke-virtual {v3}, Lio/grpc/n0$h;->g()V

    move-object v5, v3

    .line 41
    :cond_8
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_9
    invoke-virtual {v2}, Lhg/a;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    .line 43
    new-instance v2, Lhg/i$e;

    invoke-direct {v2, v5}, Lhg/i$e;-><init>(Lio/grpc/n0$h;)V

    goto :goto_4

    .line 44
    :cond_a
    new-instance v3, Lhg/i$e;

    invoke-virtual {v2}, Lhg/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v5, p3, v2}, Lhg/i$e;-><init>(Lio/grpc/n0$h;Lhg/c;Ljava/lang/String;)V

    move-object v2, v3

    .line 45
    :goto_4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 46
    :cond_b
    iget-object p2, p0, Lhg/i;->t:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 49
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/n0$h;

    invoke-direct {p0, p3}, Lhg/i;->H(Lio/grpc/n0$h;)V

    goto :goto_5

    .line 50
    :cond_d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lhg/i;->t:Ljava/util/Map;

    .line 51
    :cond_e
    :goto_6
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lhg/i;->v:Ljava/util/List;

    .line 52
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lhg/i;->w:Ljava/util/List;

    return-void
.end method

.method private O()V
    .locals 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lhg/i;->m:Z

    .line 2
    iget-object v1, p0, Lhg/i;->j:Lio/grpc/ChannelLogger;

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lhg/i;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "[grpclb-<{0}>] Using fallback backends"

    invoke-virtual {v1, v2, v3, v0}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v2, p0, Lhg/i;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/x;

    .line 6
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v5, Lhg/a;

    invoke-direct {v5, v3, v4}, Lhg/a;-><init>(Lio/grpc/x;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, v0, v1, v4}, Lhg/i;->N(Ljava/util/List;Ljava/util/List;Lhg/c;)V

    return-void
.end method

.method static synthetic a(Lhg/i;)Lio/grpc/d1;
    .locals 0

    iget-object p0, p0, Lhg/i;->d:Lio/grpc/d1;

    return-object p0
.end method

.method static synthetic b(Lhg/i;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lhg/i;->h:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic c(Lhg/i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lhg/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lhg/i;)Lio/grpc/ChannelLogger;
    .locals 0

    iget-object p0, p0, Lhg/i;->j:Lio/grpc/ChannelLogger;

    return-object p0
.end method

.method static synthetic e(Lhg/i;)V
    .locals 0

    invoke-direct {p0}, Lhg/i;->y()V

    return-void
.end method

.method static synthetic f(Lhg/i;)V
    .locals 0

    invoke-direct {p0}, Lhg/i;->O()V

    return-void
.end method

.method static synthetic g(Lhg/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lhg/i;->o:Z

    return p1
.end method

.method static synthetic h()Lio/grpc/a;
    .locals 1

    sget-object v0, Lhg/i;->A:Lio/grpc/a;

    return-object v0
.end method

.method static synthetic i(Lhg/i;Ljava/util/List;Ljava/util/List;Lhg/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lhg/i;->N(Ljava/util/List;Ljava/util/List;Lhg/c;)V

    return-void
.end method

.method static synthetic j(Lhg/i;)Z
    .locals 0

    iget-boolean p0, p0, Lhg/i;->m:Z

    return p0
.end method

.method static synthetic k(Lhg/i;)Lio/grpc/internal/k;
    .locals 0

    iget-object p0, p0, Lhg/i;->p:Lio/grpc/internal/k;

    return-object p0
.end method

.method static synthetic l(Lhg/i;Lio/grpc/internal/k;)Lio/grpc/internal/k;
    .locals 0

    iput-object p1, p0, Lhg/i;->p:Lio/grpc/internal/k;

    return-object p1
.end method

.method static synthetic m(Lhg/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lhg/i;->m:Z

    return p1
.end method

.method static synthetic n(Lhg/i;)Lio/grpc/internal/k$a;
    .locals 0

    iget-object p0, p0, Lhg/i;->i:Lio/grpc/internal/k$a;

    return-object p0
.end method

.method static synthetic o(Lhg/i;)Lcom/google/common/base/u;
    .locals 0

    iget-object p0, p0, Lhg/i;->g:Lcom/google/common/base/u;

    return-object p0
.end method

.method static synthetic p(Lhg/i;Lio/grpc/d1$c;)Lio/grpc/d1$c;
    .locals 0

    iput-object p1, p0, Lhg/i;->q:Lio/grpc/d1$c;

    return-object p1
.end method

.method static synthetic q(Lhg/i;)Lio/grpc/n0$d;
    .locals 0

    iget-object p0, p0, Lhg/i;->b:Lio/grpc/n0$d;

    return-object p0
.end method

.method static synthetic r(Lhg/i;)Lhg/i$k;
    .locals 0

    iget-object p0, p0, Lhg/i;->s:Lhg/i$k;

    return-object p0
.end method

.method static synthetic s(Lhg/i;Lhg/i$k;)Lhg/i$k;
    .locals 0

    iput-object p1, p0, Lhg/i;->s:Lhg/i$k;

    return-object p1
.end method

.method static synthetic t(Lhg/i;Lio/grpc/Status;)Lio/grpc/Status;
    .locals 0

    iput-object p1, p0, Lhg/i;->n:Lio/grpc/Status;

    return-object p1
.end method

.method static synthetic u(Lhg/i;)V
    .locals 0

    invoke-direct {p0}, Lhg/i;->F()V

    return-void
.end method

.method static synthetic v(Lhg/i;)V
    .locals 0

    invoke-direct {p0}, Lhg/i;->D()V

    return-void
.end method

.method static synthetic w(Lhg/i;)V
    .locals 0

    invoke-direct {p0}, Lhg/i;->M()V

    return-void
.end method

.method static synthetic x(Lhg/i;)Lio/grpc/internal/m2;
    .locals 0

    iget-object p0, p0, Lhg/i;->f:Lio/grpc/internal/m2;

    return-object p0
.end method

.method private y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lhg/i;->k:Lio/grpc/d1$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lhg/i;->q:Lio/grpc/d1$c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lhg/i;->q:Lio/grpc/d1$c;

    :cond_0
    return-void
.end method


# virtual methods
.method B(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhg/i;->j:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lhg/i;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const-string v3, "[grpclb-<{0}>] Resolved addresses: lb addresses {0}, backends: {1}"

    invoke-virtual {v0, v1, v3, v2}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lhg/i;->l:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-direct {p0}, Lhg/i;->J()V

    .line 5
    iget-boolean p1, p0, Lhg/i;->m:Z

    if-nez p1, :cond_2

    .line 6
    sget-object p1, Lhg/i;->H:Lio/grpc/Status;

    iput-object p1, p0, Lhg/i;->n:Lio/grpc/Status;

    .line 7
    invoke-direct {p0}, Lhg/i;->y()V

    .line 8
    invoke-direct {p0}, Lhg/i;->F()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lhg/i;->L(Ljava/util/List;)V

    .line 10
    iget-object p1, p0, Lhg/i;->s:Lhg/i$k;

    if-nez p1, :cond_1

    .line 11
    invoke-direct {p0}, Lhg/i;->z()V

    .line 12
    invoke-direct {p0}, Lhg/i;->M()V

    .line 13
    :cond_1
    iget-object p1, p0, Lhg/i;->k:Lio/grpc/d1$c;

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lhg/i;->m:Z

    if-nez p1, :cond_2

    .line 14
    iget-object v0, p0, Lhg/i;->d:Lio/grpc/d1;

    new-instance v1, Lhg/i$h;

    sget-object p1, Lhg/i;->E:Lio/grpc/Status;

    const/4 p2, 0x0

    invoke-direct {v1, p0, p1, p2}, Lhg/i$h;-><init>(Lhg/i;Lio/grpc/Status;Lhg/i$a;)V

    sget-wide v2, Lhg/i;->z:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lhg/i;->h:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual/range {v0 .. v5}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object p1

    iput-object p1, p0, Lhg/i;->k:Lio/grpc/d1$c;

    .line 15
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lhg/i;->m:Z

    if-eqz p1, :cond_3

    .line 16
    invoke-direct {p0}, Lhg/i;->O()V

    .line 17
    :cond_3
    invoke-direct {p0}, Lhg/i;->D()V

    return-void
.end method

.method C(Lio/grpc/n0$h;Lio/grpc/q;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lhg/i;->t:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lhg/i;->u:Lhg/d;

    invoke-virtual {v0}, Lhg/d;->c()Lhg/i$m;

    move-result-object v0

    sget-object v1, Lhg/i$m;->a:Lhg/i$m;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v2, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/grpc/n0$h;->g()V

    .line 4
    :cond_1
    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v2, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-eq v0, v2, :cond_2

    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v3, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v3, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, Lhg/i;->b:Lio/grpc/n0$d;

    invoke-virtual {v0}, Lio/grpc/n0$d;->j()V

    .line 6
    :cond_3
    invoke-virtual {p1}, Lio/grpc/n0$h;->d()Lio/grpc/a;

    move-result-object p1

    sget-object v0, Lhg/i;->J:Lio/grpc/a$c;

    invoke-virtual {p1, v0}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    iget-object v0, p0, Lhg/i;->u:Lhg/d;

    .line 8
    invoke-virtual {v0}, Lhg/d;->c()Lhg/i$m;

    move-result-object v0

    if-ne v0, v1, :cond_5

    .line 9
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/q;

    invoke-virtual {v0}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    if-ne v0, v2, :cond_5

    .line 10
    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_4

    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    invoke-direct {p0}, Lhg/i;->F()V

    .line 13
    invoke-direct {p0}, Lhg/i;->D()V

    :cond_6
    :goto_1
    return-void
.end method

.method G(Lio/grpc/Status;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lhg/i;->j:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->DEBUG:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lhg/i;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v5, "[grpclb-<{0}>] Error: {1}"

    invoke-virtual {v0, v1, v5, v2}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lhg/i;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    .line 4
    invoke-virtual {p1}, Lio/grpc/Status;->m()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/Status;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 5
    sget-object v0, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v1, Lhg/i$o;

    iget-object v2, p0, Lhg/i;->v:Ljava/util/List;

    new-array v3, v3, [Lhg/i$g;

    new-instance v5, Lhg/i$g;

    invoke-direct {v5, p1}, Lhg/i$g;-><init>(Lio/grpc/Status;)V

    aput-object v5, v3, v4

    .line 6
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lhg/i$o;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 7
    invoke-direct {p0, v0, v1}, Lhg/i;->E(Lio/grpc/ConnectivityState;Lhg/i$o;)V

    :cond_0
    return-void
.end method

.method I()V
    .locals 6

    .line 1
    iget-object v0, p0, Lhg/i;->j:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lhg/i;->a:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "[grpclb-<{0}>] Shutdown"

    invoke-virtual {v0, v1, v4, v3}, Lio/grpc/ChannelLogger;->b(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lhg/i;->J()V

    .line 3
    sget-object v0, Lhg/i$d;->a:[I

    iget-object v1, p0, Lhg/i;->u:Lhg/d;

    invoke-virtual {v1}, Lhg/d;->c()Lhg/i$m;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lhg/i;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, Lhg/i;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lhg/i;->t:Ljava/util/Map;

    const-string v1, "Excessive Subchannels: %s"

    invoke-static {v2, v1, v0}, Lcom/google/common/base/o;->D(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lhg/i;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/n0$h;

    invoke-virtual {v0}, Lio/grpc/n0$h;->h()V

    goto :goto_2

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing case for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lhg/i;->u:Lhg/d;

    invoke-virtual {v2}, Lhg/d;->c()Lhg/i$m;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 8
    :cond_2
    iget-object v0, p0, Lhg/i;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/n0$h;

    .line 9
    invoke-direct {p0, v1}, Lhg/i;->H(Lio/grpc/n0$h;)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lhg/i;->e:Lhg/k;

    invoke-interface {v0}, Lhg/k;->clear()V

    .line 11
    :cond_4
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lhg/i;->t:Ljava/util/Map;

    .line 12
    invoke-direct {p0}, Lhg/i;->y()V

    .line 13
    invoke-direct {p0}, Lhg/i;->z()V

    return-void
.end method
