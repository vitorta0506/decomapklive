.class public Lkj/b;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field a:Ljava/math/BigInteger;

.field b:Lkj/a;

.field c:Lorg/bouncycastle/asn1/k;

.field d:Lorg/bouncycastle/asn1/o;

.field e:Lorg/bouncycastle/asn1/k;

.field f:Lorg/bouncycastle/asn1/o;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lkj/b;->a:Ljava/math/BigInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/y;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/y;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/y;->O()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/y;->N()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/y;->d()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lkj/b;->a:Ljava/math/BigInteger;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object parse error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Lkj/a;->x(Ljava/lang/Object;)Lkj/a;

    move-result-object v1

    iput-object v1, p0, Lkj/b;->b:Lkj/a;

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v1

    iput-object v1, p0, Lkj/b;->c:Lorg/bouncycastle/asn1/k;

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v1

    iput-object v1, p0, Lkj/b;->d:Lorg/bouncycastle/asn1/o;

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v1

    iput-object v1, p0, Lkj/b;->e:Lorg/bouncycastle/asn1/k;

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object p1

    iput-object p1, p0, Lkj/b;->f:Lorg/bouncycastle/asn1/o;

    return-void
.end method

.method public static F(Ljava/lang/Object;)Lkj/b;
    .locals 1

    instance-of v0, p0, Lkj/b;

    if-eqz v0, :cond_0

    check-cast p0, Lkj/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lkj/b;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lkj/b;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()[B
    .locals 1

    iget-object v0, p0, Lkj/b;->f:Lorg/bouncycastle/asn1/o;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lkj/b;->e:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 6

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Lkj/b;->a:Ljava/math/BigInteger;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/d1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lorg/bouncycastle/asn1/k;

    iget-object v5, p0, Lkj/b;->a:Ljava/math/BigInteger;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_0
    iget-object v1, p0, Lkj/b;->b:Lkj/a;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lkj/b;->c:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lkj/b;->d:Lorg/bouncycastle/asn1/o;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lkj/b;->e:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lkj/b;->f:Lorg/bouncycastle/asn1/o;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lkj/b;->c:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public y()[B
    .locals 1

    iget-object v0, p0, Lkj/b;->d:Lorg/bouncycastle/asn1/o;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public z()Lkj/a;
    .locals 1

    iget-object v0, p0, Lkj/b;->b:Lkj/a;

    return-object v0
.end method
