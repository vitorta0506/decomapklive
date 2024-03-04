.class Leh/r2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh/p2$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/r2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/r2$d$d;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/t0$c;

.field private final b:Lio/grpc/t0$g;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Leh/r2$d$d;

.field final synthetic g:Leh/r2;


# direct methods
.method constructor <init>(Leh/r2;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Leh/r2$d;->g:Leh/r2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Leh/r2;->f(Leh/r2;)Lio/grpc/t0$h;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/grpc/t0$h;->a(Ljava/util/Map;)Lio/grpc/t0$c;

    move-result-object p1

    iput-object p1, p0, Leh/r2$d;->a:Lio/grpc/t0$c;

    .line 3
    invoke-static {}, Lio/grpc/t0$g;->d()Lio/grpc/t0$g$a;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lio/grpc/t0$g$a;->d(Lio/grpc/t0$c;)Lio/grpc/t0$g$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lio/grpc/t0$g$a;->a()Lio/grpc/t0$g;

    move-result-object p1

    iput-object p1, p0, Leh/r2$d;->b:Lio/grpc/t0$g;

    .line 6
    iput-object p2, p0, Leh/r2$d;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic g(Leh/r2$d;)V
    .locals 0

    invoke-direct {p0}, Leh/r2$d;->r()V

    return-void
.end method

.method static synthetic h(Leh/r2$d;)Z
    .locals 0

    iget-boolean p0, p0, Leh/r2$d;->d:Z

    return p0
.end method

.method static synthetic i(Leh/r2$d;)V
    .locals 0

    invoke-direct {p0}, Leh/r2$d;->p()V

    return-void
.end method

.method static synthetic j(Leh/r2$d;Ljava/util/List;JLjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Leh/r2$d;->t(Ljava/util/List;JLjava/util/List;)V

    return-void
.end method

.method static synthetic k(Leh/r2$d;)Leh/r2$d$d;
    .locals 0

    iget-object p0, p0, Leh/r2$d;->f:Leh/r2$d$d;

    return-object p0
.end method

.method static synthetic l(Leh/r2$d;Leh/r2$d$d;)Leh/r2$d$d;
    .locals 0

    iput-object p1, p0, Leh/r2$d;->f:Leh/r2$d$d;

    return-object p1
.end method

.method static synthetic m(Leh/r2$d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Leh/r2$d;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Leh/r2$d;)V
    .locals 0

    invoke-direct {p0}, Leh/r2$d;->s()V

    return-void
.end method

.method static synthetic o(Leh/r2$d;)V
    .locals 0

    invoke-direct {p0}, Leh/r2$d;->q()V

    return-void
.end method

.method private p()V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/r2$d;->f:Leh/r2$d$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Leh/r2$d$d;->g(Leh/r2$d$d;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v1}, Leh/r2;->p(Leh/r2;)Leh/q2;

    move-result-object v1

    sget-object v2, Leh/q2$b;->b:Leh/q2$b;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v4, "Stop watching RDS resource {0}"

    invoke-virtual {v1, v2, v4, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v1}, Leh/r2;->q(Leh/r2;)Leh/p2;

    move-result-object v1

    iget-object v2, p0, Leh/r2$d;->f:Leh/r2$d$d;

    invoke-virtual {v1, v0, v2}, Leh/p2;->m(Ljava/lang/String;Leh/p2$h;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Leh/r2$d;->f:Leh/r2$d$d;

    :cond_0
    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/r2$d;->e:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v2}, Leh/r2;->j(Leh/r2;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leh/r2$b;

    iget-object v2, v2, Leh/r2$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v2}, Leh/r2;->j(Leh/r2;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Leh/r2$d;->e:Ljava/util/Set;

    .line 6
    :cond_2
    iget-object v0, p0, Leh/r2$d;->g:Leh/r2;

    invoke-static {}, Leh/r2$e;->a()Leh/r2$e;

    move-result-object v1

    invoke-static {v0, v1}, Leh/r2;->v(Leh/r2;Leh/r2$e;)Leh/r2$e;

    .line 7
    iget-object v0, p0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->t(Leh/r2;)Lio/grpc/t0$e;

    move-result-object v0

    iget-object v1, p0, Leh/r2$d;->b:Lio/grpc/t0$g;

    invoke-virtual {v0, v1}, Lio/grpc/t0$e;->c(Lio/grpc/t0$g;)V

    .line 8
    iget-object v0, p0, Leh/r2$d;->g:Leh/r2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Leh/r2;->s(Leh/r2;Z)Z

    return-void
.end method

.method private r()V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->p(Leh/r2;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Leh/r2$d;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Start watching LDS resource {0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->q(Leh/r2;)Leh/p2;

    move-result-object v0

    iget-object v1, p0, Leh/r2$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Leh/p2;->v(Ljava/lang/String;Leh/p2$f;)V

    return-void
.end method

.method private s()V
    .locals 6

    .line 1
    iget-object v0, p0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->p(Leh/r2;)Leh/q2;

    move-result-object v0

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Leh/r2$d;->c:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Stop watching LDS resource {0}"

    invoke-virtual {v0, v1, v4, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iput-boolean v2, p0, Leh/r2$d;->d:Z

    .line 3
    invoke-direct {p0}, Leh/r2$d;->p()V

    .line 4
    iget-object v0, p0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->q(Leh/r2;)Leh/p2;

    move-result-object v0

    iget-object v1, p0, Leh/r2$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Leh/p2;->l(Ljava/lang/String;Leh/p2$f;)V

    return-void
.end method

.method private t(Ljava/util/List;JLjava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Leh/l2;",
            ">;J",
            "Ljava/util/List<",
            "Leh/l1$c;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Leh/r2$d;->c:Ljava/lang/String;

    move-object v2, p1

    invoke-static {p1, v1}, Leh/r2;->B(Ljava/util/List;Ljava/lang/String;)Leh/l2;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v1}, Leh/r2;->p(Leh/r2;)Leh/q2;

    move-result-object v1

    sget-object v4, Leh/q2$b;->c:Leh/q2$b;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, v0, Leh/r2$d;->c:Ljava/lang/String;

    aput-object v5, v3, v2

    const-string v2, "Failed to find virtual host matching hostname {0}"

    invoke-virtual {v1, v4, v2, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Leh/r2$d;->q()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {v1}, Leh/l2;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    .line 5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 6
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 7
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Leh/l2$a;

    .line 9
    invoke-virtual {v9}, Leh/l2$a;->e()Leh/l2$a$a;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 10
    invoke-virtual {v9}, Leh/l2$a$a;->a()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 11
    invoke-virtual {v9}, Leh/l2$a$a;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Leh/r2;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 12
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {v9}, Leh/l2$a$a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v9}, Leh/l2$a$a;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 15
    invoke-virtual {v9}, Leh/l2$a$a;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/e9;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Leh/l2$a$a$a;

    .line 16
    invoke-virtual {v10}, Leh/l2$a$a$a;->c()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Leh/r2;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 17
    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v10}, Leh/l2$a$a$a;->c()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v9}, Leh/l2$a$a;->g()Leh/u0$a;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 20
    invoke-virtual {v9}, Leh/l2$a$a;->g()Leh/u0$a;

    move-result-object v10

    invoke-virtual {v10}, Leh/u0$a;->a()Leh/u0$b;

    move-result-object v10

    .line 21
    instance-of v11, v10, Leh/c2$a;

    if-eqz v11, :cond_1

    .line 22
    invoke-virtual {v9}, Leh/l2$a$a;->g()Leh/u0$a;

    move-result-object v9

    invoke-virtual {v9}, Leh/u0$a;->c()Ljava/lang/String;

    move-result-object v9

    .line 23
    invoke-static {v9}, Leh/r2;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 24
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    check-cast v10, Leh/c2$a;

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 26
    :cond_4
    iget-object v7, v0, Leh/r2$d;->e:Ljava/util/Set;

    if-nez v7, :cond_5

    const/4 v9, 0x1

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_2
    if-nez v7, :cond_6

    move-object v7, v4

    goto :goto_3

    .line 27
    :cond_6
    invoke-static {v4, v7}, Lcom/google/common/collect/w7;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/w7$g;

    move-result-object v7

    .line 28
    :goto_3
    iget-object v10, v0, Leh/r2$d;->e:Ljava/util/Set;

    if-nez v10, :cond_7

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v10

    goto :goto_4

    :cond_7
    invoke-static {v10, v4}, Lcom/google/common/collect/w7;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/w7$g;

    move-result-object v10

    :goto_4
    move-object v12, v10

    .line 30
    iput-object v4, v0, Leh/r2$d;->e:Ljava/util/Set;

    .line 31
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 32
    iget-object v11, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v11}, Leh/r2;->j(Leh/r2;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 33
    iget-object v11, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v11}, Leh/r2;->j(Leh/r2;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Leh/r2$b;

    iget-object v10, v10, Leh/r2$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_5

    .line 34
    :cond_8
    invoke-interface {v5, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 35
    iget-object v9, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v9}, Leh/r2;->j(Leh/r2;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v11, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 36
    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v11, v13}, Leh/r2$b;->b(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/String;)Leh/r2$b;

    move-result-object v11

    .line 37
    invoke-interface {v9, v10, v11}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_9
    invoke-interface {v6, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 39
    iget-object v9, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v9}, Leh/r2;->j(Leh/r2;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v11, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 40
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Leh/c2$a;

    .line 41
    invoke-static {v11, v13}, Leh/r2$b;->c(Ljava/util/concurrent/atomic/AtomicInteger;Leh/c2$a;)Leh/r2$b;

    move-result-object v11

    .line 42
    invoke-interface {v9, v10, v11}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const/4 v9, 0x1

    goto :goto_5

    .line 43
    :cond_b
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 44
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leh/c2$a;

    .line 45
    iget-object v10, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v10}, Leh/r2;->j(Leh/r2;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Leh/r2$b;

    iget-object v10, v10, Leh/r2$b;->c:Leh/c2$a;

    invoke-static {v7, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 46
    iget-object v9, v0, Leh/r2$d;->g:Leh/r2;

    .line 47
    invoke-static {v9}, Leh/r2;->j(Leh/r2;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Leh/r2$b;

    iget-object v9, v9, Leh/r2$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v9, v7}, Leh/r2$b;->c(Ljava/util/concurrent/atomic/AtomicInteger;Leh/c2$a;)Leh/r2$b;

    move-result-object v7

    .line 48
    iget-object v9, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v9}, Leh/r2;->j(Leh/r2;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    invoke-interface {v9, v5, v7}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    goto :goto_6

    :cond_d
    if-eqz v9, :cond_e

    .line 49
    iget-object v4, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v4}, Leh/r2;->k(Leh/r2;)V

    .line 50
    :cond_e
    iget-object v4, v0, Leh/r2$d;->g:Leh/r2;

    new-instance v13, Leh/r2$e;

    .line 51
    invoke-virtual {v1}, Leh/l2;->c()Lcom/google/common/collect/ImmutableMap;

    move-result-object v10

    const/4 v11, 0x0

    move-object v5, v13

    move-wide/from16 v6, p2

    move-object/from16 v9, p4

    invoke-direct/range {v5 .. v11}, Leh/r2$e;-><init>(JLjava/util/List;Ljava/util/List;Ljava/util/Map;Leh/r2$a;)V

    .line 52
    invoke-static {v4, v13}, Leh/r2;->v(Leh/r2;Leh/r2$e;)Leh/r2$e;

    .line 53
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 54
    iget-object v5, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v5}, Leh/r2;->j(Leh/r2;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leh/r2$b;

    iget-object v5, v5, Leh/r2$b;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v5

    if-nez v5, :cond_f

    .line 55
    iget-object v2, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v2}, Leh/r2;->j(Leh/r2;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_7

    :cond_10
    if-eqz v2, :cond_11

    .line 56
    iget-object v1, v0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v1}, Leh/r2;->k(Leh/r2;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public a(Lio/grpc/Status;)V
    .locals 2

    iget-object v0, p0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->l(Leh/r2;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/r2$d$b;

    invoke-direct {v1, p0, p1}, Leh/r2$d$b;-><init>(Leh/r2$d;Lio/grpc/Status;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->l(Leh/r2;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/r2$d$c;

    invoke-direct {v1, p0, p1}, Leh/r2$d$c;-><init>(Leh/r2$d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Leh/p2$g;)V
    .locals 2

    iget-object v0, p0, Leh/r2$d;->g:Leh/r2;

    invoke-static {v0}, Leh/r2;->l(Leh/r2;)Lio/grpc/d1;

    move-result-object v0

    new-instance v1, Leh/r2$d$a;

    invoke-direct {v1, p0, p1}, Leh/r2$d$a;-><init>(Leh/r2$d;Leh/p2$g;)V

    invoke-virtual {v0, v1}, Lio/grpc/d1;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
