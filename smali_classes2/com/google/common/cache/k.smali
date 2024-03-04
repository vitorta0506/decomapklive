.class Lcom/google/common/cache/k;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/k$o;,
        Lcom/google/common/cache/k$p;,
        Lcom/google/common/cache/k$m;,
        Lcom/google/common/cache/k$q;,
        Lcom/google/common/cache/k$i;,
        Lcom/google/common/cache/k$c0;,
        Lcom/google/common/cache/k$l;,
        Lcom/google/common/cache/k$c;,
        Lcom/google/common/cache/k$h;,
        Lcom/google/common/cache/k$m0;,
        Lcom/google/common/cache/k$a0;,
        Lcom/google/common/cache/k$k;,
        Lcom/google/common/cache/k$j;,
        Lcom/google/common/cache/k$e;,
        Lcom/google/common/cache/k$l0;,
        Lcom/google/common/cache/k$f;,
        Lcom/google/common/cache/k$n;,
        Lcom/google/common/cache/k$s;,
        Lcom/google/common/cache/k$j0;,
        Lcom/google/common/cache/k$i0;,
        Lcom/google/common/cache/k$k0;,
        Lcom/google/common/cache/k$y;,
        Lcom/google/common/cache/k$t;,
        Lcom/google/common/cache/k$g0;,
        Lcom/google/common/cache/k$e0;,
        Lcom/google/common/cache/k$h0;,
        Lcom/google/common/cache/k$d0;,
        Lcom/google/common/cache/k$f0;,
        Lcom/google/common/cache/k$w;,
        Lcom/google/common/cache/k$z;,
        Lcom/google/common/cache/k$v;,
        Lcom/google/common/cache/k$x;,
        Lcom/google/common/cache/k$d;,
        Lcom/google/common/cache/k$r;,
        Lcom/google/common/cache/k$b0;,
        Lcom/google/common/cache/k$g;,
        Lcom/google/common/cache/k$u;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final w:Ljava/util/logging/Logger;

.field static final x:Lcom/google/common/cache/k$b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/k$b0<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final y:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:I

.field final c:[Lcom/google/common/cache/k$s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/cache/k$s<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lcom/google/common/cache/k$u;

.field final h:Lcom/google/common/cache/k$u;

.field final i:J

.field final j:Lcom/google/common/cache/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/t<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final k:J

.field final l:J

.field final m:J

.field final n:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/RemovalNotification<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final o:Lcom/google/common/cache/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/r<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final p:Lcom/google/common/base/z;

.field final q:Lcom/google/common/cache/k$g;

.field final r:Lcom/google/common/cache/b;

.field final s:Lcom/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;"
        }
    .end annotation
.end field

.field t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field u:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/common/cache/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/k;->w:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lcom/google/common/cache/k$a;

    invoke-direct {v0}, Lcom/google/common/cache/k$a;-><init>()V

    sput-object v0, Lcom/google/common/cache/k;->x:Lcom/google/common/cache/k$b0;

    .line 3
    new-instance v0, Lcom/google/common/cache/k$b;

    invoke-direct {v0}, Lcom/google/common/cache/k$b;-><init>()V

    sput-object v0, Lcom/google/common/cache/k;->y:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/cache/d;Lcom/google/common/cache/CacheLoader;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/d<",
            "-TK;-TV;>;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/cache/d;->h()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/cache/k;->d:I

    .line 3
    invoke-virtual {p1}, Lcom/google/common/cache/d;->m()Lcom/google/common/cache/k$u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/k;->g:Lcom/google/common/cache/k$u;

    .line 4
    invoke-virtual {p1}, Lcom/google/common/cache/d;->t()Lcom/google/common/cache/k$u;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/cache/k;->h:Lcom/google/common/cache/k$u;

    .line 5
    invoke-virtual {p1}, Lcom/google/common/cache/d;->l()Lcom/google/common/base/Equivalence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/cache/k;->e:Lcom/google/common/base/Equivalence;

    .line 6
    invoke-virtual {p1}, Lcom/google/common/cache/d;->s()Lcom/google/common/base/Equivalence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/cache/k;->f:Lcom/google/common/base/Equivalence;

    .line 7
    invoke-virtual {p1}, Lcom/google/common/cache/d;->n()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/cache/k;->i:J

    .line 8
    invoke-virtual {p1}, Lcom/google/common/cache/d;->u()Lcom/google/common/cache/t;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/cache/k;->j:Lcom/google/common/cache/t;

    .line 9
    invoke-virtual {p1}, Lcom/google/common/cache/d;->i()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/common/cache/k;->k:J

    .line 10
    invoke-virtual {p1}, Lcom/google/common/cache/d;->j()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/common/cache/k;->l:J

    .line 11
    invoke-virtual {p1}, Lcom/google/common/cache/d;->o()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/common/cache/k;->m:J

    .line 12
    invoke-virtual {p1}, Lcom/google/common/cache/d;->p()Lcom/google/common/cache/r;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/cache/k;->o:Lcom/google/common/cache/r;

    .line 13
    sget-object v4, Lcom/google/common/cache/d$d;->a:Lcom/google/common/cache/d$d;

    if-ne v3, v4, :cond_0

    .line 14
    invoke-static {}, Lcom/google/common/cache/k;->i()Ljava/util/Queue;

    move-result-object v3

    goto :goto_0

    .line 15
    :cond_0
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_0
    iput-object v3, p0, Lcom/google/common/cache/k;->n:Ljava/util/Queue;

    .line 16
    invoke-virtual {p0}, Lcom/google/common/cache/k;->D()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/google/common/cache/d;->r(Z)Lcom/google/common/base/z;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/cache/k;->p:Lcom/google/common/base/z;

    .line 17
    invoke-virtual {p0}, Lcom/google/common/cache/k;->L()Z

    move-result v3

    invoke-virtual {p0}, Lcom/google/common/cache/k;->P()Z

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/google/common/cache/k$g;->e(Lcom/google/common/cache/k$u;ZZ)Lcom/google/common/cache/k$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/k;->q:Lcom/google/common/cache/k$g;

    .line 18
    invoke-virtual {p1}, Lcom/google/common/cache/d;->q()Lcom/google/common/base/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/b;

    iput-object v0, p0, Lcom/google/common/cache/k;->r:Lcom/google/common/cache/b;

    .line 19
    iput-object p2, p0, Lcom/google/common/cache/k;->s:Lcom/google/common/cache/CacheLoader;

    .line 20
    invoke-virtual {p1}, Lcom/google/common/cache/d;->k()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 21
    invoke-virtual {p0}, Lcom/google/common/cache/k;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->h()Z

    move-result v0

    if-nez v0, :cond_1

    int-to-long v3, p2

    .line 22
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 23
    :goto_1
    iget v4, p0, Lcom/google/common/cache/k;->d:I

    if-ge v2, v4, :cond_3

    invoke-virtual {p0}, Lcom/google/common/cache/k;->j()Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v4, v2, 0x14

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/google/common/cache/k;->i:J

    cmp-long v8, v4, v6

    if-gtz v8, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    rsub-int/lit8 v3, v3, 0x20

    .line 24
    iput v3, p0, Lcom/google/common/cache/k;->b:I

    add-int/lit8 v3, v2, -0x1

    .line 25
    iput v3, p0, Lcom/google/common/cache/k;->a:I

    .line 26
    invoke-virtual {p0, v2}, Lcom/google/common/cache/k;->v(I)[Lcom/google/common/cache/k$s;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/cache/k;->c:[Lcom/google/common/cache/k$s;

    .line 27
    div-int v3, p2, v2

    mul-int v4, v3, v2

    if-ge v4, p2, :cond_4

    add-int/lit8 v3, v3, 0x1

    :cond_4
    :goto_2
    if-ge v1, v3, :cond_5

    shl-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 28
    :cond_5
    invoke-virtual {p0}, Lcom/google/common/cache/k;->j()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 29
    iget-wide v3, p0, Lcom/google/common/cache/k;->i:J

    int-to-long v5, v2

    div-long v7, v3, v5

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    .line 30
    rem-long/2addr v3, v5

    .line 31
    :goto_3
    iget-object p2, p0, Lcom/google/common/cache/k;->c:[Lcom/google/common/cache/k$s;

    array-length v2, p2

    if-ge v0, v2, :cond_8

    int-to-long v5, v0

    cmp-long v2, v5, v3

    if-nez v2, :cond_6

    sub-long/2addr v7, v9

    .line 32
    :cond_6
    invoke-virtual {p1}, Lcom/google/common/cache/d;->q()Lcom/google/common/base/w;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/base/w;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/b;

    invoke-virtual {p0, v1, v7, v8, v2}, Lcom/google/common/cache/k;->g(IJLcom/google/common/cache/b;)Lcom/google/common/cache/k$s;

    move-result-object v2

    aput-object v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 33
    :cond_7
    :goto_4
    iget-object p2, p0, Lcom/google/common/cache/k;->c:[Lcom/google/common/cache/k$s;

    array-length v2, p2

    if-ge v0, v2, :cond_8

    const-wide/16 v2, -0x1

    .line 34
    invoke-virtual {p1}, Lcom/google/common/cache/d;->q()Lcom/google/common/base/w;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/base/w;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/cache/b;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/common/cache/k;->g(IJLcom/google/common/cache/b;)Lcom/google/common/cache/k$s;

    move-result-object v2

    aput-object v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method static G(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method private static J(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
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

    invoke-static {v0, p0}, Lcom/google/common/collect/p5;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method

.method static K()Lcom/google/common/cache/k$b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/cache/k$b0<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/cache/k;->x:Lcom/google/common/cache/k$b0;

    return-object v0
.end method

.method public static synthetic a(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/cache/k;->t(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/cache/k;->r(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/common/cache/k;->s(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lcom/google/common/cache/k;->J(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static e(Lcom/google/common/cache/q;Lcom/google/common/cache/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lcom/google/common/cache/q;->o(Lcom/google/common/cache/q;)V

    .line 2
    invoke-interface {p1, p0}, Lcom/google/common/cache/q;->g(Lcom/google/common/cache/q;)V

    return-void
.end method

.method static f(Lcom/google/common/cache/q;Lcom/google/common/cache/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Lcom/google/common/cache/q;->p(Lcom/google/common/cache/q;)V

    .line 2
    invoke-interface {p1, p0}, Lcom/google/common/cache/q;->q(Lcom/google/common/cache/q;)V

    return-void
.end method

.method static i()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/cache/k;->y:Ljava/util/Queue;

    return-object v0
.end method

.method private static synthetic r(Ljava/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p3, :cond_0

    invoke-interface {p0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method private static synthetic s(Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic t(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p3, p0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static w()Lcom/google/common/cache/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/cache/k$r;->a:Lcom/google/common/cache/k$r;

    return-object v0
.end method

.method static x(Lcom/google/common/cache/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/cache/k;->w()Lcom/google/common/cache/q;

    move-result-object v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/common/cache/q;->o(Lcom/google/common/cache/q;)V

    .line 3
    invoke-interface {p0, v0}, Lcom/google/common/cache/q;->g(Lcom/google/common/cache/q;)V

    return-void
.end method

.method static y(Lcom/google/common/cache/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/cache/k;->w()Lcom/google/common/cache/q;

    move-result-object v0

    .line 2
    invoke-interface {p0, v0}, Lcom/google/common/cache/q;->p(Lcom/google/common/cache/q;)V

    .line 3
    invoke-interface {p0, v0}, Lcom/google/common/cache/q;->q(Lcom/google/common/cache/q;)V

    return-void
.end method


# virtual methods
.method A(Lcom/google/common/cache/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/q;->b()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->I(I)Lcom/google/common/cache/k$s;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/k$s;->K(Lcom/google/common/cache/q;I)Z

    return-void
.end method

.method B(Lcom/google/common/cache/k$b0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k$b0<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/k$b0;->a()Lcom/google/common/cache/q;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/common/cache/q;->b()I

    move-result v1

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/common/cache/k;->I(I)Lcom/google/common/cache/k$s;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/cache/q;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/common/cache/k$s;->L(Ljava/lang/Object;ILcom/google/common/cache/k$b0;)Z

    return-void
.end method

.method C()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->k()Z

    move-result v0

    return v0
.end method

.method D()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->E()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method E()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method F()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/common/cache/k;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method H(Ljava/util/function/BiPredicate;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "-TK;-TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/common/cache/k;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/common/cache/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {p1, v2, v3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/google/common/cache/k;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method I(I)Lcom/google/common/cache/k$s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/k$s<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k;->c:[Lcom/google/common/cache/k$s;

    iget v1, p0, Lcom/google/common/cache/k;->b:I

    ushr-int/2addr p1, v1

    iget v1, p0, Lcom/google/common/cache/k;->a:I

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method L()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->M()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method M()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method N()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/k;->g:Lcom/google/common/cache/k$u;

    sget-object v1, Lcom/google/common/cache/k$u;->a:Lcom/google/common/cache/k$u;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method O()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/k;->h:Lcom/google/common/cache/k$u;

    sget-object v1, Lcom/google/common/cache/k$u;->a:Lcom/google/common/cache/k$u;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method P()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->Q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method Q()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/cache/k;->l()Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/k;->c:[Lcom/google/common/cache/k$s;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/google/common/cache/k$s;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->p(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->I(I)Lcom/google/common/cache/k$s;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/k$s;->f(Ljava/lang/Object;ILjava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/cache/j;

    invoke-direct {v0, p2, p1}, Lcom/google/common/cache/j;-><init>(Ljava/util/function/Function;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/k;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/common/cache/i;

    invoke-direct {v0, p2}, Lcom/google/common/cache/i;-><init>(Ljava/util/function/BiFunction;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/k;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->p(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->I(I)Lcom/google/common/cache/k$s;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/k$s;->g(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1
    :cond_0
    iget-object v3, v0, Lcom/google/common/cache/k;->p:Lcom/google/common/base/z;

    invoke-virtual {v3}, Lcom/google/common/base/z;->a()J

    move-result-wide v3

    .line 2
    iget-object v5, v0, Lcom/google/common/cache/k;->c:[Lcom/google/common/cache/k$s;

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x3

    if-ge v8, v9, :cond_6

    const-wide/16 v9, 0x0

    .line 3
    array-length v11, v5

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_4

    aget-object v13, v5, v12

    .line 4
    iget v14, v13, Lcom/google/common/cache/k$s;->b:I

    .line 5
    iget-object v14, v13, Lcom/google/common/cache/k$s;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v15, 0x0

    .line 6
    :goto_2
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_3

    .line 7
    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/q;

    :goto_3
    if-eqz v2, :cond_2

    move-object/from16 v16, v5

    .line 8
    invoke-virtual {v13, v2, v3, v4}, Lcom/google/common/cache/k$s;->w(Lcom/google/common/cache/q;J)Ljava/lang/Object;

    move-result-object v5

    move-wide/from16 v17, v3

    if-eqz v5, :cond_1

    .line 9
    iget-object v3, v0, Lcom/google/common/cache/k;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v3, v1, v5}, Lcom/google/common/base/Equivalence;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    return v1

    .line 10
    :cond_1
    invoke-interface {v2}, Lcom/google/common/cache/q;->c()Lcom/google/common/cache/q;

    move-result-object v2

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    goto :goto_3

    :cond_2
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_3
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    .line 11
    iget v2, v13, Lcom/google/common/cache/k$s;->d:I

    int-to-long v2, v2

    add-long/2addr v9, v2

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move-wide/from16 v17, v3

    move-object/from16 v16, v5

    cmp-long v2, v9, v6

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-wide v6, v9

    move-object/from16 v5, v16

    move-wide/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    :goto_4
    const/4 v1, 0x0

    return v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/k;->v:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/cache/k$i;

    invoke-direct {v0, p0}, Lcom/google/common/cache/k$i;-><init>(Lcom/google/common/cache/k;)V

    iput-object v0, p0, Lcom/google/common/cache/k;->v:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method g(IJLcom/google/common/cache/b;)Lcom/google/common/cache/k$s;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/google/common/cache/b;",
            ")",
            "Lcom/google/common/cache/k$s<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v6, Lcom/google/common/cache/k$s;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/k$s;-><init>(Lcom/google/common/cache/k;IJLcom/google/common/cache/b;)V

    return-object v6
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->p(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->I(I)Lcom/google/common/cache/k$s;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/k$s;->q(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method h()Z
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/k;->j:Lcom/google/common/cache/t;

    sget-object v1, Lcom/google/common/cache/d$e;->a:Lcom/google/common/cache/d$e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/k;->c:[Lcom/google/common/cache/k$s;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    const/4 v4, 0x0

    .line 2
    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    .line 3
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/cache/k$s;->b:I

    if-eqz v7, :cond_0

    return v3

    .line 4
    :cond_0
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/cache/k$s;->d:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    cmp-long v7, v5, v1

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    .line 5
    :goto_1
    array-length v8, v0

    if-ge v7, v8, :cond_3

    .line 6
    aget-object v8, v0, v7

    iget v8, v8, Lcom/google/common/cache/k$s;->b:I

    if-eqz v8, :cond_2

    return v3

    .line 7
    :cond_2
    aget-object v8, v0, v7

    iget v8, v8, Lcom/google/common/cache/k$s;->d:I

    int-to-long v8, v8

    sub-long/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    cmp-long v0, v5, v1

    if-nez v0, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3

    :cond_5
    return v4
.end method

.method j()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/common/cache/k;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method k()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/common/cache/k;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/k;->t:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/cache/k$l;

    invoke-direct {v0, p0}, Lcom/google/common/cache/k$l;-><init>(Lcom/google/common/cache/k;)V

    iput-object v0, p0, Lcom/google/common/cache/k;->t:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method l()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/common/cache/k;->l:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method m(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->p(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->I(I)Lcom/google/common/cache/k$s;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/k$s;->r(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/google/common/cache/h;

    invoke-direct {v0, p2, p3}, Lcom/google/common/cache/h;-><init>(Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/k;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method n(Lcom/google/common/cache/q;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;J)TV;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/cache/q;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/q;->a()Lcom/google/common/cache/k$b0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/k$b0;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/k;->q(Lcom/google/common/cache/q;J)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method

.method o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/k;->s:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/k;->m(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method p(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/k;->e:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalence;->e(Ljava/lang/Object;)I

    move-result p1

    .line 2
    invoke-static {p1}, Lcom/google/common/cache/k;->G(I)I

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->p(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->I(I)Lcom/google/common/cache/k$s;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/k$s;->J(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/cache/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->p(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->I(I)Lcom/google/common/cache/k$s;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/k$s;->J(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method q(Lcom/google/common/cache/q;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/q<",
            "TK;TV;>;J)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/common/cache/k;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/common/cache/q;->l()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/google/common/cache/k;->k:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/k;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/common/cache/q;->j()J

    move-result-wide v2

    sub-long/2addr p2, v2

    iget-wide v2, p0, Lcom/google/common/cache/k;->l:J

    cmp-long p1, p2, v2

    if-ltz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->p(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->I(I)Lcom/google/common/cache/k$s;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/k$s;->R(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->p(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->I(I)Lcom/google/common/cache/k$s;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/k$s;->S(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->p(Ljava/lang/Object;)I

    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->I(I)Lcom/google/common/cache/k$s;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/k$s;->Y(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/k;->p(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/cache/k;->I(I)Lcom/google/common/cache/k$s;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/cache/k$s;->Z(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/cache/k;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/f;->i(J)I

    move-result v0

    return v0
.end method

.method u()J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/k;->c:[Lcom/google/common/cache/k$s;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 3
    aget-object v4, v0, v3

    iget v4, v4, Lcom/google/common/cache/k$s;->b:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method final v(I)[Lcom/google/common/cache/k$s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/cache/k$s<",
            "TK;TV;>;"
        }
    .end annotation

    new-array p1, p1, [Lcom/google/common/cache/k$s;

    return-object p1
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/k;->u:Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/cache/k$c0;

    invoke-direct {v0, p0}, Lcom/google/common/cache/k$c0;-><init>(Lcom/google/common/cache/k;)V

    iput-object v0, p0, Lcom/google/common/cache/k;->u:Ljava/util/Collection;

    :goto_0
    return-object v0
.end method

.method z()V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/k;->n:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/RemovalNotification;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/common/cache/k;->o:Lcom/google/common/cache/r;

    invoke-interface {v1, v0}, Lcom/google/common/cache/r;->a(Lcom/google/common/cache/RemovalNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/google/common/cache/k;->w:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
