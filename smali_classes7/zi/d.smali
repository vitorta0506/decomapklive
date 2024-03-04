.class public Lzi/d;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field a:I

.field b:Lorg/bouncycastle/asn1/k;

.field c:Lorg/bouncycastle/asn1/k;

.field d:Lorg/bouncycastle/asn1/k;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput p1, p0, Lzi/d;->a:I

    new-instance p1, Lorg/bouncycastle/asn1/k;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lzi/d;->b:Lorg/bouncycastle/asn1/k;

    new-instance p1, Lorg/bouncycastle/asn1/k;

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lzi/d;->c:Lorg/bouncycastle/asn1/k;

    new-instance p1, Lorg/bouncycastle/asn1/k;

    invoke-direct {p1, p4}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lzi/d;->d:Lorg/bouncycastle/asn1/k;

    return-void
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    iget v2, p0, Lzi/d;->a:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lzi/d;->b:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lzi/d;->c:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lzi/d;->d:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lzi/d;->d:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->M()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lzi/d;->b:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->M()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lzi/d;->c:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->M()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
