.class public Loj/g;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field a:Lorg/bouncycastle/asn1/c;

.field b:Lorg/bouncycastle/asn1/k;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/bouncycastle/asn1/c;->N(Z)Lorg/bouncycastle/asn1/c;

    move-result-object v1

    iput-object v1, p0, Loj/g;->a:Lorg/bouncycastle/asn1/c;

    const/4 v1, 0x0

    iput-object v1, p0, Loj/g;->b:Lorg/bouncycastle/asn1/k;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Loj/g;->a:Lorg/bouncycastle/asn1/c;

    iput-object v1, p0, Loj/g;->b:Lorg/bouncycastle/asn1/k;

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/c;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/c;->L(Ljava/lang/Object;)Lorg/bouncycastle/asn1/c;

    move-result-object v0

    iput-object v0, p0, Loj/g;->a:Lorg/bouncycastle/asn1/c;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Loj/g;->a:Lorg/bouncycastle/asn1/c;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    iput-object v0, p0, Loj/g;->b:Lorg/bouncycastle/asn1/k;

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Loj/g;->a:Lorg/bouncycastle/asn1/c;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object p1

    iput-object p1, p0, Loj/g;->b:Lorg/bouncycastle/asn1/k;

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong sequence in constructor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public static x(Ljava/lang/Object;)Loj/g;
    .locals 1

    instance-of v0, p0, Loj/g;

    if-eqz v0, :cond_0

    check-cast p0, Loj/g;

    return-object p0

    :cond_0
    instance-of v0, p0, Loj/a0;

    if-eqz v0, :cond_1

    check-cast p0, Loj/a0;

    invoke-static {p0}, Loj/a0;->a(Loj/a0;)Lorg/bouncycastle/asn1/r;

    move-result-object p0

    invoke-static {p0}, Loj/g;->x(Ljava/lang/Object;)Loj/g;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Loj/g;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/g;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Loj/g;->a:Lorg/bouncycastle/asn1/c;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_0
    iget-object v1, p0, Loj/g;->b:Lorg/bouncycastle/asn1/k;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Loj/g;->b:Lorg/bouncycastle/asn1/k;

    const-string v1, "BasicConstraints: isCa("

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Loj/g;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Loj/g;->z()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), pathLenConstraint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Loj/g;->b:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public y()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Loj/g;->b:Lorg/bouncycastle/asn1/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Loj/g;->a:Lorg/bouncycastle/asn1/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/c;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
