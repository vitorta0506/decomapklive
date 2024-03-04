.class public Lwj/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwj/d;


# instance fields
.field private a:[B

.field private b:[B

.field private c:J

.field private d:Lorg/bouncycastle/crypto/prng/c;

.field private e:Lorg/bouncycastle/crypto/g;

.field private f:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/g;ILorg/bouncycastle/crypto/prng/c;[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lwj/e;->b(Lorg/bouncycastle/crypto/g;)I

    move-result v0

    if-gt p2, v0, :cond_1

    invoke-interface {p3}, Lorg/bouncycastle/crypto/prng/c;->b()I

    move-result v0

    if-lt v0, p2, :cond_0

    iput p2, p0, Lwj/b;->f:I

    iput-object p3, p0, Lwj/b;->d:Lorg/bouncycastle/crypto/prng/c;

    iput-object p1, p0, Lwj/b;->e:Lorg/bouncycastle/crypto/g;

    invoke-direct {p0}, Lwj/b;->c()[B

    move-result-object p2

    invoke-static {p2, p5, p4}, Lorg/bouncycastle/util/a;->k([B[B[B)[B

    move-result-object p2

    invoke-interface {p1}, Lorg/bouncycastle/crypto/g;->d()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lwj/b;->a:[B

    array-length p1, p1

    new-array p1, p1, [B

    iput-object p1, p0, Lwj/b;->b:[B

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lorg/bouncycastle/util/a;->o([BB)V

    invoke-direct {p0, p2}, Lwj/b;->d([B)V

    const-wide/16 p1, 0x1

    iput-wide p1, p0, Lwj/b;->c:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not enough entropy for security strength required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requested security strength is not supported by the derivation function"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()[B
    .locals 3

    iget-object v0, p0, Lwj/b;->d:Lorg/bouncycastle/crypto/prng/c;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/prng/c;->a()[B

    move-result-object v0

    array-length v1, v0

    iget v2, p0, Lwj/b;->f:I

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

.method private d([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lwj/b;->e([BB)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lwj/b;->e([BB)V

    :cond_0
    return-void
.end method

.method private e([BB)V
    .locals 4

    iget-object v0, p0, Lwj/b;->e:Lorg/bouncycastle/crypto/g;

    new-instance v1, Lvj/c0;

    iget-object v2, p0, Lwj/b;->a:[B

    invoke-direct {v1, v2}, Lvj/c0;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/g;->e(Lorg/bouncycastle/crypto/c;)V

    iget-object v0, p0, Lwj/b;->e:Lorg/bouncycastle/crypto/g;

    iget-object v1, p0, Lwj/b;->b:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/g;->c([BII)V

    iget-object v0, p0, Lwj/b;->e:Lorg/bouncycastle/crypto/g;

    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/g;->b(B)V

    if-eqz p1, :cond_0

    iget-object p2, p0, Lwj/b;->e:Lorg/bouncycastle/crypto/g;

    array-length v0, p1

    invoke-interface {p2, p1, v3, v0}, Lorg/bouncycastle/crypto/g;->c([BII)V

    :cond_0
    iget-object p1, p0, Lwj/b;->e:Lorg/bouncycastle/crypto/g;

    iget-object p2, p0, Lwj/b;->a:[B

    invoke-interface {p1, p2, v3}, Lorg/bouncycastle/crypto/g;->a([BI)I

    iget-object p1, p0, Lwj/b;->e:Lorg/bouncycastle/crypto/g;

    new-instance p2, Lvj/c0;

    iget-object v0, p0, Lwj/b;->a:[B

    invoke-direct {p2, v0}, Lvj/c0;-><init>([B)V

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/g;->e(Lorg/bouncycastle/crypto/c;)V

    iget-object p1, p0, Lwj/b;->e:Lorg/bouncycastle/crypto/g;

    iget-object p2, p0, Lwj/b;->b:[B

    array-length v0, p2

    invoke-interface {p1, p2, v3, v0}, Lorg/bouncycastle/crypto/g;->c([BII)V

    iget-object p1, p0, Lwj/b;->e:Lorg/bouncycastle/crypto/g;

    iget-object p2, p0, Lwj/b;->b:[B

    invoke-interface {p1, p2, v3}, Lorg/bouncycastle/crypto/g;->a([BI)I

    return-void
.end method


# virtual methods
.method public a([B[BZ)I
    .locals 8

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    const/high16 v1, 0x40000

    if-gt v0, v1, :cond_5

    iget-wide v1, p0, Lwj/b;->c:J

    const-wide v3, 0x800000000000L

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p2}, Lwj/b;->b([B)V

    const/4 p2, 0x0

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lwj/b;->d([B)V

    :cond_2
    array-length p3, p1

    new-array v1, p3, [B

    array-length v2, p1

    iget-object v3, p0, Lwj/b;->b:[B

    array-length v3, v3

    div-int/2addr v2, v3

    iget-object v3, p0, Lwj/b;->e:Lorg/bouncycastle/crypto/g;

    new-instance v4, Lvj/c0;

    iget-object v5, p0, Lwj/b;->a:[B

    invoke-direct {v4, v5}, Lvj/c0;-><init>([B)V

    invoke-interface {v3, v4}, Lorg/bouncycastle/crypto/g;->e(Lorg/bouncycastle/crypto/c;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    iget-object v5, p0, Lwj/b;->e:Lorg/bouncycastle/crypto/g;

    iget-object v6, p0, Lwj/b;->b:[B

    array-length v7, v6

    invoke-interface {v5, v6, v3, v7}, Lorg/bouncycastle/crypto/g;->c([BII)V

    iget-object v5, p0, Lwj/b;->e:Lorg/bouncycastle/crypto/g;

    iget-object v6, p0, Lwj/b;->b:[B

    invoke-interface {v5, v6, v3}, Lorg/bouncycastle/crypto/g;->a([BI)I

    iget-object v5, p0, Lwj/b;->b:[B

    array-length v6, v5

    mul-int v6, v6, v4

    array-length v7, v5

    invoke-static {v5, v3, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lwj/b;->b:[B

    array-length v5, v4

    mul-int v5, v5, v2

    if-ge v5, p3, :cond_4

    iget-object v5, p0, Lwj/b;->e:Lorg/bouncycastle/crypto/g;

    array-length v6, v4

    invoke-interface {v5, v4, v3, v6}, Lorg/bouncycastle/crypto/g;->c([BII)V

    iget-object v4, p0, Lwj/b;->e:Lorg/bouncycastle/crypto/g;

    iget-object v5, p0, Lwj/b;->b:[B

    invoke-interface {v4, v5, v3}, Lorg/bouncycastle/crypto/g;->a([BI)I

    iget-object v4, p0, Lwj/b;->b:[B

    array-length v5, v4

    mul-int v5, v5, v2

    array-length v6, v4

    mul-int v2, v2, v6

    sub-int/2addr p3, v2

    invoke-static {v4, v3, v1, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    invoke-direct {p0, p2}, Lwj/b;->d([B)V

    iget-wide p2, p0, Lwj/b;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr p2, v4

    iput-wide p2, p0, Lwj/b;->c:J

    array-length p2, p1

    invoke-static {v1, v3, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Number of bits per request limited to 262144"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([B)V
    .locals 2

    invoke-direct {p0}, Lwj/b;->c()[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->j([B[B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lwj/b;->d([B)V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lwj/b;->c:J

    return-void
.end method
