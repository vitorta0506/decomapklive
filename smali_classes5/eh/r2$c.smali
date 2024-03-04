.class final Leh/r2$c;
.super Lio/grpc/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/r2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Leh/r2;


# direct methods
.method private constructor <init>(Leh/r2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leh/r2$c;->b:Leh/r2;

    invoke-direct {p0}, Lio/grpc/d0;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Leh/r2;Leh/r2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Leh/r2$c;-><init>(Leh/r2;)V

    return-void
.end method

.method static synthetic b(Leh/r2$c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Leh/r2$c;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/util/List;Lio/grpc/s0;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leh/l2$a$a$b;",
            ">;",
            "Lio/grpc/s0;",
            ")J"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh/l2$a$a$b;

    .line 2
    invoke-virtual {v2}, Leh/l2$a$a$b;->h()Leh/l2$a$a$b$a;

    move-result-object v3

    sget-object v4, Leh/l2$a$a$b$a;->a:Leh/l2$a$a$b$a;

    if-ne v3, v4, :cond_2

    .line 3
    invoke-virtual {v2}, Leh/l2$a$a$b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Leh/r2;->m(Lio/grpc/s0;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4
    invoke-virtual {v2}, Leh/l2$a$a$b;->f()Lcom/google/re2j/Pattern;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Leh/l2$a$a$b;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v2}, Leh/l2$a$a$b;->f()Lcom/google/re2j/Pattern;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/re2j/Pattern;->matcher(Ljava/lang/CharSequence;)Lcom/google/re2j/h;

    move-result-object v3

    invoke-virtual {v2}, Leh/l2$a$a$b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/re2j/h;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    :cond_1
    iget-object v4, p0, Leh/r2$c;->b:Leh/r2;

    invoke-static {v4}, Leh/r2;->n(Leh/r2;)Leh/u2;

    move-result-object v4

    invoke-virtual {v4, v3}, Leh/u2;->b(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v2}, Leh/l2$a$a$b;->h()Leh/l2$a$a$b$a;

    move-result-object v3

    sget-object v4, Leh/l2$a$a$b$a;->b:Leh/l2$a$a$b$a;

    if-ne v3, v4, :cond_3

    .line 8
    iget-object v3, p0, Leh/r2$c;->b:Leh/r2;

    invoke-static {v3}, Leh/r2;->n(Leh/r2;)Leh/u2;

    move-result-object v3

    iget-object v4, p0, Leh/r2$c;->b:Leh/r2;

    invoke-static {v4}, Leh/r2;->o(Leh/r2;)Lio/grpc/g0;

    move-result-object v4

    invoke-virtual {v4}, Lio/grpc/g0;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Leh/u2;->d(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x1

    shl-long/2addr v4, v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/16 v1, 0x3f

    shr-long/2addr v6, v1

    or-long/2addr v4, v6

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x0

    .line 10
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    xor-long v3, v4, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 11
    :cond_5
    invoke-virtual {v2}, Leh/l2$a$a$b;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    :cond_6
    if-nez v1, :cond_7

    .line 12
    iget-object p1, p0, Leh/r2$c;->b:Leh/r2;

    invoke-static {p1}, Leh/r2;->w(Leh/r2;)Leh/j2;

    move-result-object p1

    invoke-interface {p1}, Leh/j2;->a()J

    move-result-wide p1

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :goto_2
    return-wide p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/r2$c;->b:Leh/r2;

    invoke-static {v0}, Leh/r2;->j(Leh/r2;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/r2$b;

    iget-object v0, v0, Leh/r2$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Leh/r2$c;->b:Leh/r2;

    invoke-static {v0}, Leh/r2;->l(Leh/r2;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/r2$c$a;

    invoke-direct {v1, p0, p1}, Leh/r2$c$a;-><init>(Leh/r2$c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Leh/r2$c;->b:Leh/r2;

    invoke-static {v0}, Leh/r2;->j(Leh/r2;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/r2$b;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p1, Leh/r2$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v1, 0x1

    .line 4
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Lio/grpc/n0$f;)Lio/grpc/d0$b;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lio/grpc/n0$f;->b()Lio/grpc/s0;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 3
    :cond_0
    iget-object v5, p0, Leh/r2$c;->b:Leh/r2;

    invoke-static {v5}, Leh/r2;->u(Leh/r2;)Leh/r2$e;

    move-result-object v5

    .line 4
    new-instance v6, Ljava/util/HashMap;

    iget-object v7, v5, Leh/r2$e;->d:Ljava/util/Map;

    invoke-direct {v6, v7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 5
    iget-object v7, v5, Leh/r2$e;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Leh/l2$a;

    .line 6
    invoke-virtual {v8}, Leh/l2$a;->f()Leh/l2$a$b;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/grpc/n0$f;->c()Lio/grpc/MethodDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Lio/grpc/MethodDescriptor;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Leh/r2$c;->b:Leh/r2;

    .line 7
    invoke-static {v11}, Leh/r2;->w(Leh/r2;)Leh/j2;

    move-result-object v11

    .line 8
    invoke-static {v9, v10, v1, v11}, Leh/r2;->G(Leh/l2$a$b;Ljava/lang/String;Lio/grpc/s0;Leh/j2;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 9
    invoke-virtual {v8}, Leh/l2$a;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v3, v8

    :cond_2
    if-nez v3, :cond_3

    .line 10
    sget-object p1, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v0, "Could not find xDS route matching RPC"

    .line 11
    invoke-virtual {p1, v0}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lio/grpc/d0$b;->a(Lio/grpc/Status;)Lio/grpc/d0$b;

    move-result-object p1

    return-object p1

    .line 13
    :cond_3
    invoke-virtual {v3}, Leh/l2$a;->e()Leh/l2$a$a;

    move-result-object v7

    if-nez v7, :cond_4

    .line 14
    sget-object p1, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v0, "Could not route RPC to Route with non-forwarding action"

    invoke-virtual {p1, v0}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/d0$b;->a(Lio/grpc/Status;)Lio/grpc/d0$b;

    move-result-object p1

    return-object p1

    .line 15
    :cond_4
    invoke-virtual {v3}, Leh/l2$a;->e()Leh/l2$a$a;

    move-result-object v7

    .line 16
    invoke-virtual {v7}, Leh/l2$a$a;->a()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 17
    invoke-virtual {v7}, Leh/l2$a$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Leh/r2;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 18
    :cond_5
    invoke-virtual {v7}, Leh/l2$a$a;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 19
    invoke-virtual {v7}, Leh/l2$a$a;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Leh/l2$a$a$a;

    .line 20
    invoke-virtual {v11}, Leh/l2$a$a$a;->d()I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_0

    .line 21
    :cond_6
    iget-object v8, p0, Leh/r2$c;->b:Leh/r2;

    invoke-static {v8}, Leh/r2;->w(Leh/r2;)Leh/j2;

    move-result-object v8

    invoke-interface {v8, v10}, Leh/j2;->b(I)I

    move-result v8

    .line 22
    invoke-virtual {v7}, Leh/l2$a$a;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Leh/l2$a$a$a;

    .line 23
    invoke-virtual {v10}, Leh/l2$a$a$a;->d()I

    move-result v11

    add-int/2addr v9, v11

    if-ge v8, v9, :cond_7

    .line 24
    invoke-virtual {v10}, Leh/l2$a$a$a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Leh/r2;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {v10}, Leh/l2$a$a$a;->b()Lcom/google/common/collect/ImmutableMap;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 26
    :cond_8
    invoke-virtual {v7}, Leh/l2$a$a;->g()Leh/u0$a;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 27
    invoke-virtual {v7}, Leh/l2$a$a;->g()Leh/u0$a;

    move-result-object v4

    invoke-virtual {v4}, Leh/u0$a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Leh/r2;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    :cond_9
    :goto_1
    invoke-direct {p0, v4}, Leh/r2$c;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 29
    sget-boolean v7, Leh/r2;->w:Z

    if-eqz v7, :cond_c

    .line 30
    invoke-virtual {v3}, Leh/l2$a;->e()Leh/l2$a$a;

    move-result-object v7

    invoke-virtual {v7}, Leh/l2$a$a;->i()Ljava/lang/Long;

    move-result-object v7

    if-nez v7, :cond_a

    .line 31
    invoke-static {v5}, Leh/r2$e;->b(Leh/r2$e;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 32
    :cond_a
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-gtz v12, :cond_b

    goto :goto_2

    :cond_b
    move-object v2, v7

    .line 33
    :cond_c
    :goto_2
    invoke-virtual {v3}, Leh/l2$a;->e()Leh/l2$a$a;

    move-result-object v7

    invoke-virtual {v7}, Leh/l2$a$a;->h()Leh/l2$a$a$c;

    move-result-object v7

    .line 34
    invoke-static {v2, v7}, Leh/r2;->C(Ljava/lang/Long;Leh/l2$a$a$c;)Ljava/util/Map;

    move-result-object v2

    .line 35
    iget-object v7, p0, Leh/r2$c;->b:Leh/r2;

    invoke-static {v7}, Leh/r2;->f(Leh/r2;)Lio/grpc/t0$h;

    move-result-object v7

    invoke-virtual {v7, v2}, Lio/grpc/t0$h;->a(Ljava/util/Map;)Lio/grpc/t0$c;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lio/grpc/t0$c;->c()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_d

    .line 37
    invoke-direct {p0, v4}, Leh/r2$c;->d(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2}, Lio/grpc/t0$c;->d()Lio/grpc/Status;

    move-result-object p1

    const-string v0, "Failed to parse service config (method config)"

    invoke-virtual {p1, v0}, Lio/grpc/Status;->f(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 39
    invoke-static {p1}, Lio/grpc/d0$b;->a(Lio/grpc/Status;)Lio/grpc/d0$b;

    move-result-object p1

    return-object p1

    .line 40
    :cond_d
    iget-object v2, v5, Leh/r2$e;->c:Ljava/util/List;

    if-eqz v2, :cond_f

    .line 41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leh/l1$c;

    .line 42
    iget-object v8, v5, Leh/l1$c;->b:Leh/l1$b;

    .line 43
    iget-object v9, p0, Leh/r2$c;->b:Leh/r2;

    invoke-static {v9}, Leh/r2;->g(Leh/r2;)Leh/m1;

    move-result-object v9

    invoke-interface {v8}, Leh/l1$b;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Leh/m1;->a(Ljava/lang/String;)Leh/l1;

    move-result-object v9

    .line 44
    instance-of v10, v9, Leh/l1$a;

    if-eqz v10, :cond_e

    .line 45
    check-cast v9, Leh/l1$a;

    iget-object v5, v5, Leh/l1$c;->a:Ljava/lang/String;

    .line 46
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leh/l1$b;

    iget-object v10, p0, Leh/r2$c;->b:Leh/r2;

    .line 47
    invoke-static {v10}, Leh/r2;->h(Leh/r2;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v10

    .line 48
    invoke-interface {v9, v8, v5, p1, v10}, Leh/l1$a;->b(Leh/l1$b;Leh/l1$b;Lio/grpc/n0$f;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/h;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 49
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 50
    :cond_f
    invoke-virtual {v3}, Leh/l2$a;->e()Leh/l2$a$a;

    move-result-object p1

    invoke-virtual {p1}, Leh/l2$a$a;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Leh/r2$c;->c(Ljava/util/List;Lio/grpc/s0;)J

    move-result-wide v1

    .line 51
    new-instance p1, Leh/r2$c$b;

    invoke-direct {p1, p0, v4, v1, v2}, Leh/r2$c$b;-><init>(Leh/r2$c;Ljava/lang/String;J)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {}, Lio/grpc/d0$b;->e()Lio/grpc/d0$b$a;

    move-result-object p1

    .line 53
    invoke-virtual {p1, v7}, Lio/grpc/d0$b$a;->b(Ljava/lang/Object;)Lio/grpc/d0$b$a;

    move-result-object p1

    .line 54
    invoke-static {v0}, Leh/r2;->i(Ljava/util/List;)Lio/grpc/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/grpc/d0$b$a;->c(Lio/grpc/h;)Lio/grpc/d0$b$a;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lio/grpc/d0$b$a;->a()Lio/grpc/d0$b;

    move-result-object p1

    return-object p1
.end method
