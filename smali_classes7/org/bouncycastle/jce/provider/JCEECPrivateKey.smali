.class public Lorg/bouncycastle/jce/provider/JCEECPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lorg/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Ldk/b;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private attrCarrier:Lyj/f;

.field private d:Ljava/math/BigInteger;

.field private ecSpec:Ljava/security/spec/ECParameterSpec;

.field private publicKey:Lorg/bouncycastle/asn1/n0;

.field private withCompression:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lyj/f;

    return-void
.end method

.method constructor <init>(Lgj/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lyj/f;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lgj/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lek/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "EC"

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance p2, Lyj/f;

    invoke-direct {p2}, Lyj/f;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jce/provider/JCEECPrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean p1, p2, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lyj/f;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/p;Lorg/bouncycastle/jce/provider/JCEECPublicKey;Lek/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    if-nez p4, :cond_0

    invoke-virtual {p2}, Lvj/n;->b()Lvj/l;

    move-result-object p1

    invoke-virtual {p1}, Lvj/l;->a()Lfk/e;

    move-result-object p2

    invoke-virtual {p1}, Lvj/l;->e()[B

    move-result-object p4

    invoke-static {p2, p4}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p2

    new-instance p4, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Lvj/l;->b()Lfk/i;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p1}, Lvj/l;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lvj/l;->c()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {p4, p2, v0, v1, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p4, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lek/d;->a()Lfk/e;

    move-result-object p1

    invoke-virtual {p4}, Lek/d;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    new-instance p2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p4}, Lek/d;->b()Lfk/i;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p4}, Lek/d;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p4}, Lek/d;->c()Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p4}, Ljava/math/BigInteger;->intValue()I

    move-result p4

    invoke-direct {p2, p1, v0, v1, p4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    invoke-direct {p0, p3}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lorg/bouncycastle/jce/provider/JCEECPublicKey;)Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/p;Lorg/bouncycastle/jce/provider/JCEECPublicKey;Ljava/security/spec/ECParameterSpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    if-nez p4, :cond_0

    invoke-virtual {p2}, Lvj/n;->b()Lvj/l;

    move-result-object p1

    invoke-virtual {p1}, Lvj/l;->a()Lfk/e;

    move-result-object p2

    invoke-virtual {p1}, Lvj/l;->e()[B

    move-result-object p4

    invoke-static {p2, p4}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p2

    new-instance p4, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Lvj/l;->b()Lfk/i;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p1}, Lvj/l;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lvj/l;->c()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {p4, p2, v0, v1, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    :cond_0
    iput-object p4, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-direct {p0, p3}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->getPublicKeyDetails(Lorg/bouncycastle/jce/provider/JCEECPublicKey;)Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lyj/f;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method private getPublicKeyDetails(Lorg/bouncycastle/jce/provider/JCEECPublicKey;)Lorg/bouncycastle/asn1/n0;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/r;->G([B)Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-static {p1}, Loj/v;->z(Ljava/lang/Object;)Loj/v;

    move-result-object p1

    invoke-virtual {p1}, Loj/v;->B()Lorg/bouncycastle/asn1/n0;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private populateFromPrivKeyInfo(Lgj/d;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lgj/d;->B()Loj/a;

    move-result-object v0

    invoke-virtual {v0}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lpj/g;->x(Ljava/lang/Object;)Lpj/g;

    move-result-object v0

    invoke-virtual {v0}, Lpj/g;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lpj/g;->y()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/n;->P(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object v0

    invoke-static {v0}, Lyj/c;->f(Lorg/bouncycastle/asn1/n;)Lpj/i;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lzi/b;->d(Lorg/bouncycastle/asn1/n;)Lvj/l;

    move-result-object v1

    invoke-virtual {v1}, Lvj/l;->a()Lfk/e;

    move-result-object v2

    invoke-virtual {v1}, Lvj/l;->e()[B

    move-result-object v3

    invoke-static {v2, v3}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    new-instance v2, Lek/c;

    invoke-static {v0}, Lzi/b;->f(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lvj/l;->b()Lfk/i;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v7

    invoke-virtual {v1}, Lvj/l;->d()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lvj/l;->c()Ljava/math/BigInteger;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lek/c;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lpj/i;->x()Lfk/e;

    move-result-object v2

    invoke-virtual {v1}, Lpj/i;->G()[B

    move-result-object v3

    invoke-static {v2, v3}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    new-instance v2, Lek/c;

    invoke-static {v0}, Lyj/c;->c(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lpj/i;->y()Lfk/i;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v7

    invoke-virtual {v1}, Lpj/i;->F()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lpj/i;->z()Ljava/math/BigInteger;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lek/c;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lpj/g;->z()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lpj/g;->y()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    invoke-static {v0}, Lpj/i;->B(Ljava/lang/Object;)Lpj/i;

    move-result-object v0

    invoke-virtual {v0}, Lpj/i;->x()Lfk/e;

    move-result-object v1

    invoke-virtual {v0}, Lpj/i;->G()[B

    move-result-object v2

    invoke-static {v1, v2}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Lpj/i;->y()Lfk/i;

    move-result-object v3

    invoke-static {v3}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Lpj/i;->F()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lpj/i;->z()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {v2, v1, v3, v4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    :goto_0
    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_1
    invoke-virtual {p1}, Lgj/d;->I()Lorg/bouncycastle/asn1/e;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/asn1/k;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    goto :goto_2

    :cond_3
    new-instance v0, Lij/b;

    check-cast p1, Lorg/bouncycastle/asn1/s;

    invoke-direct {v0, p1}, Lij/b;-><init>(Lorg/bouncycastle/asn1/s;)V

    invoke-virtual {v0}, Lij/b;->x()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lij/b;->z()Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    :goto_2
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/asn1/r;->G([B)Lorg/bouncycastle/asn1/r;

    move-result-object v0

    invoke-static {v0}, Lgj/d;->y(Ljava/lang/Object;)Lgj/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->populateFromPrivKeyInfo(Lgj/d;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0, p1}, Lyj/f;->a(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0, p1}, Lyj/f;->b(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method engineGetSpec()Lek/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lyj/b;->g(Ljava/security/spec/ECParameterSpec;)Lek/d;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lzj/b;

    invoke-interface {v0}, Lzj/b;->b()Lek/d;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lek/d;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lek/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Lek/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getBagAttribute(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/asn1/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0, p1}, Lyj/f;->getBagAttribute(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    return-object p1
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0}, Lyj/f;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getD()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Lek/c;

    if-eqz v1, :cond_1

    check-cast v0, Lek/c;

    invoke-virtual {v0}, Lek/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyj/c;->g(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/n;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v1, Lek/c;

    invoke-virtual {v1}, Lek/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lpj/g;

    invoke-direct {v1, v0}, Lpj/g;-><init>(Lorg/bouncycastle/asn1/n;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    new-instance v1, Lpj/g;

    sget-object v0, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    invoke-direct {v1, v0}, Lpj/g;-><init>(Lorg/bouncycastle/asn1/l;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->a(Ljava/security/spec/EllipticCurve;)Lfk/e;

    move-result-object v2

    new-instance v0, Lpj/i;

    new-instance v3, Lpj/k;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v2, v1}, Lyj/b;->d(Lfk/e;Ljava/security/spec/ECPoint;)Lfk/i;

    move-result-object v1

    iget-boolean v4, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    invoke-direct {v3, v1, v4}, Lpj/k;-><init>(Lfk/i;Z)V

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v1, Lpj/g;

    invoke-direct {v1, v0}, Lpj/g;-><init>(Lpj/i;)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    if-eqz v0, :cond_3

    new-instance v0, Lij/b;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    invoke-direct {v0, v2, v3, v1}, Lij/b;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/n0;Lorg/bouncycastle/asn1/e;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lij/b;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lij/b;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/e;)V

    :goto_1
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->algorithm:Ljava/lang/String;

    const-string v3, "ECGOST3410"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lgj/d;

    new-instance v3, Loj/a;

    sget-object v4, Lzi/a;->m:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v1}, Lpj/g;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0}, Lij/b;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    goto :goto_2

    :cond_4
    new-instance v2, Lgj/d;

    new-instance v3, Loj/a;

    sget-object v4, Lpj/o;->v3:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v1}, Lpj/g;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0}, Lij/b;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    :goto_2
    const-string v0, "DER"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/m;->u(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Lek/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lyj/b;->g(Ljava/security/spec/ECParameterSpec;)Lek/d;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->engineGetSpec()Lek/d;

    move-result-object v1

    invoke-virtual {v1}, Lek/d;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setBagAttribute(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0, p1, p2}, Lyj/f;->setBagAttribute(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    return-void
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->withCompression:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/i;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EC Private Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "             S: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEECPrivateKey;->d:Ljava/math/BigInteger;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
