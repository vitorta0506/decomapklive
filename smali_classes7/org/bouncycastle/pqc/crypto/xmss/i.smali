.class final Lorg/bouncycastle/pqc/crypto/xmss/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/bouncycastle/pqc/crypto/xmss/k;

.field private final b:Lorg/bouncycastle/pqc/crypto/xmss/f;

.field private c:[B

.field private d:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/k;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "params == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->a:Lorg/bouncycastle/pqc/crypto/xmss/k;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/k;->c()I

    move-result v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/f;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/k;->b()Lorg/bouncycastle/asn1/n;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/f;-><init>(Lorg/bouncycastle/asn1/n;I)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->b:Lorg/bouncycastle/pqc/crypto/xmss/f;

    new-array p1, v0, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->c:[B

    new-array p1, v0, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->d:[B

    return-void
.end method

.method private a([BIILorg/bouncycastle/pqc/crypto/xmss/h;)[B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->a:Lorg/bouncycastle/pqc/crypto/xmss/k;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/k;->c()I

    move-result v0

    const-string v1, "startHash == null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v1, p1

    if-ne v1, v0, :cond_3

    const-string v1, "otsHashAddress == null"

    invoke-static {p4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/h;->d()[B

    move-result-object v1

    const-string v2, "otsHashAddress byte array == null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    add-int v1, p2, p3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->a:Lorg/bouncycastle/pqc/crypto/xmss/k;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/k;->d()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_2

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    sub-int/2addr p3, v3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/xmss/i;->a([BIILorg/bouncycastle/pqc/crypto/xmss/h;)[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    invoke-direct {p2}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;-><init>()V

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/m;->b()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/m;->c()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/h;->g()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;->p(I)Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    move-result-object p2

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/h;->e()I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;->n(I)Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    move-result-object p2

    sub-int/2addr v1, v3

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;->o(I)Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->f(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;->l()Lorg/bouncycastle/pqc/crypto/xmss/m;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/h;

    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->b:Lorg/bouncycastle/pqc/crypto/xmss/f;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->d:[B

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/h;->d()[B

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/f;->c([B[B)[B

    move-result-object p4

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/m;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/m;->c()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/h;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;->p(I)Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/h;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;->n(I)Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/h;->f()I

    move-result p2

    invoke-virtual {v1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;->o(I)Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->f(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;->l()Lorg/bouncycastle/pqc/crypto/xmss/m;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/h;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->b:Lorg/bouncycastle/pqc/crypto/xmss/f;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->d:[B

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/h;->d()[B

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lorg/bouncycastle/pqc/crypto/xmss/f;->c([B[B)[B

    move-result-object p2

    new-array v1, v0, [B

    :goto_0
    if-ge p3, v0, :cond_1

    aget-byte v2, p1, p3

    aget-byte v3, p2, p3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->b:Lorg/bouncycastle/pqc/crypto/xmss/f;

    invoke-virtual {p1, p4, v1}, Lorg/bouncycastle/pqc/crypto/xmss/f;->a([B[B)[B

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "max chain length must not be greater than w"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startHash needs to be "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "bytes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(I)[B
    .locals 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->a:Lorg/bouncycastle/pqc/crypto/xmss/k;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/k;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->b:Lorg/bouncycastle/pqc/crypto/xmss/f;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->c:[B

    int-to-long v2, p1

    const/16 p1, 0x20

    invoke-static {v2, v3, p1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->q(JI)[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/xmss/f;->c([B[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected c()Lorg/bouncycastle/pqc/crypto/xmss/f;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->b:Lorg/bouncycastle/pqc/crypto/xmss/f;

    return-object v0
.end method

.method protected d()Lorg/bouncycastle/pqc/crypto/xmss/k;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->a:Lorg/bouncycastle/pqc/crypto/xmss/k;

    return-object v0
.end method

.method e(Lorg/bouncycastle/pqc/crypto/xmss/h;)Lorg/bouncycastle/pqc/crypto/xmss/l;
    .locals 6

    const-string v0, "otsHashAddress == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->a:Lorg/bouncycastle/pqc/crypto/xmss/k;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/k;->a()I

    move-result v0

    new-array v0, v0, [[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->a:Lorg/bouncycastle/pqc/crypto/xmss/k;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/k;->a()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/m;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/m;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/h;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;->p(I)Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;->n(I)Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/h;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;->o(I)Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/m;->a()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->f(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;->l()Lorg/bouncycastle/pqc/crypto/xmss/m;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/h;

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/xmss/i;->b(I)[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->a:Lorg/bouncycastle/pqc/crypto/xmss/k;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/k;->d()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v3, v1, v4, p1}, Lorg/bouncycastle/pqc/crypto/xmss/i;->a([BIILorg/bouncycastle/pqc/crypto/xmss/h;)[B

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/l;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->a:Lorg/bouncycastle/pqc/crypto/xmss/k;

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/l;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/k;[[B)V

    return-object p1
.end method

.method protected f()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->d:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected g([BLorg/bouncycastle/pqc/crypto/xmss/h;)[B
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/m;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/m;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/h;->g()I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;->p(I)Lorg/bouncycastle/pqc/crypto/xmss/h$b;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/h$b;->l()Lorg/bouncycastle/pqc/crypto/xmss/m;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/pqc/crypto/xmss/h;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->b:Lorg/bouncycastle/pqc/crypto/xmss/f;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/h;->d()[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/f;->c([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method h([B[B)V
    .locals 2

    const-string v0, "secretKeySeed == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->a:Lorg/bouncycastle/pqc/crypto/xmss/k;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/k;->c()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string v0, "publicSeed == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->a:Lorg/bouncycastle/pqc/crypto/xmss/k;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/k;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->c:[B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/i;->d:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of publicSeed needs to be equal to size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size of secretKeySeed needs to be equal to size of digest"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
