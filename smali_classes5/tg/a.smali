.class public Ltg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltg/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltg/a$e;,
        Ltg/a$f;,
        Ltg/a$g;,
        Ltg/a$d;,
        Ltg/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ltg/b<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/Object;


# instance fields
.field private a:I

.field private final b:F

.field private c:[C

.field private d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Character;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ltg/b$a<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ltg/a;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltg/a;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1
    invoke-direct {p0, v0, v1}, Ltg/a;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    invoke-direct {p0, p1, v0}, Ltg/a;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ltg/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ltg/a$d;-><init>(Ltg/a;Ltg/a$a;)V

    iput-object v0, p0, Ltg/a;->g:Ljava/util/Set;

    .line 5
    new-instance v0, Ltg/a$c;

    invoke-direct {v0, p0, v1}, Ltg/a$c;-><init>(Ltg/a;Ltg/a$a;)V

    iput-object v0, p0, Ltg/a;->h:Ljava/util/Set;

    .line 6
    new-instance v0, Ltg/a$a;

    invoke-direct {v0, p0}, Ltg/a$a;-><init>(Ltg/a;)V

    iput-object v0, p0, Ltg/a;->i:Ljava/lang/Iterable;

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    .line 7
    iput p2, p0, Ltg/a;->b:F

    .line 8
    invoke-static {p1}, Lio/grpc/netty/shaded/io/netty/util/internal/o;->d(I)I

    move-result p1

    add-int/lit8 p2, p1, -0x1

    .line 9
    iput p2, p0, Ltg/a;->f:I

    .line 10
    new-array p2, p1, [C

    iput-object p2, p0, Ltg/a;->c:[C

    .line 11
    new-array p2, p1, [Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Ltg/a;->d:[Ljava/lang/Object;

    .line 13
    invoke-direct {p0, p1}, Ltg/a;->h(I)I

    move-result p1

    iput p1, p0, Ltg/a;->a:I

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "loadFactor must be > 0 and <= 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ltg/a;->w(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Ltg/a;)I
    .locals 0

    iget p0, p0, Ltg/a;->e:I

    return p0
.end method

.method static synthetic c(Ltg/a;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Ltg/a;->h:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic d(Ltg/a;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ltg/a;->d:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic e(Ltg/a;I)Z
    .locals 0

    invoke-direct {p0, p1}, Ltg/a;->u(I)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Ltg/a;)[C
    .locals 0

    iget-object p0, p0, Ltg/a;->c:[C

    return-object p0
.end method

.method static synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ltg/a;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private h(I)I
    .locals 2

    add-int/lit8 v0, p1, -0x1

    int-to-float p1, p1

    iget v1, p0, Ltg/a;->b:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private j()V
    .locals 3

    .line 1
    iget v0, p0, Ltg/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltg/a;->e:I

    .line 2
    iget v1, p0, Ltg/a;->a:I

    if-le v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Ltg/a;->c:[C

    array-length v1, v0

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 4
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Ltg/a;->s(I)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max capacity reached at size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ltg/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static k(C)I
    .locals 0

    return p0
.end method

.method private l(C)I
    .locals 1

    invoke-static {p1}, Ltg/a;->k(C)I

    move-result p1

    iget v0, p0, Ltg/a;->f:I

    and-int/2addr p1, v0

    return p1
.end method

.method private m(C)I
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Ltg/a;->l(C)I

    move-result v0

    move v1, v0

    .line 2
    :cond_0
    iget-object v2, p0, Ltg/a;->d:[Ljava/lang/Object;

    aget-object v2, v2, v1

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    .line 3
    :cond_1
    iget-object v2, p0, Ltg/a;->c:[C

    aget-char v2, v2, v1

    if-ne p1, v2, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-direct {p0, v1}, Ltg/a;->p(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return v3
.end method

.method private o(Ljava/lang/Object;)C
    .locals 0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    return p1
.end method

.method private p(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Ltg/a;->f:I

    and-int/2addr p1, v0

    return p1
.end method

.method private s(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Ltg/a;->c:[C

    .line 2
    iget-object v1, p0, Ltg/a;->d:[Ljava/lang/Object;

    .line 3
    new-array v2, p1, [C

    iput-object v2, p0, Ltg/a;->c:[C

    .line 4
    new-array v2, p1, [Ljava/lang/Object;

    .line 5
    iput-object v2, p0, Ltg/a;->d:[Ljava/lang/Object;

    .line 6
    invoke-direct {p0, p1}, Ltg/a;->h(I)I

    move-result v2

    iput v2, p0, Ltg/a;->a:I

    add-int/lit8 p1, p1, -0x1

    .line 7
    iput p1, p0, Ltg/a;->f:I

    const/4 p1, 0x0

    .line 8
    :goto_0
    array-length v2, v1

    if-ge p1, v2, :cond_2

    .line 9
    aget-object v2, v1, p1

    if-eqz v2, :cond_1

    .line 10
    aget-char v3, v0, p1

    .line 11
    invoke-direct {p0, v3}, Ltg/a;->l(C)I

    move-result v4

    .line 12
    :goto_1
    iget-object v5, p0, Ltg/a;->d:[Ljava/lang/Object;

    aget-object v6, v5, v4

    if-nez v6, :cond_0

    .line 13
    iget-object v6, p0, Ltg/a;->c:[C

    aput-char v3, v6, v4

    .line 14
    aput-object v2, v5, v4

    goto :goto_2

    .line 15
    :cond_0
    invoke-direct {p0, v4}, Ltg/a;->p(I)I

    move-result v4

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private u(I)Z
    .locals 8

    .line 1
    iget v0, p0, Ltg/a;->e:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ltg/a;->e:I

    .line 2
    iget-object v0, p0, Ltg/a;->c:[C

    const/4 v2, 0x0

    aput-char v2, v0, p1

    .line 3
    iget-object v0, p0, Ltg/a;->d:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v0, p1

    .line 4
    invoke-direct {p0, p1}, Ltg/a;->p(I)I

    move-result v0

    .line 5
    iget-object v4, p0, Ltg/a;->d:[Ljava/lang/Object;

    aget-object v4, v4, v0

    move v5, p1

    :goto_0
    if-eqz v4, :cond_3

    .line 6
    iget-object v6, p0, Ltg/a;->c:[C

    aget-char v6, v6, v0

    .line 7
    invoke-direct {p0, v6}, Ltg/a;->l(C)I

    move-result v7

    if-ge v0, v7, :cond_0

    if-le v7, v5, :cond_1

    if-le v5, v0, :cond_1

    :cond_0
    if-gt v7, v5, :cond_2

    if-gt v5, v0, :cond_2

    .line 8
    :cond_1
    iget-object v7, p0, Ltg/a;->c:[C

    aput-char v6, v7, v5

    .line 9
    iget-object v6, p0, Ltg/a;->d:[Ljava/lang/Object;

    aput-object v4, v6, v5

    .line 10
    aput-char v2, v7, v0

    .line 11
    aput-object v3, v6, v0

    move v5, v0

    .line 12
    :cond_2
    iget-object v4, p0, Ltg/a;->d:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Ltg/a;->p(I)I

    move-result v0

    aget-object v4, v4, v0

    goto :goto_0

    :cond_3
    if-eq v5, p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    sget-object v0, Ltg/a;->j:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method private static w(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-nez p0, :cond_0

    sget-object p0, Ltg/a;->j:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltg/a;->c:[C

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 2
    iget-object v0, p0, Ltg/a;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iput v1, p0, Ltg/a;->e:I

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Ltg/a;->o(Ljava/lang/Object;)C

    move-result p1

    invoke-virtual {p0, p1}, Ltg/a;->i(C)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Ltg/a;->w(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Ltg/a;->d:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public entries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ltg/b$a<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Ltg/a;->i:Ljava/lang/Iterable;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Character;",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Ltg/a;->h:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ltg/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ltg/b;

    .line 3
    iget v1, p0, Ltg/a;->e:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Ltg/a;->d:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 5
    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    .line 6
    iget-object v4, p0, Ltg/a;->c:[C

    aget-char v4, v4, v1

    .line 7
    invoke-interface {p1, v4}, Ltg/b;->u0(C)Ljava/lang/Object;

    move-result-object v4

    .line 8
    sget-object v5, Ltg/a;->j:Ljava/lang/Object;

    if-ne v3, v5, :cond_3

    if-eqz v4, :cond_4

    return v2

    .line 9
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ltg/a;->o(Ljava/lang/Object;)C

    move-result p1

    invoke-virtual {p0, p1}, Ltg/a;->u0(C)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Ltg/a;->e:I

    .line 2
    iget-object v1, p0, Ltg/a;->c:[C

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-char v4, v1, v3

    .line 3
    invoke-static {v4}, Ltg/a;->k(C)I

    move-result v4

    xor-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public i(C)Z
    .locals 0

    invoke-direct {p0, p1}, Ltg/a;->m(C)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Ltg/a;->e:I

    if-nez v0, :cond_0

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
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ltg/a;->g:Ljava/util/Set;

    return-object v0
.end method

.method protected n(C)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1, p2}, Ltg/a;->r(Ljava/lang/Character;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Character;",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ltg/a;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Ltg/a;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p1, Ltg/a;->d:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 4
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p1, Ltg/a;->c:[C

    aget-char v2, v2, v0

    invoke-virtual {p0, v2, v1}, Ltg/a;->q(CLjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ltg/a;->r(Ljava/lang/Character;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public q(CLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CTV;)TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ltg/a;->l(C)I

    move-result v0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Ltg/a;->d:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    .line 3
    iget-object v0, p0, Ltg/a;->c:[C

    aput-char p1, v0, v1

    .line 4
    invoke-static {p2}, Ltg/a;->w(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v2, v1

    .line 5
    invoke-direct {p0}, Ltg/a;->j()V

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    iget-object v3, p0, Ltg/a;->c:[C

    aget-char v3, v3, v1

    if-ne v3, p1, :cond_1

    .line 7
    aget-object p1, v2, v1

    .line 8
    invoke-static {p2}, Ltg/a;->w(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v2, v1

    .line 9
    invoke-static {p1}, Ltg/a;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    invoke-direct {p0, v1}, Ltg/a;->p(I)I

    move-result v1

    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unable to insert"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Ljava/lang/Character;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Character;",
            "TV;)TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ltg/a;->o(Ljava/lang/Object;)C

    move-result p1

    invoke-virtual {p0, p1, p2}, Ltg/a;->q(CLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ltg/a;->o(Ljava/lang/Object;)C

    move-result p1

    invoke-virtual {p0, p1}, Ltg/a;->t(C)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Ltg/a;->e:I

    return v0
.end method

.method public t(C)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ltg/a;->m(C)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Ltg/a;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 3
    invoke-direct {p0, p1}, Ltg/a;->u(I)Z

    .line 4
    invoke-static {v0}, Ltg/a;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ltg/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{}"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Ltg/a;->e:I

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget-object v4, p0, Ltg/a;->d:[Ljava/lang/Object;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 5
    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    if-nez v2, :cond_1

    const-string v2, ", "

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    iget-object v2, p0, Ltg/a;->c:[C

    aget-char v2, v2, v3

    invoke-virtual {p0, v2}, Ltg/a;->n(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v4, p0, :cond_2

    const-string v2, "(this Map)"

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {v4}, Ltg/a;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/16 v1, 0x7d

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0(C)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)TV;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ltg/a;->m(C)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ltg/a;->d:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Ltg/a;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
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

    new-instance v0, Ltg/a$b;

    invoke-direct {v0, p0}, Ltg/a$b;-><init>(Ltg/a;)V

    return-object v0
.end method
