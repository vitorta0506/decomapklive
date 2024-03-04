.class abstract Lkg/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:I

.field protected final b:I

.field protected final c:I

.field protected final d:I

.field final e:I

.field f:I

.field g:I

.field h:I

.field private i:I

.field private final j:[[S

.field private final k:[I

.field private final l:[I

.field private final m:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lkg/q0;->a:I

    .line 3
    iput p2, p0, Lkg/q0;->b:I

    .line 4
    iput p3, p0, Lkg/q0;->c:I

    .line 5
    iput p4, p0, Lkg/q0;->d:I

    .line 6
    invoke-static {p3}, Lkg/b0;->n(I)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x4

    const/4 p3, 0x2

    shl-int/2addr p1, p3

    new-array p3, p3, [I

    const/4 p4, 0x7

    aput p4, p3, p2

    const/4 p2, 0x0

    aput p1, p3, p2

    .line 7
    const-class p1, S

    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[S

    iput-object p1, p0, Lkg/q0;->j:[[S

    .line 8
    invoke-direct {p0}, Lkg/q0;->k()I

    move-result p1

    iput p1, p0, Lkg/q0;->e:I

    .line 9
    new-array p1, p1, [I

    iput-object p1, p0, Lkg/q0;->l:[I

    .line 10
    iget p2, p0, Lkg/q0;->g:I

    new-array p2, p2, [I

    iput-object p2, p0, Lkg/q0;->k:[I

    .line 11
    invoke-direct {p0, p1, p2}, Lkg/q0;->b([I[I)V

    .line 12
    iget p1, p0, Lkg/q0;->i:I

    shr-int/lit8 p1, p1, 0x4

    new-array p1, p1, [I

    iput-object p1, p0, Lkg/q0;->m:[I

    .line 13
    invoke-direct {p0, p1}, Lkg/q0;->i([I)V

    return-void
.end method

.method private a(I)I
    .locals 2

    iget v0, p0, Lkg/q0;->d:I

    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, v0

    sub-int/2addr p1, v1

    :goto_0
    return p1
.end method

.method private b([I[I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lkg/q0;->e:I

    if-ge v0, v2, :cond_1

    .line 2
    iget-object v2, p0, Lkg/q0;->j:[[S

    aget-object v2, v2, v0

    const/4 v3, 0x1

    .line 3
    aget-short v4, v2, v3

    const/4 v5, 0x2

    .line 4
    aget-short v5, v2, v5

    const/4 v6, 0x3

    .line 5
    aget-short v6, v2, v6

    shl-int v4, v3, v4

    shl-int v5, v6, v5

    add-int/2addr v4, v5

    .line 6
    aput v4, p1, v0

    const/4 v5, 0x4

    .line 7
    aget-short v2, v2, v5

    if-ne v2, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 8
    aput v4, p2, v1

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static d(I)I
    .locals 3

    shl-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0}, Lkg/b0;->n(I)I

    move-result v0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, v1

    :goto_0
    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    add-int/2addr p0, v0

    not-int v0, v0

    and-int/2addr p0, v0

    return p0
.end method

.method private f(IZ)I
    .locals 5

    .line 1
    iget v0, p0, Lkg/q0;->b:I

    shl-int v0, p1, v0

    .line 2
    iget v1, p0, Lkg/q0;->c:I

    if-le v0, v1, :cond_0

    .line 3
    iget p1, p0, Lkg/q0;->g:I

    return p1

    :cond_0
    shl-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 4
    invoke-static {v1}, Lkg/b0;->n(I)I

    move-result v1

    .line 5
    iget v2, p0, Lkg/q0;->b:I

    add-int/lit8 v3, v2, 0x2

    if-ge v1, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    :goto_0
    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v1, v1, -0x1

    :goto_1
    const/4 v4, -0x1

    shl-int/2addr v4, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v4

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    add-int/2addr v3, v0

    if-eqz p2, :cond_3

    .line 6
    iget-object p2, p0, Lkg/q0;->k:[I

    aget p2, p2, v3

    shl-int/2addr p1, v2

    if-le p2, p1, :cond_3

    add-int/lit8 v3, v3, -0x1

    :cond_3
    return v3
.end method

.method private i([I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget v3, p0, Lkg/q0;->i:I

    if-gt v0, v3, :cond_1

    .line 2
    iget-object v3, p0, Lkg/q0;->j:[[S

    aget-object v3, v3, v1

    const/4 v4, 0x2

    aget-short v3, v3, v4

    add-int/lit8 v3, v3, -0x4

    const/4 v4, 0x1

    shl-int v3, v4, v3

    .line 3
    :goto_1
    iget v4, p0, Lkg/q0;->i:I

    if-gt v0, v4, :cond_0

    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_0

    add-int/lit8 v0, v2, 0x1

    .line 4
    aput v1, p1, v2

    add-int/lit8 v2, v0, 0x1

    shl-int/lit8 v2, v2, 0x4

    move v3, v4

    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j(IIII)I
    .locals 8

    .line 1
    iget v0, p0, Lkg/q0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p3, v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    shl-int v0, v2, v0

    shl-int v3, v2, p2

    shl-int v4, v2, p3

    mul-int v4, v4, p4

    add-int/2addr v3, v4

    .line 2
    div-int v4, v3, v0

    mul-int v4, v4, v0

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez p4, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    .line 3
    :cond_2
    invoke-static {p4}, Lkg/b0;->n(I)I

    move-result v3

    :goto_2
    shl-int v4, v2, v3

    if-ge v4, p4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    add-int/2addr v3, p3

    if-ne v3, p2, :cond_4

    add-int/lit8 v3, p2, 0x1

    goto :goto_4

    :cond_4
    move v3, p2

    :goto_4
    if-ne v3, p2, :cond_5

    const/4 v4, 0x1

    .line 4
    :cond_5
    iget v5, p0, Lkg/q0;->b:I

    const/4 v6, 0x2

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_6

    const/4 v5, 0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_5
    const/16 v7, 0xc

    if-lt v3, v7, :cond_8

    if-ne v3, v7, :cond_7

    if-nez v4, :cond_7

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    move v3, p3

    :goto_7
    const/4 v4, 0x7

    new-array v4, v4, [S

    int-to-short v7, p1

    aput-short v7, v4, v1

    int-to-short v1, p2

    aput-short v1, v4, v2

    int-to-short v1, p3

    aput-short v1, v4, v6

    const/4 v1, 0x3

    int-to-short v6, p4

    aput-short v6, v4, v1

    const/4 v1, 0x4

    aput-short v0, v4, v1

    const/4 v0, 0x5

    aput-short v5, v4, v0

    int-to-short v3, v3

    const/4 v5, 0x6

    aput-short v3, v4, v5

    .line 5
    iget-object v3, p0, Lkg/q0;->j:[[S

    aput-object v4, v3, p1

    shl-int p2, v2, p2

    shl-int p3, p4, p3

    add-int/2addr p2, p3

    aget-short p3, v4, v1

    if-ne p3, v2, :cond_9

    .line 6
    iget p3, p0, Lkg/q0;->g:I

    add-int/2addr p3, v2

    iput p3, p0, Lkg/q0;->g:I

    :cond_9
    aget-short p3, v4, v0

    if-ne p3, v2, :cond_a

    .line 7
    iget p3, p0, Lkg/q0;->f:I

    add-int/2addr p3, v2

    iput p3, p0, Lkg/q0;->f:I

    .line 8
    iput p1, p0, Lkg/q0;->h:I

    :cond_a
    aget-short p1, v4, v5

    if-eqz p1, :cond_b

    .line 9
    iput p2, p0, Lkg/q0;->i:I

    :cond_b
    return p2
.end method

.method private k()I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v4, v0, 0x1

    .line 1
    invoke-direct {p0, v1, v3, v3, v0}, Lkg/q0;->j(IIII)I

    move-result v0

    move v1, v2

    move v2, v0

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    const/4 v4, 0x4

    .line 2
    :goto_1
    iget v5, p0, Lkg/q0;->c:I

    if-ge v2, v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    if-gt v5, v3, :cond_1

    .line 3
    iget v6, p0, Lkg/q0;->c:I

    if-ge v2, v6, :cond_1

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v6, v5, 0x1

    .line 4
    invoke-direct {p0, v1, v0, v4, v5}, Lkg/q0;->j(IIII)I

    move-result v1

    move v5, v6

    move v7, v2

    move v2, v1

    move v1, v7

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method


# virtual methods
.method public c(I)I
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lkg/q0;->l:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1

    .line 2
    :cond_0
    iget v0, p0, Lkg/q0;->d:I

    if-lez v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lkg/q0;->a(I)I

    move-result p1

    .line 4
    :cond_1
    iget v0, p0, Lkg/q0;->i:I

    if-gt p1, v0, :cond_2

    .line 5
    iget-object v0, p0, Lkg/q0;->l:[I

    iget-object v1, p0, Lkg/q0;->m:[I

    add-int/lit8 p1, p1, -0x1

    shr-int/lit8 p1, p1, 0x4

    aget p1, v1, p1

    aget p1, v0, p1

    return p1

    .line 6
    :cond_2
    invoke-static {p1}, Lkg/q0;->d(I)I

    move-result p1

    return p1
.end method

.method public e(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkg/q0;->f(IZ)I

    move-result p1

    return p1
.end method

.method public g(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lkg/q0;->f(IZ)I

    move-result p1

    return p1
.end method

.method public h(I)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget v1, p0, Lkg/q0;->c:I

    if-le p1, v1, :cond_1

    .line 2
    iget p1, p0, Lkg/q0;->e:I

    return p1

    .line 3
    :cond_1
    iget v1, p0, Lkg/q0;->d:I

    if-lez v1, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lkg/q0;->a(I)I

    move-result p1

    .line 5
    :cond_2
    iget v1, p0, Lkg/q0;->i:I

    const/4 v2, 0x4

    if-gt p1, v1, :cond_3

    .line 6
    iget-object v0, p0, Lkg/q0;->m:[I

    add-int/lit8 p1, p1, -0x1

    shr-int/2addr p1, v2

    aget p1, v0, p1

    return p1

    :cond_3
    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, -0x1

    .line 7
    invoke-static {v1}, Lkg/b0;->n(I)I

    move-result v1

    const/4 v3, 0x7

    if-ge v1, v3, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v1, -0x6

    :goto_0
    shl-int/lit8 v0, v0, 0x2

    if-ge v1, v3, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v2, v1, -0x1

    :goto_1
    const/4 v1, -0x1

    shl-int/2addr v1, v2

    add-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    shr-int/2addr p1, v2

    and-int/lit8 p1, p1, 0x3

    add-int/2addr v0, p1

    return v0
.end method

.method public l(I)I
    .locals 1

    iget-object v0, p0, Lkg/q0;->l:[I

    aget p1, v0, p1

    return p1
.end method
