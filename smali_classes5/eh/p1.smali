.class final Leh/p1;
.super Lio/grpc/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/p1$c;,
        Leh/p1$e;,
        Leh/p1$g;,
        Leh/p1$b;,
        Leh/p1$f;,
        Leh/p1$d;
    }
.end annotation


# static fields
.field static final i:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Leh/p1$g<",
            "Lio/grpc/q;",
            ">;>;"
        }
    .end annotation
.end field

.field static final j:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Lio/grpc/Status;


# instance fields
.field private final c:Lio/grpc/n0$d;

.field private final d:Leh/j2;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/x;",
            "Lio/grpc/n0$h;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lio/grpc/ConnectivityState;

.field private g:Leh/p1$d;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "state-info"

    .line 1
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Leh/p1;->i:Lio/grpc/a$c;

    const-string v0, "in-flights"

    .line 2
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Leh/p1;->j:Lio/grpc/a$c;

    .line 3
    sget-object v0, Lio/grpc/Status;->f:Lio/grpc/Status;

    const-string v1, "no subchannels ready"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Leh/p1;->k:Lio/grpc/Status;

    return-void
.end method

.method constructor <init>(Lio/grpc/n0$d;)V
    .locals 1

    .line 1
    sget-object v0, Leh/j2$a;->a:Leh/j2;

    invoke-direct {p0, p1, v0}, Leh/p1;-><init>(Lio/grpc/n0$d;Leh/j2;)V

    return-void
.end method

.method constructor <init>(Lio/grpc/n0$d;Leh/j2;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lio/grpc/n0;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leh/p1;->e:Ljava/util/Map;

    .line 4
    new-instance v0, Leh/p1$b;

    sget-object v1, Leh/p1;->k:Lio/grpc/Status;

    invoke-direct {v0, v1}, Leh/p1$b;-><init>(Lio/grpc/Status;)V

    iput-object v0, p0, Leh/p1;->g:Leh/p1$d;

    .line 5
    sget-object v0, Leh/q1;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Leh/p1;->h:I

    const-string v0, "helper"

    .line 6
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/n0$d;

    iput-object p1, p0, Leh/p1;->c:Lio/grpc/n0$d;

    const-string p1, "random"

    .line 7
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/j2;

    iput-object p1, p0, Leh/p1;->d:Leh/j2;

    return-void
.end method

.method static synthetic f(Leh/p1;Lio/grpc/n0$h;Lio/grpc/q;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Leh/p1;->m(Lio/grpc/n0$h;Lio/grpc/q;)V

    return-void
.end method

.method static synthetic g(Lio/grpc/n0$h;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    invoke-static {p0}, Leh/p1;->i(Lio/grpc/n0$h;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    return-object p0
.end method

.method private static h(Ljava/util/Collection;)Ljava/util/List;
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
    invoke-static {v1}, Leh/p1;->l(Lio/grpc/n0$h;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static i(Lio/grpc/n0$h;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/n0$h;->d()Lio/grpc/a;

    move-result-object p0

    sget-object v0, Leh/p1;->j:Lio/grpc/a$c;

    invoke-virtual {p0, v0}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "IN_FLIGHTS"

    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private static j(Lio/grpc/n0$h;)Leh/p1$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/n0$h;",
            ")",
            "Leh/p1$g<",
            "Lio/grpc/q;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/n0$h;->d()Lio/grpc/a;

    move-result-object p0

    sget-object v0, Leh/p1;->i:Lio/grpc/a$c;

    invoke-virtual {p0, v0}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leh/p1$g;

    const-string v0, "STATE_INFO"

    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leh/p1$g;

    return-object p0
.end method

.method static l(Lio/grpc/n0$h;)Z
    .locals 1

    invoke-static {p0}, Leh/p1;->j(Lio/grpc/n0$h;)Leh/p1$g;

    move-result-object p0

    iget-object p0, p0, Leh/p1$g;->a:Ljava/lang/Object;

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

.method private m(Lio/grpc/n0$h;Lio/grpc/q;)V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/p1;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lio/grpc/n0$h;->b()Lio/grpc/x;

    move-result-object v1

    invoke-static {v1}, Leh/p1;->p(Lio/grpc/x;)Lio/grpc/x;

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
    iget-object v0, p0, Leh/p1;->c:Lio/grpc/n0$d;

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
    invoke-static {p1}, Leh/p1;->j(Lio/grpc/n0$h;)Leh/p1$g;

    move-result-object p1

    .line 7
    iget-object v0, p1, Leh/p1$g;->a:Ljava/lang/Object;

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
    iput-object p2, p1, Leh/p1$g;->a:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Leh/p1;->r()V

    return-void
.end method

.method private static n(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
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

.method private o(Lio/grpc/n0$h;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/grpc/n0$h;->h()V

    .line 2
    invoke-static {p1}, Leh/p1;->j(Lio/grpc/n0$h;)Leh/p1$g;

    move-result-object p1

    sget-object v0, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    .line 3
    invoke-static {v0}, Lio/grpc/q;->a(Lio/grpc/ConnectivityState;)Lio/grpc/q;

    move-result-object v0

    iput-object v0, p1, Leh/p1$g;->a:Ljava/lang/Object;

    return-void
.end method

.method private static p(Lio/grpc/x;)Lio/grpc/x;
    .locals 1

    new-instance v0, Lio/grpc/x;

    invoke-virtual {p0}, Lio/grpc/x;->a()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/grpc/x;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static q(Ljava/util/List;)Ljava/util/Map;
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
    invoke-static {v1}, Leh/p1;->p(Lio/grpc/x;)Lio/grpc/x;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private r()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Leh/p1;->k()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Leh/p1;->h(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    .line 3
    sget-object v1, Leh/p1;->k:Lio/grpc/Status;

    .line 4
    invoke-virtual {p0}, Leh/p1;->k()Ljava/util/Collection;

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
    invoke-static {v3}, Leh/p1;->j(Lio/grpc/n0$h;)Leh/p1$g;

    move-result-object v3

    iget-object v3, v3, Leh/p1$g;->a:Ljava/lang/Object;

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
    sget-object v4, Leh/p1;->k:Lio/grpc/Status;

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
    new-instance v2, Leh/p1$b;

    invoke-direct {v2, v1}, Leh/p1$b;-><init>(Lio/grpc/Status;)V

    invoke-direct {p0, v0, v2}, Leh/p1;->s(Lio/grpc/ConnectivityState;Leh/p1$d;)V

    goto :goto_2

    .line 10
    :cond_6
    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    new-instance v2, Leh/p1$f;

    iget v3, p0, Leh/p1;->h:I

    iget-object v4, p0, Leh/p1;->d:Leh/j2;

    invoke-direct {v2, v0, v3, v4}, Leh/p1$f;-><init>(Ljava/util/List;ILeh/j2;)V

    invoke-direct {p0, v1, v2}, Leh/p1;->s(Lio/grpc/ConnectivityState;Leh/p1$d;)V

    :goto_2
    return-void
.end method

.method private s(Lio/grpc/ConnectivityState;Leh/p1$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Leh/p1;->f:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Leh/p1;->g:Leh/p1$d;

    invoke-virtual {p2, v0}, Leh/p1$d;->b(Leh/p1$d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Leh/p1;->c:Lio/grpc/n0$d;

    invoke-virtual {v0, p1, p2}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    .line 3
    iput-object p1, p0, Leh/p1;->f:Lio/grpc/ConnectivityState;

    .line 4
    iput-object p2, p0, Leh/p1;->g:Leh/p1$d;

    :cond_1
    return-void
.end method


# virtual methods
.method public b(Lio/grpc/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Leh/p1;->f:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v1, Leh/p1$b;

    invoke-direct {v1, p1}, Leh/p1$b;-><init>(Lio/grpc/Status;)V

    invoke-direct {p0, v0, v1}, Leh/p1;->s(Lio/grpc/ConnectivityState;Leh/p1$d;)V

    :cond_0
    return-void
.end method

.method public d(Lio/grpc/n0$g;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lio/grpc/n0$g;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leh/p1$c;

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Leh/p1$c;->a:I

    iput v0, p0, Leh/p1;->h:I

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/grpc/n0$g;->a()Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Leh/p1;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-static {p1}, Leh/p1;->q(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Leh/p1;->n(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/x;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/x;

    .line 10
    iget-object v3, p0, Leh/p1;->e:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/n0$h;

    if-eqz v3, :cond_1

    .line 11
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Lio/grpc/n0$h;->j(Ljava/util/List;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lio/grpc/a;->c()Lio/grpc/a$b;

    move-result-object v3

    sget-object v4, Leh/p1;->i:Lio/grpc/a$c;

    new-instance v5, Leh/p1$g;

    sget-object v6, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    .line 13
    invoke-static {v6}, Lio/grpc/q;->a(Lio/grpc/ConnectivityState;)Lio/grpc/q;

    move-result-object v6

    invoke-direct {v5, v6}, Leh/p1$g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v3

    sget-object v4, Leh/p1;->j:Lio/grpc/a$c;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 14
    invoke-virtual {v3, v4, v5}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v3

    .line 15
    iget-object v4, p0, Leh/p1;->c:Lio/grpc/n0$d;

    .line 16
    invoke-static {}, Lio/grpc/n0$b;->c()Lio/grpc/n0$b$a;

    move-result-object v5

    .line 17
    invoke-virtual {v5, v1}, Lio/grpc/n0$b$a;->d(Lio/grpc/x;)Lio/grpc/n0$b$a;

    move-result-object v1

    .line 18
    invoke-virtual {v3}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/n0$b$a;->f(Lio/grpc/a;)Lio/grpc/n0$b$a;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lio/grpc/n0$b$a;->b()Lio/grpc/n0$b;

    move-result-object v1

    .line 20
    invoke-virtual {v4, v1}, Lio/grpc/n0$d;->b(Lio/grpc/n0$b;)Lio/grpc/n0$h;

    move-result-object v1

    const-string v3, "subchannel"

    .line 21
    invoke-static {v1, v3}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/n0$h;

    .line 22
    new-instance v3, Leh/p1$a;

    invoke-direct {v3, p0, v1}, Leh/p1$a;-><init>(Leh/p1;Lio/grpc/n0$h;)V

    invoke-virtual {v1, v3}, Lio/grpc/n0$h;->i(Lio/grpc/n0$j;)V

    .line 23
    iget-object v3, p0, Leh/p1;->e:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v1}, Lio/grpc/n0$h;->g()V

    goto :goto_0

    .line 25
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/x;

    .line 27
    iget-object v2, p0, Leh/p1;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/n0$h;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 28
    :cond_3
    invoke-direct {p0}, Leh/p1;->r()V

    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/n0$h;

    .line 30
    invoke-direct {p0, v0}, Leh/p1;->o(Lio/grpc/n0$h;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Leh/p1;->k()Ljava/util/Collection;

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
    invoke-direct {p0, v1}, Leh/p1;->o(Lio/grpc/n0$h;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Leh/p1;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method k()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/grpc/n0$h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Leh/p1;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
