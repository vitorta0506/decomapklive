.class public abstract Llk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llk/a$b;,
        Llk/a$c;,
        Llk/a$d;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:Ljava/lang/Object;

.field private static j:[Llk/a$c;

.field private static k:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Llk/a;->a:[B

    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Llk/a;->b:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Llk/a;->c:[I

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Llk/a;->d:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Llk/a;->e:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Llk/a;->f:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_6

    sput-object v1, Llk/a;->g:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Llk/a;->h:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llk/a;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Llk/a;->j:[Llk/a$c;

    sput-object v0, Llk/a;->k:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x53t
        0x69t
        0x67t
        0x45t
        0x64t
        0x32t
        0x35t
        0x35t
        0x31t
        0x39t
        0x20t
        0x6et
        0x6ft
        0x20t
        0x45t
        0x64t
        0x32t
        0x35t
        0x35t
        0x31t
        0x39t
        0x20t
        0x63t
        0x6ft
        0x6ct
        0x6ct
        0x69t
        0x73t
        0x69t
        0x6ft
        0x6et
        0x73t
    .end array-data

    :array_1
    .array-data 4
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7fffffff
    .end array-data

    :array_2
    .array-data 4
        0x5cf5d3ed
        0x5812631a
        -0x5d08632a
        0x14def9de
        0x0
        0x0
        0x0
        0x10000000
    .end array-data

    :array_3
    .array-data 4
        0x325d51a
        0x18b5823
        0x7b2c95
        0x304a92d
        0xd2598e
        0x1d6dc5c
        0x1388c7f
        0x13fec0a
        0x29e6b72
        0x42d26d
    .end array-data

    :array_4
    .array-data 4
        0x2666658
        0x1999999
        0x666666
        0x3333333
        0xcccccc
        0x2666666
        0x1999999
        0x666666
        0x3333333
        0xcccccc
    .end array-data

    :array_5
    .array-data 4
        0x35978a3
        0x2d37284
        0x18ab75e
        0x26a0a0e
        0xe014
        0x379e898
        0x1d01e5d
        0x1e738cc
        0x3715b7f
        0xa406d9
    .end array-data

    :array_6
    .array-data 4
        0x2b2f159
        0x1a6e509
        0x1156ebd
        0xd4141d
        0x1c029
        0x2f3d130
        0x3a03cbb
        0x1ce7198
        0x2e2b6ff
        0x480db3
    .end array-data

    :array_7
    .array-data 4
        0x165e2b2
        0x34dca13
        0x2add7a
        0x1a8283b
        0x38052
        0x1e7a260
        0x3407977
        0x19ce331
        0x1c56dff
        0x901b67
    .end array-data
.end method

.method private static a([I[I)I
    .locals 3

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v0

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v1

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v2

    invoke-static {p0, v1}, Lkk/b;->y([I[I)V

    invoke-static {p1, v2}, Lkk/b;->y([I[I)V

    invoke-static {v1, v2, v0}, Lkk/b;->u([I[I[I)V

    invoke-static {v2, v1, v2}, Lkk/b;->z([I[I[I)V

    sget-object p0, Llk/a;->f:[I

    invoke-static {v0, p0, v0}, Lkk/b;->u([I[I[I)V

    invoke-static {v0}, Lkk/b;->b([I)V

    invoke-static {v0, v2, v0}, Lkk/b;->z([I[I[I)V

    invoke-static {v0}, Lkk/b;->v([I)V

    invoke-static {v0}, Lkk/b;->t([I)I

    move-result p0

    return p0
.end method

.method private static b([I[I[I)I
    .locals 4

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v0

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v1

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v2

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v3

    invoke-static {p0, v1}, Lkk/b;->y([I[I)V

    invoke-static {p1, v2}, Lkk/b;->y([I[I)V

    invoke-static {p2, v3}, Lkk/b;->y([I[I)V

    invoke-static {v1, v2, v0}, Lkk/b;->u([I[I[I)V

    invoke-static {v2, v1, v2}, Lkk/b;->z([I[I[I)V

    invoke-static {v2, v3, v2}, Lkk/b;->u([I[I[I)V

    invoke-static {v3, v3}, Lkk/b;->y([I[I)V

    sget-object p0, Llk/a;->f:[I

    invoke-static {v0, p0, v0}, Lkk/b;->u([I[I[I)V

    invoke-static {v0, v3, v0}, Lkk/b;->a([I[I[I)V

    invoke-static {v0, v2, v0}, Lkk/b;->z([I[I[I)V

    invoke-static {v0}, Lkk/b;->v([I)V

    invoke-static {v0}, Lkk/b;->t([I)I

    move-result p0

    return p0
.end method

.method private static c()Lorg/bouncycastle/crypto/e;
    .locals 1

    new-instance v0, Lrj/h;

    invoke-direct {v0}, Lrj/h;-><init>()V

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

    invoke-static {p0, v2}, Llk/a;->d([BI)I

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

    const/16 v1, 0x8

    invoke-static {p0, p1, p2, v0, v1}, Llk/a;->e([BI[III)V

    return-void
.end method

.method private static g(Llk/a$b;[BI)I
    .locals 3

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v0

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v1

    iget-object v2, p0, Llk/a$b;->c:[I

    invoke-static {v2, v1}, Lkk/b;->r([I[I)V

    iget-object v2, p0, Llk/a$b;->a:[I

    invoke-static {v2, v1, v0}, Lkk/b;->u([I[I[I)V

    iget-object p0, p0, Llk/a$b;->b:[I

    invoke-static {p0, v1, v1}, Lkk/b;->u([I[I[I)V

    invoke-static {v0}, Lkk/b;->v([I)V

    invoke-static {v1}, Lkk/b;->v([I)V

    invoke-static {v0, v1}, Llk/a;->a([I[I)I

    move-result p0

    invoke-static {v1, p1, p2}, Lkk/b;->m([I[BI)V

    add-int/lit8 p2, p2, 0x20

    add-int/lit8 p2, p2, -0x1

    aget-byte v1, p1, p2

    const/4 v2, 0x0

    aget v0, v0, v2

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x7

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    return p0
.end method

.method public static h([BI[BI)V
    .locals 3

    invoke-static {}, Llk/a;->c()Lorg/bouncycastle/crypto/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/e;->d()I

    move-result v1

    new-array v1, v1, [B

    const/16 v2, 0x20

    invoke-interface {v0, p0, p1, v2}, Lorg/bouncycastle/crypto/e;->c([BII)V

    const/4 p0, 0x0

    invoke-interface {v0, v1, p0}, Lorg/bouncycastle/crypto/e;->a([BI)I

    new-array p1, v2, [B

    invoke-static {v1, p0, p1}, Llk/a;->v([BI[B)V

    invoke-static {p1, p2, p3}, Llk/a;->x([B[BI)V

    return-void
.end method

.method private static i(Llk/a$d;Llk/a$b;)V
    .locals 9

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v0

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v1

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v2

    iget-object v3, p1, Llk/a$b;->d:[I

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v4

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v5

    iget-object v6, p1, Llk/a$b;->e:[I

    iget-object v7, p1, Llk/a$b;->b:[I

    iget-object v8, p1, Llk/a$b;->a:[I

    invoke-static {v7, v8, v1, v0}, Lkk/b;->c([I[I[I[I)V

    iget-object v7, p0, Llk/a$d;->b:[I

    invoke-static {v0, v7, v0}, Lkk/b;->u([I[I[I)V

    iget-object v7, p0, Llk/a$d;->a:[I

    invoke-static {v1, v7, v1}, Lkk/b;->u([I[I[I)V

    iget-object v7, p1, Llk/a$b;->d:[I

    iget-object v8, p1, Llk/a$b;->e:[I

    invoke-static {v7, v8, v2}, Lkk/b;->u([I[I[I)V

    iget-object p0, p0, Llk/a$d;->c:[I

    invoke-static {v2, p0, v2}, Lkk/b;->u([I[I[I)V

    invoke-static {v1, v0, v6, v3}, Lkk/b;->c([I[I[I[I)V

    iget-object p0, p1, Llk/a$b;->c:[I

    invoke-static {p0, v2, v5, v4}, Lkk/b;->c([I[I[I[I)V

    invoke-static {v5}, Lkk/b;->d([I)V

    iget-object p0, p1, Llk/a$b;->a:[I

    invoke-static {v3, v4, p0}, Lkk/b;->u([I[I[I)V

    iget-object p0, p1, Llk/a$b;->b:[I

    invoke-static {v5, v6, p0}, Lkk/b;->u([I[I[I)V

    iget-object p0, p1, Llk/a$b;->c:[I

    invoke-static {v4, v5, p0}, Lkk/b;->u([I[I[I)V

    return-void
.end method

.method private static j(ZLlk/a$c;Llk/a$c;Llk/a$c;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v3

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v4

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v5

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v6

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v7

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v8

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v9

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v10

    if-eqz p0, :cond_0

    move-object v11, v5

    move-object v12, v6

    move-object v13, v8

    move-object v14, v9

    goto :goto_0

    :cond_0
    move-object v12, v5

    move-object v11, v6

    move-object v14, v8

    move-object v13, v9

    :goto_0
    iget-object v15, v0, Llk/a$c;->b:[I

    move-object/from16 v16, v9

    iget-object v9, v0, Llk/a$c;->a:[I

    invoke-static {v15, v9, v4, v3}, Lkk/b;->c([I[I[I[I)V

    iget-object v9, v1, Llk/a$c;->b:[I

    iget-object v15, v1, Llk/a$c;->a:[I

    invoke-static {v9, v15, v11, v12}, Lkk/b;->c([I[I[I[I)V

    invoke-static {v3, v5, v3}, Lkk/b;->u([I[I[I)V

    invoke-static {v4, v6, v4}, Lkk/b;->u([I[I[I)V

    iget-object v9, v0, Llk/a$c;->d:[I

    iget-object v11, v1, Llk/a$c;->d:[I

    invoke-static {v9, v11, v5}, Lkk/b;->u([I[I[I)V

    sget-object v9, Llk/a;->g:[I

    invoke-static {v5, v9, v5}, Lkk/b;->u([I[I[I)V

    iget-object v0, v0, Llk/a$c;->c:[I

    iget-object v1, v1, Llk/a$c;->c:[I

    invoke-static {v0, v1, v6}, Lkk/b;->u([I[I[I)V

    invoke-static {v6, v6, v6}, Lkk/b;->a([I[I[I)V

    invoke-static {v4, v3, v10, v7}, Lkk/b;->c([I[I[I[I)V

    invoke-static {v6, v5, v13, v14}, Lkk/b;->c([I[I[I[I)V

    invoke-static {v13}, Lkk/b;->d([I)V

    iget-object v0, v2, Llk/a$c;->a:[I

    invoke-static {v7, v8, v0}, Lkk/b;->u([I[I[I)V

    iget-object v0, v2, Llk/a$c;->b:[I

    move-object/from16 v1, v16

    invoke-static {v1, v10, v0}, Lkk/b;->u([I[I[I)V

    iget-object v0, v2, Llk/a$c;->c:[I

    invoke-static {v8, v1, v0}, Lkk/b;->u([I[I[I)V

    iget-object v0, v2, Llk/a$c;->d:[I

    invoke-static {v7, v10, v0}, Lkk/b;->u([I[I[I)V

    return-void
.end method

.method private static k(Llk/a$b;)Llk/a$c;
    .locals 4

    new-instance v0, Llk/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llk/a$c;-><init>(Llk/a$a;)V

    iget-object v1, p0, Llk/a$b;->a:[I

    iget-object v2, v0, Llk/a$c;->a:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lkk/b;->g([II[II)V

    iget-object v1, p0, Llk/a$b;->b:[I

    iget-object v2, v0, Llk/a$c;->b:[I

    invoke-static {v1, v3, v2, v3}, Lkk/b;->g([II[II)V

    iget-object v1, p0, Llk/a$b;->c:[I

    iget-object v2, v0, Llk/a$c;->c:[I

    invoke-static {v1, v3, v2, v3}, Lkk/b;->g([II[II)V

    iget-object v1, p0, Llk/a$b;->d:[I

    iget-object p0, p0, Llk/a$b;->e:[I

    iget-object v2, v0, Llk/a$c;->d:[I

    invoke-static {v1, p0, v2}, Lkk/b;->u([I[I[I)V

    return-object v0
.end method

.method private static l(Llk/a$c;)Llk/a$c;
    .locals 2

    new-instance v0, Llk/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llk/a$c;-><init>(Llk/a$a;)V

    invoke-static {p0, v0}, Llk/a;->m(Llk/a$c;Llk/a$c;)V

    return-object v0
.end method

.method private static m(Llk/a$c;Llk/a$c;)V
    .locals 3

    iget-object v0, p0, Llk/a$c;->a:[I

    iget-object v1, p1, Llk/a$c;->a:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkk/b;->g([II[II)V

    iget-object v0, p0, Llk/a$c;->b:[I

    iget-object v1, p1, Llk/a$c;->b:[I

    invoke-static {v0, v2, v1, v2}, Lkk/b;->g([II[II)V

    iget-object v0, p0, Llk/a$c;->c:[I

    iget-object v1, p1, Llk/a$c;->c:[I

    invoke-static {v0, v2, v1, v2}, Lkk/b;->g([II[II)V

    iget-object p0, p0, Llk/a$c;->d:[I

    iget-object p1, p1, Llk/a$c;->d:[I

    invoke-static {p0, v2, p1, v2}, Lkk/b;->g([II[II)V

    return-void
.end method

.method private static n(Llk/a$b;)V
    .locals 8

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v0

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v1

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v2

    iget-object v3, p0, Llk/a$b;->d:[I

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v4

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v5

    iget-object v6, p0, Llk/a$b;->e:[I

    iget-object v7, p0, Llk/a$b;->a:[I

    invoke-static {v7, v0}, Lkk/b;->y([I[I)V

    iget-object v7, p0, Llk/a$b;->b:[I

    invoke-static {v7, v1}, Lkk/b;->y([I[I)V

    iget-object v7, p0, Llk/a$b;->c:[I

    invoke-static {v7, v2}, Lkk/b;->y([I[I)V

    invoke-static {v2, v2, v2}, Lkk/b;->a([I[I[I)V

    invoke-static {v0, v1, v6, v5}, Lkk/b;->c([I[I[I[I)V

    iget-object v0, p0, Llk/a$b;->a:[I

    iget-object v1, p0, Llk/a$b;->b:[I

    invoke-static {v0, v1, v3}, Lkk/b;->a([I[I[I)V

    invoke-static {v3, v3}, Lkk/b;->y([I[I)V

    invoke-static {v6, v3, v3}, Lkk/b;->z([I[I[I)V

    invoke-static {v2, v5, v4}, Lkk/b;->a([I[I[I)V

    invoke-static {v4}, Lkk/b;->d([I)V

    iget-object v0, p0, Llk/a$b;->a:[I

    invoke-static {v3, v4, v0}, Lkk/b;->u([I[I[I)V

    iget-object v0, p0, Llk/a$b;->b:[I

    invoke-static {v5, v6, v0}, Lkk/b;->u([I[I[I)V

    iget-object p0, p0, Llk/a$b;->c:[I

    invoke-static {v4, v5, p0}, Lkk/b;->u([I[I[I)V

    return-void
.end method

.method private static o(Llk/a$b;)V
    .locals 3

    iget-object v0, p0, Llk/a$b;->c:[I

    invoke-static {v0}, Lkk/b;->w([I)V

    iget-object v0, p0, Llk/a$b;->a:[I

    iget-object v1, p0, Llk/a$b;->d:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkk/b;->g([II[II)V

    iget-object v0, p0, Llk/a$b;->b:[I

    iget-object p0, p0, Llk/a$b;->e:[I

    invoke-static {v0, v2, p0, v2}, Lkk/b;->g([II[II)V

    return-void
.end method

.method private static p(Llk/a$c;)V
    .locals 2

    iget-object v0, p0, Llk/a$c;->c:[I

    invoke-static {v0}, Lkk/b;->w([I)V

    iget-object v0, p0, Llk/a$c;->a:[I

    iget-object v1, p0, Llk/a$c;->b:[I

    iget-object p0, p0, Llk/a$c;->d:[I

    invoke-static {v0, v1, p0}, Lkk/b;->u([I[I[I)V

    return-void
.end method

.method private static q(IILlk/a$d;)V
    .locals 6

    const/16 v0, 0x8

    mul-int/lit8 p0, p0, 0x8

    mul-int/lit8 p0, p0, 0x3

    mul-int/lit8 p0, p0, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    xor-int v3, v2, p1

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    sget-object v4, Llk/a;->k:[I

    iget-object v5, p2, Llk/a$d;->a:[I

    invoke-static {v3, v4, p0, v5, v1}, Lkk/b;->e(I[II[II)V

    add-int/lit8 p0, p0, 0xa

    sget-object v4, Llk/a;->k:[I

    iget-object v5, p2, Llk/a$d;->b:[I

    invoke-static {v3, v4, p0, v5, v1}, Lkk/b;->e(I[II[II)V

    add-int/lit8 p0, p0, 0xa

    sget-object v4, Llk/a;->k:[I

    iget-object v5, p2, Llk/a$d;->c:[I

    invoke-static {v3, v4, p0, v5, v1}, Lkk/b;->e(I[II[II)V

    add-int/lit8 p0, p0, 0xa

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static r(Llk/a$c;I)[Llk/a$c;
    .locals 6

    new-instance v0, Llk/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llk/a$c;-><init>(Llk/a$a;)V

    const/4 v2, 0x0

    invoke-static {v2, p0, p0, v0}, Llk/a;->j(ZLlk/a$c;Llk/a$c;Llk/a$c;)V

    new-array v3, p1, [Llk/a$c;

    invoke-static {p0}, Llk/a;->l(Llk/a$c;)Llk/a$c;

    move-result-object p0

    aput-object p0, v3, v2

    const/4 p0, 0x1

    :goto_0
    if-ge p0, p1, :cond_0

    add-int/lit8 v4, p0, -0x1

    aget-object v4, v3, v4

    new-instance v5, Llk/a$c;

    invoke-direct {v5, v1}, Llk/a$c;-><init>(Llk/a$a;)V

    aput-object v5, v3, p0

    invoke-static {v2, v4, v0, v5}, Llk/a;->j(ZLlk/a$c;Llk/a$c;Llk/a$c;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private static s(Llk/a$b;)V
    .locals 1

    iget-object v0, p0, Llk/a$b;->a:[I

    invoke-static {v0}, Lkk/b;->A([I)V

    iget-object v0, p0, Llk/a$b;->b:[I

    invoke-static {v0}, Lkk/b;->w([I)V

    iget-object v0, p0, Llk/a$b;->c:[I

    invoke-static {v0}, Lkk/b;->w([I)V

    iget-object v0, p0, Llk/a$b;->d:[I

    invoke-static {v0}, Lkk/b;->A([I)V

    iget-object p0, p0, Llk/a$b;->e:[I

    invoke-static {p0}, Lkk/b;->w([I)V

    return-void
.end method

.method private static t(Llk/a$c;)V
    .locals 1

    iget-object v0, p0, Llk/a$c;->a:[I

    invoke-static {v0}, Lkk/b;->A([I)V

    iget-object v0, p0, Llk/a$c;->b:[I

    invoke-static {v0}, Lkk/b;->w([I)V

    iget-object v0, p0, Llk/a$c;->c:[I

    invoke-static {v0}, Lkk/b;->w([I)V

    iget-object p0, p0, Llk/a$c;->d:[I

    invoke-static {p0}, Lkk/b;->A([I)V

    return-void
.end method

.method public static u()V
    .locals 16

    sget-object v1, Llk/a;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Llk/a;->k:[I

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    new-instance v0, Llk/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Llk/a$c;-><init>(Llk/a$a;)V

    sget-object v3, Llk/a;->d:[I

    iget-object v4, v0, Llk/a$c;->a:[I

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Lkk/b;->g([II[II)V

    sget-object v4, Llk/a;->e:[I

    iget-object v6, v0, Llk/a$c;->b:[I

    invoke-static {v4, v5, v6, v5}, Lkk/b;->g([II[II)V

    invoke-static {v0}, Llk/a;->p(Llk/a$c;)V

    const/16 v6, 0x20

    invoke-static {v0, v6}, Llk/a;->r(Llk/a$c;I)[Llk/a$c;

    move-result-object v0

    sput-object v0, Llk/a;->j:[Llk/a$c;

    new-instance v0, Llk/a$b;

    invoke-direct {v0, v2}, Llk/a$b;-><init>(Llk/a$a;)V

    iget-object v6, v0, Llk/a$b;->a:[I

    invoke-static {v3, v5, v6, v5}, Lkk/b;->g([II[II)V

    iget-object v3, v0, Llk/a$b;->b:[I

    invoke-static {v4, v5, v3, v5}, Lkk/b;->g([II[II)V

    invoke-static {v0}, Llk/a;->o(Llk/a$b;)V

    const/16 v3, 0xc0

    invoke-static {v3}, Lkk/b;->i(I)[I

    move-result-object v3

    sput-object v3, Llk/a;->k:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v6, 0x8

    if-ge v3, v6, :cond_8

    const/4 v7, 0x4

    new-array v8, v7, [Llk/a$c;

    new-instance v9, Llk/a$c;

    invoke-direct {v9, v2}, Llk/a$c;-><init>(Llk/a$a;)V

    invoke-static {v9}, Llk/a;->t(Llk/a$c;)V

    const/4 v10, 0x0

    :goto_1
    const/4 v11, 0x1

    if-ge v10, v7, :cond_2

    invoke-static {v0}, Llk/a;->k(Llk/a$b;)Llk/a$c;

    move-result-object v12

    invoke-static {v11, v9, v12, v9}, Llk/a;->j(ZLlk/a$c;Llk/a$c;Llk/a$c;)V

    invoke-static {v0}, Llk/a;->n(Llk/a$b;)V

    invoke-static {v0}, Llk/a;->k(Llk/a$b;)Llk/a$c;

    move-result-object v12

    aput-object v12, v8, v10

    add-int v12, v3, v10

    const/16 v13, 0xa

    if-eq v12, v13, :cond_1

    :goto_2
    if-ge v11, v6, :cond_1

    invoke-static {v0}, Llk/a;->n(Llk/a$b;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    new-array v7, v6, [Llk/a$c;

    aput-object v9, v7, v5

    const/4 v9, 0x0

    const/4 v10, 0x1

    :goto_3
    const/4 v12, 0x3

    if-ge v9, v12, :cond_4

    shl-int v12, v11, v9

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_3

    sub-int v14, v10, v12

    aget-object v14, v7, v14

    aget-object v15, v8, v9

    new-instance v11, Llk/a$c;

    invoke-direct {v11, v2}, Llk/a$c;-><init>(Llk/a$a;)V

    aput-object v11, v7, v10

    invoke-static {v5, v14, v15, v11}, Llk/a;->j(ZLlk/a$c;Llk/a$c;Llk/a$c;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v6}, Lkk/b;->i(I)[I

    move-result-object v8

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v9

    aget-object v10, v7, v5

    iget-object v10, v10, Llk/a$c;->c:[I

    invoke-static {v10, v5, v9, v5}, Lkk/b;->g([II[II)V

    invoke-static {v9, v5, v8, v5}, Lkk/b;->g([II[II)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_5
    add-int/2addr v10, v11

    if-ge v10, v6, :cond_5

    aget-object v12, v7, v10

    iget-object v12, v12, Llk/a$c;->c:[I

    invoke-static {v9, v12, v9}, Lkk/b;->u([I[I[I)V

    mul-int/lit8 v12, v10, 0xa

    invoke-static {v9, v5, v8, v12}, Lkk/b;->g([II[II)V

    goto :goto_5

    :cond_5
    invoke-static {v9, v9, v9}, Lkk/b;->a([I[I[I)V

    invoke-static {v9, v9}, Lkk/b;->s([I[I)V

    add-int/lit8 v10, v10, -0x1

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v11

    :goto_6
    if-lez v10, :cond_6

    add-int/lit8 v12, v10, -0x1

    mul-int/lit8 v13, v12, 0xa

    invoke-static {v8, v13, v11, v5}, Lkk/b;->g([II[II)V

    invoke-static {v11, v9, v11}, Lkk/b;->u([I[I[I)V

    mul-int/lit8 v13, v10, 0xa

    invoke-static {v11, v5, v8, v13}, Lkk/b;->g([II[II)V

    aget-object v10, v7, v10

    iget-object v10, v10, Llk/a$c;->c:[I

    invoke-static {v9, v10, v9}, Lkk/b;->u([I[I[I)V

    move v10, v12

    goto :goto_6

    :cond_6
    invoke-static {v9, v5, v8, v5}, Lkk/b;->g([II[II)V

    const/4 v9, 0x0

    :goto_7
    if-ge v9, v6, :cond_7

    aget-object v10, v7, v9

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v11

    invoke-static {}, Lkk/b;->h()[I

    move-result-object v12

    mul-int/lit8 v13, v9, 0xa

    invoke-static {v8, v13, v12, v5}, Lkk/b;->g([II[II)V

    iget-object v13, v10, Llk/a$c;->a:[I

    invoke-static {v13, v12, v11}, Lkk/b;->u([I[I[I)V

    iget-object v10, v10, Llk/a$c;->b:[I

    invoke-static {v10, v12, v12}, Lkk/b;->u([I[I[I)V

    new-instance v10, Llk/a$d;

    invoke-direct {v10, v2}, Llk/a$d;-><init>(Llk/a$a;)V

    iget-object v13, v10, Llk/a$d;->a:[I

    iget-object v14, v10, Llk/a$d;->b:[I

    invoke-static {v12, v11, v13, v14}, Lkk/b;->c([I[I[I[I)V

    iget-object v13, v10, Llk/a$d;->c:[I

    invoke-static {v11, v12, v13}, Lkk/b;->u([I[I[I)V

    iget-object v11, v10, Llk/a$d;->c:[I

    sget-object v12, Llk/a;->h:[I

    invoke-static {v11, v12, v11}, Lkk/b;->u([I[I[I)V

    iget-object v11, v10, Llk/a$d;->a:[I

    invoke-static {v11}, Lkk/b;->v([I)V

    iget-object v11, v10, Llk/a$d;->b:[I

    invoke-static {v11}, Lkk/b;->v([I)V

    iget-object v11, v10, Llk/a$d;->a:[I

    sget-object v12, Llk/a;->k:[I

    invoke-static {v11, v5, v12, v4}, Lkk/b;->g([II[II)V

    add-int/lit8 v4, v4, 0xa

    iget-object v11, v10, Llk/a$d;->b:[I

    sget-object v12, Llk/a;->k:[I

    invoke-static {v11, v5, v12, v4}, Lkk/b;->g([II[II)V

    add-int/lit8 v4, v4, 0xa

    iget-object v10, v10, Llk/a$d;->c:[I

    sget-object v11, Llk/a;->k:[I

    invoke-static {v10, v5, v11, v4}, Lkk/b;->g([II[II)V

    add-int/lit8 v4, v4, 0xa

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static v([BI[B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-static {p0, p1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p0, p2, v0

    and-int/lit16 p0, p0, 0xf8

    int-to-byte p0, p0

    aput-byte p0, p2, v0

    const/16 p0, 0x1f

    aget-byte p1, p2, p0

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    aput-byte p1, p2, p0

    aget-byte p1, p2, p0

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    aput-byte p1, p2, p0

    return-void
.end method

.method private static w([BLlk/a$b;)V
    .locals 9

    invoke-static {}, Llk/a;->u()V

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {p0, v2, v1}, Llk/a;->f([BI[I)V

    aget p0, v1, v2

    not-int p0, p0

    const/4 v3, 0x1

    and-int/2addr p0, v3

    sget-object v4, Llk/a;->c:[I

    invoke-static {v0, p0, v1, v4, v1}, Lnk/n;->h(II[I[I[I)I

    invoke-static {v0, v1, v3}, Lnk/n;->E(I[II)I

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_0

    aget v4, v1, p0

    invoke-static {v4}, Lnk/b;->e(I)I

    move-result v4

    aput v4, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Llk/a$d;

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Llk/a$d;-><init>(Llk/a$a;)V

    invoke-static {p1}, Llk/a;->s(Llk/a$b;)V

    const/16 v4, 0x1c

    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_1

    aget v6, v1, v5

    ushr-int/2addr v6, v4

    ushr-int/lit8 v7, v6, 0x3

    and-int/2addr v7, v3

    neg-int v8, v7

    xor-int/2addr v6, v8

    and-int/lit8 v6, v6, 0x7

    invoke-static {v5, v6, p0}, Llk/a;->q(IILlk/a$d;)V

    iget-object v6, p0, Llk/a$d;->a:[I

    iget-object v8, p0, Llk/a$d;->b:[I

    invoke-static {v7, v6, v8}, Lkk/b;->j(I[I[I)V

    iget-object v6, p0, Llk/a$d;->c:[I

    invoke-static {v7, v6}, Lkk/b;->f(I[I)V

    invoke-static {p0, p1}, Llk/a;->i(Llk/a$d;Llk/a$b;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, -0x4

    if-gez v4, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Llk/a;->n(Llk/a$b;)V

    goto :goto_1
.end method

.method private static x([B[BI)V
    .locals 2

    new-instance v0, Llk/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llk/a$b;-><init>(Llk/a$a;)V

    invoke-static {p0, v0}, Llk/a;->w([BLlk/a$b;)V

    invoke-static {v0, p1, p2}, Llk/a;->g(Llk/a$b;[BI)I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static y(Lkk/a$a;[BI[I[I)V
    .locals 1

    const-string v0, "This method is only for use by X25519"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 p0, 0x20

    new-array p0, p0, [B

    invoke-static {p1, p2, p0}, Llk/a;->v([BI[B)V

    new-instance p1, Llk/a$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Llk/a$b;-><init>(Llk/a$a;)V

    invoke-static {p0, p1}, Llk/a;->w([BLlk/a$b;)V

    iget-object p0, p1, Llk/a$b;->a:[I

    iget-object p2, p1, Llk/a$b;->b:[I

    iget-object v0, p1, Llk/a$b;->c:[I

    invoke-static {p0, p2, v0}, Llk/a;->b([I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Llk/a$b;->b:[I

    const/4 p2, 0x0

    invoke-static {p0, p2, p3, p2}, Lkk/b;->g([II[II)V

    iget-object p0, p1, Llk/a$b;->c:[I

    invoke-static {p0, p2, p4, p2}, Lkk/b;->g([II[II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
