.class final Leh/v1;
.super Lio/grpc/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/v1$a;
    }
.end annotation


# instance fields
.field private final c:Lio/grpc/n0$d;

.field private final d:Lio/grpc/d1;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Leh/q2;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/v1$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lio/grpc/n0$g;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/w1$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Lio/grpc/ConnectivityState;

.field private m:Lio/grpc/n0$i;


# direct methods
.method constructor <init>(Lio/grpc/n0$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/n0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leh/v1;->g:Ljava/util/Map;

    const-string v0, "helper"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/n0$d;

    iput-object v0, p0, Leh/v1;->c:Lio/grpc/n0$d;

    .line 4
    invoke-virtual {p1}, Lio/grpc/n0$d;->h()Lio/grpc/d1;

    move-result-object v0

    iput-object v0, p0, Leh/v1;->d:Lio/grpc/d1;

    .line 5
    invoke-virtual {p1}, Lio/grpc/n0$d;->g()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Leh/v1;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    invoke-virtual {p1}, Lio/grpc/n0$d;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "priority-lb"

    invoke-static {v0, p1}, Lio/grpc/g0;->b(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object p1

    .line 7
    invoke-static {p1}, Leh/q2;->f(Lio/grpc/g0;)Leh/q2;

    move-result-object p1

    iput-object p1, p0, Leh/v1;->f:Leh/q2;

    .line 8
    sget-object v0, Leh/q2$b;->b:Leh/q2$b;

    const-string v1, "Created"

    invoke-virtual {p1, v0, v1}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Leh/v1;)Leh/q2;
    .locals 0

    iget-object p0, p0, Leh/v1;->f:Leh/q2;

    return-object p0
.end method

.method static synthetic g(Leh/v1;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Leh/v1;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Leh/v1;Z)V
    .locals 0

    invoke-direct {p0, p1}, Leh/v1;->n(Z)V

    return-void
.end method

.method static synthetic i(Leh/v1;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Leh/v1;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic j(Leh/v1;)Lio/grpc/d1;
    .locals 0

    iget-object p0, p0, Leh/v1;->d:Lio/grpc/d1;

    return-object p0
.end method

.method static synthetic k(Leh/v1;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Leh/v1;->g:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic l(Leh/v1;)Lio/grpc/n0$g;
    .locals 0

    iget-object p0, p0, Leh/v1;->h:Lio/grpc/n0$g;

    return-object p0
.end method

.method static synthetic m(Leh/v1;)Lio/grpc/n0$d;
    .locals 0

    iget-object p0, p0, Leh/v1;->c:Lio/grpc/n0$d;

    return-object p0
.end method

.method private n(Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Leh/v1;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_8

    .line 2
    iget-object v2, p0, Leh/v1;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v4, p0, Leh/v1;->g:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    new-instance p1, Leh/v1$a;

    iget-object v0, p0, Leh/v1;->j:Ljava/util/Map;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/w1$a$a;

    iget-boolean v0, v0, Leh/w1$a$a;->b:Z

    invoke-direct {p1, p0, v2, v0}, Leh/v1$a;-><init>(Leh/v1;Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Leh/v1;->g:Ljava/util/Map;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Leh/v1$a;->d()V

    .line 8
    sget-object p1, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    sget-object v0, Leh/t2;->a:Lio/grpc/n0$i;

    invoke-direct {p0, v2, p1, v0}, Leh/v1;->o(Ljava/lang/String;Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    return-void

    .line 9
    :cond_0
    iget-object v4, p0, Leh/v1;->g:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leh/v1$a;

    .line 10
    invoke-virtual {v4}, Leh/v1$a;->b()V

    .line 11
    iget-object v5, v4, Leh/v1$a;->g:Lio/grpc/ConnectivityState;

    sget-object v6, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v4, Leh/v1$a;->g:Lio/grpc/ConnectivityState;

    sget-object v6, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v3, v4, Leh/v1$a;->d:Lio/grpc/d1$c;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lio/grpc/d1$c;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_2

    .line 13
    sget-object p1, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    sget-object v0, Leh/t2;->a:Lio/grpc/n0$i;

    invoke-direct {p0, v2, p1, v0}, Leh/v1;->o(Ljava/lang/String;Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    :cond_2
    return-void

    .line 14
    :cond_3
    iget-object v3, p0, Leh/v1;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v4, Leh/v1$a;->g:Lio/grpc/ConnectivityState;

    sget-object v5, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-eq v3, v5, :cond_4

    .line 15
    iget-object p1, v4, Leh/v1$a;->h:Lio/grpc/n0$i;

    invoke-direct {p0, v2, v3, p1}, Leh/v1;->o(Ljava/lang/String;Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 16
    :cond_5
    :goto_1
    iget-object p1, p0, Leh/v1;->f:Leh/q2;

    sget-object v5, Leh/q2$b;->a:Leh/q2$b;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v2, v6, v0

    const-string v0, "Shifted to priority {0}"

    invoke-virtual {p1, v5, v0, v6}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object p1, v4, Leh/v1$a;->g:Lio/grpc/ConnectivityState;

    iget-object v0, v4, Leh/v1$a;->h:Lio/grpc/n0$i;

    invoke-direct {p0, v2, p1, v0}, Leh/v1;->o(Ljava/lang/String;Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    add-int/2addr v1, v3

    .line 18
    :goto_2
    iget-object p1, p0, Leh/v1;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_7

    .line 19
    iget-object p1, p0, Leh/v1;->i:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 20
    iget-object v0, p0, Leh/v1;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, p0, Leh/v1;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/v1$a;

    invoke-virtual {p1}, Leh/v1$a;->a()V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void

    .line 22
    :cond_8
    iget-object p1, p0, Leh/v1;->f:Leh/q2;

    sget-object v0, Leh/q2$b;->a:Leh/q2$b;

    const-string v1, "All priority failed"

    invoke-virtual {p1, v0, v1}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Leh/v1;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 24
    iget-object v0, p0, Leh/v1;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/v1$a;

    iget-object v0, v0, Leh/v1$a;->h:Lio/grpc/n0$i;

    .line 25
    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    invoke-direct {p0, p1, v1, v0}, Leh/v1;->o(Ljava/lang/String;Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    return-void
.end method

.method private o(Ljava/lang/String;Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leh/v1;->k:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leh/v1;->l:Lio/grpc/ConnectivityState;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leh/v1;->m:Lio/grpc/n0$i;

    .line 2
    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iput-object p1, p0, Leh/v1;->k:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Leh/v1;->l:Lio/grpc/ConnectivityState;

    .line 5
    iput-object p3, p0, Leh/v1;->m:Lio/grpc/n0$i;

    .line 6
    iget-object p1, p0, Leh/v1;->c:Lio/grpc/n0$d;

    invoke-virtual {p1, p2, p3}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public b(Lio/grpc/Status;)V
    .locals 6

    .line 1
    iget-object v0, p0, Leh/v1;->f:Leh/q2;

    sget-object v1, Leh/q2$b;->c:Leh/q2$b;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "Received name resolution error: {0}"

    invoke-virtual {v0, v1, v5, v3}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Leh/v1;->g:Ljava/util/Map;

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

    check-cast v1, Leh/v1$a;

    .line 3
    iget-object v3, p0, Leh/v1;->i:Ljava/util/List;

    iget-object v5, v1, Leh/v1$a;->a:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    iget-object v1, v1, Leh/v1$a;->c:Ldh/d;

    invoke-virtual {v1, p1}, Ldh/a;->b(Lio/grpc/Status;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 5
    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v2, Leh/t2$b;

    invoke-direct {v2, p1}, Leh/t2$b;-><init>(Lio/grpc/Status;)V

    invoke-direct {p0, v0, v1, v2}, Leh/v1;->o(Ljava/lang/String;Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    :cond_2
    return-void
.end method

.method public d(Lio/grpc/n0$g;)V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/v1;->f:Leh/q2;

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Received resolution result: {0}"

    invoke-virtual {v0, v1, v4, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Leh/v1;->h:Lio/grpc/n0$g;

    .line 3
    invoke-virtual {p1}, Lio/grpc/n0$g;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/w1$a;

    const-string v0, "missing priority lb config"

    .line 4
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p1, Leh/w1$a;->b:Ljava/util/List;

    iput-object v0, p0, Leh/v1;->i:Ljava/util/List;

    .line 6
    iget-object v0, p1, Leh/w1$a;->a:Ljava/util/Map;

    iput-object v0, p0, Leh/v1;->j:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p1, Leh/w1$a;->b:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    iget-object p1, p0, Leh/v1;->g:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    iget-object v2, p0, Leh/v1;->g:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leh/v1$a;

    invoke-virtual {v1}, Leh/v1$a;->a()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Leh/v1;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 12
    iget-object v1, p0, Leh/v1;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p0, Leh/v1;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/v1$a;

    invoke-virtual {v0}, Leh/v1$a;->d()V

    goto :goto_1

    .line 14
    :cond_3
    invoke-direct {p0, v3}, Leh/v1;->n(Z)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/v1;->f:Leh/q2;

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const-string v2, "Shutdown"

    invoke-virtual {v0, v1, v2}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Leh/v1;->g:Ljava/util/Map;

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

    check-cast v1, Leh/v1$a;

    .line 3
    invoke-virtual {v1}, Leh/v1$a;->c()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Leh/v1;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
