.class final Leh/a2;
.super Lio/grpc/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/a2$d;,
        Leh/a2$b;,
        Leh/a2$c;,
        Leh/a2$f;,
        Leh/a2$e;
    }
.end annotation


# static fields
.field private static final i:Lio/grpc/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$c<",
            "Leh/a2$b<",
            "Lio/grpc/q;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final j:Lio/grpc/Status;

.field private static final k:Leh/u2;


# instance fields
.field private final c:Leh/q2;

.field private final d:Lio/grpc/d1;

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

.field private final f:Lio/grpc/n0$d;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leh/a2$c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lio/grpc/ConnectivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "state-info"

    .line 1
    invoke-static {v0}, Lio/grpc/a$c;->a(Ljava/lang/String;)Lio/grpc/a$c;

    move-result-object v0

    sput-object v0, Leh/a2;->i:Lio/grpc/a$c;

    .line 2
    sget-object v0, Lio/grpc/Status;->t:Lio/grpc/Status;

    const-string v1, "RPC hash not found. Probably a bug because xds resolver config selector always generates a hash."

    .line 3
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Leh/a2;->j:Lio/grpc/Status;

    .line 4
    sget-object v0, Leh/u2;->c:Leh/u2;

    sput-object v0, Leh/a2;->k:Leh/u2;

    return-void
.end method

.method constructor <init>(Lio/grpc/n0$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/grpc/n0;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leh/a2;->e:Ljava/util/Map;

    const-string v0, "helper"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/n0$d;

    iput-object v0, p0, Leh/a2;->f:Lio/grpc/n0$d;

    .line 4
    invoke-virtual {p1}, Lio/grpc/n0$d;->h()Lio/grpc/d1;

    move-result-object v0

    const-string v1, "syncContext"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/d1;

    iput-object v0, p0, Leh/a2;->d:Lio/grpc/d1;

    .line 5
    invoke-virtual {p1}, Lio/grpc/n0$d;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ring_hash_lb"

    invoke-static {v0, p1}, Lio/grpc/g0;->b(Ljava/lang/String;Ljava/lang/String;)Lio/grpc/g0;

    move-result-object p1

    invoke-static {p1}, Leh/q2;->f(Lio/grpc/g0;)Leh/q2;

    move-result-object p1

    iput-object p1, p0, Leh/a2;->c:Leh/q2;

    .line 6
    sget-object v0, Leh/q2$b;->b:Leh/q2$b;

    const-string v1, "Created"

    invoke-virtual {p1, v0, v1}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Leh/a2;Lio/grpc/n0$h;Lio/grpc/q;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Leh/a2;->k(Lio/grpc/n0$h;Lio/grpc/q;)V

    return-void
.end method

.method static synthetic g()Lio/grpc/a$c;
    .locals 1

    sget-object v0, Leh/a2;->i:Lio/grpc/a$c;

    return-object v0
.end method

.method static synthetic h()Lio/grpc/Status;
    .locals 1

    sget-object v0, Leh/a2;->j:Lio/grpc/Status;

    return-object v0
.end method

.method private static i(Ljava/util/Map;JD)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/grpc/x;",
            "Ljava/lang/Long;",
            ">;JD)",
            "Ljava/util/List<",
            "Leh/a2$c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/grpc/x;

    .line 4
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-double v8, v8

    move-wide/from16 v10, p1

    long-to-double v12, v10

    div-double/2addr v8, v12

    .line 5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lio/grpc/x;->a()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x5f

    .line 6
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-double v8, v8, p3

    add-double/2addr v2, v8

    const-wide/16 v8, 0x0

    :goto_0
    cmpg-double v12, v4, v2

    if-gez v12, :cond_0

    .line 7
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 8
    sget-object v12, Leh/a2;->k:Leh/u2;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Leh/u2;->b(Ljava/lang/String;)J

    move-result-wide v12

    .line 9
    new-instance v14, Leh/a2$c;

    const/4 v15, 0x0

    invoke-direct {v14, v12, v13, v7, v15}, Leh/a2$c;-><init>(JLio/grpc/x;Leh/a2$a;)V

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v12

    .line 10
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static j(Lio/grpc/n0$h;)Leh/a2$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/n0$h;",
            ")",
            "Leh/a2$b<",
            "Lio/grpc/q;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/n0$h;->d()Lio/grpc/a;

    move-result-object p0

    sget-object v0, Leh/a2;->i:Lio/grpc/a$c;

    invoke-virtual {p0, v0}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leh/a2$b;

    const-string v0, "STATE_INFO"

    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Leh/a2$b;

    return-object p0
.end method

.method private k(Lio/grpc/n0$h;Lio/grpc/q;)V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/a2;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lio/grpc/n0$h;->b()Lio/grpc/x;

    move-result-object v1

    invoke-static {v1}, Leh/a2;->m(Lio/grpc/x;)Lio/grpc/x;

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
    iget-object v0, p0, Leh/a2;->f:Lio/grpc/n0$d;

    invoke-virtual {v0}, Lio/grpc/n0$d;->j()V

    .line 4
    :cond_2
    invoke-static {p1}, Leh/a2;->j(Lio/grpc/n0$h;)Leh/a2$b;

    move-result-object p1

    .line 5
    iget-object v0, p1, Leh/a2$b;->a:Ljava/lang/Object;

    check-cast v0, Lio/grpc/q;

    invoke-virtual {v0}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    if-ne v0, v1, :cond_4

    .line 6
    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_4

    :cond_3
    return-void

    .line 7
    :cond_4
    iput-object p2, p1, Leh/a2$b;->a:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Leh/a2;->o()V

    return-void
.end method

.method private static l(Lio/grpc/n0$h;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/n0$h;->h()V

    .line 2
    invoke-static {p0}, Leh/a2;->j(Lio/grpc/n0$h;)Leh/a2$b;

    move-result-object p0

    sget-object v0, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    invoke-static {v0}, Lio/grpc/q;->a(Lio/grpc/ConnectivityState;)Lio/grpc/q;

    move-result-object v0

    iput-object v0, p0, Leh/a2$b;->a:Ljava/lang/Object;

    return-void
.end method

.method private static m(Lio/grpc/x;)Lio/grpc/x;
    .locals 1

    new-instance v0, Lio/grpc/x;

    invoke-virtual {p0}, Lio/grpc/x;->a()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/grpc/x;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static n(Ljava/util/List;)Ljava/util/Map;
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

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/x;

    .line 4
    invoke-static {v1}, Leh/a2;->m(Lio/grpc/x;)Lio/grpc/x;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private o()V
    .locals 9

    .line 1
    iget-object v0, p0, Leh/a2;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "no subchannel has been created"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Leh/a2;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v3

    const/4 v4, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/n0$h;

    .line 3
    invoke-static {v6}, Leh/a2;->j(Lio/grpc/n0$h;)Leh/a2$b;

    move-result-object v7

    iget-object v7, v7, Leh/a2$b;->a:Ljava/lang/Object;

    check-cast v7, Lio/grpc/q;

    invoke-virtual {v7}, Lio/grpc/q;->c()Lio/grpc/ConnectivityState;

    move-result-object v7

    .line 4
    sget-object v8, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne v7, v8, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v8, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-ne v7, v8, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    sget-object v8, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-ne v7, v8, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    .line 7
    :cond_3
    sget-object v8, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v7, v8, :cond_0

    if-nez v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_4
    move-object v8, v3

    :goto_1
    if-nez v8, :cond_9

    const/4 v0, 0x2

    if-lt v2, v0, :cond_6

    if-nez v4, :cond_5

    if-eqz v5, :cond_5

    .line 8
    invoke-virtual {v5}, Lio/grpc/n0$h;->g()V

    .line 9
    :cond_5
    sget-object v8, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    .line 10
    sget-object v8, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    goto :goto_2

    :cond_7
    if-eqz v5, :cond_8

    .line 11
    sget-object v8, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    goto :goto_2

    .line 12
    :cond_8
    sget-object v8, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    .line 13
    :cond_9
    :goto_2
    new-instance v0, Leh/a2$e;

    iget-object v1, p0, Leh/a2;->d:Lio/grpc/d1;

    iget-object v2, p0, Leh/a2;->g:Ljava/util/List;

    iget-object v4, p0, Leh/a2;->e:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v4, v3}, Leh/a2$e;-><init>(Lio/grpc/d1;Ljava/util/List;Ljava/util/Map;Leh/a2$a;)V

    .line 14
    iget-object v1, p0, Leh/a2;->f:Lio/grpc/n0$d;

    invoke-virtual {v1, v8, v0}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    .line 15
    iput-object v8, p0, Leh/a2;->h:Lio/grpc/ConnectivityState;

    return-void
.end method


# virtual methods
.method public b(Lio/grpc/Status;)V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/a2;->h:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Leh/a2;->f:Lio/grpc/n0$d;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v2, Leh/t2$b;

    invoke-direct {v2, p1}, Leh/t2$b;-><init>(Lio/grpc/Status;)V

    invoke-virtual {v0, v1, v2}, Lio/grpc/n0$d;->k(Lio/grpc/ConnectivityState;Lio/grpc/n0$i;)V

    :cond_0
    return-void
.end method

.method public d(Lio/grpc/n0$g;)V
    .locals 12

    .line 1
    iget-object v0, p0, Leh/a2;->c:Leh/q2;

    sget-object v1, Leh/q2$b;->a:Leh/q2$b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Received resolution result: {0}"

    invoke-virtual {v0, v1, v3, v2}, Leh/q2;->c(Leh/q2$b;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lio/grpc/n0$g;->a()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object p1, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v0, "Ring hash lb error: EDS resolution was successful, but returned server addresses are empty."

    invoke-virtual {p1, v0}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Leh/a2;->b(Lio/grpc/Status;)V

    return-void

    .line 5
    :cond_0
    invoke-static {v0}, Leh/a2;->n(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 6
    iget-object v2, p0, Leh/a2;->e:Ljava/util/Map;

    .line 7
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/common/collect/w7;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/w7$g;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/w7;->h(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lio/grpc/n0$g;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/a2$d;

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v3, 0x0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/x;

    .line 11
    invoke-virtual {v5}, Lio/grpc/x;->b()Lio/grpc/a;

    move-result-object v6

    sget-object v7, Leh/o1;->f:Lio/grpc/a$c;

    invoke-virtual {v6, v7}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_1

    const-wide/16 v6, 0x1

    .line 12
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 13
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v3, v7

    .line 14
    invoke-static {v5}, Leh/a2;->m(Lio/grpc/x;)Lio/grpc/x;

    move-result-object v7

    .line 15
    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 16
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 17
    :cond_2
    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :goto_1
    iget-object v6, p0, Leh/a2;->e:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/n0$h;

    if-eqz v6, :cond_3

    .line 19
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v6, v5}, Lio/grpc/n0$h;->j(Ljava/util/List;)V

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {}, Lio/grpc/a;->c()Lio/grpc/a$b;

    move-result-object v6

    sget-object v8, Leh/a2;->i:Lio/grpc/a$c;

    new-instance v9, Leh/a2$b;

    sget-object v10, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    .line 21
    invoke-static {v10}, Lio/grpc/q;->a(Lio/grpc/ConnectivityState;)Lio/grpc/q;

    move-result-object v10

    invoke-direct {v9, v10}, Leh/a2$b;-><init>(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v6, v8, v9}, Lio/grpc/a$b;->d(Lio/grpc/a$c;Ljava/lang/Object;)Lio/grpc/a$b;

    move-result-object v6

    .line 23
    invoke-virtual {v6}, Lio/grpc/a$b;->a()Lio/grpc/a;

    move-result-object v6

    .line 24
    iget-object v8, p0, Leh/a2;->f:Lio/grpc/n0$d;

    .line 25
    invoke-static {}, Lio/grpc/n0$b;->c()Lio/grpc/n0$b$a;

    move-result-object v9

    invoke-virtual {v9, v5}, Lio/grpc/n0$b$a;->d(Lio/grpc/x;)Lio/grpc/n0$b$a;

    move-result-object v5

    invoke-virtual {v5, v6}, Lio/grpc/n0$b$a;->f(Lio/grpc/a;)Lio/grpc/n0$b$a;

    move-result-object v5

    invoke-virtual {v5}, Lio/grpc/n0$b$a;->b()Lio/grpc/n0$b;

    move-result-object v5

    .line 26
    invoke-virtual {v8, v5}, Lio/grpc/n0$d;->b(Lio/grpc/n0$b;)Lio/grpc/n0$h;

    move-result-object v5

    .line 27
    new-instance v6, Leh/a2$a;

    invoke-direct {v6, p0, v5}, Leh/a2$a;-><init>(Leh/a2;Lio/grpc/n0$h;)V

    invoke-virtual {v5, v6}, Lio/grpc/n0$h;->i(Lio/grpc/n0$j;)V

    .line 28
    iget-object v6, p0, Leh/a2;->e:Ljava/util/Map;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 29
    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    long-to-double v5, v5

    long-to-double v7, v3

    div-double/2addr v5, v7

    .line 30
    iget-wide v7, p1, Leh/a2$d;->a:J

    long-to-double v7, v7

    mul-double v7, v7, v5

    .line 31
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    div-double/2addr v7, v5

    iget-wide v5, p1, Leh/a2$d;->b:J

    long-to-double v5, v5

    .line 32
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    .line 33
    invoke-static {v2, v3, v4, v5, v6}, Leh/a2;->i(Ljava/util/Map;JD)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Leh/a2;->g:Ljava/util/List;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/x;

    .line 36
    iget-object v2, p0, Leh/a2;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/n0$h;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 37
    :cond_5
    invoke-direct {p0}, Leh/a2;->o()V

    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/n0$h;

    .line 39
    invoke-static {v0}, Leh/a2;->l(Lio/grpc/n0$h;)V

    goto :goto_3

    :cond_6
    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/a2;->c:Leh/q2;

    sget-object v1, Leh/q2$b;->b:Leh/q2$b;

    const-string v2, "Shutdown"

    invoke-virtual {v0, v1, v2}, Leh/q2;->b(Leh/q2$b;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Leh/a2;->e:Ljava/util/Map;

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

    check-cast v1, Lio/grpc/n0$h;

    .line 3
    invoke-static {v1}, Leh/a2;->l(Lio/grpc/n0$h;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Leh/a2;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
