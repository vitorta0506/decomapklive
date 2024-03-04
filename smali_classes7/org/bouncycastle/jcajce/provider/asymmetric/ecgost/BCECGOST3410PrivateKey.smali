.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lorg/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Ldk/b;


# static fields
.field static final serialVersionUID:J = 0x648ee5f4b1b13042L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private transient attrCarrier:Lyj/f;

.field private transient d:Ljava/math/BigInteger;

.field private transient ecSpec:Ljava/security/spec/ECParameterSpec;

.field private transient gostParams:Lorg/bouncycastle/asn1/e;

.field private transient publicKey:Lorg/bouncycastle/asn1/n0;

.field private withCompression:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->attrCarrier:Lyj/f;

    return-void
.end method

.method public constructor <init>(Lek/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ECGOST3410"

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->algorithm:Ljava/lang/String;

    new-instance p1, Lyj/f;

    invoke-direct {p1}, Lyj/f;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->attrCarrier:Lyj/f;

    const/4 p1, 0x0

    throw p1
.end method

.method constructor <init>(Lgj/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->attrCarrier:Lyj/f;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->populateFromPrivKeyInfo(Lgj/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->d:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/p;Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;Lek/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->d:Ljava/math/BigInteger;

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

    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->getGostParams()Lorg/bouncycastle/asn1/e;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->gostParams:Lorg/bouncycastle/asn1/e;

    invoke-direct {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->getPublicKeyDetails(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;)Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/p;Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;Ljava/security/spec/ECParameterSpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->d:Ljava/math/BigInteger;

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
    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->getGostParams()Lorg/bouncycastle/asn1/e;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->gostParams:Lorg/bouncycastle/asn1/e;

    invoke-direct {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->getPublicKeyDetails(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;)Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->attrCarrier:Lyj/f;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->d:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->attrCarrier:Lyj/f;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->d:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->d:Ljava/math/BigInteger;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->withCompression:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->withCompression:Z

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->attrCarrier:Lyj/f;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->attrCarrier:Lyj/f;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->gostParams:Lorg/bouncycastle/asn1/e;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->gostParams:Lorg/bouncycastle/asn1/e;

    return-void
.end method

.method private extractBytes([BILjava/math/BigInteger;)V
    .locals 5

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    new-array v0, v2, [B

    array-length v3, p3

    rsub-int/lit8 v3, v3, 0x20

    array-length v4, p3

    invoke-static {p3, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    :cond_0
    :goto_0
    if-eq v1, v2, :cond_1

    add-int v0, p2, v1

    array-length v3, p3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    aget-byte v3, p3, v3

    aput-byte v3, p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getPublicKeyDetails(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;)Lorg/bouncycastle/asn1/n0;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->getEncoded()[B

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

    invoke-interface {v0}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/s;

    if-eqz v2, :cond_3

    invoke-static {v1}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-static {v1}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-static {v0}, Lzi/e;->z(Ljava/lang/Object;)Lzi/e;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->gostParams:Lorg/bouncycastle/asn1/e;

    invoke-virtual {v0}, Lzi/e;->B()Lorg/bouncycastle/asn1/n;

    move-result-object v1

    invoke-static {v1}, Lzi/b;->f(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lck/a;->a(Ljava/lang/String;)Lek/b;

    move-result-object v1

    invoke-virtual {v1}, Lek/d;->a()Lfk/e;

    move-result-object v2

    invoke-virtual {v1}, Lek/d;->e()[B

    move-result-object v3

    invoke-static {v2, v3}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    new-instance v2, Lek/c;

    invoke-virtual {v0}, Lzi/e;->B()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    invoke-static {v0}, Lzi/b;->f(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lek/d;->b()Lfk/i;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v7

    invoke-virtual {v1}, Lek/d;->d()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Lek/d;->c()Ljava/math/BigInteger;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lek/c;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Lgj/d;->I()Lorg/bouncycastle/asn1/e;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/asn1/k;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/k;->M()Ljava/math/BigInteger;

    move-result-object p1

    goto/16 :goto_3

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    array-length v2, p1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    goto/16 :goto_3

    :cond_3
    invoke-static {v0}, Lpj/g;->x(Ljava/lang/Object;)Lpj/g;

    move-result-object v0

    invoke-virtual {v0}, Lpj/g;->B()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lpj/g;->y()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/n;->P(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object v0

    invoke-static {v0}, Lyj/c;->f(Lorg/bouncycastle/asn1/n;)Lpj/i;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lyj/c;->c(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lpj/i;->x()Lfk/e;

    move-result-object v0

    invoke-virtual {v1}, Lpj/i;->G()[B

    move-result-object v2

    invoke-static {v0, v2}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    new-instance v0, Lek/c;

    invoke-virtual {v1}, Lpj/i;->y()Lfk/i;

    move-result-object v2

    invoke-static {v2}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v1}, Lpj/i;->F()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lpj/i;->z()Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lek/c;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    invoke-virtual {v0}, Lpj/g;->z()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_2

    :cond_6
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

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_2
    invoke-virtual {p1}, Lgj/d;->I()Lorg/bouncycastle/asn1/e;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/asn1/k;

    if-eqz v0, :cond_7

    invoke-static {p1}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->d:Ljava/math/BigInteger;

    goto :goto_4

    :cond_7
    invoke-static {p1}, Lij/a;->x(Ljava/lang/Object;)Lij/a;

    move-result-object p1

    invoke-virtual {p1}, Lij/a;->y()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lij/a;->B()Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    :goto_4
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lorg/bouncycastle/asn1/r;->G([B)Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-static {p1}, Lgj/d;->y(Ljava/lang/Object;)Lgj/d;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->populateFromPrivKeyInfo(Lgj/d;)V

    new-instance p1, Lyj/f;

    invoke-direct {p1}, Lyj/f;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->attrCarrier:Lyj/f;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method engineGetSpec()Lek/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->engineGetSpec()Lek/d;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->engineGetSpec()Lek/d;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getBagAttribute(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/asn1/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0, p1}, Lyj/f;->getBagAttribute(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    return-object p1
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0}, Lyj/f;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getD()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->gostParams:Lorg/bouncycastle/asn1/e;

    const-string v1, "DER"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->extractBytes([BILjava/math/BigInteger;)V

    :try_start_0
    new-instance v3, Lgj/d;

    new-instance v4, Loj/a;

    sget-object v5, Lzi/a;->m:Lorg/bouncycastle/asn1/n;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->gostParams:Lorg/bouncycastle/asn1/e;

    invoke-direct {v4, v5, v6}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    new-instance v5, Lorg/bouncycastle/asn1/w0;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-direct {v3, v4, v5}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/m;->u(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v3, v0, Lek/c;

    if-eqz v3, :cond_2

    check-cast v0, Lek/c;

    invoke-virtual {v0}, Lek/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyj/c;->g(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/n;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v3, Lek/c;

    invoke-virtual {v3}, Lek/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/n;-><init>(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Lpj/g;

    invoke-direct {v3, v0}, Lpj/g;-><init>(Lorg/bouncycastle/asn1/n;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    new-instance v3, Lpj/g;

    sget-object v0, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    invoke-direct {v3, v0}, Lpj/g;-><init>(Lorg/bouncycastle/asn1/l;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lzj/b;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lyj/c;->h(Lzj/b;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->a(Ljava/security/spec/EllipticCurve;)Lfk/e;

    move-result-object v4

    new-instance v0, Lpj/i;

    new-instance v5, Lpj/k;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-static {v4, v3}, Lyj/b;->d(Lfk/e;Ljava/security/spec/ECPoint;)Lfk/i;

    move-result-object v3

    iget-boolean v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->withCompression:Z

    invoke-direct {v5, v3, v6}, Lpj/k;-><init>(Lfk/i;Z)V

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    int-to-long v7, v3

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v3, Lpj/g;

    invoke-direct {v3, v0}, Lpj/g;-><init>(Lpj/i;)V

    :goto_0
    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lzj/b;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v4}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lyj/c;->h(Lzj/b;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    :goto_1
    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    if-eqz v4, :cond_4

    new-instance v4, Lij/a;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    invoke-direct {v4, v0, v5, v6, v3}, Lij/a;-><init>(ILjava/math/BigInteger;Lorg/bouncycastle/asn1/n0;Lorg/bouncycastle/asn1/e;)V

    goto :goto_2

    :cond_4
    new-instance v4, Lij/a;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v4, v0, v5, v3}, Lij/a;-><init>(ILjava/math/BigInteger;Lorg/bouncycastle/asn1/e;)V

    :goto_2
    :try_start_1
    new-instance v0, Lgj/d;

    new-instance v5, Loj/a;

    sget-object v6, Lzi/a;->m:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v3}, Lpj/g;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    invoke-virtual {v4}, Lij/a;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v3

    invoke-direct {v0, v5, v3}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/m;->u(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Lek/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->engineGetSpec()Lek/d;

    move-result-object v1

    invoke-virtual {v1}, Lek/d;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setBagAttribute(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0, p1, p2}, Lyj/f;->setBagAttribute(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    return-void
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->withCompression:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PrivateKey;->engineGetSpec()Lek/d;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lyj/c;->i(Ljava/lang/String;Ljava/math/BigInteger;Lek/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
