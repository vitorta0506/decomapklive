.class public abstract Lnk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(I[I[I)I
    .locals 4

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v2, p1, v0

    aget v3, p2, v0

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v1

    aput v2, p1, v0

    shr-int/lit8 v1, v1, 0x1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v0, p1, p0

    aget p2, p2, p0

    add-int/2addr v0, p2

    add-int/2addr v1, v0

    aput v1, p1, p0

    shr-int/lit8 p0, v1, 0x1e

    return p0
.end method

.method private static b(II[I[I)I
    .locals 4

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v2, p2, v0

    aget v3, p3, v0

    and-int/2addr v3, p1

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v1

    aput v2, p2, v0

    shr-int/lit8 v1, v1, 0x1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v0, p2, p0

    aget p3, p3, p0

    and-int/2addr p1, p3

    add-int/2addr v0, p1

    add-int/2addr v1, v0

    aput v1, p2, p0

    shr-int/lit8 p0, v1, 0x1e

    return p0
.end method

.method public static c([I[I[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lnk/c;->l([I[I[I)I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Inverse does not exist."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d(II[I)I
    .locals 3

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v2, p2, v0

    xor-int/2addr v2, p1

    sub-int/2addr v2, p1

    add-int/2addr v1, v2

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v1

    aput v2, p2, v0

    shr-int/lit8 v1, v1, 0x1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v0, p2, p0

    xor-int/2addr v0, p1

    sub-int/2addr v0, p1

    add-int/2addr v1, v0

    aput v1, p2, p0

    shr-int/lit8 p0, v1, 0x1e

    return p0
.end method

.method private static e(II[I[I)I
    .locals 4

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v2, p2, v0

    aget v3, p3, v0

    and-int/2addr v3, p1

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v1

    aput v2, p2, v0

    shr-int/lit8 v1, v1, 0x1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v0, p2, p0

    aget p3, p3, p0

    and-int/2addr p1, p3

    sub-int/2addr v0, p1

    add-int/2addr v1, v0

    aput v1, p2, p0

    shr-int/lit8 p0, v1, 0x1e

    return p0
.end method

.method private static f(I[II[II)V
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    if-lez p0, :cond_1

    :goto_1
    const/16 v3, 0x20

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_0

    add-int/lit8 v3, p2, 0x1

    aget p2, p1, p2

    int-to-long v4, p2

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    add-int/lit8 v0, v0, 0x1e

    move p2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, p4, 0x1

    long-to-int v5, v1

    aput v5, p3, p4

    ushr-long/2addr v1, v3

    add-int/lit8 v0, v0, -0x20

    add-int/lit8 p0, p0, -0x20

    move p4, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static g(III[I)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    const/16 v7, 0x1e

    if-ge v2, v7, :cond_0

    shr-int/lit8 v7, p0, 0x1f

    and-int/lit8 v8, p2, 0x1

    neg-int v8, v8

    xor-int v9, p1, v7

    sub-int/2addr v9, v7

    xor-int v10, v3, v7

    sub-int/2addr v10, v7

    xor-int v11, v4, v7

    sub-int/2addr v11, v7

    and-int/2addr v9, v8

    add-int/2addr p2, v9

    and-int v9, v10, v8

    add-int/2addr v5, v9

    and-int v9, v11, v8

    add-int/2addr v6, v9

    and-int/2addr v7, v8

    xor-int/2addr p0, v7

    add-int/lit8 v8, v7, 0x1

    sub-int/2addr p0, v8

    and-int v8, p2, v7

    add-int/2addr p1, v8

    and-int v8, v5, v7

    add-int/2addr v3, v8

    and-int/2addr v7, v6

    add-int/2addr v4, v7

    shr-int/2addr p2, v1

    shl-int/2addr v3, v1

    shl-int/2addr v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aput v3, p3, v0

    aput v4, p3, v1

    const/4 p1, 0x2

    aput v5, p3, p1

    const/4 p1, 0x3

    aput v6, p3, p1

    return p0
.end method

.method private static h(III[I)I
    .locals 17

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x1e

    move/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    const/16 v5, 0x1e

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_0
    const/4 v10, -0x1

    shl-int v11, v10, v5

    or-int/2addr v11, v4

    invoke-static {v11}, Lorg/bouncycastle/util/e;->b(I)I

    move-result v11

    shr-int/2addr v4, v11

    shl-int/2addr v6, v11

    shl-int/2addr v7, v11

    sub-int/2addr v2, v11

    sub-int/2addr v5, v11

    const/4 v11, 0x2

    if-gtz v5, :cond_0

    aput v6, p3, v0

    aput v7, p3, v1

    aput v8, p3, v11

    const/4 v0, 0x3

    aput v9, p3, v0

    return v2

    :cond_0
    if-gez v2, :cond_2

    neg-int v2, v2

    neg-int v3, v3

    neg-int v6, v6

    neg-int v7, v7

    add-int/lit8 v12, v2, 0x1

    if-le v12, v5, :cond_1

    move v12, v5

    :cond_1
    rsub-int/lit8 v12, v12, 0x20

    ushr-int/2addr v10, v12

    and-int/lit8 v10, v10, 0x3f

    mul-int v12, v4, v3

    mul-int v13, v4, v4

    sub-int/2addr v13, v11

    mul-int v12, v12, v13

    and-int/2addr v10, v12

    move v14, v4

    move v4, v3

    move v3, v14

    move v15, v8

    move v8, v6

    move v6, v15

    move/from16 v16, v9

    move v9, v7

    move/from16 v7, v16

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v2, 0x1

    if-le v11, v5, :cond_3

    move v11, v5

    :cond_3
    rsub-int/lit8 v11, v11, 0x20

    ushr-int/2addr v10, v11

    and-int/lit8 v10, v10, 0xf

    add-int/lit8 v11, v3, 0x1

    and-int/lit8 v11, v11, 0x4

    shl-int/2addr v11, v1

    add-int/2addr v11, v3

    neg-int v11, v11

    mul-int v11, v11, v4

    and-int/2addr v10, v11

    :goto_1
    mul-int v11, v3, v10

    add-int/2addr v4, v11

    mul-int v11, v6, v10

    add-int/2addr v8, v11

    mul-int v10, v10, v7

    add-int/2addr v9, v10

    goto :goto_0
.end method

.method private static i(I[II[II)V
    .locals 9

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    if-lez p0, :cond_1

    const/16 v3, 0x1e

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, p2, 0x1

    aget p2, p1, p2

    int-to-long v5, p2

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    shl-long/2addr v5, v0

    or-long/2addr v1, v5

    add-int/lit8 v0, v0, 0x20

    move p2, v4

    :cond_0
    add-int/lit8 v4, p4, 0x1

    long-to-int v5, v1

    const v6, 0x3fffffff    # 1.9999999f

    and-int/2addr v5, v6

    aput v5, p3, p4

    ushr-long/2addr v1, v3

    add-int/lit8 v0, v0, -0x1e

    add-int/lit8 p0, p0, -0x1e

    move p4, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static j(I)I
    .locals 2

    mul-int/lit8 v0, p0, 0x31

    const/16 v1, 0x2e

    if-ge p0, v1, :cond_0

    const/16 p0, 0x50

    goto :goto_0

    :cond_0
    const/16 p0, 0x2f

    :goto_0
    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public static k(I)I
    .locals 2

    mul-int v0, p0, p0

    rsub-int/lit8 v0, v0, 0x2

    mul-int v0, v0, p0

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    mul-int p0, p0, v0

    rsub-int/lit8 p0, p0, 0x2

    mul-int v0, v0, p0

    return v0
.end method

.method public static l([I[I[I)I
    .locals 18

    move-object/from16 v0, p0

    array-length v1, v0

    shl-int/lit8 v2, v1, 0x5

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget v1, v0, v1

    invoke-static {v1}, Lorg/bouncycastle/util/e;->a(I)I

    move-result v1

    sub-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x1d

    div-int/lit8 v1, v1, 0x1e

    const/4 v10, 0x0

    aget v4, v0, v10

    invoke-static {v4}, Lnk/c;->k(I)I

    move-result v4

    neg-int v4, v4

    shl-int/lit8 v11, v4, 0x2

    const/4 v4, 0x4

    new-array v12, v4, [I

    new-array v13, v1, [I

    new-array v14, v1, [I

    new-array v15, v1, [I

    new-array v9, v1, [I

    new-array v8, v1, [I

    aput v3, v14, v10

    move-object/from16 v4, p1

    invoke-static {v2, v4, v10, v9, v10}, Lnk/c;->i(I[II[II)V

    invoke-static {v2, v0, v10, v8, v10}, Lnk/c;->i(I[II[II)V

    invoke-static {v8, v10, v15, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lnk/c;->j(I)I

    move-result v0

    const/4 v4, -0x1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_0

    aget v5, v15, v10

    aget v6, v9, v10

    invoke-static {v4, v5, v6, v12}, Lnk/c;->g(III[I)I

    move-result v16

    move v4, v1

    move-object v5, v13

    move-object v6, v14

    move/from16 v17, v7

    move-object v7, v12

    move-object/from16 p0, v8

    move v8, v11

    move-object v3, v9

    move-object/from16 v9, p0

    invoke-static/range {v4 .. v9}, Lnk/c;->q(I[I[I[II[I)V

    invoke-static {v1, v15, v3, v12}, Lnk/c;->r(I[I[I[I)V

    add-int/lit8 v7, v17, 0x1e

    move-object/from16 v8, p0

    move-object v9, v3

    move/from16 v4, v16

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 p0, v8

    move-object v3, v9

    add-int/lit8 v0, v1, -0x1

    aget v0, v15, v0

    shr-int/lit8 v0, v0, 0x1f

    invoke-static {v1, v0, v15}, Lnk/c;->d(II[I)I

    invoke-static {v1, v0, v13}, Lnk/c;->d(II[I)I

    move-result v0

    not-int v0, v0

    move-object/from16 v4, p0

    invoke-static {v1, v0, v13, v4}, Lnk/c;->e(II[I[I)I

    move-result v0

    invoke-static {v1, v0, v13, v4}, Lnk/c;->b(II[I[I)I

    move-result v0

    invoke-static {v1, v0, v13, v4}, Lnk/c;->b(II[I[I)I

    move-object/from16 v0, p2

    invoke-static {v2, v13, v10, v0, v10}, Lnk/c;->f(I[II[II)V

    const/4 v0, 0x1

    invoke-static {v1, v15, v0}, Lnk/n;->p(I[II)I

    move-result v0

    invoke-static {v1, v3}, Lnk/n;->q(I[I)I

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public static m([I[I[I)Z
    .locals 18

    move-object/from16 v0, p0

    array-length v1, v0

    shl-int/lit8 v2, v1, 0x5

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget v1, v0, v1

    invoke-static {v1}, Lorg/bouncycastle/util/e;->a(I)I

    move-result v1

    sub-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x1d

    div-int/lit8 v1, v1, 0x1e

    const/4 v10, 0x0

    aget v4, v0, v10

    invoke-static {v4}, Lnk/c;->k(I)I

    move-result v4

    neg-int v4, v4

    shl-int/lit8 v11, v4, 0x2

    const/4 v4, 0x4

    new-array v12, v4, [I

    new-array v13, v1, [I

    new-array v14, v1, [I

    new-array v15, v1, [I

    new-array v9, v1, [I

    new-array v8, v1, [I

    aput v3, v14, v10

    move-object/from16 v4, p1

    invoke-static {v2, v4, v10, v9, v10}, Lnk/c;->i(I[II[II)V

    invoke-static {v2, v0, v10, v8, v10}, Lnk/c;->i(I[II[II)V

    invoke-static {v8, v10, v15, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v1, -0x1

    aget v4, v9, v0

    or-int/2addr v4, v3

    invoke-static {v4}, Lorg/bouncycastle/util/e;->a(I)I

    move-result v4

    mul-int/lit8 v5, v1, 0x1e

    add-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v2

    sub-int/2addr v4, v5

    rsub-int/lit8 v4, v4, -0x1

    invoke-static {v2}, Lnk/c;->j(I)I

    move-result v7

    move v6, v1

    const/4 v5, 0x0

    :goto_0
    invoke-static {v6, v9}, Lnk/n;->A(I[I)Z

    move-result v16

    if-nez v16, :cond_2

    if-lt v5, v7, :cond_0

    return v10

    :cond_0
    add-int/lit8 v16, v5, 0x1e

    aget v5, v15, v10

    aget v3, v9, v10

    invoke-static {v4, v5, v3, v12}, Lnk/c;->h(III[I)I

    move-result v3

    move v4, v1

    move-object v5, v13

    move v10, v6

    move-object v6, v14

    move/from16 v17, v7

    move-object v7, v12

    move-object/from16 p0, v8

    move v8, v11

    move/from16 p1, v3

    move-object v3, v9

    move-object/from16 v9, p0

    invoke-static/range {v4 .. v9}, Lnk/c;->q(I[I[I[II[I)V

    invoke-static {v10, v15, v3, v12}, Lnk/c;->r(I[I[I[I)V

    add-int/lit8 v6, v10, -0x1

    aget v4, v15, v6

    aget v5, v3, v6

    add-int/lit8 v6, v10, -0x2

    shr-int/lit8 v7, v6, 0x1f

    shr-int/lit8 v8, v4, 0x1f

    xor-int/2addr v8, v4

    or-int/2addr v7, v8

    shr-int/lit8 v8, v5, 0x1f

    xor-int/2addr v8, v5

    or-int/2addr v7, v8

    if-nez v7, :cond_1

    aget v7, v15, v6

    shl-int/lit8 v4, v4, 0x1e

    or-int/2addr v4, v7

    aput v4, v15, v6

    aget v4, v3, v6

    shl-int/lit8 v5, v5, 0x1e

    or-int/2addr v4, v5

    aput v4, v3, v6

    add-int/lit8 v6, v10, -0x1

    goto :goto_1

    :cond_1
    move v6, v10

    :goto_1
    move-object/from16 v8, p0

    move/from16 v4, p1

    move-object v9, v3

    move/from16 v5, v16

    move/from16 v7, v17

    const/4 v3, 0x1

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    move v10, v6

    move-object/from16 p0, v8

    add-int/lit8 v6, v10, -0x1

    aget v3, v15, v6

    shr-int/lit8 v3, v3, 0x1f

    if-eqz v3, :cond_3

    invoke-static {v10, v15}, Lnk/c;->n(I[I)I

    invoke-static {v1, v13}, Lnk/c;->n(I[I)I

    :cond_3
    invoke-static {v10, v15}, Lnk/n;->z(I[I)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    return v3

    :cond_4
    aget v0, v13, v0

    shr-int/lit8 v0, v0, 0x1f

    if-gez v0, :cond_5

    move-object/from16 v0, p0

    invoke-static {v1, v13, v0}, Lnk/c;->a(I[I[I)I

    move-result v3

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    invoke-static {v1, v13, v0}, Lnk/c;->p(I[I[I)I

    move-result v3

    :goto_2
    if-gez v3, :cond_6

    invoke-static {v1, v13, v0}, Lnk/c;->a(I[I[I)I

    :cond_6
    move-object/from16 v0, p2

    const/4 v1, 0x0

    invoke-static {v2, v13, v1, v0, v1}, Lnk/c;->f(I[II[II)V

    const/4 v0, 0x1

    return v0
.end method

.method private static n(I[I)I
    .locals 3

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v2, p1, v0

    sub-int/2addr v1, v2

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v1

    aput v2, p1, v0

    shr-int/lit8 v1, v1, 0x1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v0, p1, p0

    sub-int/2addr v1, v0

    aput v1, p1, p0

    shr-int/lit8 p0, v1, 0x1e

    return p0
.end method

.method public static o([I)[I
    .locals 7

    array-length v0, p0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-static {v0}, Lnk/n;->k(I)[I

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    aget v4, p0, v3

    ushr-int/lit8 v5, v4, 0x1

    or-int/2addr v4, v5

    ushr-int/lit8 v5, v4, 0x2

    or-int/2addr v4, v5

    ushr-int/lit8 v5, v4, 0x4

    or-int/2addr v4, v5

    ushr-int/lit8 v5, v4, 0x8

    or-int/2addr v4, v5

    ushr-int/lit8 v5, v4, 0x10

    or-int/2addr v4, v5

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eq v5, v0, :cond_1

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v6

    aput v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    aget v5, v2, v3

    and-int/2addr v5, v4

    aput v5, v2, v3

    invoke-static {v0, v2, p0}, Lnk/n;->u(I[I[I)Z

    move-result v5

    if-nez v5, :cond_0

    return-object v2
.end method

.method private static p(I[I[I)I
    .locals 4

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget v2, p1, v0

    aget v3, p2, v0

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v1

    aput v2, p1, v0

    shr-int/lit8 v1, v1, 0x1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v0, p1, p0

    aget p2, p2, p0

    sub-int/2addr v0, p2

    add-int/2addr v1, v0

    aput v1, p1, p0

    shr-int/lit8 p0, v1, 0x1e

    return p0
.end method

.method private static q(I[I[I[II[I)V
    .locals 28

    move/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p3, v1

    const/4 v3, 0x1

    aget v4, p3, v3

    const/4 v5, 0x2

    aget v6, p3, v5

    const/4 v7, 0x3

    aget v7, p3, v7

    aget v8, p1, v1

    aget v9, p2, v1

    int-to-long v10, v2

    int-to-long v12, v8

    mul-long v14, v10, v12

    int-to-long v3, v4

    int-to-long v8, v9

    mul-long v16, v3, v8

    add-long v14, v14, v16

    move-wide/from16 v16, v3

    int-to-long v2, v6

    mul-long v12, v12, v2

    int-to-long v6, v7

    mul-long v8, v8, v6

    add-long/2addr v12, v8

    long-to-int v4, v14

    mul-int v4, v4, p4

    shr-int/2addr v4, v5

    long-to-int v8, v12

    mul-int v8, v8, p4

    shr-int/lit8 v5, v8, 0x2

    aget v8, p5, v1

    int-to-long v8, v8

    move-wide/from16 v18, v2

    int-to-long v1, v4

    mul-long v8, v8, v1

    add-long/2addr v14, v8

    const/4 v3, 0x0

    aget v3, p5, v3

    int-to-long v3, v3

    int-to-long v8, v5

    mul-long v3, v3, v8

    add-long/2addr v12, v3

    const/16 v3, 0x1e

    shr-long v4, v14, v3

    shr-long/2addr v12, v3

    const/4 v14, 0x1

    :goto_0
    if-ge v14, v0, :cond_0

    aget v15, p1, v14

    aget v3, p2, v14

    move-wide/from16 v20, v8

    int-to-long v8, v15

    mul-long v22, v10, v8

    move-wide/from16 v24, v10

    int-to-long v10, v3

    mul-long v26, v16, v10

    add-long v22, v22, v26

    add-long v4, v4, v22

    mul-long v8, v8, v18

    mul-long v10, v10, v6

    add-long/2addr v8, v10

    add-long/2addr v12, v8

    aget v3, p5, v14

    int-to-long v8, v3

    mul-long v8, v8, v1

    add-long/2addr v4, v8

    aget v3, p5, v14

    int-to-long v8, v3

    mul-long v8, v8, v20

    add-long/2addr v12, v8

    add-int/lit8 v3, v14, -0x1

    long-to-int v8, v4

    const v9, 0x3fffffff    # 1.9999999f

    and-int/2addr v8, v9

    aput v8, p1, v3

    const/16 v8, 0x1e

    shr-long/2addr v4, v8

    long-to-int v10, v12

    and-int/2addr v9, v10

    aput v9, p2, v3

    shr-long/2addr v12, v8

    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v8, v20

    move-wide/from16 v10, v24

    const/16 v3, 0x1e

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    sub-int/2addr v0, v3

    long-to-int v1, v4

    aput v1, p1, v0

    long-to-int v1, v12

    aput v1, p2, v0

    return-void
.end method

.method private static r(I[I[I[I)V
    .locals 24

    move/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p3, v1

    const/4 v3, 0x1

    aget v4, p3, v3

    const/4 v5, 0x2

    aget v5, p3, v5

    const/4 v6, 0x3

    aget v6, p3, v6

    aget v7, p1, v1

    aget v1, p2, v1

    int-to-long v8, v2

    int-to-long v10, v7

    mul-long v12, v8, v10

    int-to-long v14, v4

    int-to-long v1, v1

    mul-long v16, v14, v1

    add-long v12, v12, v16

    int-to-long v4, v5

    mul-long v10, v10, v4

    int-to-long v6, v6

    mul-long v1, v1, v6

    add-long/2addr v10, v1

    const/16 v1, 0x1e

    shr-long/2addr v12, v1

    shr-long/2addr v10, v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    aget v1, p2, v2

    move/from16 v17, v2

    int-to-long v2, v3

    mul-long v18, v8, v2

    move-wide/from16 v20, v8

    int-to-long v8, v1

    mul-long v22, v14, v8

    add-long v18, v18, v22

    add-long v12, v12, v18

    mul-long v2, v2, v4

    mul-long v8, v8, v6

    add-long/2addr v2, v8

    add-long/2addr v10, v2

    add-int/lit8 v2, v17, -0x1

    long-to-int v1, v12

    const v3, 0x3fffffff    # 1.9999999f

    and-int/2addr v1, v3

    aput v1, p1, v2

    const/16 v1, 0x1e

    shr-long/2addr v12, v1

    long-to-int v8, v10

    and-int/2addr v3, v8

    aput v3, p2, v2

    shr-long/2addr v10, v1

    add-int/lit8 v2, v17, 0x1

    move-wide/from16 v8, v20

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    long-to-int v1, v12

    aput v1, p1, v0

    long-to-int v1, v10

    aput v1, p2, v0

    return-void
.end method
