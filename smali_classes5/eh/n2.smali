.class final Leh/n2;
.super Lio/grpc/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/n2$b;
    }
.end annotation


# instance fields
.field private final c:Leh/q2;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldh/d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/n2$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lio/grpc/n0$d;

.field private final g:Lio/grpc/d1;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/o2$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/n0$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/n0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leh/n2;->d:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leh/n2;->e:Ljava/util/Map;

    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Leh/n2;->h:Ljava/util/Map;

    const-string v0, "helper"

    .line 5
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/n0$d;

    iput-object v0, p0, Leh/n2;->f:Lio/grpc/n0$d;

    .line 6
    invoke-virtual {p1}, Lio/grpc/n0$d;->h()Lio/grpc/d1;

    move-result-object v0

    const-string v1, "syncContext"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/d1;

    iput-object v0, p0, Leh/n2;->g:Lio/grpc/d1;

    .line 7
    invoke-virtual {p1}, Lio/grpc/n0$d;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "weighted-target-lb"

    invoke-static {v0, p1}, Lio/grpc/g0;->b(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object p1

    .line 8
    invoke-static {p1}, Leh/q2;->f(Lio/grpc/g0;)Leh/q2;

    move-result-object p1

    iput-object p1, p0, Leh/n2;->c:Leh/q2;

    .line 9
    sget-object v0, Leh/q2$b;->b:Leh/q2$b;

    const-string v1, "Created"

    invoke-virtual {p1, v0, v1}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Leh/n2;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Leh/n2;->d:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Leh/n2;)V
    .locals 0

    invoke-direct {p0}, Leh/n2;->k()V

    return-void
.end method

.method static synthetic h(Leh/n2;)Lio/grpc/d1;
    .locals 0

    iget-object p0, p0, Leh/n2;->g:Lio/grpc/d1;

    return-object p0
.end method

.method static synthetic i(Leh/n2;)Lio/grpc/n0$d;
    .locals 0

    iget-object p0, p0, Leh/n2;->f:Lio/grpc/n0$d;

    return-object p0
.end method

.method private static j(Lio/grpc/ConnectivityState;Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityState;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    .line 1
    :cond_0
    sget-object v0, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-eq p0, v0, :cond_4

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    sget-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-eq p0, v0, :cond_4

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    sget-object v0, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-eq p0, v0, :cond_4

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method private k()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Leh/n2;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4
    iget-object v5, p0, Leh/n2;->e:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leh/n2$b;

    .line 5
    iget-object v6, v5, Leh/n2$b;->b:Lio/grpc/ConnectivityState;

    .line 6
    invoke-static {v3, v6}, Leh/n2;->j(Lio/grpc/ConnectivityState;Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityState;

    move-result-object v3

    .line 7
    iget-object v7, p0, Leh/n2;->h:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leh/o2$a;

    iget v4, v4, Leh/o2$a;->a:I

    .line 8
    sget-object v7, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne v7, v6, :cond_1

    .line 9
    new-instance v6, Leh/m2$a;

    iget-object v5, v5, Leh/n2$b;->c:Lio/grpc/n0$i;

    invoke-direct {v6, v4, v5}, Leh/m2$a;-><init>(ILio/grpc/n0$i;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    sget-object v7, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-ne v7, v6, :cond_0

    .line 11
    new-instance v6, Leh/m2$a;

    iget-object v5, v5, Leh/n2$b;->c:Lio/grpc/n0$i;

    invoke-direct {v6, v4, v5}, Leh/m2$a;-><init>(ILio/grpc/n0$i;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 13
    sget-object v0, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-ne v3, v0, :cond_3

    .line 14
    new-instance v0, Leh/m2;

    invoke-direct {v0, v1}, Leh/m2;-><init>(Ljava/util/List;)V

    goto :goto_1

    .line 15
    :cond_3
    sget-object v0, Leh/t2;->a:Lio/grpc/n0$i;

    goto :goto_1

    .line 16
    :cond_4
    new-instance v1, Leh/m2;

    invoke-direct {v1, v0}, Leh/m2;-><init>(Ljava/util/List;)V

    move-object v0, v1

    :goto_1
    if-eqz v3, :cond_5

    .line 17
    iget-object v1, p0, Leh/n2;->f:Lio/grpc/n0$d;

    invoke-virtual {v1, v3, v0}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lio/grpc/Status;)V
    .locals 4

    .line 1
    iget-object v0, p0, Leh/n2;->c:Leh/q2;

    sget-object v1, Leh/q2$b;->c:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Received name resolution error: {0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Leh/n2;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Leh/n2;->f:Lio/grpc/n0$d;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v2, Leh/t2$b;

    invoke-direct {v2, p1}, Leh/t2$b;-><init>(Lio/grpc/Status;)V

    invoke-virtual {v0, v1, v2}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    .line 4
    :cond_0
    iget-object v0, p0, Leh/n2;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/n0;

    .line 5
    invoke-virtual {v1, p1}, Lio/grpc/n0;->b(Lio/grpc/Status;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Lio/grpc/n0$g;)V
    .locals 6

    .line 1
    iget-object v0, p0, Leh/n2;->c:Leh/q2;

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Received resolution result: {0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lio/grpc/n0$g;->c()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "missing weighted_target lb config"

    .line 3
    invoke-static {v0, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    check-cast v0, Leh/o2$b;

    .line 5
    iget-object v0, v0, Leh/o2$b;->a:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh/o2$a;

    .line 8
    iget-object v4, p0, Leh/n2;->h:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    new-instance v4, Leh/n2$b;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v2, v5}, Leh/n2$b;-><init>(Leh/n2;Ljava/lang/String;Leh/n2$a;)V

    .line 10
    new-instance v5, Ldh/d;

    invoke-direct {v5, v4}, Ldh/d;-><init>(Lio/grpc/n0$d;)V

    .line 11
    iget-object v3, v3, Leh/o2$a;->b:Lio/grpc/internal/e2$b;

    invoke-virtual {v3}, Lio/grpc/internal/e2$b;->b()Lio/grpc/o0;

    move-result-object v3

    invoke-virtual {v5, v3}, Ldh/d;->q(Lio/grpc/n0$c;)V

    .line 12
    iget-object v3, p0, Leh/n2;->e:Ljava/util/Map;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v3, p0, Leh/n2;->d:Ljava/util/Map;

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_1
    iget-object v4, v3, Leh/o2$a;->b:Lio/grpc/internal/e2$b;

    invoke-virtual {v4}, Lio/grpc/internal/e2$b;->b()Lio/grpc/o0;

    move-result-object v4

    iget-object v5, p0, Leh/n2;->h:Ljava/util/Map;

    .line 15
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leh/o2$a;

    iget-object v5, v5, Leh/o2$a;->b:Lio/grpc/internal/e2$b;

    invoke-virtual {v5}, Lio/grpc/internal/e2$b;->b()Lio/grpc/o0;

    move-result-object v5

    .line 16
    invoke-virtual {v4, v5}, Lio/grpc/o0;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 17
    iget-object v4, p0, Leh/n2;->d:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldh/d;

    iget-object v3, v3, Leh/o2$a;->b:Lio/grpc/internal/e2$b;

    .line 18
    invoke-virtual {v3}, Lio/grpc/internal/e2$b;->b()Lio/grpc/o0;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldh/d;->q(Lio/grpc/n0$c;)V

    goto :goto_0

    .line 19
    :cond_2
    iput-object v0, p0, Leh/n2;->h:Ljava/util/Map;

    .line 20
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 21
    iget-object v2, p0, Leh/n2;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldh/d;

    .line 22
    invoke-virtual {p1}, Lio/grpc/n0$g;->e()Lio/grpc/n0$g$a;

    move-result-object v3

    .line 23
    invoke-virtual {p1}, Lio/grpc/n0$g;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v1}, Leh/b;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/grpc/n0$g$a;->b(Ljava/util/List;)Lio/grpc/n0$g$a;

    move-result-object v3

    iget-object v4, p0, Leh/n2;->h:Ljava/util/Map;

    .line 24
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/o2$a;

    iget-object v1, v1, Leh/o2$a;->b:Lio/grpc/internal/e2$b;

    invoke-virtual {v1}, Lio/grpc/internal/e2$b;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Lio/grpc/n0$g$a;->d(Ljava/lang/Object;)Lio/grpc/n0$g$a;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lio/grpc/n0$g$a;->a()Lio/grpc/n0$g;

    move-result-object v1

    .line 26
    invoke-virtual {v2, v1}, Ldh/a;->d(Lio/grpc/n0$g;)V

    goto :goto_1

    .line 27
    :cond_3
    iget-object p1, p0, Leh/n2;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 28
    iget-object v1, p0, Leh/n2;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 29
    iget-object v1, p0, Leh/n2;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldh/d;

    invoke-virtual {v0}, Ldh/d;->e()V

    goto :goto_2

    .line 30
    :cond_5
    iget-object p1, p0, Leh/n2;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Leh/n2;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 31
    iget-object p1, p0, Leh/n2;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Leh/n2;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 32
    invoke-direct {p0}, Leh/n2;->k()V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/n2;->c:Leh/q2;

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const-string v2, "Shutdown"

    invoke-virtual {v0, v1, v2}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Leh/n2;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/n0;

    .line 3
    invoke-virtual {v1}, Lio/grpc/n0;->e()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Leh/n2;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
