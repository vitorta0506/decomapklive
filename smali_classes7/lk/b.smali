.class public abstract Llk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llk/b$b;,
        Llk/b$c;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:Ljava/lang/Object;

.field private static g:[Llk/b$b;

.field private static h:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Llk/b;->a:[B

    const/16 v0, 0xe

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Llk/b;->b:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Llk/b;->c:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Llk/b;->d:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Llk/b;->e:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llk/b;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Llk/b;->g:[Llk/b$b;

    sput-object v0, Llk/b;->h:[I

    return-void

    :array_0
    .array-data 1
        0x53t
        0x69t
        0x67t
        0x45t
        0x64t
        0x34t
        0x34t
        0x38t
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x54a7bb0d
        0x2378c292
        -0x723a70ab
        0x216cc272
        -0x5129c970
        -0x3bb124b7
        0x7cca23e9
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
    .end array-data

    :array_3
    .array-data 4
        0x70cc05e
        0x26a82bc
        0x938e26
        0x80e18b0
        0x511433b
        0xf72ab66
        0x412ae1a
        0xa3d3a46
        0xa6de324
        0xf1767e
        0x4657047
        0x36da9e1
        0x5a622bf
        0xed221d1
        0x66bed0d
        0x4f1970c
    .end array-data

    :array_4
    .array-data 4
        0x230fa14
        0x8795bf
        0x7c8ad98
        0x132c4ed
        0x9c4fdbd
        0x1ce67c3
        0x73ad3ff
        0x5a0c2d
        0x7789c1e
        0xa398408
        0xa73736c
        0xc7624be
        0x3756c9
        0x2488762
        0x16eb6bc
        0x693f467
    .end array-data
.end method

.method private static a([I[I)I
    .locals 3

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v0

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v1

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v2

    invoke-static {p0, v1}, Lkk/d;->x([I[I)V

    invoke-static {p1, v2}, Lkk/d;->x([I[I)V

    invoke-static {v1, v2, v0}, Lkk/d;->t([I[I[I)V

    invoke-static {v1, v2, v1}, Lkk/d;->a([I[I[I)V

    const p0, 0x98a9

    invoke-static {v0, p0, v0}, Lkk/d;->s([II[I)V

    invoke-static {v0}, Lkk/d;->z([I)V

    invoke-static {v0, v1, v0}, Lkk/d;->a([I[I[I)V

    invoke-static {v0}, Lkk/d;->u([I)V

    invoke-static {v0}, Lkk/d;->r([I)I

    move-result p0

    return p0
.end method

.method private static b([I[I[I)I
    .locals 4

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v0

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v1

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v2

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v3

    invoke-static {p0, v1}, Lkk/d;->x([I[I)V

    invoke-static {p1, v2}, Lkk/d;->x([I[I)V

    invoke-static {p2, v3}, Lkk/d;->x([I[I)V

    invoke-static {v1, v2, v0}, Lkk/d;->t([I[I[I)V

    invoke-static {v1, v2, v1}, Lkk/d;->a([I[I[I)V

    invoke-static {v1, v3, v1}, Lkk/d;->t([I[I[I)V

    invoke-static {v3, v3}, Lkk/d;->x([I[I)V

    const p0, 0x98a9

    invoke-static {v0, p0, v0}, Lkk/d;->s([II[I)V

    invoke-static {v0, v3, v0}, Lkk/d;->y([I[I[I)V

    invoke-static {v0, v1, v0}, Lkk/d;->a([I[I[I)V

    invoke-static {v0}, Lkk/d;->u([I)V

    invoke-static {v0}, Lkk/d;->r([I)I

    move-result p0

    return p0
.end method

.method private static c()Lorg/bouncycastle/crypto/i;
    .locals 2

    new-instance v0, Lrj/i;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lrj/i;-><init>(I)V

    return-object v0
.end method

.method private static d([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static e([BI[III)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    invoke-static {p0, v2}, Llk/b;->d([BI)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static f([BI[I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xe

    invoke-static {p0, p1, p2, v0, v1}, Llk/b;->e([BI[III)V

    return-void
.end method

.method private static g(Llk/b$b;[BI)I
    .locals 3

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v0

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v1

    iget-object v2, p0, Llk/b$b;->c:[I

    invoke-static {v2, v1}, Lkk/d;->p([I[I)V

    iget-object v2, p0, Llk/b$b;->a:[I

    invoke-static {v2, v1, v0}, Lkk/d;->t([I[I[I)V

    iget-object p0, p0, Llk/b$b;->b:[I

    invoke-static {p0, v1, v1}, Lkk/d;->t([I[I[I)V

    invoke-static {v0}, Lkk/d;->u([I)V

    invoke-static {v1}, Lkk/d;->u([I)V

    invoke-static {v0, v1}, Llk/b;->a([I[I)I

    move-result p0

    invoke-static {v1, p1, p2}, Lkk/d;->j([I[BI)V

    add-int/lit8 p2, p2, 0x39

    add-int/lit8 p2, p2, -0x1

    const/4 v1, 0x0

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    return p0
.end method

.method public static h([BI[BI)V
    .locals 4

    invoke-static {}, Llk/b;->c()Lorg/bouncycastle/crypto/i;

    move-result-object v0

    const/16 v1, 0x72

    new-array v2, v1, [B

    const/16 v3, 0x39

    invoke-interface {v0, p0, p1, v3}, Lorg/bouncycastle/crypto/e;->c([BII)V

    const/4 p0, 0x0

    invoke-interface {v0, v2, p0, v1}, Lorg/bouncycastle/crypto/i;->e([BII)I

    new-array p1, v3, [B

    invoke-static {v2, p0, p1}, Llk/b;->s([BI[B)V

    invoke-static {p1, p2, p3}, Llk/b;->u([B[BI)V

    return-void
.end method

.method private static i(Llk/b$c;Llk/b$b;)V
    .locals 9

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v0

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v1

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v2

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v3

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v4

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v5

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v6

    iget-object v7, p1, Llk/b$b;->c:[I

    invoke-static {v7, v0}, Lkk/d;->x([I[I)V

    iget-object v7, p0, Llk/b$c;->a:[I

    iget-object v8, p1, Llk/b$b;->a:[I

    invoke-static {v7, v8, v1}, Lkk/d;->t([I[I[I)V

    iget-object v7, p0, Llk/b$c;->b:[I

    iget-object v8, p1, Llk/b$b;->b:[I

    invoke-static {v7, v8, v2}, Lkk/d;->t([I[I[I)V

    invoke-static {v1, v2, v3}, Lkk/d;->t([I[I[I)V

    const v7, 0x98a9

    invoke-static {v3, v7, v3}, Lkk/d;->s([II[I)V

    invoke-static {v0, v3, v4}, Lkk/d;->a([I[I[I)V

    invoke-static {v0, v3, v5}, Lkk/d;->y([I[I[I)V

    iget-object v7, p0, Llk/b$c;->a:[I

    iget-object p0, p0, Llk/b$c;->b:[I

    invoke-static {v7, p0, v0}, Lkk/d;->a([I[I[I)V

    iget-object p0, p1, Llk/b$b;->a:[I

    iget-object v7, p1, Llk/b$b;->b:[I

    invoke-static {p0, v7, v3}, Lkk/d;->a([I[I[I)V

    invoke-static {v0, v3, v6}, Lkk/d;->t([I[I[I)V

    invoke-static {v2, v1, v0}, Lkk/d;->a([I[I[I)V

    invoke-static {v2, v1, v3}, Lkk/d;->y([I[I[I)V

    invoke-static {v0}, Lkk/d;->b([I)V

    invoke-static {v6, v0, v6}, Lkk/d;->y([I[I[I)V

    iget-object p0, p1, Llk/b$b;->c:[I

    invoke-static {v6, p0, v6}, Lkk/d;->t([I[I[I)V

    iget-object p0, p1, Llk/b$b;->c:[I

    invoke-static {v3, p0, v3}, Lkk/d;->t([I[I[I)V

    iget-object p0, p1, Llk/b$b;->a:[I

    invoke-static {v4, v6, p0}, Lkk/d;->t([I[I[I)V

    iget-object p0, p1, Llk/b$b;->b:[I

    invoke-static {v3, v5, p0}, Lkk/d;->t([I[I[I)V

    iget-object p0, p1, Llk/b$b;->c:[I

    invoke-static {v4, v5, p0}, Lkk/d;->t([I[I[I)V

    return-void
.end method

.method private static j(ZLlk/b$b;Llk/b$b;)V
    .locals 13

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v0

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v1

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v2

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v3

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v4

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v5

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v6

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v7

    if-eqz p0, :cond_0

    iget-object p0, p1, Llk/b$b;->b:[I

    iget-object v8, p1, Llk/b$b;->a:[I

    invoke-static {p0, v8, v7}, Lkk/d;->y([I[I[I)V

    move-object v10, v1

    move-object v9, v4

    move-object v8, v5

    move-object p0, v6

    goto :goto_0

    :cond_0
    iget-object p0, p1, Llk/b$b;->b:[I

    iget-object v8, p1, Llk/b$b;->a:[I

    invoke-static {p0, v8, v7}, Lkk/d;->a([I[I[I)V

    move-object v9, v1

    move-object v10, v4

    move-object p0, v5

    move-object v8, v6

    :goto_0
    iget-object v11, p1, Llk/b$b;->c:[I

    iget-object v12, p2, Llk/b$b;->c:[I

    invoke-static {v11, v12, v0}, Lkk/d;->t([I[I[I)V

    invoke-static {v0, v1}, Lkk/d;->x([I[I)V

    iget-object v11, p1, Llk/b$b;->a:[I

    iget-object v12, p2, Llk/b$b;->a:[I

    invoke-static {v11, v12, v2}, Lkk/d;->t([I[I[I)V

    iget-object p1, p1, Llk/b$b;->b:[I

    iget-object v11, p2, Llk/b$b;->b:[I

    invoke-static {p1, v11, v3}, Lkk/d;->t([I[I[I)V

    invoke-static {v2, v3, v4}, Lkk/d;->t([I[I[I)V

    const p1, 0x98a9

    invoke-static {v4, p1, v4}, Lkk/d;->s([II[I)V

    invoke-static {v1, v4, p0}, Lkk/d;->a([I[I[I)V

    invoke-static {v1, v4, v8}, Lkk/d;->y([I[I[I)V

    iget-object p0, p2, Llk/b$b;->a:[I

    iget-object p1, p2, Llk/b$b;->b:[I

    invoke-static {p0, p1, v4}, Lkk/d;->a([I[I[I)V

    invoke-static {v7, v4, v7}, Lkk/d;->t([I[I[I)V

    invoke-static {v3, v2, v9}, Lkk/d;->a([I[I[I)V

    invoke-static {v3, v2, v10}, Lkk/d;->y([I[I[I)V

    invoke-static {v9}, Lkk/d;->b([I)V

    invoke-static {v7, v1, v7}, Lkk/d;->y([I[I[I)V

    invoke-static {v7, v0, v7}, Lkk/d;->t([I[I[I)V

    invoke-static {v4, v0, v4}, Lkk/d;->t([I[I[I)V

    iget-object p0, p2, Llk/b$b;->a:[I

    invoke-static {v5, v7, p0}, Lkk/d;->t([I[I[I)V

    iget-object p0, p2, Llk/b$b;->b:[I

    invoke-static {v4, v6, p0}, Lkk/d;->t([I[I[I)V

    iget-object p0, p2, Llk/b$b;->c:[I

    invoke-static {v5, v6, p0}, Lkk/d;->t([I[I[I)V

    return-void
.end method

.method private static k(Llk/b$b;)Llk/b$b;
    .locals 2

    new-instance v0, Llk/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llk/b$b;-><init>(Llk/b$a;)V

    invoke-static {p0, v0}, Llk/b;->l(Llk/b$b;Llk/b$b;)V

    return-object v0
.end method

.method private static l(Llk/b$b;Llk/b$b;)V
    .locals 3

    iget-object v0, p0, Llk/b$b;->a:[I

    iget-object v1, p1, Llk/b$b;->a:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkk/d;->e([II[II)V

    iget-object v0, p0, Llk/b$b;->b:[I

    iget-object v1, p1, Llk/b$b;->b:[I

    invoke-static {v0, v2, v1, v2}, Lkk/d;->e([II[II)V

    iget-object p0, p0, Llk/b$b;->c:[I

    iget-object p1, p1, Llk/b$b;->c:[I

    invoke-static {p0, v2, p1, v2}, Lkk/d;->e([II[II)V

    return-void
.end method

.method private static m(Llk/b$b;)V
    .locals 8

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v0

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v1

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v2

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v3

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v4

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v5

    iget-object v6, p0, Llk/b$b;->a:[I

    iget-object v7, p0, Llk/b$b;->b:[I

    invoke-static {v6, v7, v0}, Lkk/d;->a([I[I[I)V

    invoke-static {v0, v0}, Lkk/d;->x([I[I)V

    iget-object v6, p0, Llk/b$b;->a:[I

    invoke-static {v6, v1}, Lkk/d;->x([I[I)V

    iget-object v6, p0, Llk/b$b;->b:[I

    invoke-static {v6, v2}, Lkk/d;->x([I[I)V

    invoke-static {v1, v2, v3}, Lkk/d;->a([I[I[I)V

    invoke-static {v3}, Lkk/d;->b([I)V

    iget-object v6, p0, Llk/b$b;->c:[I

    invoke-static {v6, v4}, Lkk/d;->x([I[I)V

    invoke-static {v4, v4, v4}, Lkk/d;->a([I[I[I)V

    invoke-static {v4}, Lkk/d;->b([I)V

    invoke-static {v3, v4, v5}, Lkk/d;->y([I[I[I)V

    invoke-static {v0, v3, v0}, Lkk/d;->y([I[I[I)V

    invoke-static {v1, v2, v1}, Lkk/d;->y([I[I[I)V

    iget-object v2, p0, Llk/b$b;->a:[I

    invoke-static {v0, v5, v2}, Lkk/d;->t([I[I[I)V

    iget-object v0, p0, Llk/b$b;->b:[I

    invoke-static {v3, v1, v0}, Lkk/d;->t([I[I[I)V

    iget-object p0, p0, Llk/b$b;->c:[I

    invoke-static {v3, v5, p0}, Lkk/d;->t([I[I[I)V

    return-void
.end method

.method private static n(Llk/b$b;)V
    .locals 0

    iget-object p0, p0, Llk/b$b;->c:[I

    invoke-static {p0}, Lkk/d;->v([I)V

    return-void
.end method

.method private static o(IILlk/b$c;)V
    .locals 6

    const/16 v0, 0x10

    mul-int/lit8 p0, p0, 0x10

    mul-int/lit8 p0, p0, 0x2

    mul-int/lit8 p0, p0, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    xor-int v3, v2, p1

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    sget-object v4, Llk/b;->h:[I

    iget-object v5, p2, Llk/b$c;->a:[I

    invoke-static {v3, v4, p0, v5, v1}, Lkk/d;->c(I[II[II)V

    add-int/2addr p0, v0

    sget-object v4, Llk/b;->h:[I

    iget-object v5, p2, Llk/b$c;->b:[I

    invoke-static {v3, v4, p0, v5, v1}, Lkk/d;->c(I[II[II)V

    add-int/2addr p0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static p(Llk/b$b;I)[Llk/b$b;
    .locals 4

    invoke-static {p0}, Llk/b;->k(Llk/b$b;)Llk/b$b;

    move-result-object v0

    invoke-static {v0}, Llk/b;->m(Llk/b$b;)V

    new-array v1, p1, [Llk/b$b;

    invoke-static {p0}, Llk/b;->k(Llk/b$b;)Llk/b$b;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    :goto_0
    if-ge p0, p1, :cond_0

    add-int/lit8 v3, p0, -0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Llk/b;->k(Llk/b$b;)Llk/b$b;

    move-result-object v3

    aput-object v3, v1, p0

    aget-object v3, v1, p0

    invoke-static {v2, v0, v3}, Llk/b;->j(ZLlk/b$b;Llk/b$b;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static q(Llk/b$b;)V
    .locals 1

    iget-object v0, p0, Llk/b$b;->a:[I

    invoke-static {v0}, Lkk/d;->A([I)V

    iget-object v0, p0, Llk/b$b;->b:[I

    invoke-static {v0}, Lkk/d;->v([I)V

    iget-object p0, p0, Llk/b$b;->c:[I

    invoke-static {p0}, Lkk/d;->v([I)V

    return-void
.end method

.method public static r()V
    .locals 16

    sget-object v0, Llk/b;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Llk/b;->h:[I

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Llk/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Llk/b$b;-><init>(Llk/b$a;)V

    sget-object v3, Llk/b;->d:[I

    iget-object v4, v1, Llk/b$b;->a:[I

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Lkk/d;->e([II[II)V

    sget-object v3, Llk/b;->e:[I

    iget-object v4, v1, Llk/b$b;->b:[I

    invoke-static {v3, v5, v4, v5}, Lkk/d;->e([II[II)V

    invoke-static {v1}, Llk/b;->n(Llk/b$b;)V

    const/16 v3, 0x20

    invoke-static {v1, v3}, Llk/b;->p(Llk/b$b;I)[Llk/b$b;

    move-result-object v3

    sput-object v3, Llk/b;->g:[Llk/b$b;

    const/16 v3, 0xa0

    invoke-static {v3}, Lkk/d;->g(I)[I

    move-result-object v3

    sput-object v3, Llk/b;->h:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x5

    if-ge v3, v6, :cond_8

    new-array v7, v6, [Llk/b$b;

    new-instance v8, Llk/b$b;

    invoke-direct {v8, v2}, Llk/b$b;-><init>(Llk/b$a;)V

    invoke-static {v8}, Llk/b;->q(Llk/b$b;)V

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x1

    if-ge v9, v6, :cond_2

    invoke-static {v10, v1, v8}, Llk/b;->j(ZLlk/b$b;Llk/b$b;)V

    invoke-static {v1}, Llk/b;->m(Llk/b$b;)V

    invoke-static {v1}, Llk/b;->k(Llk/b$b;)Llk/b$b;

    move-result-object v11

    aput-object v11, v7, v9

    add-int v11, v3, v9

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    :goto_2
    const/16 v11, 0x12

    if-ge v10, v11, :cond_1

    invoke-static {v1}, Llk/b;->m(Llk/b$b;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    new-array v9, v6, [Llk/b$b;

    aput-object v8, v9, v5

    const/4 v8, 0x0

    const/4 v11, 0x1

    :goto_3
    const/4 v12, 0x4

    if-ge v8, v12, :cond_4

    shl-int v12, v10, v8

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_3

    sub-int v14, v11, v12

    aget-object v14, v9, v14

    invoke-static {v14}, Llk/b;->k(Llk/b$b;)Llk/b$b;

    move-result-object v14

    aput-object v14, v9, v11

    aget-object v14, v7, v8

    aget-object v15, v9, v11

    invoke-static {v5, v14, v15}, Llk/b;->j(ZLlk/b$b;Llk/b$b;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v6}, Lkk/d;->g(I)[I

    move-result-object v7

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v8

    aget-object v11, v9, v5

    iget-object v11, v11, Llk/b$b;->c:[I

    invoke-static {v11, v5, v8, v5}, Lkk/d;->e([II[II)V

    invoke-static {v8, v5, v7, v5}, Lkk/d;->e([II[II)V

    const/4 v11, 0x0

    :goto_5
    add-int/2addr v11, v10

    if-ge v11, v6, :cond_5

    aget-object v12, v9, v11

    iget-object v12, v12, Llk/b$b;->c:[I

    invoke-static {v8, v12, v8}, Lkk/d;->t([I[I[I)V

    mul-int/lit8 v12, v11, 0x10

    invoke-static {v8, v5, v7, v12}, Lkk/d;->e([II[II)V

    goto :goto_5

    :cond_5
    invoke-static {v8, v8}, Lkk/d;->q([I[I)V

    add-int/lit8 v11, v11, -0x1

    invoke-static {}, Lkk/d;->f()[I

    move-result-object v10

    :goto_6
    if-lez v11, :cond_6

    add-int/lit8 v12, v11, -0x1

    mul-int/lit8 v13, v12, 0x10

    invoke-static {v7, v13, v10, v5}, Lkk/d;->e([II[II)V

    invoke-static {v10, v8, v10}, Lkk/d;->t([I[I[I)V

    mul-int/lit8 v13, v11, 0x10

    invoke-static {v10, v5, v7, v13}, Lkk/d;->e([II[II)V

    aget-object v11, v9, v11

    iget-object v11, v11, Llk/b$b;->c:[I

    invoke-static {v8, v11, v8}, Lkk/d;->t([I[I[I)V

    move v11, v12

    goto :goto_6

    :cond_6
    invoke-static {v8, v5, v7, v5}, Lkk/d;->e([II[II)V

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v6, :cond_7

    aget-object v10, v9, v8

    mul-int/lit8 v11, v8, 0x10

    iget-object v12, v10, Llk/b$b;->c:[I

    invoke-static {v7, v11, v12, v5}, Lkk/d;->e([II[II)V

    iget-object v11, v10, Llk/b$b;->a:[I

    iget-object v12, v10, Llk/b$b;->c:[I

    invoke-static {v11, v12, v11}, Lkk/d;->t([I[I[I)V

    iget-object v11, v10, Llk/b$b;->b:[I

    iget-object v12, v10, Llk/b$b;->c:[I

    invoke-static {v11, v12, v11}, Lkk/d;->t([I[I[I)V

    iget-object v11, v10, Llk/b$b;->a:[I

    sget-object v12, Llk/b;->h:[I

    invoke-static {v11, v5, v12, v4}, Lkk/d;->e([II[II)V

    add-int/lit8 v4, v4, 0x10

    iget-object v10, v10, Llk/b$b;->b:[I

    sget-object v11, Llk/b;->h:[I

    invoke-static {v10, v5, v11, v4}, Lkk/d;->e([II[II)V

    add-int/lit8 v4, v4, 0x10

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static s([BI[B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x38

    invoke-static {p0, p1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p0, p2, v0

    and-int/lit16 p0, p0, 0xfc

    int-to-byte p0, p0

    aput-byte p0, p2, v0

    const/16 p0, 0x37

    aget-byte p1, p2, p0

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, p2, p0

    aput-byte v0, p2, v1

    return-void
.end method

.method private static t([BLlk/b$b;)V
    .locals 12

    invoke-static {}, Llk/b;->r()V

    const/16 v0, 0xf

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Llk/b;->f([BI[I)V

    aget p0, v1, v2

    not-int p0, p0

    const/4 v3, 0x1

    and-int/2addr p0, v3

    sget-object v4, Llk/b;->c:[I

    const/16 v5, 0xe

    invoke-static {v5, p0, v1, v4, v1}, Lnk/n;->h(II[I[I[I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    aput p0, v1, v5

    invoke-static {v0, v1, v2}, Lnk/n;->E(I[II)I

    new-instance p0, Llk/b$c;

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Llk/b$c;-><init>(Llk/b$a;)V

    invoke-static {p1}, Llk/b;->q(Llk/b$b;)V

    const/16 v4, 0x11

    :goto_0
    move v6, v4

    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x5

    if-ge v5, v7, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v7, :cond_0

    ushr-int/lit8 v10, v6, 0x5

    aget v10, v1, v10

    and-int/lit8 v11, v6, 0x1f

    ushr-int/2addr v10, v11

    shl-int v11, v3, v8

    not-int v11, v11

    and-int/2addr v9, v11

    shl-int/2addr v10, v8

    xor-int/2addr v9, v10

    add-int/lit8 v6, v6, 0x12

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_0
    ushr-int/lit8 v7, v9, 0x4

    and-int/2addr v7, v3

    neg-int v8, v7

    xor-int/2addr v8, v9

    and-int/2addr v8, v0

    invoke-static {v5, v8, p0}, Llk/b;->o(IILlk/b$c;)V

    iget-object v8, p0, Llk/b$c;->a:[I

    invoke-static {v7, v8}, Lkk/d;->d(I[I)V

    invoke-static {p0, p1}, Llk/b;->i(Llk/b$c;Llk/b$b;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Llk/b;->m(Llk/b$b;)V

    goto :goto_0
.end method

.method private static u([B[BI)V
    .locals 2

    new-instance v0, Llk/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llk/b$b;-><init>(Llk/b$a;)V

    invoke-static {p0, v0}, Llk/b;->t([BLlk/b$b;)V

    invoke-static {v0, p1, p2}, Llk/b;->g(Llk/b$b;[BI)I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static v(Lkk/c$a;[BI[I[I)V
    .locals 1

    const-string v0, "This method is only for use by X448"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 p0, 0x39

    new-array p0, p0, [B

    invoke-static {p1, p2, p0}, Llk/b;->s([BI[B)V

    new-instance p1, Llk/b$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Llk/b$b;-><init>(Llk/b$a;)V

    invoke-static {p0, p1}, Llk/b;->t([BLlk/b$b;)V

    iget-object p0, p1, Llk/b$b;->a:[I

    iget-object p2, p1, Llk/b$b;->b:[I

    iget-object v0, p1, Llk/b$b;->c:[I

    invoke-static {p0, p2, v0}, Llk/b;->b([I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Llk/b$b;->a:[I

    const/4 p2, 0x0

    invoke-static {p0, p2, p3, p2}, Lkk/d;->e([II[II)V

    iget-object p0, p1, Llk/b$b;->b:[I

    invoke-static {p0, p2, p4, p2}, Lkk/d;->e([II[II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
