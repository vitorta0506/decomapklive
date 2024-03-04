.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;
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

.field private transient gostParams:Lzi/e;

.field private transient publicKey:Lorg/bouncycastle/asn1/n0;

.field private withCompression:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lyj/f;

    return-void
.end method

.method public constructor <init>(Lek/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ECGOST3410-2012"

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance p1, Lyj/f;

    invoke-direct {p1}, Lyj/f;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lyj/f;

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

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lyj/f;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->populateFromPrivKeyInfo(Lgj/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/p;Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;Lek/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {p2}, Lvj/n;->b()Lvj/l;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    if-nez p4, :cond_0

    invoke-virtual {v0}, Lvj/l;->a()Lfk/e;

    move-result-object p1

    invoke-virtual {v0}, Lvj/l;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    new-instance p2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Lvj/l;->b()Lfk/i;

    move-result-object p4

    invoke-static {p4}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object p4

    invoke-virtual {v0}, Lvj/l;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lvj/l;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {p2, p1, p4, v1, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

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

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->getGostParams()Lzi/e;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->gostParams:Lzi/e;

    invoke-direct {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getPublicKeyDetails(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;)Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/p;Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;Ljava/security/spec/ECParameterSpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {p2}, Lvj/n;->b()Lvj/l;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    if-nez p4, :cond_0

    invoke-virtual {v0}, Lvj/l;->a()Lfk/e;

    move-result-object p1

    invoke-virtual {v0}, Lvj/l;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    new-instance p2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Lvj/l;->b()Lfk/i;

    move-result-object p4

    invoke-static {p4}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object p4

    invoke-virtual {v0}, Lvj/l;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lvj/l;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {p2, p1, p4, v1, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->getGostParams()Lzi/e;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->gostParams:Lzi/e;

    invoke-direct {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getPublicKeyDetails(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;)Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lyj/f;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410-2012"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lyj/f;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->withCompression:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->withCompression:Z

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lyj/f;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lyj/f;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->gostParams:Lzi/e;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->gostParams:Lzi/e;

    return-void
.end method

.method private extractBytes([BIILjava/math/BigInteger;)V
    .locals 4

    invoke-virtual {p4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p4

    array-length v0, p4

    const/4 v1, 0x0

    if-ge v0, p2, :cond_0

    new-array v0, p2, [B

    array-length v2, p4

    sub-int v2, p2, v2

    array-length v3, p4

    invoke-static {p4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p4, v0

    :cond_0
    :goto_0
    if-eq v1, p2, :cond_1

    add-int v0, p3, v1

    array-length v2, p4

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    aget-byte v2, p4, v2

    aput-byte v2, p1, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getPublicKeyDetails(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;)Lorg/bouncycastle/asn1/n0;
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Loj/v;->z(Ljava/lang/Object;)Loj/v;

    move-result-object p1

    invoke-virtual {p1}, Loj/v;->B()Lorg/bouncycastle/asn1/n0;

    move-result-object p1

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

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/s;

    if-eqz v1, :cond_4

    invoke-static {v0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_0
    invoke-virtual {p1}, Lgj/d;->B()Loj/a;

    move-result-object v0

    invoke-virtual {v0}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lzi/e;->z(Ljava/lang/Object;)Lzi/e;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->gostParams:Lzi/e;

    invoke-virtual {v0}, Lzi/e;->B()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    invoke-static {v0}, Lzi/b;->f(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lck/a;->a(Ljava/lang/String;)Lek/b;

    move-result-object v0

    invoke-virtual {v0}, Lek/d;->a()Lfk/e;

    move-result-object v1

    invoke-virtual {v0}, Lek/d;->e()[B

    move-result-object v2

    invoke-static {v1, v2}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v5

    new-instance v1, Lek/c;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->gostParams:Lzi/e;

    invoke-virtual {v2}, Lzi/e;->B()Lorg/bouncycastle/asn1/n;

    move-result-object v2

    invoke-static {v2}, Lzi/b;->f(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lek/d;->b()Lfk/i;

    move-result-object v2

    invoke-static {v2}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v6

    invoke-virtual {v0}, Lek/d;->d()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Lek/d;->c()Ljava/math/BigInteger;

    move-result-object v8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lek/c;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Lgj/d;->z()Lorg/bouncycastle/asn1/o;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lgj/d;->I()Lorg/bouncycastle/asn1/e;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/asn1/k;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/k;->M()Ljava/math/BigInteger;

    move-result-object p1

    goto/16 :goto_3

    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object p1

    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p1}, Lorg/bouncycastle/util/a;->B([B)[B

    move-result-object p1

    invoke-direct {v0, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    goto/16 :goto_4

    :cond_3
    :goto_0
    new-instance p1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/a;->B([B)[B

    move-result-object v0

    invoke-direct {p1, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p1}, Lgj/d;->B()Loj/a;

    move-result-object v0

    invoke-virtual {v0}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lpj/g;->x(Ljava/lang/Object;)Lpj/g;

    move-result-object v0

    invoke-virtual {v0}, Lpj/g;->B()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lpj/g;->y()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/n;->P(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object v0

    invoke-static {v0}, Lyj/c;->f(Lorg/bouncycastle/asn1/n;)Lpj/i;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lzi/b;->e(Lorg/bouncycastle/asn1/n;)Lpj/i;

    move-result-object v1

    invoke-virtual {v1}, Lpj/i;->x()Lfk/e;

    move-result-object v2

    invoke-virtual {v1}, Lpj/i;->G()[B

    move-result-object v3

    invoke-static {v2, v3}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    new-instance v2, Lek/c;

    invoke-static {v0}, Lzi/b;->f(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

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

    goto :goto_1

    :cond_5
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

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lpj/g;->z()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_2

    :cond_7
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

    :goto_1
    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_2
    invoke-virtual {p1}, Lgj/d;->I()Lorg/bouncycastle/asn1/e;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/asn1/k;

    if-eqz v0, :cond_8

    invoke-static {p1}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object p1

    :goto_3
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    goto :goto_4

    :cond_8
    invoke-static {p1}, Lij/a;->x(Ljava/lang/Object;)Lij/a;

    move-result-object p1

    invoke-virtual {p1}, Lij/a;->y()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lij/a;->B()Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

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

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->populateFromPrivKeyInfo(Lgj/d;)V

    new-instance p1, Lyj/f;

    invoke-direct {p1}, Lyj/f;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lyj/f;

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

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method engineGetSpec()Lek/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->engineGetSpec()Lek/d;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->engineGetSpec()Lek/d;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getBagAttribute(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/asn1/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0, p1}, Lyj/f;->getBagAttribute(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    return-object p1
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0}, Lyj/f;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getD()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x100

    if-le v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v2, Lhj/a;->h:Lorg/bouncycastle/asn1/n;

    goto :goto_1

    :cond_1
    sget-object v2, Lhj/a;->g:Lorg/bouncycastle/asn1/n;

    :goto_1
    if-eqz v0, :cond_2

    const/16 v0, 0x40

    goto :goto_2

    :cond_2
    const/16 v0, 0x20

    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->gostParams:Lzi/e;

    const-string v4, "DER"

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    new-array v3, v0, [B

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {p0, v3, v0, v1, v6}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->extractBytes([BIILjava/math/BigInteger;)V

    :try_start_0
    new-instance v0, Lgj/d;

    new-instance v1, Loj/a;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->gostParams:Lzi/e;

    invoke-direct {v1, v2, v6}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    new-instance v2, Lorg/bouncycastle/asn1/w0;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/m;->u(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v5

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Lek/c;

    if-eqz v1, :cond_5

    check-cast v0, Lek/c;

    invoke-virtual {v0}, Lek/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyj/c;->g(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/n;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v1, Lek/c;

    invoke-virtual {v1}, Lek/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n;-><init>(Ljava/lang/String;)V

    :cond_4
    new-instance v1, Lpj/g;

    invoke-direct {v1, v0}, Lpj/g;-><init>(Lorg/bouncycastle/asn1/n;)V

    goto :goto_3

    :cond_5
    if-nez v0, :cond_6

    new-instance v1, Lpj/g;

    sget-object v0, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    invoke-direct {v1, v0}, Lpj/g;-><init>(Lorg/bouncycastle/asn1/l;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lzj/b;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v5, v3}, Lyj/c;->h(Lzj/b;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->a(Ljava/security/spec/EllipticCurve;)Lfk/e;

    move-result-object v7

    new-instance v0, Lpj/i;

    new-instance v8, Lpj/k;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v7, v1}, Lyj/b;->d(Lfk/e;Ljava/security/spec/ECPoint;)Lfk/i;

    move-result-object v1

    iget-boolean v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->withCompression:Z

    invoke-direct {v8, v1, v3}, Lpj/k;-><init>(Lfk/i;Z)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v9

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v10, v1

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v11

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v1, Lpj/g;

    invoke-direct {v1, v0}, Lpj/g;-><init>(Lpj/i;)V

    :goto_3
    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lzj/b;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v0, v3, v6}, Lyj/c;->h(Lzj/b;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    :goto_4
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    if-eqz v3, :cond_7

    new-instance v3, Lij/a;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    invoke-direct {v3, v0, v6, v7, v1}, Lij/a;-><init>(ILjava/math/BigInteger;Lorg/bouncycastle/asn1/n0;Lorg/bouncycastle/asn1/e;)V

    goto :goto_5

    :cond_7
    new-instance v3, Lij/a;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v6

    invoke-direct {v3, v0, v6, v1}, Lij/a;-><init>(ILjava/math/BigInteger;Lorg/bouncycastle/asn1/e;)V

    :goto_5
    :try_start_1
    new-instance v0, Lgj/d;

    new-instance v6, Loj/a;

    invoke-virtual {v1}, Lpj/g;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v1

    invoke-direct {v6, v2, v1}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    invoke-virtual {v3}, Lij/a;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/m;->u(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    return-object v5
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Lek/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->engineGetSpec()Lek/d;

    move-result-object v1

    invoke-virtual {v1}, Lek/d;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setBagAttribute(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0, p1, p2}, Lyj/f;->setBagAttribute(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    return-void
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->withCompression:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/BCECGOST3410_2012PrivateKey;->engineGetSpec()Lek/d;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lyj/c;->i(Ljava/lang/String;Ljava/math/BigInteger;Lek/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
