.class public Lwj/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwj/d;


# static fields
.field private static final j:[B


# instance fields
.field private a:Lorg/bouncycastle/crypto/prng/c;

.field private b:Lorg/bouncycastle/crypto/a;

.field private c:I

.field private d:I

.field private e:I

.field private f:[B

.field private g:[B

.field private h:J

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lwj/a;->j:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/a;IILorg/bouncycastle/crypto/prng/c;[B[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lwj/a;->h:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwj/a;->i:Z

    iput-object p4, p0, Lwj/a;->a:Lorg/bouncycastle/crypto/prng/c;

    iput-object p1, p0, Lwj/a;->b:Lorg/bouncycastle/crypto/a;

    iput p2, p0, Lwj/a;->c:I

    iput p3, p0, Lwj/a;->e:I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/a;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, p2

    iput v0, p0, Lwj/a;->d:I

    invoke-direct {p0, p1}, Lwj/a;->n(Lorg/bouncycastle/crypto/a;)Z

    move-result v0

    iput-boolean v0, p0, Lwj/a;->i:Z

    const/16 v0, 0x100

    if-gt p3, v0, :cond_2

    invoke-direct {p0, p1, p2}, Lwj/a;->m(Lorg/bouncycastle/crypto/a;I)I

    move-result p1

    if-lt p1, p3, :cond_1

    invoke-interface {p4}, Lorg/bouncycastle/crypto/prng/c;->b()I

    move-result p1

    if-lt p1, p3, :cond_0

    invoke-direct {p0}, Lwj/a;->l()[B

    move-result-object p1

    invoke-direct {p0, p1, p6, p5}, Lwj/a;->e([B[B[B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not enough entropy for security strength required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requested security strength is not supported by block cipher and key size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requested security strength is not supported by the derivation function"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c([B[B[B[B)V
    .locals 6

    iget-object v0, p0, Lwj/a;->b:Lorg/bouncycastle/crypto/a;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/a;->b()I

    move-result v0

    new-array v1, v0, [B

    array-length v2, p4

    div-int/2addr v2, v0

    new-array v3, v0, [B

    iget-object v4, p0, Lwj/a;->b:Lorg/bouncycastle/crypto/a;

    new-instance v5, Lvj/c0;

    invoke-virtual {p0, p2}, Lwj/a;->k([B)[B

    move-result-object p2

    invoke-direct {v5, p2}, Lvj/c0;-><init>([B)V

    const/4 p2, 0x1

    invoke-interface {v4, p2, v5}, Lorg/bouncycastle/crypto/a;->a(ZLorg/bouncycastle/crypto/c;)V

    iget-object p2, p0, Lwj/a;->b:Lorg/bouncycastle/crypto/a;

    const/4 v4, 0x0

    invoke-interface {p2, p3, v4, v1, v4}, Lorg/bouncycastle/crypto/a;->c([BI[BI)I

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v2, :cond_0

    mul-int p3, p2, v0

    invoke-direct {p0, v3, v1, p4, p3}, Lwj/a;->h([B[B[BI)V

    iget-object p3, p0, Lwj/a;->b:Lorg/bouncycastle/crypto/a;

    invoke-interface {p3, v3, v4, v1, v4}, Lorg/bouncycastle/crypto/a;->c([BI[BI)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    array-length p2, p1

    invoke-static {v1, v4, p1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private d([BI)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lwj/a;->b:Lorg/bouncycastle/crypto/a;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/a;->b()I

    move-result v2

    array-length v3, v1

    const/16 v4, 0x8

    div-int/lit8 v5, p2, 0x8

    add-int/lit8 v6, v3, 0x8

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v7, v2

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    div-int/2addr v7, v2

    mul-int v7, v7, v2

    new-array v7, v7, [B

    const/4 v9, 0x0

    invoke-direct {v0, v7, v3, v9}, Lwj/a;->j([BII)V

    const/4 v10, 0x4

    invoke-direct {v0, v7, v5, v10}, Lwj/a;->j([BII)V

    invoke-static {v1, v9, v7, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, -0x80

    aput-byte v1, v7, v6

    iget v1, v0, Lwj/a;->c:I

    div-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v2

    new-array v6, v3, [B

    new-array v10, v2, [B

    new-array v11, v2, [B

    div-int/2addr v1, v4

    new-array v4, v1, [B

    sget-object v12, Lwj/a;->j:[B

    invoke-static {v12, v9, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v12, 0x0

    :goto_0
    mul-int v13, v12, v2

    mul-int/lit8 v14, v13, 0x8

    iget v15, v0, Lwj/a;->c:I

    mul-int/lit8 v16, v2, 0x8

    add-int v15, v15, v16

    if-ge v14, v15, :cond_1

    invoke-direct {v0, v11, v12, v9}, Lwj/a;->j([BII)V

    invoke-direct {v0, v10, v4, v11, v7}, Lwj/a;->c([B[B[B[B)V

    sub-int v14, v3, v13

    if-le v14, v2, :cond_0

    move v14, v2

    :cond_0
    invoke-static {v10, v9, v6, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    new-array v3, v2, [B

    invoke-static {v6, v9, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v1, v3, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v5, [B

    iget-object v6, v0, Lwj/a;->b:Lorg/bouncycastle/crypto/a;

    new-instance v7, Lvj/c0;

    invoke-virtual {v0, v4}, Lwj/a;->k([B)[B

    move-result-object v4

    invoke-direct {v7, v4}, Lvj/c0;-><init>([B)V

    invoke-interface {v6, v8, v7}, Lorg/bouncycastle/crypto/a;->a(ZLorg/bouncycastle/crypto/c;)V

    const/4 v4, 0x0

    :goto_1
    mul-int v6, v4, v2

    if-ge v6, v5, :cond_3

    iget-object v7, v0, Lwj/a;->b:Lorg/bouncycastle/crypto/a;

    invoke-interface {v7, v3, v9, v3, v9}, Lorg/bouncycastle/crypto/a;->c([BI[BI)I

    sub-int v7, v5, v6

    if-le v7, v2, :cond_2

    move v7, v2

    :cond_2
    invoke-static {v3, v9, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private e([B[B[B)V
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/a;->k([B[B[B)[B

    move-result-object p1

    iget p2, p0, Lwj/a;->d:I

    invoke-direct {p0, p1, p2}, Lwj/a;->d([BI)[B

    move-result-object p1

    iget-object p2, p0, Lwj/a;->b:Lorg/bouncycastle/crypto/a;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/a;->b()I

    move-result p2

    iget p3, p0, Lwj/a;->c:I

    add-int/lit8 p3, p3, 0x7

    div-int/lit8 p3, p3, 0x8

    new-array p3, p3, [B

    iput-object p3, p0, Lwj/a;->f:[B

    new-array p2, p2, [B

    iput-object p2, p0, Lwj/a;->g:[B

    invoke-direct {p0, p1, p3, p2}, Lwj/a;->g([B[B[B)V

    const-wide/16 p1, 0x1

    iput-wide p1, p0, Lwj/a;->h:J

    return-void
.end method

.method private f([B)V
    .locals 2

    invoke-direct {p0}, Lwj/a;->l()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->j([B[B)[B

    move-result-object p1

    iget v0, p0, Lwj/a;->d:I

    invoke-direct {p0, p1, v0}, Lwj/a;->d([BI)[B

    move-result-object p1

    iget-object v0, p0, Lwj/a;->f:[B

    iget-object v1, p0, Lwj/a;->g:[B

    invoke-direct {p0, p1, v0, v1}, Lwj/a;->g([B[B[B)V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lwj/a;->h:J

    return-void
.end method

.method private g([B[B[B)V
    .locals 8

    array-length v0, p1

    new-array v1, v0, [B

    iget-object v2, p0, Lwj/a;->b:Lorg/bouncycastle/crypto/a;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/a;->b()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lwj/a;->b:Lorg/bouncycastle/crypto/a;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/a;->b()I

    move-result v3

    iget-object v4, p0, Lwj/a;->b:Lorg/bouncycastle/crypto/a;

    new-instance v5, Lvj/c0;

    invoke-virtual {p0, p2}, Lwj/a;->k([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lvj/c0;-><init>([B)V

    const/4 v6, 0x1

    invoke-interface {v4, v6, v5}, Lorg/bouncycastle/crypto/a;->a(ZLorg/bouncycastle/crypto/c;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    mul-int v6, v5, v3

    array-length v7, p1

    if-ge v6, v7, :cond_1

    invoke-direct {p0, p3}, Lwj/a;->i([B)V

    iget-object v7, p0, Lwj/a;->b:Lorg/bouncycastle/crypto/a;

    invoke-interface {v7, p3, v4, v2, v4}, Lorg/bouncycastle/crypto/a;->c([BI[BI)I

    sub-int v7, v0, v6

    if-le v7, v3, :cond_0

    move v7, v3

    :cond_0
    invoke-static {v2, v4, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, p1, v1, v4}, Lwj/a;->h([B[B[BI)V

    array-length p1, p2

    invoke-static {v1, v4, p2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    array-length p2, p3

    invoke-static {v1, p1, p3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private h([B[B[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p2, v0

    add-int v2, v0, p4

    aget-byte v2, p3, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i([B)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    array-length v3, p1

    if-gt v1, v3, :cond_1

    array-length v3, p1

    sub-int/2addr v3, v1

    aget-byte v3, p1, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    add-int/2addr v3, v2

    if-le v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v4, p1

    sub-int/2addr v4, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j([BII)V
    .locals 2

    add-int/lit8 v0, p3, 0x0

    shr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p3, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p3, p3, 0x3

    int-to-byte p2, p2

    aput-byte p2, p1, p3

    return-void
.end method

.method private l()[B
    .locals 3

    iget-object v0, p0, Lwj/a;->a:Lorg/bouncycastle/crypto/prng/c;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/prng/c;->a()[B

    move-result-object v0

    array-length v1, v0

    iget v2, p0, Lwj/a;->e:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Insufficient entropy provided by entropy source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m(Lorg/bouncycastle/crypto/a;I)I
    .locals 1

    invoke-direct {p0, p1}, Lwj/a;->n(Lorg/bouncycastle/crypto/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa8

    if-ne p2, v0, :cond_0

    const/16 p1, 0x70

    return p1

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/a;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return p2

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private n(Lorg/bouncycastle/crypto/a;)Z
    .locals 2

    invoke-interface {p1}, Lorg/bouncycastle/crypto/a;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DESede"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/a;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TDEA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private o([BI[BI)V
    .locals 4

    add-int/lit8 v0, p4, 0x0

    add-int/lit8 v1, p2, 0x0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xfe

    int-to-byte v2, v2

    aput-byte v2, p3, v0

    add-int/lit8 v0, p4, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x7

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xfc

    ushr-int/lit8 v3, v3, 0x1

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x2

    aget-byte v1, p1, v2

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, p2, 0x2

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xf8

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    aget-byte v1, p1, v2

    shl-int/lit8 v1, v1, 0x5

    add-int/lit8 v2, p2, 0x3

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x3

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x4

    aget-byte v1, p1, v2

    shl-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, p2, 0x4

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xe0

    ushr-int/lit8 v3, v3, 0x4

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x5

    aget-byte v1, p1, v2

    shl-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, p2, 0x5

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xc0

    ushr-int/lit8 v3, v3, 0x5

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x6

    aget-byte v1, p1, v2

    shl-int/lit8 v1, v1, 0x2

    add-int/lit8 p2, p2, 0x6

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0x80

    ushr-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x7

    aget-byte p1, p1, p2

    shl-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    aput-byte p1, p3, v0

    :goto_0
    if-gt p4, v0, :cond_0

    aget-byte p1, p3, p4

    and-int/lit16 p2, p1, 0xfe

    shr-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p1, 0x2

    xor-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x3

    xor-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x4

    xor-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x5

    xor-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x6

    xor-int/2addr v1, v2

    shr-int/lit8 p1, p1, 0x7

    xor-int/2addr p1, v1

    xor-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    or-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a([B[BZ)I
    .locals 7

    iget-boolean v0, p0, Lwj/a;->i:Z

    const/4 v1, -0x1

    iget-wide v2, p0, Lwj/a;->h:J

    if-eqz v0, :cond_2

    const-wide v4, 0x80000000L

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x200

    invoke-static {p1, v0}, Lwj/e;->d([BI)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of bits per request limited to 4096"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-wide v4, 0x800000000000L

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    return v1

    :cond_3
    const v0, 0x8000

    invoke-static {p1, v0}, Lwj/e;->d([BI)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_0
    if-eqz p3, :cond_4

    invoke-direct {p0, p2}, Lwj/a;->f([B)V

    const/4 p2, 0x0

    :cond_4
    if-eqz p2, :cond_5

    iget p3, p0, Lwj/a;->d:I

    invoke-direct {p0, p2, p3}, Lwj/a;->d([BI)[B

    move-result-object p2

    iget-object p3, p0, Lwj/a;->f:[B

    iget-object v0, p0, Lwj/a;->g:[B

    invoke-direct {p0, p2, p3, v0}, Lwj/a;->g([B[B[B)V

    goto :goto_1

    :cond_5
    iget p2, p0, Lwj/a;->d:I

    div-int/lit8 p2, p2, 0x8

    new-array p2, p2, [B

    :goto_1
    iget-object p3, p0, Lwj/a;->g:[B

    array-length p3, p3

    new-array v0, p3, [B

    iget-object v1, p0, Lwj/a;->b:Lorg/bouncycastle/crypto/a;

    new-instance v2, Lvj/c0;

    iget-object v3, p0, Lwj/a;->f:[B

    invoke-virtual {p0, v3}, Lwj/a;->k([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lvj/c0;-><init>([B)V

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lorg/bouncycastle/crypto/a;->a(ZLorg/bouncycastle/crypto/c;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    array-length v3, p1

    div-int/2addr v3, p3

    if-gt v2, v3, :cond_8

    array-length v3, p1

    mul-int v4, v2, p3

    sub-int/2addr v3, v4

    if-le v3, p3, :cond_6

    move v3, p3

    goto :goto_3

    :cond_6
    array-length v3, p1

    iget-object v5, p0, Lwj/a;->g:[B

    array-length v5, v5

    mul-int v5, v5, v2

    sub-int/2addr v3, v5

    :goto_3
    if-eqz v3, :cond_7

    iget-object v5, p0, Lwj/a;->g:[B

    invoke-direct {p0, v5}, Lwj/a;->i([B)V

    iget-object v5, p0, Lwj/a;->b:Lorg/bouncycastle/crypto/a;

    iget-object v6, p0, Lwj/a;->g:[B

    invoke-interface {v5, v6, v1, v0, v1}, Lorg/bouncycastle/crypto/a;->c([BI[BI)I

    invoke-static {v0, v1, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    iget-object p3, p0, Lwj/a;->f:[B

    iget-object v0, p0, Lwj/a;->g:[B

    invoke-direct {p0, p2, p3, v0}, Lwj/a;->g([B[B[B)V

    iget-wide p2, p0, Lwj/a;->h:J

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lwj/a;->h:J

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    return p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of bits per request limited to 262144"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([B)V
    .locals 0

    invoke-direct {p0, p1}, Lwj/a;->f([B)V

    return-void
.end method

.method k([B)[B
    .locals 3

    iget-boolean v0, p0, Lwj/a;->i:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lwj/a;->o([BI[BI)V

    const/4 v1, 0x7

    const/16 v2, 0x8

    invoke-direct {p0, p1, v1, v0, v2}, Lwj/a;->o([BI[BI)V

    const/16 v1, 0xe

    const/16 v2, 0x10

    invoke-direct {p0, p1, v1, v0, v2}, Lwj/a;->o([BI[BI)V

    return-object v0

    :cond_0
    return-object p1
.end method
