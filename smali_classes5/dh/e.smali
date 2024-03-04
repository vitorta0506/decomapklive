.class final Ldh/e;
.super Lio/grpc/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldh/e$d;,
        Ldh/e$b;,
        Ldh/e$c;,
        Ldh/e$e;
    }
.end annotation


# static fields
.field static final h:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Ldh/e$d<",
            "Lio/grpc/q;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final i:Lio/grpc/Status;


# instance fields
.field private final c:Lio/grpc/n0$d;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/x;",
            "Lio/grpc/n0$h;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Random;

.field private f:Lio/grpc/ConnectivityState;

.field private g:Ldh/e$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "state-info"

    .line 1
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Ldh/e;->h:Lio/grpc/a$c;

    .line 2
    sget-object v0, Lio/grpc/Status;->f:Lio/grpc/Status;

    const-string v1, "no subchannels ready"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Ldh/e;->i:Lio/grpc/Status;

    return-void
.end method

.method constructor <init>(Lio/grpc/n0$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/n0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldh/e;->d:Ljava/util/Map;

    .line 3
    new-instance v0, Ldh/e$b;

    sget-object v1, Ldh/e;->i:Lio/grpc/Status;

    invoke-direct {v0, v1}, Ldh/e$b;-><init>(Lio/grpc/Status;)V

    iput-object v0, p0, Ldh/e;->g:Ldh/e$e;

    const-string v0, "helper"

    .line 4
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/n0$d;

    iput-object p1, p0, Ldh/e;->c:Lio/grpc/n0$d;

    .line 5
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Ldh/e;->e:Ljava/util/Random;

    return-void
.end method

.method static synthetic f(Ldh/e;Lio/grpc/n0$h;Lio/grpc/q;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldh/e;->k(Lio/grpc/n0$h;Lio/grpc/q;)V

    return-void
.end method

.method private static g(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/grpc/n0$h;",
            ">;)",
            "Ljava/util/List<",
            "Lio/grpc/n0$h;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/n0$h;

    .line 3
    invoke-static {v1}, Ldh/e;->j(Lio/grpc/n0$h;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static h(Lio/grpc/n0$h;)Ldh/e$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/n0$h;",
            ")",
            "Ldh/e$d<",
            "Lio/grpc/q;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/n0$h;->d()Lio/grpc/a;

    move-result-object p0

    sget-object v0, Ldh/e;->h:Lio/grpc/a$c;

    invoke-virtual {p0, v0}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldh/e$d;

    const-string v0, "STATE_INFO"

    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldh/e$d;

    return-object p0
.end method

.method static j(Lio/grpc/n0$h;)Z
    .locals 1

    invoke-static {p0}, Ldh/e;->h(Lio/grpc/n0$h;)Ldh/e$d;

    move-result-object p0

    iget-object p0, p0, Ldh/e$d;->a:Ljava/lang/Object;

    check-cast p0, Lio/grpc/q;

    invoke-virtual {p0}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object p0

    sget-object v0, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private k(Lio/grpc/n0$h;Lio/grpc/q;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ldh/e;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lio/grpc/n0$h;->b()Lio/grpc/x;

    move-result-object v1

    invoke-static {v1}, Ldh/e;->n(Lio/grpc/x;)Lio/grpc/x;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v2, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Ldh/e;->c:Lio/grpc/n0$d;

    invoke-virtual {v0}, Lio/grpc/n0$d;->j()V

    .line 4
    :cond_2
    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v2, :cond_3

    .line 5
    invoke-virtual {p1}, Lio/grpc/n0$h;->g()V

    .line 6
    :cond_3
    invoke-static {p1}, Ldh/e;->h(Lio/grpc/n0$h;)Ldh/e$d;

    move-result-object p1

    .line 7
    iget-object v0, p1, Ldh/e$d;->a:Ljava/lang/Object;

    check-cast v0, Lio/grpc/q;

    invoke-virtual {v0}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    return-void

    .line 9
    :cond_5
    iput-object p2, p1, Ldh/e$d;->a:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Ldh/e;->p()V

    return-void
.end method

.method private static l(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private m(Lio/grpc/n0$h;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/grpc/n0$h;->h()V

    .line 2
    invoke-static {p1}, Ldh/e;->h(Lio/grpc/n0$h;)Ldh/e$d;

    move-result-object p1

    sget-object v0, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    .line 3
    invoke-static {v0}, Lio/grpc/q;->a(Lio/grpc/ConnectivityState;)Lio/grpc/q;

    move-result-object v0

    iput-object v0, p1, Ldh/e$d;->a:Ljava/lang/Object;

    return-void
.end method

.method private static n(Lio/grpc/x;)Lio/grpc/x;
    .locals 1

    new-instance v0, Lio/grpc/x;

    invoke-virtual {p0}, Lio/grpc/x;->a()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/grpc/x;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static o(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/x;",
            ">;)",
            "Ljava/util/Map<",
            "Lio/grpc/x;",
            "Lio/grpc/x;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/x;

    .line 3
    invoke-static {v1}, Ldh/e;->n(Lio/grpc/x;)Lio/grpc/x;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private p()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ldh/e;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ldh/e;->g(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    .line 3
    sget-object v1, Ldh/e;->i:Lio/grpc/Status;

    .line 4
    invoke-virtual {p0}, Ldh/e;->i()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/n0$h;

    .line 5
    invoke-static {v3}, Ldh/e;->h(Lio/grpc/n0$h;)Ldh/e$d;

    move-result-object v3

    iget-object v3, v3, Ldh/e$d;->a:Ljava/lang/Object;

    check-cast v3, Lio/grpc/q;

    .line 6
    invoke-virtual {v3}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v4

    sget-object v5, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v4

    sget-object v5, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v4, v5, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 7
    :cond_2
    sget-object v4, Ldh/e;->i:Lio/grpc/Status;

    if-eq v1, v4, :cond_3

    invoke-virtual {v1}, Lio/grpc/Status;->p()Z

    move-result v4

    if-nez v4, :cond_0

    .line 8
    :cond_3
    invoke-virtual {v3}, Lio/grpc/q;->d()Lio/grpc/Status;

    move-result-object v1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 9
    sget-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    goto :goto_1

    :cond_5
    sget-object v0, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    :goto_1
    new-instance v2, Ldh/e$b;

    invoke-direct {v2, v1}, Ldh/e$b;-><init>(Lio/grpc/Status;)V

    invoke-direct {p0, v0, v2}, Ldh/e;->q(Lio/grpc/ConnectivityState;Ldh/e$e;)V

    goto :goto_2

    .line 10
    :cond_6
    iget-object v1, p0, Ldh/e;->e:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 11
    sget-object v2, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    new-instance v3, Ldh/e$c;

    invoke-direct {v3, v0, v1}, Ldh/e$c;-><init>(Ljava/util/List;I)V

    invoke-direct {p0, v2, v3}, Ldh/e;->q(Lio/grpc/ConnectivityState;Ldh/e$e;)V

    :goto_2
    return-void
.end method

.method private q(Lio/grpc/ConnectivityState;Ldh/e$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldh/e;->f:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ldh/e;->g:Ldh/e$e;

    invoke-virtual {p2, v0}, Ldh/e$e;->b(Ldh/e$e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Ldh/e;->c:Lio/grpc/n0$d;

    invoke-virtual {v0, p1, p2}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    .line 3
    iput-object p1, p0, Ldh/e;->f:Lio/grpc/ConnectivityState;

    .line 4
    iput-object p2, p0, Ldh/e;->g:Ldh/e$e;

    :cond_1
    return-void
.end method


# virtual methods
.method public b(Lio/grpc/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ldh/e;->f:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v1, Ldh/e$b;

    invoke-direct {v1, p1}, Ldh/e$b;-><init>(Lio/grpc/Status;)V

    invoke-direct {p0, v0, v1}, Ldh/e;->q(Lio/grpc/ConnectivityState;Ldh/e$e;)V

    :cond_0
    return-void
.end method

.method public d(Lio/grpc/n0$g;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lio/grpc/n0$g;->a()Ljava/util/List;

    move-result-object p1

    .line 2
    iget-object v0, p0, Ldh/e;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ldh/e;->o(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Ldh/e;->l(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/x;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/x;

    .line 8
    iget-object v3, p0, Ldh/e;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/n0$h;

    if-eqz v3, :cond_0

    .line 9
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Lio/grpc/n0$h;->j(Ljava/util/List;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lio/grpc/a;->c()Lio/grpc/a$b;

    move-result-object v3

    sget-object v4, Ldh/e;->h:Lio/grpc/a$c;

    new-instance v5, Ldh/e$d;

    sget-object v6, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    .line 11
    invoke-static {v6}, Lio/grpc/q;->a(Lio/grpc/ConnectivityState;)Lio/grpc/q;

    move-result-object v6

    invoke-direct {v5, v6}, Ldh/e$d;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v3, v4, v5}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v3

    .line 13
    iget-object v4, p0, Ldh/e;->c:Lio/grpc/n0$d;

    .line 14
    invoke-static {}, Lio/grpc/n0$b;->c()Lio/grpc/n0$b$a;

    move-result-object v5

    .line 15
    invoke-virtual {v5, v1}, Lio/grpc/n0$b$a;->d(Lio/grpc/x;)Lio/grpc/n0$b$a;

    move-result-object v1

    .line 16
    invoke-virtual {v3}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/n0$b$a;->f(Lio/grpc/a;)Lio/grpc/n0$b$a;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lio/grpc/n0$b$a;->b()Lio/grpc/n0$b;

    move-result-object v1

    .line 18
    invoke-virtual {v4, v1}, Lio/grpc/n0$d;->b(Lio/grpc/n0$b;)Lio/grpc/n0$h;

    move-result-object v1

    const-string v3, "subchannel"

    .line 19
    invoke-static {v1, v3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/n0$h;

    .line 20
    new-instance v3, Ldh/e$a;

    invoke-direct {v3, p0, v1}, Ldh/e$a;-><init>(Ldh/e;Lio/grpc/n0$h;)V

    invoke-virtual {v1, v3}, Lio/grpc/n0$h;->i(Lio/grpc/n0$j;)V

    .line 21
    iget-object v3, p0, Ldh/e;->d:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v1}, Lio/grpc/n0$h;->g()V

    goto :goto_0

    .line 23
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/x;

    .line 25
    iget-object v2, p0, Ldh/e;->d:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/n0$h;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26
    :cond_2
    invoke-direct {p0}, Ldh/e;->p()V

    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/n0$h;

    .line 28
    invoke-direct {p0, v0}, Ldh/e;->m(Lio/grpc/n0$h;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ldh/e;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/n0$h;

    .line 2
    invoke-direct {p0, v1}, Ldh/e;->m(Lio/grpc/n0$h;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ldh/e;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method i()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/grpc/n0$h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldh/e;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
