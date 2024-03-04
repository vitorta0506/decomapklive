.class final Leh/s0$c;
.super Lio/grpc/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/s0$c$c;,
        Leh/s0$c$b;,
        Leh/s0$c$a;,
        Leh/s0$c$d;
    }
.end annotation


# instance fields
.field private final c:Lio/grpc/n0$d;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Leh/s0$c$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lio/grpc/internal/e2$b;

.field private g:Lio/grpc/n0$g;

.field private h:Lio/grpc/n0;

.field final synthetic i:Leh/s0;


# direct methods
.method constructor <init>(Leh/s0;Lio/grpc/n0$d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Leh/s0$c;->i:Leh/s0;

    invoke-direct {p0}, Lio/grpc/n0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leh/s0$c;->d:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leh/s0$c;->e:Ljava/util/Map;

    .line 4
    new-instance v0, Leh/s0$c$d;

    const-string v1, "helper"

    invoke-static {p2, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/grpc/n0$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Leh/s0$c$d;-><init>(Leh/s0$c;Lio/grpc/n0$d;Leh/s0$a;)V

    iput-object v0, p0, Leh/s0$c;->c:Lio/grpc/n0$d;

    .line 5
    invoke-static {p1}, Leh/s0;->k(Leh/s0;)Leh/q2;

    move-result-object p1

    sget-object p2, Leh/q2$b;->a:Leh/q2$b;

    const-string v0, "New ClusterResolverLbState"

    invoke-virtual {p1, p2, v0}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Leh/s0$c;)Lio/grpc/internal/e2$b;
    .locals 0

    iget-object p0, p0, Leh/s0$c;->f:Lio/grpc/internal/e2$b;

    return-object p0
.end method

.method static synthetic g(Leh/s0$c;)V
    .locals 0

    invoke-direct {p0}, Leh/s0$c;->l()V

    return-void
.end method

.method static synthetic h(Leh/s0$c;)V
    .locals 0

    invoke-direct {p0}, Leh/s0$c;->k()V

    return-void
.end method

.method static synthetic i(Leh/s0$c;)Lio/grpc/n0$d;
    .locals 0

    iget-object p0, p0, Leh/s0$c;->c:Lio/grpc/n0$d;

    return-object p0
.end method

.method static synthetic j(Leh/s0$c;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Leh/s0$c;->e:Ljava/util/Map;

    return-object p0
.end method

.method private k()V
    .locals 5

    .line 1
    iget-object v0, p0, Leh/s0$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2
    iget-object v4, p0, Leh/s0$c;->e:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leh/s0$c$a;

    .line 3
    iget-object v4, v3, Leh/s0$c$a;->e:Lio/grpc/Status;

    invoke-virtual {v4}, Lio/grpc/Status;->p()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, v3, Leh/s0$c$a;->e:Lio/grpc/Status;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_3

    .line 5
    iget-object v0, p0, Leh/s0$c;->h:Lio/grpc/n0;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v2}, Lio/grpc/n0;->b(Lio/grpc/Status;)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Leh/s0$c;->c:Lio/grpc/n0$d;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v3, Leh/t2$b;

    invoke-direct {v3, v2}, Leh/t2$b;-><init>(Lio/grpc/Status;)V

    invoke-virtual {v0, v1, v3}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private l()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v3, Lio/grpc/Status;->f:Lio/grpc/Status;

    .line 5
    iget-object v4, p0, Leh/s0$c;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6
    iget-object v6, p0, Leh/s0$c;->e:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Leh/s0$c$a;

    .line 7
    iget-boolean v6, v5, Leh/s0$c$a;->f:Z

    if-nez v6, :cond_0

    iget-object v6, v5, Leh/s0$c$a;->e:Lio/grpc/Status;

    invoke-virtual {v6}, Lio/grpc/Status;->p()Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v6, v5, Leh/s0$c$a;->g:Leh/s0$b;

    if-eqz v6, :cond_1

    .line 9
    invoke-static {v6}, Leh/s0$b;->a(Leh/s0$b;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v6, v5, Leh/s0$c$a;->g:Leh/s0$b;

    invoke-static {v6}, Leh/s0$b;->b(Leh/s0$b;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 11
    iget-object v5, v5, Leh/s0$c$a;->g:Leh/s0$b;

    invoke-static {v5}, Leh/s0$b;->c(Leh/s0$b;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object v3, v5, Leh/s0$c$a;->e:Lio/grpc/Status;

    goto :goto_0

    .line 13
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 14
    invoke-virtual {v3}, Lio/grpc/Status;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No usable endpoint from cluster(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Leh/s0$c;->d:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    goto :goto_1

    .line 16
    :cond_3
    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    .line 17
    invoke-virtual {v3}, Lio/grpc/Status;->m()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->q(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 18
    invoke-virtual {v3}, Lio/grpc/Status;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 19
    :goto_1
    iget-object v1, p0, Leh/s0$c;->c:Lio/grpc/n0$d;

    sget-object v2, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v3, Leh/t2$b;

    invoke-direct {v3, v0}, Leh/t2$b;-><init>(Lio/grpc/Status;)V

    invoke-virtual {v1, v2, v3}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    .line 20
    iget-object v0, p0, Leh/s0$c;->h:Lio/grpc/n0;

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {v0}, Lio/grpc/n0;->e()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Leh/s0$c;->h:Lio/grpc/n0;

    :cond_4
    return-void

    .line 23
    :cond_5
    new-instance v3, Leh/w1$a;

    .line 24
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 25
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Leh/w1$a;-><init>(Ljava/util/Map;Ljava/util/List;)V

    .line 26
    iget-object v1, p0, Leh/s0$c;->h:Lio/grpc/n0;

    if-nez v1, :cond_6

    .line 27
    iget-object v1, p0, Leh/s0$c;->i:Leh/s0;

    invoke-static {v1}, Leh/s0;->p(Leh/s0;)Lio/grpc/p0;

    move-result-object v1

    const-string v2, "priority_experimental"

    invoke-virtual {v1, v2}, Lio/grpc/p0;->d(Ljava/lang/String;)Lio/grpc/o0;

    move-result-object v1

    iget-object v2, p0, Leh/s0$c;->c:Lio/grpc/n0$d;

    invoke-virtual {v1, v2}, Lio/grpc/n0$c;->a(Lio/grpc/n0$d;)Lio/grpc/n0;

    move-result-object v1

    iput-object v1, p0, Leh/s0$c;->h:Lio/grpc/n0;

    .line 28
    :cond_6
    iget-object v1, p0, Leh/s0$c;->h:Lio/grpc/n0;

    iget-object v2, p0, Leh/s0$c;->g:Lio/grpc/n0$g;

    .line 29
    invoke-virtual {v2}, Lio/grpc/n0$g;->e()Lio/grpc/n0$g$a;

    move-result-object v2

    .line 30
    invoke-virtual {v2, v3}, Lio/grpc/n0$g$a;->d(Ljava/lang/Object;)Lio/grpc/n0$g$a;

    move-result-object v2

    .line 31
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lio/grpc/n0$g$a;->b(Ljava/util/List;)Lio/grpc/n0$g$a;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lio/grpc/n0$g$a;->a()Lio/grpc/n0$g;

    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Lio/grpc/n0;->d(Lio/grpc/n0$g;)V

    return-void
.end method


# virtual methods
.method public b(Lio/grpc/Status;)V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/s0$c;->h:Lio/grpc/n0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lio/grpc/n0;->b(Lio/grpc/Status;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Leh/s0$c;->c:Lio/grpc/n0$d;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v2, Leh/t2$b;

    invoke-direct {v2, p1}, Leh/t2$b;-><init>(Lio/grpc/Status;)V

    invoke-virtual {v0, v1, v2}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    :goto_0
    return-void
.end method

.method public d(Lio/grpc/n0$g;)V
    .locals 11

    .line 1
    iput-object p1, p0, Leh/s0$c;->g:Lio/grpc/n0$g;

    .line 2
    invoke-virtual {p1}, Lio/grpc/n0$g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/t0$a;

    .line 3
    iget-object v1, v0, Leh/t0$a;->b:Lio/grpc/internal/e2$b;

    iput-object v1, p0, Leh/s0$c;->f:Lio/grpc/internal/e2$b;

    .line 4
    iget-object v0, v0, Leh/t0$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Leh/t0$a$a;

    .line 5
    iget-object v0, p0, Leh/s0$c;->d:Ljava/util/List;

    iget-object v1, v9, Leh/t0$a$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, v9, Leh/t0$a$a;->b:Leh/t0$a$a$a;

    sget-object v1, Leh/t0$a$a$a;->a:Leh/t0$a$a$a;

    if-ne v0, v1, :cond_0

    .line 7
    new-instance v10, Leh/s0$c$b;

    iget-object v2, v9, Leh/t0$a$a;->a:Ljava/lang/String;

    iget-object v3, v9, Leh/t0$a$a;->f:Ljava/lang/String;

    iget-object v4, v9, Leh/t0$a$a;->c:Leh/j0$d;

    iget-object v5, v9, Leh/t0$a$a;->d:Ljava/lang/Long;

    iget-object v6, v9, Leh/t0$a$a;->e:Leh/i1;

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Leh/s0$c$b;-><init>(Leh/s0$c;Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Leh/s0$a;)V

    goto :goto_1

    .line 8
    :cond_0
    new-instance v10, Leh/s0$c$c;

    iget-object v2, v9, Leh/t0$a$a;->a:Ljava/lang/String;

    iget-object v3, v9, Leh/t0$a$a;->g:Ljava/lang/String;

    iget-object v4, v9, Leh/t0$a$a;->c:Leh/j0$d;

    iget-object v5, v9, Leh/t0$a$a;->d:Ljava/lang/Long;

    iget-object v6, v9, Leh/t0$a$a;->e:Leh/i1;

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Leh/s0$c$c;-><init>(Leh/s0$c;Ljava/lang/String;Ljava/lang/String;Leh/j0$d;Ljava/lang/Long;Leh/i1;Leh/s0$a;)V

    .line 9
    :goto_1
    iget-object v0, p0, Leh/s0$c;->e:Ljava/util/Map;

    iget-object v1, v9, Leh/t0$a$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v10}, Leh/s0$c$a;->h()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/s0$c;->e:Ljava/util/Map;

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

    check-cast v1, Leh/s0$c$a;

    .line 2
    invoke-virtual {v1}, Leh/s0$c$a;->g()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Leh/s0$c;->h:Lio/grpc/n0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lio/grpc/n0;->e()V

    :cond_1
    return-void
.end method
