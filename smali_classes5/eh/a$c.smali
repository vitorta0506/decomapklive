.class abstract Leh/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field final synthetic g:Leh/a;


# direct methods
.method private constructor <init>(Leh/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leh/a$c;->g:Leh/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Leh/a$c;->c:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Leh/a$c;->d:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Leh/a$c;->e:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Leh/a$c;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Leh/a;Leh/a$a;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Leh/a$c;-><init>(Leh/a;)V

    return-void
.end method

.method static synthetic a(Leh/a$c;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Leh/a$c;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/a$c;->g:Leh/a;

    invoke-static {v0}, Leh/a;->m(Leh/a;)Leh/a$c;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 2
    iget-object v0, p0, Leh/a$c;->g:Leh/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Leh/a;->n(Leh/a;Leh/a$c;)Leh/a$c;

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Leh/a$c;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Leh/a$c;->b:Z

    .line 3
    invoke-direct {p0}, Leh/a$c;->b()V

    .line 4
    invoke-virtual {p0, p1}, Leh/a$c;->j(Ljava/lang/Exception;)V

    return-void
.end method

.method private g(Lio/grpc/Status;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lio/grpc/Status;->p()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "unexpected OK status"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Leh/a$c;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Leh/a$c;->g:Leh/a;

    invoke-static {v0}, Leh/a;->c(Leh/a;)Leh/q2;

    move-result-object v0

    sget-object v2, Leh/q2$b;->d:Leh/q2$b;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lio/grpc/Status;->n()Lio/grpc/Status$Code;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lio/grpc/Status;->o()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    invoke-virtual {p1}, Lio/grpc/Status;->m()Ljava/lang/Throwable;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v4, "ADS stream closed with status {0}: {1}. Cause: {2}"

    .line 5
    invoke-virtual {v0, v2, v4, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iput-boolean v1, p0, Leh/a$c;->b:Z

    .line 7
    iget-object v0, p0, Leh/a$c;->g:Leh/a;

    invoke-static {v0}, Leh/a;->e(Leh/a;)Leh/p2$n;

    move-result-object v0

    invoke-interface {v0, p1}, Leh/p2$n;->b(Lio/grpc/Status;)V

    .line 8
    invoke-direct {p0}, Leh/a$c;->b()V

    .line 9
    iget-boolean p1, p0, Leh/a$c;->a:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Leh/a$c;->g:Leh/a;

    invoke-static {p1}, Leh/a;->f(Leh/a;)Lio/grpc/internal/k;

    move-result-object p1

    if-nez p1, :cond_2

    .line 10
    :cond_1
    iget-object p1, p0, Leh/a$c;->g:Leh/a;

    invoke-static {p1}, Leh/a;->h(Leh/a;)Lio/grpc/internal/k$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/k$a;->get()Lio/grpc/internal/k;

    move-result-object v0

    invoke-static {p1, v0}, Leh/a;->g(Leh/a;Lio/grpc/internal/k;)Lio/grpc/internal/k;

    .line 11
    :cond_2
    iget-boolean p1, p0, Leh/a$c;->a:Z

    const-wide/16 v2, 0x0

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Leh/a$c;->g:Leh/a;

    .line 13
    invoke-static {p1}, Leh/a;->f(Leh/a;)Lio/grpc/internal/k;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/internal/k;->a()J

    move-result-wide v6

    iget-object p1, p0, Leh/a$c;->g:Leh/a;

    .line 14
    invoke-static {p1}, Leh/a;->i(Leh/a;)Lcom/google/common/base/u;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/common/base/u;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 15
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_3
    move-wide v8, v2

    .line 16
    iget-object p1, p0, Leh/a$c;->g:Leh/a;

    invoke-static {p1}, Leh/a;->c(Leh/a;)Leh/q2;

    move-result-object p1

    sget-object v0, Leh/q2$b;->b:Leh/q2$b;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "Retry ADS stream in {0} ns"

    invoke-virtual {p1, v0, v2, v1}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object p1, p0, Leh/a$c;->g:Leh/a;

    invoke-static {p1}, Leh/a;->k(Leh/a;)Lio/grpc/d1;

    move-result-object v6

    new-instance v7, Leh/a$g;

    iget-object v0, p0, Leh/a$c;->g:Leh/a;

    invoke-direct {v7, v0}, Leh/a$g;-><init>(Leh/a;)V

    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Leh/a$c;->g:Leh/a;

    .line 18
    invoke-static {v0}, Leh/a;->j(Leh/a;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v11

    .line 19
    invoke-virtual/range {v6 .. v11}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object v0

    invoke-static {p1, v0}, Leh/a;->p(Leh/a;Lio/grpc/d1$c;)Lio/grpc/d1$c;

    return-void
.end method


# virtual methods
.method final d()V
    .locals 2

    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v1, "Closed by server"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Leh/a$c;->g(Lio/grpc/Status;)V

    return-void
.end method

.method final e(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lio/grpc/Status;->l(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    invoke-direct {p0, p1}, Leh/a$c;->g(Lio/grpc/Status;)V

    return-void
.end method

.method final f(Leh/a$f;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/a$f;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Leh/a$c;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Leh/a$c;->a:Z

    .line 3
    sget-object v1, Leh/a$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Leh/a$c;->g:Leh/a;

    invoke-static {p1}, Leh/a;->c(Leh/a;)Leh/q2;

    move-result-object p1

    sget-object p2, Leh/q2$b;->c:Leh/q2$b;

    const-string p3, "Ignore an unknown type of DiscoveryResponse"

    invoke-virtual {p1, p2, p3}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    iput-object p4, p0, Leh/a$c;->f:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Leh/a$c;->g:Leh/a;

    invoke-static {p1}, Leh/a;->e(Leh/a;)Leh/p2$n;

    move-result-object p1

    iget-object v0, p0, Leh/a$c;->g:Leh/a;

    invoke-static {v0}, Leh/a;->s(Leh/a;)Leh/j0$d;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, Leh/p2$n;->a(Leh/j0$d;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    iput-object p4, p0, Leh/a$c;->e:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Leh/a$c;->g:Leh/a;

    invoke-static {p1}, Leh/a;->e(Leh/a;)Leh/p2$n;

    move-result-object p1

    iget-object v0, p0, Leh/a$c;->g:Leh/a;

    invoke-static {v0}, Leh/a;->s(Leh/a;)Leh/j0$d;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, Leh/p2$n;->c(Leh/j0$d;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_3
    iput-object p4, p0, Leh/a$c;->d:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Leh/a$c;->g:Leh/a;

    invoke-static {p1}, Leh/a;->e(Leh/a;)Leh/p2$n;

    move-result-object p1

    iget-object v0, p0, Leh/a$c;->g:Leh/a;

    invoke-static {v0}, Leh/a;->s(Leh/a;)Leh/j0$d;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, Leh/p2$n;->f(Leh/j0$d;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_4
    iput-object p4, p0, Leh/a$c;->c:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Leh/a$c;->g:Leh/a;

    invoke-static {p1}, Leh/a;->e(Leh/a;)Leh/p2$n;

    move-result-object p1

    iget-object v0, p0, Leh/a$c;->g:Leh/a;

    invoke-static {v0}, Leh/a;->s(Leh/a;)Leh/j0$d;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, Leh/p2$n;->d(Leh/j0$d;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method abstract h(Leh/a$f;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/a$f;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method final i(Leh/a$f;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leh/a$f;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Leh/a$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Leh/a$c;->f:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown resource type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 4
    :cond_1
    iget-object v0, p0, Leh/a$c;->e:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Leh/a$c;->d:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Leh/a$c;->c:Ljava/lang/String;

    :goto_0
    move-object v7, v0

    .line 7
    iget-object v0, p0, Leh/a$c;->g:Leh/a;

    invoke-static {v0}, Leh/a;->c(Leh/a;)Leh/q2;

    move-result-object v0

    sget-object v3, Leh/q2$b;->b:Leh/q2$b;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    aput-object p2, v1, v2

    const-string v2, "Sending {0} request for resources: {1}"

    invoke-virtual {v0, v3, v2, v1}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Leh/a$c;->g:Leh/a;

    invoke-virtual {v0, p1}, Leh/a;->w(Leh/a$f;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v3 .. v8}, Leh/a$c;->h(Leh/a$f;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method abstract j(Ljava/lang/Exception;)V
.end method

.method abstract k()V
.end method
