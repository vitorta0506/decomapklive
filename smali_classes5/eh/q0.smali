.class Leh/q0;
.super Lio/grpc/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/q0$b;
    }
.end annotation


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/q0$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lio/grpc/n0$d;

.field private final e:Lio/grpc/d1;

.field private final f:Ljava/util/concurrent/ScheduledExecutorService;

.field private final g:Leh/q2;


# direct methods
.method constructor <init>(Lio/grpc/n0$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/n0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leh/q0;->c:Ljava/util/Map;

    const-string v0, "helper"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/n0$d;

    iput-object v0, p0, Leh/q0;->d:Lio/grpc/n0$d;

    .line 4
    invoke-virtual {p1}, Lio/grpc/n0$d;->h()Lio/grpc/d1;

    move-result-object v0

    const-string v1, "syncContext"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/d1;

    iput-object v0, p0, Leh/q0;->e:Lio/grpc/d1;

    .line 5
    invoke-virtual {p1}, Lio/grpc/n0$d;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    const-string v1, "timeService"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Leh/q0;->f:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    invoke-virtual {p1}, Lio/grpc/n0$d;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cluster_manager-lb"

    invoke-static {v0, p1}, Lio/grpc/g0;->b(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object p1

    .line 7
    invoke-static {p1}, Leh/q2;->f(Lio/grpc/g0;)Leh/q2;

    move-result-object p1

    iput-object p1, p0, Leh/q0;->g:Leh/q2;

    .line 8
    sget-object v0, Leh/q2$b;->b:Leh/q2$b;

    const-string v1, "Created"

    invoke-virtual {p1, v0, v1}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Leh/q0;)V
    .locals 0

    invoke-direct {p0}, Leh/q0;->m()V

    return-void
.end method

.method static synthetic g(Leh/q0;)Lio/grpc/n0$d;
    .locals 0

    iget-object p0, p0, Leh/q0;->d:Lio/grpc/n0$d;

    return-object p0
.end method

.method static synthetic h(Leh/q0;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Leh/q0;->c:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic i(Leh/q0;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Leh/q0;->f:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic j(Leh/q0;)Lio/grpc/d1;
    .locals 0

    iget-object p0, p0, Leh/q0;->e:Lio/grpc/d1;

    return-object p0
.end method

.method static synthetic k(Leh/q0;)Leh/q2;
    .locals 0

    iget-object p0, p0, Leh/q0;->g:Leh/q2;

    return-object p0
.end method

.method private static l(Lio/grpc/ConnectivityState;Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityState;
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

.method private m()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Leh/q0;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh/q0$b;

    .line 3
    invoke-static {v3}, Leh/q0$b;->b(Leh/q0$b;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v3}, Leh/q0$b;->c(Leh/q0$b;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Leh/q0$b;->d(Leh/q0$b;)Lio/grpc/n0$i;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v3}, Leh/q0$b;->f(Leh/q0$b;)Lio/grpc/ConnectivityState;

    move-result-object v3

    invoke-static {v2, v3}, Leh/q0;->l(Lio/grpc/ConnectivityState;Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityState;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 6
    new-instance v1, Leh/q0$a;

    invoke-direct {v1, p0, v0}, Leh/q0$a;-><init>(Leh/q0;Ljava/util/Map;)V

    .line 7
    iget-object v0, p0, Leh/q0;->d:Lio/grpc/n0$d;

    invoke-virtual {v0, v2, v1}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lio/grpc/Status;)V
    .locals 6

    .line 1
    iget-object v0, p0, Leh/q0;->g:Leh/q2;

    sget-object v1, Leh/q2$b;->c:Leh/q2$b;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "Received name resolution error: {0}"

    invoke-virtual {v0, v1, v5, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Leh/q0;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/q0$b;

    .line 3
    invoke-static {v1}, Leh/q0$b;->b(Leh/q0$b;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-static {v1}, Leh/q0$b;->a(Leh/q0$b;)Ldh/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Ldh/a;->b(Lio/grpc/Status;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 5
    iget-object v0, p0, Leh/q0;->d:Lio/grpc/n0$d;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v2, Leh/t2$b;

    invoke-direct {v2, p1}, Leh/t2$b;-><init>(Lio/grpc/Status;)V

    invoke-virtual {v0, v1, v2}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    :cond_2
    return-void
.end method

.method public d(Lio/grpc/n0$g;)V
    .locals 7

    .line 1
    iget-object v0, p0, Leh/q0;->g:Leh/q2;

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "Received resolution result: {0}"

    invoke-virtual {v0, v1, v5, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lio/grpc/n0$g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/r0$a;

    .line 3
    iget-object v0, v0, Leh/r0$a;->a:Ljava/util/Map;

    .line 4
    iget-object v1, p0, Leh/q0;->g:Leh/q2;

    sget-object v3, Leh/q2$b;->b:Leh/q2$b;

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v4, "Received cluster_manager lb config: child names={0}"

    .line 6
    invoke-virtual {v1, v3, v4, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/internal/e2$b;

    invoke-virtual {v4}, Lio/grpc/internal/e2$b;->b()Lio/grpc/o0;

    move-result-object v4

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/e2$b;

    invoke-virtual {v2}, Lio/grpc/internal/e2$b;->a()Ljava/lang/Object;

    move-result-object v2

    .line 11
    iget-object v5, p0, Leh/q0;->c:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 12
    iget-object v5, p0, Leh/q0;->c:Ljava/util/Map;

    new-instance v6, Leh/q0$b;

    invoke-direct {v6, p0, v3, v4}, Leh/q0$b;-><init>(Leh/q0;Ljava/lang/String;Lio/grpc/o0;)V

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_0
    iget-object v5, p0, Leh/q0;->c:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leh/q0$b;

    invoke-virtual {v5, v4}, Leh/q0$b;->i(Lio/grpc/o0;)V

    .line 14
    :goto_1
    iget-object v4, p0, Leh/q0;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh/q0$b;

    invoke-static {v3}, Leh/q0$b;->a(Leh/q0$b;)Ldh/d;

    move-result-object v3

    .line 15
    invoke-virtual {p1}, Lio/grpc/n0$g;->e()Lio/grpc/n0$g$a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lio/grpc/n0$g$a;->d(Ljava/lang/Object;)Lio/grpc/n0$g$a;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/n0$g$a;->a()Lio/grpc/n0$g;

    move-result-object v2

    .line 16
    invoke-virtual {v3, v2}, Lio/grpc/n0;->d(Lio/grpc/n0$g;)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Leh/q0;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 19
    iget-object v2, p0, Leh/q0;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/q0$b;

    invoke-virtual {v1}, Leh/q0$b;->h()V

    goto :goto_2

    .line 20
    :cond_3
    invoke-direct {p0}, Leh/q0;->m()V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/q0;->g:Leh/q2;

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const-string v2, "Shutdown"

    invoke-virtual {v0, v1, v2}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Leh/q0;->c:Ljava/util/Map;

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

    check-cast v1, Leh/q0$b;

    .line 3
    invoke-virtual {v1}, Leh/q0$b;->j()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Leh/q0;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
