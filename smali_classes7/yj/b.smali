.class public Lyj/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lyj/b;->a:Ljava/util/Map;

    invoke-static {}, Lsj/a;->l()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lpj/d;->a(Ljava/lang/String;)Lpj/i;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lyj/b;->a:Ljava/util/Map;

    invoke-virtual {v2}, Lpj/i;->x()Lfk/e;

    move-result-object v2

    invoke-static {v1}, Lsj/a;->i(Ljava/lang/String;)Lpj/i;

    move-result-object v1

    invoke-virtual {v1}, Lpj/i;->x()Lfk/e;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "Curve25519"

    invoke-static {v0}, Lsj/a;->i(Ljava/lang/String;)Lpj/i;

    move-result-object v0

    invoke-virtual {v0}, Lpj/i;->x()Lfk/e;

    move-result-object v0

    sget-object v1, Lyj/b;->a:Ljava/util/Map;

    new-instance v8, Lfk/e$f;

    invoke-virtual {v0}, Lfk/e;->p()Lmk/a;

    move-result-object v2

    invoke-interface {v2}, Lmk/a;->b()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lfk/e;->l()Lfk/f;

    move-result-object v2

    invoke-virtual {v2}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lfk/e;->m()Lfk/f;

    move-result-object v2

    invoke-virtual {v2}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lfk/e;->s()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lfk/e;->n()Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lfk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/security/spec/EllipticCurve;)Lfk/e;
    .locals 8

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v7

    instance-of p0, v0, Ljava/security/spec/ECFieldFp;

    if-eqz p0, :cond_1

    new-instance p0, Lfk/e$f;

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0, v6, v7}, Lfk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sget-object v0, Lyj/b;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lyj/b;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfk/e;

    :cond_0
    return-object p0

    :cond_1
    check-cast v0, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v2

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    move-result-object p0

    invoke-static {p0}, Lyj/c;->a([I)[I

    move-result-object p0

    new-instance v0, Lfk/e$e;

    const/4 v1, 0x0

    aget v3, p0, v1

    const/4 v1, 0x1

    aget v4, p0, v1

    const/4 v1, 0x2

    aget v5, p0, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lfk/e$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;
    .locals 3

    invoke-virtual {p0}, Lfk/e;->p()Lmk/a;

    move-result-object p1

    invoke-static {p1}, Lyj/b;->c(Lmk/a;)Ljava/security/spec/ECField;

    move-result-object p1

    invoke-virtual {p0}, Lfk/e;->l()Lfk/f;

    move-result-object v0

    invoke-virtual {v0}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lfk/e;->m()Lfk/f;

    move-result-object p0

    invoke-virtual {p0}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v1, Ljava/security/spec/EllipticCurve;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, p0, v2}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method

.method public static c(Lmk/a;)Ljava/security/spec/ECField;
    .locals 3

    invoke-static {p0}, Lfk/c;->f(Lmk/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/spec/ECFieldFp;

    invoke-interface {p0}, Lmk/a;->b()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    check-cast p0, Lmk/f;

    invoke-interface {p0}, Lmk/f;->c()Lmk/e;

    move-result-object p0

    invoke-interface {p0}, Lmk/e;->a()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/a;->n([III)[I

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->C([I)[I

    move-result-object v0

    new-instance v1, Ljava/security/spec/ECFieldF2m;

    invoke-interface {p0}, Lmk/e;->b()I

    move-result p0

    invoke-direct {v1, p0, v0}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    return-object v1
.end method

.method public static d(Lfk/e;Ljava/security/spec/ECPoint;)Lfk/i;
    .locals 1

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lfk/e;->f(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lfk/i;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lfk/i;
    .locals 0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-static {p0}, Lyj/b;->a(Ljava/security/spec/EllipticCurve;)Lfk/e;

    move-result-object p0

    invoke-static {p0, p1}, Lyj/b;->d(Lfk/e;Ljava/security/spec/ECPoint;)Lfk/i;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lfk/i;)Ljava/security/spec/ECPoint;
    .locals 2

    invoke-virtual {p0}, Lfk/i;->y()Lfk/i;

    move-result-object p0

    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-virtual {p0}, Lfk/i;->f()Lfk/f;

    move-result-object v1

    invoke-virtual {v1}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lfk/i;->g()Lfk/f;

    move-result-object p0

    invoke-virtual {p0}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static g(Ljava/security/spec/ECParameterSpec;)Lek/d;
    .locals 9

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->a(Ljava/security/spec/EllipticCurve;)Lfk/e;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lyj/b;->d(Lfk/e;Ljava/security/spec/ECPoint;)Lfk/i;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v7

    instance-of v1, p0, Lek/c;

    if-eqz v1, :cond_0

    new-instance v8, Lek/b;

    check-cast p0, Lek/c;

    invoke-virtual {p0}, Lek/c;->a()Ljava/lang/String;

    move-result-object v2

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lek/b;-><init>(Ljava/lang/String;Lfk/e;Lfk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v8

    :cond_0
    new-instance p0, Lek/d;

    move-object v1, p0

    move-object v2, v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lek/d;-><init>(Lfk/e;Lfk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object p0
.end method

.method public static h(Ljava/security/spec/EllipticCurve;Lek/d;)Ljava/security/spec/ECParameterSpec;
    .locals 7

    invoke-virtual {p1}, Lek/d;->b()Lfk/i;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v4

    instance-of v0, p1, Lek/b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lek/b;

    invoke-virtual {v0}, Lek/b;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lek/c;

    invoke-virtual {p1}, Lek/d;->d()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lek/d;->c()Ljava/math/BigInteger;

    move-result-object v6

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lek/c;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Lek/d;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lek/d;->c()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v0, p0, v4, v1, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static i(Lpj/g;Lfk/e;)Ljava/security/spec/ECParameterSpec;
    .locals 8

    invoke-virtual {p0}, Lpj/g;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lpj/g;->y()Lorg/bouncycastle/asn1/r;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/n;

    invoke-static {p0}, Lyj/c;->f(Lorg/bouncycastle/asn1/n;)Lpj/i;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lzj/b;

    invoke-interface {v1}, Lzj/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpj/i;

    :cond_0
    invoke-virtual {v0}, Lpj/i;->G()[B

    move-result-object v1

    invoke-static {p1, v1}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    new-instance p1, Lek/c;

    invoke-static {p0}, Lyj/c;->c(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lpj/i;->y()Lfk/i;

    move-result-object p0

    invoke-static {p0}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v0}, Lpj/i;->F()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lpj/i;->z()Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lek/c;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0}, Lpj/g;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lpj/g;->y()Lorg/bouncycastle/asn1/r;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    invoke-static {p0}, Lpj/i;->B(Ljava/lang/Object;)Lpj/i;

    move-result-object p0

    invoke-virtual {p0}, Lpj/i;->G()[B

    move-result-object v0

    invoke-static {p1, v0}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-virtual {p0}, Lpj/i;->z()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lpj/i;->y()Lfk/i;

    move-result-object v1

    invoke-static {v1}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p0}, Lpj/i;->F()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lpj/i;->z()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {v0, p1, v1, v2, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lpj/i;->y()Lfk/i;

    move-result-object v1

    invoke-static {v1}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p0}, Lpj/i;->F()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lzi/e;->z(Ljava/lang/Object;)Lzi/e;

    move-result-object p0

    invoke-virtual {p0}, Lzi/e;->B()Lorg/bouncycastle/asn1/n;

    move-result-object p1

    invoke-static {p1}, Lzi/b;->f(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lck/a;->a(Ljava/lang/String;)Lek/b;

    move-result-object p1

    invoke-virtual {p1}, Lek/d;->a()Lfk/e;

    move-result-object v0

    invoke-virtual {p1}, Lek/d;->e()[B

    move-result-object v1

    invoke-static {v0, v1}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    new-instance v0, Lek/c;

    invoke-virtual {p0}, Lzi/e;->B()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-static {p0}, Lzi/b;->f(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lek/d;->b()Lfk/i;

    move-result-object p0

    invoke-static {p0}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {p1}, Lek/d;->d()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Lek/d;->c()Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lek/c;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public static j(Lpj/i;)Ljava/security/spec/ECParameterSpec;
    .locals 4

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Lpj/i;->x()Lfk/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {p0}, Lpj/i;->y()Lfk/i;

    move-result-object v2

    invoke-static {v2}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {p0}, Lpj/i;->F()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lpj/i;->z()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static k(Lzj/b;Lpj/g;)Lfk/e;
    .locals 2

    invoke-interface {p0}, Lzj/b;->c()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lpj/g;->B()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lpj/g;->y()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/n;->P(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "named curve not acceptable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lyj/c;->f(Lorg/bouncycastle/asn1/n;)Lpj/i;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lzj/b;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lpj/i;

    :cond_2
    invoke-virtual {v0}, Lpj/i;->x()Lfk/e;

    move-result-object p0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lpj/g;->z()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lzj/b;->b()Lek/d;

    move-result-object p0

    invoke-virtual {p0}, Lek/d;->a()Lfk/e;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lpj/g;->y()Lorg/bouncycastle/asn1/r;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/s;->size()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_5

    invoke-static {p0}, Lpj/i;->B(Ljava/lang/Object;)Lpj/i;

    move-result-object p0

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/n;->P(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-static {p0}, Lzi/b;->e(Lorg/bouncycastle/asn1/n;)Lpj/i;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Lpj/i;->x()Lfk/e;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "encoded parameters not acceptable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Lzj/b;Ljava/security/spec/ECParameterSpec;)Lvj/l;
    .locals 6

    if-nez p1, :cond_0

    invoke-interface {p0}, Lzj/b;->b()Lek/d;

    move-result-object p0

    new-instance p1, Lvj/l;

    invoke-virtual {p0}, Lek/d;->a()Lfk/e;

    move-result-object v1

    invoke-virtual {p0}, Lek/d;->b()Lfk/i;

    move-result-object v2

    invoke-virtual {p0}, Lek/d;->d()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lek/d;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lek/d;->e()[B

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lvj/l;-><init>(Lfk/e;Lfk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lyj/b;->g(Ljava/security/spec/ECParameterSpec;)Lek/d;

    move-result-object p1

    invoke-static {p0, p1}, Lyj/c;->d(Lzj/b;Lek/d;)Lvj/l;

    move-result-object p1

    :goto_0
    return-object p1
.end method
