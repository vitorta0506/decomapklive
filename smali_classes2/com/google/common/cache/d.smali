.class public final Lcom/google/common/cache/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/d$e;,
        Lcom/google/common/cache/d$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final q:Lcom/google/common/base/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/w<",
            "+",
            "Lcom/google/common/cache/b;",
            ">;"
        }
    .end annotation
.end field

.field static final r:Lcom/google/common/cache/e;

.field static final s:Lcom/google/common/base/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/w<",
            "Lcom/google/common/cache/b;",
            ">;"
        }
    .end annotation
.end field

.field static final t:Lcom/google/common/base/z;

.field private static final u:Ljava/util/logging/Logger;


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:J

.field e:J

.field f:Lcom/google/common/cache/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/t<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/cache/k$u;

.field h:Lcom/google/common/cache/k$u;

.field i:J

.field j:J

.field k:J

.field l:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field n:Lcom/google/common/cache/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/r<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field o:Lcom/google/common/base/z;

.field p:Lcom/google/common/base/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/w<",
            "+",
            "Lcom/google/common/cache/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/google/common/cache/d$a;

    invoke-direct {v0}, Lcom/google/common/cache/d$a;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/common/base/x;->a(Ljava/lang/Object;)Lcom/google/common/base/w;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/d;->q:Lcom/google/common/base/w;

    .line 3
    new-instance v0, Lcom/google/common/cache/e;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/e;-><init>(JJJJJJ)V

    sput-object v0, Lcom/google/common/cache/d;->r:Lcom/google/common/cache/e;

    .line 4
    new-instance v0, Lcom/google/common/cache/d$b;

    invoke-direct {v0}, Lcom/google/common/cache/d$b;-><init>()V

    sput-object v0, Lcom/google/common/cache/d;->s:Lcom/google/common/base/w;

    .line 5
    new-instance v0, Lcom/google/common/cache/d$c;

    invoke-direct {v0}, Lcom/google/common/cache/d$c;-><init>()V

    sput-object v0, Lcom/google/common/cache/d;->t:Lcom/google/common/base/z;

    .line 6
    const-class v0, Lcom/google/common/cache/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/d;->u:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/common/cache/d;->a:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/common/cache/d;->b:I

    .line 4
    iput v0, p0, Lcom/google/common/cache/d;->c:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/google/common/cache/d;->d:J

    .line 6
    iput-wide v0, p0, Lcom/google/common/cache/d;->e:J

    .line 7
    iput-wide v0, p0, Lcom/google/common/cache/d;->i:J

    .line 8
    iput-wide v0, p0, Lcom/google/common/cache/d;->j:J

    .line 9
    iput-wide v0, p0, Lcom/google/common/cache/d;->k:J

    .line 10
    sget-object v0, Lcom/google/common/cache/d;->q:Lcom/google/common/base/w;

    iput-object v0, p0, Lcom/google/common/cache/d;->p:Lcom/google/common/base/w;

    return-void
.end method

.method private c()V
    .locals 5

    iget-wide v0, p0, Lcom/google/common/cache/d;->k:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "refreshAfterWrite requires a LoadingCache"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    return-void
.end method

.method private d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/t;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-nez v0, :cond_1

    .line 2
    iget-wide v5, p0, Lcom/google/common/cache/d;->e:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "maximumWeight requires weigher"

    invoke-static {v1, v0}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    goto :goto_2

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/google/common/cache/d;->a:Z

    if-eqz v0, :cond_3

    .line 4
    iget-wide v5, p0, Lcom/google/common/cache/d;->e:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v0, "weigher requires maximumWeight"

    invoke-static {v1, v0}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    goto :goto_2

    .line 5
    :cond_3
    iget-wide v0, p0, Lcom/google/common/cache/d;->e:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_4

    .line 6
    sget-object v0, Lcom/google/common/cache/d;->u:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "ignoring weigher specified without maximumWeight"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static y()Lcom/google/common/cache/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/d<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/cache/d;

    invoke-direct {v0}, Lcom/google/common/cache/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method A(Lcom/google/common/cache/k$u;)Lcom/google/common/cache/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k$u;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->g:Lcom/google/common/cache/k$u;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Key strength was already set to %s"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/o;->D(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/k$u;

    iput-object p1, p0, Lcom/google/common/cache/d;->g:Lcom/google/common/cache/k$u;

    return-object p0
.end method

.method B(Lcom/google/common/cache/k$u;)Lcom/google/common/cache/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/k$u;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->h:Lcom/google/common/cache/k$u;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Value strength was already set to %s"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/o;->D(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/k$u;

    iput-object p1, p0, Lcom/google/common/cache/d;->h:Lcom/google/common/cache/k$u;

    return-object p0
.end method

.method public C(Lcom/google/common/base/z;)Lcom/google/common/cache/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/z;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->o:Lcom/google/common/base/z;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->z(Z)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/z;

    iput-object p1, p0, Lcom/google/common/cache/d;->o:Lcom/google/common/base/z;

    return-object p0
.end method

.method D(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->m:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "value equivalence was already set to %s"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/o;->D(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Equivalence;

    iput-object p1, p0, Lcom/google/common/cache/d;->m:Lcom/google/common/base/Equivalence;

    return-object p0
.end method

.method public E(Lcom/google/common/cache/t;)Lcom/google/common/cache/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/t<",
            "-TK1;-TV1;>;)",
            "Lcom/google/common/cache/d<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/t;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->z(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/google/common/cache/d;->a:Z

    if-eqz v0, :cond_2

    .line 3
    iget-wide v3, p0, Lcom/google/common/cache/d;->d:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "weigher can not be combined with maximum size"

    invoke-static {v1, v0, v3, v4}, Lcom/google/common/base/o;->C(ZLjava/lang/String;J)V

    .line 4
    :cond_2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/t;

    iput-object p1, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/t;

    return-object p0
.end method

.method public a()Lcom/google/common/cache/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/c<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/d;->d()V

    .line 2
    invoke-direct {p0}, Lcom/google/common/cache/d;->c()V

    .line 3
    new-instance v0, Lcom/google/common/cache/k$p;

    invoke-direct {v0, p0}, Lcom/google/common/cache/k$p;-><init>(Lcom/google/common/cache/d;)V

    return-object v0
.end method

.method public b(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK1;TV1;>;)",
            "Lcom/google/common/cache/g<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/cache/d;->d()V

    .line 2
    new-instance v0, Lcom/google/common/cache/k$o;

    invoke-direct {v0, p0, p1}, Lcom/google/common/cache/k$o;-><init>(Lcom/google/common/cache/d;Lcom/google/common/cache/CacheLoader;)V

    return-object v0
.end method

.method public e(I)Lcom/google/common/cache/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/cache/d;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "concurrency level was already set to %s"

    invoke-static {v3, v4, v0}, Lcom/google/common/base/o;->B(ZLjava/lang/String;I)V

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/o;->d(Z)V

    .line 3
    iput p1, p0, Lcom/google/common/cache/d;->c:I

    return-object p0
.end method

.method public f(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/d;->j:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "expireAfterAccess was already set to %s ns"

    invoke-static {v4, v5, v0, v1}, Lcom/google/common/base/o;->C(ZLjava/lang/String;J)V

    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "duration cannot be negative: %s %s"

    .line 2
    invoke-static {v2, v0, p1, p2, p3}, Lcom/google/common/base/o;->l(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/cache/d;->j:J

    return-object p0
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/d;->i:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "expireAfterWrite was already set to %s ns"

    invoke-static {v4, v5, v0, v1}, Lcom/google/common/base/o;->C(ZLjava/lang/String;J)V

    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "duration cannot be negative: %s %s"

    .line 2
    invoke-static {v2, v0, p1, p2, p3}, Lcom/google/common/base/o;->l(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/common/cache/d;->i:J

    return-object p0
.end method

.method h()I
    .locals 2

    iget v0, p0, Lcom/google/common/cache/d;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method i()J
    .locals 5

    iget-wide v0, p0, Lcom/google/common/cache/d;->j:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method j()J
    .locals 5

    iget-wide v0, p0, Lcom/google/common/cache/d;->i:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method k()I
    .locals 2

    iget v0, p0, Lcom/google/common/cache/d;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    return v0
.end method

.method l()Lcom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->l:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/cache/d;->m()Lcom/google/common/cache/k$u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/cache/k$u;->b()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method m()Lcom/google/common/cache/k$u;
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/d;->g:Lcom/google/common/cache/k$u;

    sget-object v1, Lcom/google/common/cache/k$u;->a:Lcom/google/common/cache/k$u;

    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/k$u;

    return-object v0
.end method

.method n()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/d;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v0, p0, Lcom/google/common/cache/d;->j:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/t;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/common/cache/d;->d:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/common/cache/d;->e:J

    :goto_0
    return-wide v0

    :cond_2
    :goto_1
    return-wide v2
.end method

.method o()J
    .locals 5

    iget-wide v0, p0, Lcom/google/common/cache/d;->k:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method p()Lcom/google/common/cache/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/r<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->n:Lcom/google/common/cache/r;

    sget-object v1, Lcom/google/common/cache/d$d;->a:Lcom/google/common/cache/d$d;

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/r;

    return-object v0
.end method

.method q()Lcom/google/common/base/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/w<",
            "+",
            "Lcom/google/common/cache/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->p:Lcom/google/common/base/w;

    return-object v0
.end method

.method r(Z)Lcom/google/common/base/z;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->o:Lcom/google/common/base/z;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/google/common/base/z;->b()Lcom/google/common/base/z;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/common/cache/d;->t:Lcom/google/common/base/z;

    :goto_0
    return-object p1
.end method

.method s()Lcom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->m:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lcom/google/common/cache/d;->t()Lcom/google/common/cache/k$u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/cache/k$u;->b()Lcom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    return-object v0
.end method

.method t()Lcom/google/common/cache/k$u;
    .locals 2

    iget-object v0, p0, Lcom/google/common/cache/d;->h:Lcom/google/common/cache/k$u;

    sget-object v1, Lcom/google/common/cache/k$u;->a:Lcom/google/common/cache/k$u;

    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/k$u;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p0}, Lcom/google/common/base/j;->c(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/google/common/cache/d;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v3, "initialCapacity"

    .line 3
    invoke-virtual {v0, v3, v1}, Lcom/google/common/base/j$b;->b(Ljava/lang/String;I)Lcom/google/common/base/j$b;

    .line 4
    :cond_0
    iget v1, p0, Lcom/google/common/cache/d;->c:I

    if-eq v1, v2, :cond_1

    const-string v2, "concurrencyLevel"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->b(Ljava/lang/String;I)Lcom/google/common/base/j$b;

    .line 6
    :cond_1
    iget-wide v1, p0, Lcom/google/common/cache/d;->d:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const-string v5, "maximumSize"

    .line 7
    invoke-virtual {v0, v5, v1, v2}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    .line 8
    :cond_2
    iget-wide v1, p0, Lcom/google/common/cache/d;->e:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const-string v5, "maximumWeight"

    .line 9
    invoke-virtual {v0, v5, v1, v2}, Lcom/google/common/base/j$b;->c(Ljava/lang/String;J)Lcom/google/common/base/j$b;

    .line 10
    :cond_3
    iget-wide v1, p0, Lcom/google/common/cache/d;->i:J

    const-string v5, "ns"

    const/16 v6, 0x16

    cmp-long v7, v1, v3

    if-eqz v7, :cond_4

    .line 11
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expireAfterWrite"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    .line 12
    :cond_4
    iget-wide v1, p0, Lcom/google/common/cache/d;->j:J

    cmp-long v7, v1, v3

    if-eqz v7, :cond_5

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expireAfterAccess"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    .line 14
    :cond_5
    iget-object v1, p0, Lcom/google/common/cache/d;->g:Lcom/google/common/cache/k$u;

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    .line 16
    :cond_6
    iget-object v1, p0, Lcom/google/common/cache/d;->h:Lcom/google/common/cache/k$u;

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueStrength"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/j$b;->d(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/j$b;

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/google/common/cache/d;->l:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_8

    const-string v1, "keyEquivalence"

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/common/base/j$b;->k(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    .line 20
    :cond_8
    iget-object v1, p0, Lcom/google/common/cache/d;->m:Lcom/google/common/base/Equivalence;

    if-eqz v1, :cond_9

    const-string v1, "valueEquivalence"

    .line 21
    invoke-virtual {v0, v1}, Lcom/google/common/base/j$b;->k(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    .line 22
    :cond_9
    iget-object v1, p0, Lcom/google/common/cache/d;->n:Lcom/google/common/cache/r;

    if-eqz v1, :cond_a

    const-string v1, "removalListener"

    .line 23
    invoke-virtual {v0, v1}, Lcom/google/common/base/j$b;->k(Ljava/lang/Object;)Lcom/google/common/base/j$b;

    .line 24
    :cond_a
    invoke-virtual {v0}, Lcom/google/common/base/j$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Lcom/google/common/cache/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/common/cache/t<",
            "TK1;TV1;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/t;

    sget-object v1, Lcom/google/common/cache/d$e;->a:Lcom/google/common/cache/d$e;

    invoke-static {v0, v1}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/t;

    return-object v0
.end method

.method v(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->l:Lcom/google/common/base/Equivalence;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "key equivalence was already set to %s"

    invoke-static {v1, v2, v0}, Lcom/google/common/base/o;->D(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Equivalence;

    iput-object p1, p0, Lcom/google/common/cache/d;->l:Lcom/google/common/base/Equivalence;

    return-object p0
.end method

.method public w(J)Lcom/google/common/cache/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/d;->d:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "maximum size was already set to %s"

    invoke-static {v6, v7, v0, v1}, Lcom/google/common/base/o;->C(ZLjava/lang/String;J)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/cache/d;->e:J

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "maximum weight was already set to %s"

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/base/o;->C(ZLjava/lang/String;J)V

    .line 3
    iget-object v0, p0, Lcom/google/common/cache/d;->f:Lcom/google/common/cache/t;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v1, "maximum size can not be combined with weigher"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    const-string v0, "maximum size must not be negative"

    .line 4
    invoke-static {v4, v0}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 5
    iput-wide p1, p0, Lcom/google/common/cache/d;->d:J

    return-object p0
.end method

.method public x(J)Lcom/google/common/cache/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/cache/d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/common/cache/d;->e:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "maximum weight was already set to %s"

    invoke-static {v6, v7, v0, v1}, Lcom/google/common/base/o;->C(ZLjava/lang/String;J)V

    .line 2
    iget-wide v0, p0, Lcom/google/common/cache/d;->d:J

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "maximum size was already set to %s"

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/base/o;->C(ZLjava/lang/String;J)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    const-string v0, "maximum weight must not be negative"

    .line 3
    invoke-static {v4, v0}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 4
    iput-wide p1, p0, Lcom/google/common/cache/d;->e:J

    return-object p0
.end method

.method public z(Lcom/google/common/cache/r;)Lcom/google/common/cache/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/common/cache/r<",
            "-TK1;-TV1;>;)",
            "Lcom/google/common/cache/d<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/d;->n:Lcom/google/common/cache/r;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->z(Z)V

    .line 2
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/r;

    iput-object p1, p0, Lcom/google/common/cache/d;->n:Lcom/google/common/cache/r;

    return-object p0
.end method
