.class abstract Leh/r1$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "d"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:J

.field d:Z

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Lio/grpc/d1$c;

.field final synthetic g:Leh/r1;


# direct methods
.method private constructor <init>(Leh/r1;)V
    .locals 2

    .line 1
    iput-object p1, p0, Leh/r1$d;->g:Leh/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Leh/r1$d;->c:J

    return-void
.end method

.method synthetic constructor <init>(Leh/r1;Leh/r1$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Leh/r1$d;-><init>(Leh/r1;)V

    return-void
.end method

.method static synthetic a(Leh/r1$d;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Leh/r1$d;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic b(Leh/r1$d;)V
    .locals 0

    invoke-direct {p0}, Leh/r1$d;->k()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/r1$d;->f:Lio/grpc/d1$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/r1$d;->f:Lio/grpc/d1$c;

    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    .line 3
    iput-object v1, p0, Leh/r1$d;->f:Lio/grpc/d1$c;

    .line 4
    :cond_0
    iget-object v0, p0, Leh/r1$d;->g:Leh/r1;

    invoke-static {v0}, Leh/r1;->d(Leh/r1;)Leh/r1$d;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 5
    iget-object v0, p0, Leh/r1$d;->g:Leh/r1;

    invoke-static {v0, v1}, Leh/r1;->e(Leh/r1;Leh/r1$d;)Leh/r1$d;

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Leh/r1$d;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Leh/r1$d;->b:Z

    .line 3
    invoke-direct {p0}, Leh/r1$d;->c()V

    .line 4
    invoke-virtual {p0, p1}, Leh/r1$d;->j(Ljava/lang/Exception;)V

    return-void
.end method

.method private h(Lio/grpc/Status;)V
    .locals 14

    .line 1
    invoke-virtual {p1}, Lio/grpc/Status;->p()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "unexpected OK status"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Leh/r1$d;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Leh/r1$d;->g:Leh/r1;

    invoke-static {v0}, Leh/r1;->i(Leh/r1;)Leh/q2;

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

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "LRS stream closed with status {0}: {1}. Cause: {2}"

    .line 5
    invoke-virtual {v0, v2, p1, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iput-boolean v1, p0, Leh/r1$d;->b:Z

    .line 7
    invoke-direct {p0}, Leh/r1$d;->c()V

    .line 8
    iget-boolean p1, p0, Leh/r1$d;->a:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Leh/r1$d;->g:Leh/r1;

    invoke-static {p1}, Leh/r1;->m(Leh/r1;)Lio/grpc/internal/k;

    move-result-object p1

    if-nez p1, :cond_2

    .line 9
    :cond_1
    iget-object p1, p0, Leh/r1$d;->g:Leh/r1;

    invoke-static {p1}, Leh/r1;->a(Leh/r1;)Lio/grpc/internal/k$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/k$a;->get()Lio/grpc/internal/k;

    move-result-object v0

    invoke-static {p1, v0}, Leh/r1;->n(Leh/r1;Lio/grpc/internal/k;)Lio/grpc/internal/k;

    .line 10
    :cond_2
    iget-boolean p1, p0, Leh/r1$d;->a:Z

    const-wide/16 v2, 0x0

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Leh/r1$d;->g:Leh/r1;

    .line 12
    invoke-static {p1}, Leh/r1;->m(Leh/r1;)Lio/grpc/internal/k;

    move-result-object p1

    invoke-interface {p1}, Lio/grpc/internal/k;->a()J

    move-result-wide v6

    iget-object p1, p0, Leh/r1$d;->g:Leh/r1;

    invoke-static {p1}, Leh/r1;->b(Leh/r1;)Lcom/google/common/base/u;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lcom/google/common/base/u;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-wide v10, v6

    goto :goto_0

    :cond_3
    move-wide v10, v2

    .line 13
    :goto_0
    iget-object p1, p0, Leh/r1$d;->g:Leh/r1;

    invoke-static {p1}, Leh/r1;->i(Leh/r1;)Leh/q2;

    move-result-object p1

    sget-object v0, Leh/q2$b;->b:Leh/q2$b;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v5

    const-string v4, "Retry LRS stream in {0} ns"

    invoke-virtual {p1, v0, v4, v1}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long p1, v10, v2

    if-gtz p1, :cond_4

    .line 14
    iget-object p1, p0, Leh/r1$d;->g:Leh/r1;

    invoke-static {p1}, Leh/r1;->h(Leh/r1;)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object p1, p0, Leh/r1$d;->g:Leh/r1;

    invoke-static {p1}, Leh/r1;->l(Leh/r1;)Lio/grpc/d1;

    move-result-object v8

    new-instance v9, Leh/r1$c;

    iget-object v0, p0, Leh/r1$d;->g:Leh/r1;

    invoke-direct {v9, v0}, Leh/r1$c;-><init>(Leh/r1;)V

    sget-object v12, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Leh/r1$d;->g:Leh/r1;

    .line 16
    invoke-static {v0}, Leh/r1;->k(Leh/r1;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v13

    .line 17
    invoke-virtual/range {v8 .. v13}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object v0

    invoke-static {p1, v0}, Leh/r1;->c(Leh/r1;Lio/grpc/d1$c;)Lio/grpc/d1$c;

    :goto_1
    return-void
.end method

.method private i()V
    .locals 7

    .line 1
    iget-object v0, p0, Leh/r1$d;->f:Lio/grpc/d1$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/grpc/d1$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/r1$d;->f:Lio/grpc/d1$c;

    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Leh/r1$d;->f:Lio/grpc/d1$c;

    .line 4
    :cond_0
    iget-wide v0, p0, Leh/r1$d;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 5
    iget-object v0, p0, Leh/r1$d;->g:Leh/r1;

    invoke-static {v0}, Leh/r1;->l(Leh/r1;)Lio/grpc/d1;

    move-result-object v1

    new-instance v2, Leh/r1$b;

    invoke-direct {v2, p0}, Leh/r1$b;-><init>(Leh/r1$d;)V

    iget-wide v3, p0, Leh/r1$d;->c:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Leh/r1$d;->g:Leh/r1;

    .line 6
    invoke-static {v0}, Leh/r1;->k(Leh/r1;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 7
    invoke-virtual/range {v1 .. v6}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object v0

    iput-object v0, p0, Leh/r1$d;->f:Lio/grpc/d1$c;

    :cond_1
    return-void
.end method

.method private k()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Leh/r1$d;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Leh/r1$d;->d:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Leh/r1$d;->g:Leh/r1;

    invoke-static {v0}, Leh/r1;->j(Leh/r1;)Leh/s1;

    move-result-object v0

    invoke-virtual {v0}, Leh/s1;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Leh/r1$d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Leh/r1$d;->g:Leh/r1;

    invoke-static {v3}, Leh/r1;->j(Leh/r1;)Leh/s1;

    move-result-object v3

    invoke-virtual {v3, v2}, Leh/s1;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Leh/r1$d;->l(Ljava/util/List;)V

    .line 8
    invoke-direct {p0}, Leh/r1$d;->i()V

    return-void
.end method


# virtual methods
.method final e()V
    .locals 2

    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v1, "Closed by server"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Leh/r1$d;->h(Lio/grpc/Status;)V

    return-void
.end method

.method final f(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lio/grpc/Status;->l(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    invoke-direct {p0, p1}, Leh/r1$d;->h(Lio/grpc/Status;)V

    return-void
.end method

.method final g(Ljava/util/List;ZJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Leh/r1$d;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Leh/r1$d;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Leh/r1$d;->g:Leh/r1;

    invoke-static {v0}, Leh/r1;->i(Leh/r1;)Leh/q2;

    move-result-object v0

    sget-object v2, Leh/q2$b;->a:Leh/q2$b;

    const-string v3, "Initial LRS response received"

    invoke-virtual {v0, v2, v3}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    .line 4
    iput-boolean v1, p0, Leh/r1$d;->a:Z

    .line 5
    :cond_1
    iput-boolean p2, p0, Leh/r1$d;->d:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 6
    iget-object p1, p0, Leh/r1$d;->g:Leh/r1;

    invoke-static {p1}, Leh/r1;->i(Leh/r1;)Leh/q2;

    move-result-object p1

    sget-object p2, Leh/q2$b;->b:Leh/q2$b;

    const-string v2, "Report loads for all clusters"

    invoke-virtual {p1, p2, v2}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Leh/r1$d;->g:Leh/r1;

    invoke-static {p2}, Leh/r1;->i(Leh/r1;)Leh/q2;

    move-result-object p2

    sget-object v2, Leh/q2$b;->b:Leh/q2$b;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    const-string v4, "Report loads for clusters: "

    invoke-virtual {p2, v2, v4, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iput-object p1, p0, Leh/r1$d;->e:Ljava/util/List;

    .line 9
    :goto_0
    iput-wide p3, p0, Leh/r1$d;->c:J

    .line 10
    iget-object p1, p0, Leh/r1$d;->g:Leh/r1;

    invoke-static {p1}, Leh/r1;->i(Leh/r1;)Leh/q2;

    move-result-object p1

    sget-object p2, Leh/q2$b;->b:Leh/q2$b;

    new-array p3, v1, [Ljava/lang/Object;

    iget-wide v1, p0, Leh/r1$d;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, v0

    const-string p4, "Update load reporting interval to {0} ns"

    invoke-virtual {p1, p2, p4, p3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-direct {p0}, Leh/r1$d;->i()V

    return-void
.end method

.method abstract j(Ljava/lang/Exception;)V
.end method

.method abstract l(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leh/g2;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract m()V
.end method
