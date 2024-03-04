.class final Lio/grpc/internal/g1$w;
.super Lio/grpc/internal/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "w"
.end annotation


# instance fields
.field final a:Lio/grpc/n0$b;

.field final b:Lio/grpc/internal/g1$r;

.field final c:Lio/grpc/g0;

.field final d:Lio/grpc/internal/n;

.field final e:Lio/grpc/internal/o;

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;"
        }
    .end annotation
.end field

.field g:Lio/grpc/internal/y0;

.field h:Z

.field i:Z

.field j:Lio/grpc/d1$c;

.field final synthetic k:Lio/grpc/internal/g1;


# direct methods
.method constructor <init>(Lio/grpc/internal/g1;Lio/grpc/n0$b;Lio/grpc/internal/g1$r;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    invoke-direct {p0}, Lio/grpc/internal/e;-><init>()V

    .line 2
    invoke-virtual {p2}, Lio/grpc/n0$b;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/g1$w;->f:Ljava/util/List;

    .line 3
    invoke-static {p1}, Lio/grpc/internal/g1;->B0(Lio/grpc/internal/g1;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lio/grpc/n0$b;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/internal/g1$w;->k(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lio/grpc/n0$b;->d()Lio/grpc/n0$b$a;

    move-result-object p2

    invoke-virtual {p2, v0}, Lio/grpc/n0$b$a;->e(Ljava/util/List;)Lio/grpc/n0$b$a;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/n0$b$a;->b()Lio/grpc/n0$b;

    move-result-object p2

    :cond_0
    const-string v0, "args"

    .line 6
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/n0$b;

    iput-object v0, p0, Lio/grpc/internal/g1$w;->a:Lio/grpc/n0$b;

    const-string v0, "helper"

    .line 7
    invoke-static {p3, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/grpc/internal/g1$r;

    iput-object p3, p0, Lio/grpc/internal/g1$w;->b:Lio/grpc/internal/g1$r;

    .line 8
    invoke-virtual {p1}, Lio/grpc/internal/g1;->a()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Subchannel"

    invoke-static {v0, p3}, Lio/grpc/g0;->b(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/g1$w;->c:Lio/grpc/g0;

    .line 9
    new-instance p3, Lio/grpc/internal/o;

    .line 10
    invoke-static {p1}, Lio/grpc/internal/g1;->e0(Lio/grpc/internal/g1;)I

    move-result v3

    invoke-static {p1}, Lio/grpc/internal/g1;->d0(Lio/grpc/internal/g1;)Lio/grpc/internal/m2;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/m2;->a()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subchannel for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2}, Lio/grpc/n0$b;->a()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lio/grpc/internal/o;-><init>(Lio/grpc/g0;IJLjava/lang/String;)V

    iput-object p3, p0, Lio/grpc/internal/g1$w;->e:Lio/grpc/internal/o;

    .line 12
    new-instance p2, Lio/grpc/internal/n;

    invoke-static {p1}, Lio/grpc/internal/g1;->d0(Lio/grpc/internal/g1;)Lio/grpc/internal/m2;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lio/grpc/internal/n;-><init>(Lio/grpc/internal/o;Lio/grpc/internal/m2;)V

    iput-object p2, p0, Lio/grpc/internal/g1$w;->d:Lio/grpc/internal/n;

    return-void
.end method

.method private k(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;)",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/x;

    .line 3
    new-instance v2, Lio/grpc/x;

    .line 4
    invoke-virtual {v1}, Lio/grpc/x;->a()Ljava/util/List;

    move-result-object v3

    .line 5
    invoke-virtual {v1}, Lio/grpc/x;->b()Lio/grpc/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/a;->d()Lio/grpc/a$b;

    move-result-object v1

    sget-object v4, Lio/grpc/x;->d:Lio/grpc/a$c;

    invoke-virtual {v1, v4}, Lio/grpc/a$b;->c(Lio/grpc/a$c;)Lio/grpc/a$b;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lio/grpc/x;-><init>(Ljava/util/List;Lio/grpc/a;)V

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Lio/grpc/d;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lio/grpc/internal/g1$w;->h:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    new-instance v0, Lio/grpc/internal/l2;

    iget-object v3, p0, Lio/grpc/internal/g1$w;->g:Lio/grpc/internal/y0;

    iget-object v1, p0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    .line 3
    invoke-static {v1}, Lio/grpc/internal/g1;->C0(Lio/grpc/internal/g1;)Lio/grpc/internal/g1$o;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/g1$o;->a()Ljava/util/concurrent/Executor;

    move-result-object v4

    iget-object v1, p0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    .line 4
    invoke-static {v1}, Lio/grpc/internal/g1;->C(Lio/grpc/internal/g1;)Lio/grpc/internal/s;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/s;->o0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    iget-object v1, p0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    .line 5
    invoke-static {v1}, Lio/grpc/internal/g1;->h0(Lio/grpc/internal/g1;)Lio/grpc/internal/m$b;

    move-result-object v1

    invoke-interface {v1}, Lio/grpc/internal/m$b;->a()Lio/grpc/internal/m;

    move-result-object v6

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lio/grpc/internal/l2;-><init>(Lio/grpc/internal/y0;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/m;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    iget-boolean v0, p0, Lio/grpc/internal/g1$w;->h:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/grpc/internal/g1$w;->f:Ljava/util/List;

    return-object v0
.end method

.method public d()Lio/grpc/a;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$w;->a:Lio/grpc/n0$b;

    invoke-virtual {v0}, Lio/grpc/n0$b;->b()Lio/grpc/a;

    move-result-object v0

    return-object v0
.end method

.method public e()Lio/grpc/ChannelLogger;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$w;->d:Lio/grpc/internal/n;

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/grpc/internal/g1$w;->h:Z

    const-string v1, "Subchannel is not started"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/g1$w;->g:Lio/grpc/internal/y0;

    return-object v0
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    iget-boolean v0, p0, Lio/grpc/internal/g1$w;->h:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lio/grpc/internal/g1$w;->g:Lio/grpc/internal/y0;

    invoke-virtual {v0}, Lio/grpc/internal/y0;->a()Lio/grpc/internal/r;

    return-void
.end method

.method public h()V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/g1$w;->g:Lio/grpc/internal/y0;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lio/grpc/internal/g1$w;->i:Z

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lio/grpc/internal/g1$w;->i:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->a0(Lio/grpc/internal/g1;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/g1$w;->j:Lio/grpc/d1$c;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lio/grpc/d1$c;->a()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/grpc/internal/g1$w;->j:Lio/grpc/d1$c;

    goto :goto_0

    :cond_1
    return-void

    .line 8
    :cond_2
    iput-boolean v1, p0, Lio/grpc/internal/g1$w;->i:Z

    .line 9
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->a0(Lio/grpc/internal/g1;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    iget-object v1, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    new-instance v2, Lio/grpc/internal/d1;

    new-instance v0, Lio/grpc/internal/g1$w$b;

    invoke-direct {v0, p0}, Lio/grpc/internal/g1$w$b;-><init>(Lio/grpc/internal/g1$w;)V

    invoke-direct {v2, v0}, Lio/grpc/internal/d1;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    .line 11
    invoke-static {v0}, Lio/grpc/internal/g1;->C(Lio/grpc/internal/g1;)Lio/grpc/internal/s;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/s;->o0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 12
    invoke-virtual/range {v1 .. v6}, Lio/grpc/d1;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/d1$c;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/g1$w;->j:Lio/grpc/d1$c;

    return-void

    .line 13
    :cond_3
    iget-object v0, p0, Lio/grpc/internal/g1$w;->g:Lio/grpc/internal/y0;

    sget-object v1, Lio/grpc/internal/g1;->r0:Lio/grpc/Status;

    invoke-virtual {v0, v1}, Lio/grpc/internal/y0;->g(Lio/grpc/Status;)V

    return-void
.end method

.method public i(Lio/grpc/n0$j;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    iget-object v1, v1, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    invoke-virtual {v1}, Lio/grpc/d1;->e()V

    .line 2
    iget-boolean v1, v0, Lio/grpc/internal/g1$w;->h:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "already started"

    invoke-static {v1, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 3
    iget-boolean v1, v0, Lio/grpc/internal/g1$w;->i:Z

    xor-int/2addr v1, v2

    const-string v3, "already shutdown"

    invoke-static {v1, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    invoke-static {v1}, Lio/grpc/internal/g1;->a0(Lio/grpc/internal/g1;)Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v3, "Channel is being terminated"

    invoke-static {v1, v3}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 5
    iput-boolean v2, v0, Lio/grpc/internal/g1$w;->h:Z

    .line 6
    new-instance v1, Lio/grpc/internal/y0;

    iget-object v2, v0, Lio/grpc/internal/g1$w;->a:Lio/grpc/n0$b;

    .line 7
    invoke-virtual {v2}, Lio/grpc/n0$b;->a()Ljava/util/List;

    move-result-object v5

    iget-object v2, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    .line 8
    invoke-virtual {v2}, Lio/grpc/internal/g1;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    .line 9
    invoke-static {v2}, Lio/grpc/internal/g1;->l0(Lio/grpc/internal/g1;)Ljava/lang/String;

    move-result-object v7

    iget-object v2, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    .line 10
    invoke-static {v2}, Lio/grpc/internal/g1;->m0(Lio/grpc/internal/g1;)Lio/grpc/internal/k$a;

    move-result-object v8

    iget-object v2, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    .line 11
    invoke-static {v2}, Lio/grpc/internal/g1;->C(Lio/grpc/internal/g1;)Lio/grpc/internal/s;

    move-result-object v9

    iget-object v2, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    .line 12
    invoke-static {v2}, Lio/grpc/internal/g1;->C(Lio/grpc/internal/g1;)Lio/grpc/internal/s;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/internal/s;->o0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v10

    iget-object v2, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    .line 13
    invoke-static {v2}, Lio/grpc/internal/g1;->n0(Lio/grpc/internal/g1;)Lcom/google/common/base/w;

    move-result-object v11

    iget-object v2, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    iget-object v12, v2, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    new-instance v13, Lio/grpc/internal/g1$w$a;

    move-object/from16 v2, p1

    invoke-direct {v13, v0, v2}, Lio/grpc/internal/g1$w$a;-><init>(Lio/grpc/internal/g1$w;Lio/grpc/n0$j;)V

    iget-object v2, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    .line 14
    invoke-static {v2}, Lio/grpc/internal/g1;->i0(Lio/grpc/internal/g1;)Lio/grpc/c0;

    move-result-object v14

    iget-object v2, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    .line 15
    invoke-static {v2}, Lio/grpc/internal/g1;->h0(Lio/grpc/internal/g1;)Lio/grpc/internal/m$b;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/internal/m$b;->a()Lio/grpc/internal/m;

    move-result-object v15

    iget-object v2, v0, Lio/grpc/internal/g1$w;->e:Lio/grpc/internal/o;

    iget-object v3, v0, Lio/grpc/internal/g1$w;->c:Lio/grpc/g0;

    iget-object v4, v0, Lio/grpc/internal/g1$w;->d:Lio/grpc/internal/n;

    move-object/from16 v18, v4

    move-object v4, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v18}, Lio/grpc/internal/y0;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lio/grpc/internal/k$a;Lio/grpc/internal/s;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/w;Lio/grpc/d1;Lio/grpc/internal/y0$j;Lio/grpc/c0;Lio/grpc/internal/m;Lio/grpc/internal/o;Lio/grpc/g0;Lio/grpc/ChannelLogger;)V

    .line 16
    iget-object v2, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    invoke-static {v2}, Lio/grpc/internal/g1;->P(Lio/grpc/internal/g1;)Lio/grpc/internal/o;

    move-result-object v2

    new-instance v3, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    invoke-direct {v3}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;-><init>()V

    const-string v4, "Child Subchannel started"

    .line 17
    invoke-virtual {v3, v4}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->c(Ljava/lang/String;)Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    move-result-object v3

    sget-object v4, Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;->CT_INFO:Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;

    .line 18
    invoke-virtual {v3, v4}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->d(Lio/grpc/InternalChannelz$ChannelTrace$Event$Severity;)Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    move-result-object v3

    iget-object v4, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    .line 19
    invoke-static {v4}, Lio/grpc/internal/g1;->d0(Lio/grpc/internal/g1;)Lio/grpc/internal/m2;

    move-result-object v4

    invoke-interface {v4}, Lio/grpc/internal/m2;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->f(J)Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    move-result-object v3

    .line 20
    invoke-virtual {v3, v1}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->e(Lio/grpc/l0;)Lio/grpc/InternalChannelz$ChannelTrace$Event$a;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lio/grpc/InternalChannelz$ChannelTrace$Event$a;->a()Lio/grpc/InternalChannelz$ChannelTrace$Event;

    move-result-object v3

    .line 22
    invoke-virtual {v2, v3}, Lio/grpc/internal/o;->e(Lio/grpc/InternalChannelz$ChannelTrace$Event;)V

    .line 23
    iput-object v1, v0, Lio/grpc/internal/g1$w;->g:Lio/grpc/internal/y0;

    .line 24
    iget-object v2, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    invoke-static {v2}, Lio/grpc/internal/g1;->i0(Lio/grpc/internal/g1;)Lio/grpc/c0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/grpc/c0;->e(Lio/grpc/f0;)V

    .line 25
    iget-object v2, v0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    invoke-static {v2}, Lio/grpc/internal/g1;->q0(Lio/grpc/internal/g1;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    iget-object v0, v0, Lio/grpc/internal/g1;->t:Lio/grpc/d1;

    invoke-virtual {v0}, Lio/grpc/d1;->e()V

    .line 2
    iput-object p1, p0, Lio/grpc/internal/g1$w;->f:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lio/grpc/internal/g1$w;->k:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->B0(Lio/grpc/internal/g1;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/internal/g1$w;->k(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/g1$w;->g:Lio/grpc/internal/y0;

    invoke-virtual {v0, p1}, Lio/grpc/internal/y0;->X(Ljava/util/List;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/g1$w;->c:Lio/grpc/g0;

    invoke-virtual {v0}, Lio/grpc/g0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
