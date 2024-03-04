.class public Lek/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Ldk/a;


# instance fields
.field private a:Lek/m;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lek/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lek/k;->a:Lek/m;

    sget-object p1, Lzi/a;->p:Lorg/bouncycastle/asn1/n;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lek/k;->c:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lek/k;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lek/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/n;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lzi/c;->a(Lorg/bouncycastle/asn1/n;)Lzi/d;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    invoke-static {p1}, Lzi/c;->b(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lzi/c;->a(Lorg/bouncycastle/asn1/n;)Lzi/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lek/m;

    invoke-virtual {v0}, Lzi/d;->y()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lzi/d;->z()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lzi/d;->x()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lek/m;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lek/k;->a:Lek/m;

    iput-object p1, p0, Lek/k;->b:Ljava/lang/String;

    iput-object p2, p0, Lek/k;->c:Ljava/lang/String;

    iput-object p3, p0, Lek/k;->d:Ljava/lang/String;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "no key parameter set for passed in name/OID."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static e(Lzi/e;)Lek/k;
    .locals 3

    invoke-virtual {p0}, Lzi/e;->y()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lek/k;

    invoke-virtual {p0}, Lzi/e;->B()Lorg/bouncycastle/asn1/n;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lzi/e;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lzi/e;->y()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lek/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lek/k;

    invoke-virtual {p0}, Lzi/e;->B()Lorg/bouncycastle/asn1/n;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lzi/e;->x()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/n;->O()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lek/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lek/m;
    .locals 1

    iget-object v0, p0, Lek/k;->a:Lek/m;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lek/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lek/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lek/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lek/k;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lek/k;

    iget-object v0, p0, Lek/k;->a:Lek/m;

    iget-object v2, p1, Lek/k;->a:Lek/m;

    invoke-virtual {v0, v2}, Lek/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lek/k;->c:Ljava/lang/String;

    iget-object v2, p1, Lek/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lek/k;->d:Ljava/lang/String;

    iget-object p1, p1, Lek/k;->d:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lek/k;->a:Lek/m;

    invoke-virtual {v0}, Lek/m;->hashCode()I

    move-result v0

    iget-object v1, p0, Lek/k;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lek/k;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method
