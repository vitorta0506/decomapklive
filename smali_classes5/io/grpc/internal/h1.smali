.class public final Lio/grpc/internal/h1;
.super Lio/grpc/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/h1$d;,
        Lio/grpc/internal/h1$b;,
        Lio/grpc/internal/h1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/r0<",
        "Lio/grpc/internal/h1;",
        ">;"
    }
.end annotation


# static fields
.field private static final I:Ljava/util/logging/Logger;

.field static final J:J

.field static final K:J

.field private static final L:Lio/grpc/internal/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/p1<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static final M:Lio/grpc/v;

.field private static final N:Lio/grpc/p;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private final G:Lio/grpc/internal/h1$c;

.field private final H:Lio/grpc/internal/h1$b;

.field a:Lio/grpc/internal/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/p1<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field b:Lio/grpc/internal/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/p1<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/h;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lio/grpc/v0;

.field e:Lio/grpc/t0$d;

.field final f:Ljava/lang/String;

.field final g:Lio/grpc/e;

.field final h:Lio/grpc/b;

.field private final i:Ljava/net/SocketAddress;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Z

.field n:Lio/grpc/v;

.field o:Lio/grpc/p;

.field p:J

.field q:I

.field r:I

.field s:J

.field t:J

.field u:Z

.field v:Lio/grpc/c0;

.field w:I

.field x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field y:Z

.field z:Lio/grpc/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lio/grpc/internal/h1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/h1;->I:Ljava/util/logging/Logger;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/h1;->J:J

    .line 3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/h1;->K:J

    .line 4
    sget-object v0, Lio/grpc/internal/GrpcUtil;->t:Lio/grpc/internal/f2$d;

    .line 5
    invoke-static {v0}, Lio/grpc/internal/g2;->c(Lio/grpc/internal/f2$d;)Lio/grpc/internal/g2;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/h1;->L:Lio/grpc/internal/p1;

    .line 6
    invoke-static {}, Lio/grpc/v;->c()Lio/grpc/v;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/h1;->M:Lio/grpc/v;

    .line 7
    invoke-static {}, Lio/grpc/p;->a()Lio/grpc/p;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/h1;->N:Lio/grpc/p;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/grpc/e;Lio/grpc/b;Lio/grpc/internal/h1$c;Lio/grpc/internal/h1$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lio/grpc/r0;-><init>()V

    .line 3
    sget-object v0, Lio/grpc/internal/h1;->L:Lio/grpc/internal/p1;

    iput-object v0, p0, Lio/grpc/internal/h1;->a:Lio/grpc/internal/p1;

    .line 4
    iput-object v0, p0, Lio/grpc/internal/h1;->b:Lio/grpc/internal/p1;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/h1;->c:Ljava/util/List;

    .line 6
    invoke-static {}, Lio/grpc/v0;->d()Lio/grpc/v0;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/h1;->d:Lio/grpc/v0;

    .line 7
    invoke-virtual {v0}, Lio/grpc/v0;->c()Lio/grpc/t0$d;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/h1;->e:Lio/grpc/t0$d;

    const-string v0, "pick_first"

    .line 8
    iput-object v0, p0, Lio/grpc/internal/h1;->l:Ljava/lang/String;

    .line 9
    sget-object v0, Lio/grpc/internal/h1;->M:Lio/grpc/v;

    iput-object v0, p0, Lio/grpc/internal/h1;->n:Lio/grpc/v;

    .line 10
    sget-object v0, Lio/grpc/internal/h1;->N:Lio/grpc/p;

    iput-object v0, p0, Lio/grpc/internal/h1;->o:Lio/grpc/p;

    .line 11
    sget-wide v0, Lio/grpc/internal/h1;->J:J

    iput-wide v0, p0, Lio/grpc/internal/h1;->p:J

    const/4 v0, 0x5

    .line 12
    iput v0, p0, Lio/grpc/internal/h1;->q:I

    .line 13
    iput v0, p0, Lio/grpc/internal/h1;->r:I

    const-wide/32 v0, 0x1000000

    .line 14
    iput-wide v0, p0, Lio/grpc/internal/h1;->s:J

    const-wide/32 v0, 0x100000

    .line 15
    iput-wide v0, p0, Lio/grpc/internal/h1;->t:J

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lio/grpc/internal/h1;->u:Z

    .line 17
    invoke-static {}, Lio/grpc/c0;->g()Lio/grpc/c0;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/h1;->v:Lio/grpc/c0;

    .line 18
    iput-boolean v0, p0, Lio/grpc/internal/h1;->y:Z

    .line 19
    iput-boolean v0, p0, Lio/grpc/internal/h1;->A:Z

    .line 20
    iput-boolean v0, p0, Lio/grpc/internal/h1;->B:Z

    .line 21
    iput-boolean v0, p0, Lio/grpc/internal/h1;->C:Z

    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lio/grpc/internal/h1;->D:Z

    .line 23
    iput-boolean v0, p0, Lio/grpc/internal/h1;->E:Z

    .line 24
    iput-boolean v0, p0, Lio/grpc/internal/h1;->F:Z

    const-string v0, "target"

    .line 25
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/internal/h1;->f:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lio/grpc/internal/h1;->g:Lio/grpc/e;

    .line 27
    iput-object p3, p0, Lio/grpc/internal/h1;->h:Lio/grpc/b;

    const-string p1, "clientTransportFactoryBuilder"

    .line 28
    invoke-static {p4, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/h1$c;

    iput-object p1, p0, Lio/grpc/internal/h1;->G:Lio/grpc/internal/h1$c;

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lio/grpc/internal/h1;->i:Ljava/net/SocketAddress;

    if-eqz p5, :cond_0

    .line 30
    iput-object p5, p0, Lio/grpc/internal/h1;->H:Lio/grpc/internal/h1$b;

    goto :goto_0

    .line 31
    :cond_0
    new-instance p2, Lio/grpc/internal/h1$d;

    invoke-direct {p2, p1}, Lio/grpc/internal/h1$d;-><init>(Lio/grpc/internal/h1$a;)V

    iput-object p2, p0, Lio/grpc/internal/h1;->H:Lio/grpc/internal/h1$b;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/grpc/internal/h1$c;Lio/grpc/internal/h1$b;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Lio/grpc/internal/h1;-><init>(Ljava/lang/String;Lio/grpc/e;Lio/grpc/b;Lio/grpc/internal/h1$c;Lio/grpc/internal/h1$b;)V

    return-void
.end method

.method private static p(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 5
    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lio/grpc/internal/h1;->q(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 7
    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lio/grpc/internal/h1;->p(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_4

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_4
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The entry \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' is of type \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', which is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static q(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    const-string v4, "The key of the entry \'%s\' is not of String type"

    .line 4
    invoke-static {v3, v4, v2}, Lcom/google/common/base/o;->m(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 7
    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_2

    .line 9
    check-cast v4, Ljava/util/Map;

    invoke-static {v4}, Lio/grpc/internal/h1;->q(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_2
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_3

    .line 11
    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lio/grpc/internal/h1;->p(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_3
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 13
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_4
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_5

    .line 15
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_5
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_6

    .line 17
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The value of the map entry \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\' is of type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', which is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_7
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)Lio/grpc/internal/h1;
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/h1;->j:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lio/grpc/q0;
    .locals 10

    .line 1
    new-instance v0, Lio/grpc/internal/i1;

    new-instance v9, Lio/grpc/internal/g1;

    iget-object v1, p0, Lio/grpc/internal/h1;->G:Lio/grpc/internal/h1$c;

    .line 2
    invoke-interface {v1}, Lio/grpc/internal/h1$c;->a()Lio/grpc/internal/s;

    move-result-object v3

    new-instance v4, Lio/grpc/internal/e0$a;

    invoke-direct {v4}, Lio/grpc/internal/e0$a;-><init>()V

    sget-object v1, Lio/grpc/internal/GrpcUtil;->t:Lio/grpc/internal/f2$d;

    .line 3
    invoke-static {v1}, Lio/grpc/internal/g2;->c(Lio/grpc/internal/f2$d;)Lio/grpc/internal/g2;

    move-result-object v5

    sget-object v6, Lio/grpc/internal/GrpcUtil;->v:Lcom/google/common/base/w;

    .line 4
    invoke-virtual {p0}, Lio/grpc/internal/h1;->w()Ljava/util/List;

    move-result-object v7

    sget-object v8, Lio/grpc/internal/m2;->a:Lio/grpc/internal/m2;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lio/grpc/internal/g1;-><init>(Lio/grpc/internal/h1;Lio/grpc/internal/s;Lio/grpc/internal/k$a;Lio/grpc/internal/p1;Lcom/google/common/base/w;Ljava/util/List;Lio/grpc/internal/m2;)V

    invoke-direct {v0, v9}, Lio/grpc/internal/i1;-><init>(Lio/grpc/q0;)V

    return-object v0
.end method

.method public bridge synthetic b(Ljava/util/Map;)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/h1;->r(Ljava/util/Map;)Lio/grpc/internal/h1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c()Lio/grpc/r0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/h1;->s()Lio/grpc/internal/h1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lio/grpc/r0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/h1;->t()Lio/grpc/internal/h1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(Ljava/util/concurrent/Executor;)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/h1;->u(Ljava/util/concurrent/Executor;)Lio/grpc/internal/h1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/util/List;)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/h1;->y(Ljava/util/List;)Lio/grpc/internal/h1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h([Lio/grpc/h;)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/h1;->z([Lio/grpc/h;)Lio/grpc/internal/h1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o(Ljava/lang/String;)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lio/grpc/internal/h1;->A(Ljava/lang/String;)Lio/grpc/internal/h1;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/util/Map;)Lio/grpc/internal/h1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/internal/h1;"
        }
    .end annotation

    invoke-static {p1}, Lio/grpc/internal/h1;->q(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/h1;->x:Ljava/util/Map;

    return-object p0
.end method

.method public s()Lio/grpc/internal/h1;
    .locals 1

    invoke-static {}, Lcom/google/common/util/concurrent/h0;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/internal/h1;->u(Ljava/util/concurrent/Executor;)Lio/grpc/internal/h1;

    move-result-object v0

    return-object v0
.end method

.method public t()Lio/grpc/internal/h1;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/h1;->y:Z

    return-object p0
.end method

.method public u(Ljava/util/concurrent/Executor;)Lio/grpc/internal/h1;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lio/grpc/internal/h0;

    invoke-direct {v0, p1}, Lio/grpc/internal/h0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/internal/h1;->a:Lio/grpc/internal/p1;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lio/grpc/internal/h1;->L:Lio/grpc/internal/p1;

    iput-object p1, p0, Lio/grpc/internal/h1;->a:Lio/grpc/internal/p1;

    :goto_0
    return-object p0
.end method

.method v()I
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/h1;->H:Lio/grpc/internal/h1$b;

    invoke-interface {v0}, Lio/grpc/internal/h1$b;->a()I

    move-result v0

    return v0
.end method

.method w()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/h;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/h1;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-boolean v1, p0, Lio/grpc/internal/h1;->A:Z

    const-string v2, "getClientInterceptor"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Unable to apply census stats"

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "io.grpc.census.InternalCensusStatsAccessor"

    .line 3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Class;

    .line 4
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/4 v10, 0x2

    aput-object v8, v7, v10

    const/4 v11, 0x3

    aput-object v8, v7, v11

    .line 5
    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v6, v6, [Ljava/lang/Object;

    .line 6
    iget-boolean v7, p0, Lio/grpc/internal/h1;->B:Z

    .line 7
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    iget-boolean v7, p0, Lio/grpc/internal/h1;->C:Z

    .line 8
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    iget-boolean v7, p0, Lio/grpc/internal/h1;->D:Z

    .line 9
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v10

    iget-boolean v7, p0, Lio/grpc/internal/h1;->E:Z

    .line 10
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v11

    .line 11
    invoke-virtual {v1, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/h;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 12
    sget-object v6, Lio/grpc/internal/h1;->I:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 13
    sget-object v6, Lio/grpc/internal/h1;->I:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 14
    sget-object v6, Lio/grpc/internal/h1;->I:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 15
    sget-object v6, Lio/grpc/internal/h1;->I:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 17
    :cond_0
    iget-boolean v1, p0, Lio/grpc/internal/h1;->F:Z

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "io.grpc.census.InternalCensusTracingAccessor"

    .line 18
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/Class;

    .line 19
    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/h;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v3, v1

    goto :goto_2

    :catch_4
    move-exception v1

    .line 21
    sget-object v2, Lio/grpc/internal/h1;->I:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v6, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_5
    move-exception v1

    .line 22
    sget-object v2, Lio/grpc/internal/h1;->I:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v6, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_6
    move-exception v1

    .line 23
    sget-object v2, Lio/grpc/internal/h1;->I:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v6, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_7
    move-exception v1

    .line 24
    sget-object v2, Lio/grpc/internal/h1;->I:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v6, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v3, :cond_1

    .line 25
    invoke-interface {v0, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public x()Lio/grpc/internal/p1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/internal/p1<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/h1;->b:Lio/grpc/internal/p1;

    return-object v0
.end method

.method public y(Ljava/util/List;)Lio/grpc/internal/h1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/h;",
            ">;)",
            "Lio/grpc/internal/h1;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/internal/h1;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs z([Lio/grpc/h;)Lio/grpc/internal/h1;
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/internal/h1;->y(Ljava/util/List;)Lio/grpc/internal/h1;

    move-result-object p1

    return-object p1
.end method
