.class Lrk/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BILrk/e;)I
    .locals 5

    invoke-virtual {p2}, Lrk/e;->h()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    mul-int/lit8 v3, p1, 0x8

    invoke-virtual {p2}, Lrk/e;->h()I

    move-result v4

    div-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    add-int/2addr v2, v0

    invoke-virtual {p2}, Lrk/e;->h()I

    move-result v3

    invoke-static {p0, v1, v3}, Lrk/o;->b([BII)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lrk/e;->c()I

    move-result p0

    shl-int p0, v2, p0

    return p0
.end method

.method public static b([BII)I
    .locals 3

    mul-int v0, p1, p2

    const/16 v1, 0x8

    div-int/2addr v0, v1

    div-int/2addr v1, p2

    not-int p1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr p1, v1

    mul-int p1, p1, p2

    shl-int p2, v2, p2

    sub-int/2addr p2, v2

    aget-byte p0, p0, v0

    ushr-int/2addr p0, p1

    and-int/2addr p0, p2

    return p0
.end method

.method public static c(Lrk/f;[B[B)Lrk/g;
    .locals 16

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lrk/f;->c()Lrk/e;

    move-result-object v1

    invoke-virtual {v1}, Lrk/e;->d()I

    move-result v2

    invoke-virtual {v1}, Lrk/e;->e()I

    move-result v3

    invoke-virtual {v1}, Lrk/e;->h()I

    move-result v4

    mul-int v5, v3, v2

    new-array v5, v5, [B

    invoke-virtual {v1}, Lrk/e;->b()Lorg/bouncycastle/asn1/n;

    move-result-object v6

    invoke-static {v6}, Lrk/b;->a(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/crypto/e;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lrk/f;->a()Lrk/q;

    move-result-object v7

    invoke-static {v0, v2, v1}, Lrk/o;->a([BILrk/e;)I

    move-result v8

    ushr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    add-int/lit8 v9, v2, 0x1

    int-to-byte v8, v8

    aput-byte v8, v0, v9

    invoke-static {}, Lrk/a;->f()Lrk/a;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lrk/f;->b()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lrk/a;->d([B)Lrk/a;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lrk/f;->d()I

    move-result v9

    invoke-virtual {v8, v9}, Lrk/a;->i(I)Lrk/a;

    move-result-object v8

    add-int/lit8 v9, v2, 0x17

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Lrk/a;->g(II)Lrk/a;

    move-result-object v8

    invoke-virtual {v8}, Lrk/a;->b()[B

    move-result-object v8

    invoke-virtual {v7, v10}, Lrk/q;->d(I)V

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v3, :cond_2

    int-to-short v12, v11

    const/16 v13, 0x14

    invoke-static {v12, v8, v13}, Lorg/bouncycastle/util/g;->n(S[BI)V

    add-int/lit8 v12, v3, -0x1

    if-ge v11, v12, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    const/16 v13, 0x17

    invoke-virtual {v7, v8, v12, v13}, Lrk/q;->b([BZI)V

    invoke-static {v0, v11, v4}, Lrk/o;->b([BII)I

    move-result v12

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v12, :cond_1

    const/16 v15, 0x16

    int-to-byte v13, v14

    aput-byte v13, v8, v15

    invoke-interface {v6, v8, v10, v9}, Lorg/bouncycastle/crypto/e;->c([BII)V

    const/16 v13, 0x17

    invoke-interface {v6, v8, v13}, Lorg/bouncycastle/crypto/e;->a([BI)I

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1
    mul-int v12, v2, v11

    invoke-static {v8, v13, v5, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lrk/g;

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5}, Lrk/g;-><init>(Lrk/e;[B[B)V

    return-object v0
.end method

.method static d(Lrk/e;[BI[B)[B
    .locals 10

    invoke-virtual {p0}, Lrk/e;->b()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    invoke-static {v0}, Lrk/b;->a(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/crypto/e;

    move-result-object v0

    invoke-static {}, Lrk/a;->f()Lrk/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lrk/a;->d([B)Lrk/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lrk/a;->i(I)Lrk/a;

    move-result-object v1

    const/16 v2, -0x7f80

    invoke-virtual {v1, v2}, Lrk/a;->h(I)Lrk/a;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x16

    invoke-virtual {v1, v2, v3}, Lrk/a;->g(II)Lrk/a;

    move-result-object v1

    invoke-virtual {v1}, Lrk/a;->b()[B

    move-result-object v1

    array-length v4, v1

    invoke-interface {v0, v1, v2, v4}, Lorg/bouncycastle/crypto/e;->c([BII)V

    invoke-virtual {p0}, Lrk/e;->b()Lorg/bouncycastle/asn1/n;

    move-result-object v1

    invoke-static {v1}, Lrk/b;->a(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/crypto/e;

    move-result-object v1

    invoke-static {}, Lrk/a;->f()Lrk/a;

    move-result-object v4

    invoke-virtual {v4, p1}, Lrk/a;->d([B)Lrk/a;

    move-result-object v4

    invoke-virtual {v4, p2}, Lrk/a;->i(I)Lrk/a;

    move-result-object v4

    invoke-interface {v1}, Lorg/bouncycastle/crypto/e;->d()I

    move-result v5

    const/16 v6, 0x17

    add-int/2addr v5, v6

    invoke-virtual {v4, v2, v5}, Lrk/a;->g(II)Lrk/a;

    move-result-object v4

    invoke-virtual {v4}, Lrk/a;->b()[B

    move-result-object v4

    new-instance v5, Lrk/q;

    invoke-virtual {p0}, Lrk/e;->b()Lorg/bouncycastle/asn1/n;

    move-result-object v7

    invoke-static {v7}, Lrk/b;->a(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/crypto/e;

    move-result-object v7

    invoke-direct {v5, p1, p3, v7}, Lrk/q;-><init>([B[BLorg/bouncycastle/crypto/e;)V

    invoke-virtual {v5, p2}, Lrk/q;->e(I)V

    invoke-virtual {v5, v2}, Lrk/q;->d(I)V

    invoke-virtual {p0}, Lrk/e;->e()I

    move-result p1

    invoke-virtual {p0}, Lrk/e;->d()I

    move-result p2

    invoke-virtual {p0}, Lrk/e;->h()I

    move-result p0

    const/4 p3, 0x1

    shl-int p0, p3, p0

    sub-int/2addr p0, p3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p1, :cond_2

    add-int/lit8 v8, p1, -0x1

    if-ge v7, v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v5, v4, v8, v6}, Lrk/q;->b([BZI)V

    int-to-short v8, v7

    const/16 v9, 0x14

    invoke-static {v8, v4, v9}, Lorg/bouncycastle/util/g;->n(S[BI)V

    const/4 v8, 0x0

    :goto_2
    if-ge v8, p0, :cond_1

    int-to-byte v9, v8

    aput-byte v9, v4, v3

    array-length v9, v4

    invoke-interface {v1, v4, v2, v9}, Lorg/bouncycastle/crypto/e;->c([BII)V

    invoke-interface {v1, v4, v6}, Lorg/bouncycastle/crypto/e;->a([BI)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    invoke-interface {v0, v4, v6, p2}, Lorg/bouncycastle/crypto/e;->c([BII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/bouncycastle/crypto/e;->d()I

    move-result p0

    new-array p0, p0, [B

    invoke-interface {v0, p0, v2}, Lorg/bouncycastle/crypto/e;->a([BI)I

    return-object p0
.end method
