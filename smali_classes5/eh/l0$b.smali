.class final Leh/l0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/l0$b$a;
    }
.end annotation


# instance fields
.field private final a:Leh/l0$b$a;

.field private b:Lio/grpc/n0;

.field final synthetic c:Leh/l0;


# direct methods
.method private constructor <init>(Leh/l0;Ljava/lang/String;)V
    .locals 1

    .line 2
    iput-object p1, p0, Leh/l0$b;->c:Leh/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Leh/l0$b$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Leh/l0$b$a;-><init>(Leh/l0$b;Ljava/lang/String;Leh/l0$a;)V

    iput-object p1, p0, Leh/l0$b;->a:Leh/l0$b$a;

    return-void
.end method

.method synthetic constructor <init>(Leh/l0;Ljava/lang/String;Leh/l0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Leh/l0$b;-><init>(Leh/l0;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Leh/l0$b;)V
    .locals 0

    invoke-direct {p0}, Leh/l0$b;->j()V

    return-void
.end method

.method static synthetic b(Leh/l0$b;)Leh/l0$b$a;
    .locals 0

    iget-object p0, p0, Leh/l0$b;->a:Leh/l0$b$a;

    return-object p0
.end method

.method static synthetic c(Leh/l0$b;Lio/grpc/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Leh/l0$b;->h(Lio/grpc/Status;)V

    return-void
.end method

.method static synthetic d(Leh/l0$b;)V
    .locals 0

    invoke-direct {p0}, Leh/l0$b;->g()V

    return-void
.end method

.method static synthetic e(Leh/l0$b;)Lio/grpc/n0;
    .locals 0

    iget-object p0, p0, Leh/l0$b;->b:Lio/grpc/n0;

    return-object p0
.end method

.method static synthetic f(Leh/l0$b;)V
    .locals 0

    invoke-direct {p0}, Leh/l0$b;->i()V

    return-void
.end method

.method private g()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 3
    iget-object v2, p0, Leh/l0$b;->a:Leh/l0$b$a;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 5
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leh/l0$b$a;

    .line 7
    invoke-static {v4}, Leh/l0$b$a;->k(Leh/l0$b$a;)Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-static {v4}, Leh/l0$b$a;->m(Leh/l0$b$a;)Leh/p2$c;

    move-result-object v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 9
    :cond_2
    invoke-static {v4}, Leh/l0$b$a;->o(Leh/l0$b$a;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 10
    invoke-static {v4}, Leh/l0$b$a;->m(Leh/l0$b$a;)Leh/p2$c;

    move-result-object v5

    invoke-virtual {v5}, Leh/p2$c;->c()Leh/p2$c$b;

    move-result-object v5

    sget-object v6, Leh/p2$c$b;->a:Leh/p2$c$b;

    if-ne v5, v6, :cond_3

    .line 11
    invoke-static {v4}, Leh/l0$b$a;->q(Leh/l0$b$a;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Leh/l0$b$a;->m(Leh/l0$b$a;)Leh/p2$c;

    move-result-object v6

    invoke-virtual {v6}, Leh/p2$c;->e()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-static {v4}, Leh/l0$b$a;->m(Leh/l0$b$a;)Leh/p2$c;

    move-result-object v7

    invoke-virtual {v7}, Leh/p2$c;->j()Leh/j0$d;

    move-result-object v7

    invoke-static {v4}, Leh/l0$b$a;->m(Leh/l0$b$a;)Leh/p2$c;

    move-result-object v8

    invoke-virtual {v8}, Leh/p2$c;->k()Ljava/lang/Long;

    move-result-object v8

    .line 13
    invoke-static {v4}, Leh/l0$b$a;->m(Leh/l0$b$a;)Leh/p2$c;

    move-result-object v4

    invoke-virtual {v4}, Leh/p2$c;->o()Leh/i1;

    move-result-object v4

    .line 14
    invoke-static {v5, v6, v7, v8, v4}, Leh/t0$a$a;->a(Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)Leh/t0$a$a;

    move-result-object v4

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {v4}, Leh/l0$b$a;->q(Leh/l0$b$a;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Leh/l0$b$a;->m(Leh/l0$b$a;)Leh/p2$c;

    move-result-object v6

    invoke-virtual {v6}, Leh/p2$c;->d()Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {v4}, Leh/l0$b$a;->m(Leh/l0$b$a;)Leh/p2$c;

    move-result-object v7

    invoke-virtual {v7}, Leh/p2$c;->j()Leh/j0$d;

    move-result-object v7

    invoke-static {v4}, Leh/l0$b$a;->m(Leh/l0$b$a;)Leh/p2$c;

    move-result-object v8

    invoke-virtual {v8}, Leh/p2$c;->k()Ljava/lang/Long;

    move-result-object v8

    .line 17
    invoke-static {v4}, Leh/l0$b$a;->m(Leh/l0$b$a;)Leh/p2$c;

    move-result-object v4

    invoke-virtual {v4}, Leh/p2$c;->o()Leh/i1;

    move-result-object v4

    .line 18
    invoke-static {v5, v6, v7, v8, v4}, Leh/t0$a$a;->b(Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;)Leh/t0$a$a;

    move-result-object v4

    .line 19
    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_4
    invoke-static {v4}, Leh/l0$b$a;->g(Leh/l0$b$a;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 21
    invoke-static {v4}, Leh/l0$b$a;->g(Leh/l0$b$a;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 22
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 23
    iget-object v0, p0, Leh/l0$b;->b:Lio/grpc/n0;

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {v0}, Lio/grpc/n0;->e()V

    .line 25
    iput-object v2, p0, Leh/l0$b;->b:Lio/grpc/n0;

    .line 26
    :cond_7
    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CDS error: found 0 leaf (logical DNS or EDS) clusters for root cluster "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Leh/l0$b;->a:Leh/l0$b$a;

    .line 27
    invoke-static {v2}, Leh/l0$b$a;->q(Leh/l0$b$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 29
    iget-object v1, p0, Leh/l0$b;->c:Leh/l0;

    invoke-static {v1}, Leh/l0;->f(Leh/l0;)Lio/grpc/n0$d;

    move-result-object v1

    sget-object v2, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v3, Leh/t2$b;

    invoke-direct {v3, v0}, Leh/t2$b;-><init>(Lio/grpc/Status;)V

    invoke-virtual {v1, v2, v3}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    return-void

    .line 30
    :cond_8
    iget-object v1, p0, Leh/l0$b;->a:Leh/l0$b$a;

    invoke-static {v1}, Leh/l0$b$a;->m(Leh/l0$b$a;)Leh/p2$c;

    move-result-object v1

    invoke-virtual {v1}, Leh/p2$c;->i()Leh/p2$c$c;

    move-result-object v1

    sget-object v3, Leh/p2$c$c;->b:Leh/p2$c$c;

    if-ne v1, v3, :cond_9

    .line 31
    iget-object v1, p0, Leh/l0$b;->c:Leh/l0;

    invoke-static {v1}, Leh/l0;->g(Leh/l0;)Lio/grpc/p0;

    move-result-object v1

    const-string v3, "ring_hash_experimental"

    invoke-virtual {v1, v3}, Lio/grpc/p0;->d(Ljava/lang/String;)Lio/grpc/o0;

    move-result-object v1

    .line 32
    new-instance v3, Leh/a2$d;

    iget-object v4, p0, Leh/l0$b;->a:Leh/l0$b$a;

    invoke-static {v4}, Leh/l0$b$a;->m(Leh/l0$b$a;)Leh/p2$c;

    move-result-object v4

    invoke-virtual {v4}, Leh/p2$c;->m()J

    move-result-wide v4

    iget-object v6, p0, Leh/l0$b;->a:Leh/l0$b$a;

    invoke-static {v6}, Leh/l0$b$a;->m(Leh/l0$b$a;)Leh/p2$c;

    move-result-object v6

    invoke-virtual {v6}, Leh/p2$c;->l()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Leh/a2$d;-><init>(JJ)V

    goto :goto_3

    :cond_9
    move-object v1, v2

    move-object v3, v1

    .line 33
    :goto_3
    iget-object v4, p0, Leh/l0$b;->a:Leh/l0$b$a;

    invoke-static {v4}, Leh/l0$b$a;->m(Leh/l0$b$a;)Leh/p2$c;

    move-result-object v4

    invoke-virtual {v4}, Leh/p2$c;->i()Leh/p2$c$c;

    move-result-object v4

    sget-object v5, Leh/p2$c$c;->c:Leh/p2$c$c;

    if-ne v4, v5, :cond_a

    .line 34
    iget-object v1, p0, Leh/l0$b;->c:Leh/l0;

    invoke-static {v1}, Leh/l0;->g(Leh/l0;)Lio/grpc/p0;

    move-result-object v1

    const-string v3, "least_request_experimental"

    invoke-virtual {v1, v3}, Lio/grpc/p0;->d(Ljava/lang/String;)Lio/grpc/o0;

    move-result-object v1

    .line 35
    new-instance v3, Leh/p1$c;

    iget-object v4, p0, Leh/l0$b;->a:Leh/l0$b$a;

    invoke-static {v4}, Leh/l0$b$a;->m(Leh/l0$b$a;)Leh/p2$c;

    move-result-object v4

    invoke-virtual {v4}, Leh/p2$c;->a()I

    move-result v4

    invoke-direct {v3, v4}, Leh/p1$c;-><init>(I)V

    :cond_a
    if-nez v1, :cond_b

    .line 36
    iget-object v1, p0, Leh/l0$b;->c:Leh/l0;

    invoke-static {v1}, Leh/l0;->g(Leh/l0;)Lio/grpc/p0;

    move-result-object v1

    const-string v3, "round_robin"

    invoke-virtual {v1, v3}, Lio/grpc/p0;->d(Ljava/lang/String;)Lio/grpc/o0;

    move-result-object v1

    goto :goto_4

    :cond_b
    move-object v2, v3

    .line 37
    :goto_4
    new-instance v3, Leh/t0$a;

    .line 38
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v4, Lio/grpc/internal/e2$b;

    invoke-direct {v4, v1, v2}, Lio/grpc/internal/e2$b;-><init>(Lio/grpc/o0;Ljava/lang/Object;)V

    invoke-direct {v3, v0, v4}, Leh/t0$a;-><init>(Ljava/util/List;Lio/grpc/internal/e2$b;)V

    .line 39
    iget-object v0, p0, Leh/l0$b;->b:Lio/grpc/n0;

    if-nez v0, :cond_c

    .line 40
    iget-object v0, p0, Leh/l0$b;->c:Leh/l0;

    invoke-static {v0}, Leh/l0;->g(Leh/l0;)Lio/grpc/p0;

    move-result-object v0

    const-string v1, "cluster_resolver_experimental"

    invoke-virtual {v0, v1}, Lio/grpc/p0;->d(Ljava/lang/String;)Lio/grpc/o0;

    move-result-object v0

    iget-object v1, p0, Leh/l0$b;->c:Leh/l0;

    invoke-static {v1}, Leh/l0;->f(Leh/l0;)Lio/grpc/n0$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/n0$c;->a(Lio/grpc/n0$d;)Lio/grpc/n0;

    move-result-object v0

    iput-object v0, p0, Leh/l0$b;->b:Lio/grpc/n0;

    .line 41
    :cond_c
    iget-object v0, p0, Leh/l0$b;->b:Lio/grpc/n0;

    iget-object v1, p0, Leh/l0$b;->c:Leh/l0;

    .line 42
    invoke-static {v1}, Leh/l0;->h(Leh/l0;)Lio/grpc/n0$g;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/n0$g;->e()Lio/grpc/n0$g$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lio/grpc/n0$g$a;->d(Ljava/lang/Object;)Lio/grpc/n0$g$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/n0$g$a;->a()Lio/grpc/n0$g;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lio/grpc/n0;->d(Lio/grpc/n0$g;)V

    return-void
.end method

.method private h(Lio/grpc/Status;)V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/l0$b;->b:Lio/grpc/n0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lio/grpc/n0;->b(Lio/grpc/Status;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Leh/l0$b;->c:Leh/l0;

    invoke-static {v0}, Leh/l0;->f(Leh/l0;)Lio/grpc/n0$d;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v2, Leh/t2$b;

    invoke-direct {v2, p1}, Leh/t2$b;-><init>(Lio/grpc/Status;)V

    invoke-virtual {v0, v1, v2}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 1

    .line 1
    iget-object v0, p0, Leh/l0$b;->a:Leh/l0$b$a;

    invoke-virtual {v0}, Leh/l0$b$a;->r()V

    .line 2
    iget-object v0, p0, Leh/l0$b;->b:Lio/grpc/n0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/grpc/n0;->e()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Leh/l0$b;->a:Leh/l0$b$a;

    invoke-static {v0}, Leh/l0$b$a;->j(Leh/l0$b$a;)V

    return-void
.end method
