.class Lorg/bouncycastle/jcajce/provider/asymmetric/ec/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/security/spec/ECParameterSpec;Z)Lpj/g;
    .locals 7

    instance-of v0, p0, Lek/c;

    if-eqz v0, :cond_1

    check-cast p0, Lek/c;

    invoke-virtual {p0}, Lek/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lyj/c;->g(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-virtual {p0}, Lek/c;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/n;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance p0, Lpj/g;

    invoke-direct {p0, p1}, Lpj/g;-><init>(Lorg/bouncycastle/asn1/n;)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Lpj/g;

    sget-object p1, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    invoke-direct {p0, p1}, Lpj/g;-><init>(Lorg/bouncycastle/asn1/l;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->a(Ljava/security/spec/EllipticCurve;)Lfk/e;

    move-result-object v2

    new-instance v0, Lpj/i;

    new-instance v3, Lpj/k;

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v2, v1}, Lyj/b;->d(Lfk/e;Ljava/security/spec/ECPoint;)Lfk/i;

    move-result-object v1

    invoke-direct {v3, v1, p1}, Lpj/k;-><init>(Lfk/i;Z)V

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p1

    int-to-long v5, p1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance p0, Lpj/g;

    invoke-direct {p0, v0}, Lpj/g;-><init>(Lpj/i;)V

    :goto_0
    return-object p0
.end method
