.class public Lorg/bouncycastle/jce/provider/JCEECPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lorg/bouncycastle/jce/interfaces/ECPublicKey;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private ecSpec:Ljava/security/spec/ECParameterSpec;

.field private gostParams:Lzi/e;

.field private q:Lfk/i;

.field private withCompression:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lek/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object p2

    invoke-static {p1, p2}, Lyj/b;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lfk/i;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jce/provider/JCEECPublicKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean p1, p2, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    iget-object p1, p2, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lzi/e;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lzi/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/q;->c()Lfk/i;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/q;Lek/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/n;->b()Lvj/l;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/q;->c()Lfk/i;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lvj/l;->a()Lfk/e;

    move-result-object p1

    invoke-virtual {v0}, Lvj/l;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lvj/l;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lek/d;->a()Lfk/e;

    move-result-object p1

    invoke-virtual {p3}, Lek/d;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1, p3}, Lyj/b;->h(Ljava/security/spec/EllipticCurve;Lek/d;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/q;Ljava/security/spec/ECParameterSpec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/n;->b()Lvj/l;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/q;->c()Lfk/i;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lvj/l;->a()Lfk/e;

    move-result-object p1

    invoke-virtual {v0}, Lvj/l;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lvj/l;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-static {v0, p1}, Lyj/b;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lfk/i;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    return-void
.end method

.method constructor <init>(Loj/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->populateFromPubKeyInfo(Loj/v;)V

    return-void
.end method

.method private createSpec(Ljava/security/spec/EllipticCurve;Lvj/l;)Ljava/security/spec/ECParameterSpec;
    .locals 3

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p2}, Lvj/l;->b()Lfk/i;

    move-result-object v1

    invoke-static {v1}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p2}, Lvj/l;->d()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Lvj/l;->c()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    invoke-direct {v0, p1, v1, v2, p2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
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

.method private populateFromPubKeyInfo(Loj/v;)V
    .locals 14

    invoke-virtual {p1}, Loj/v;->x()Loj/a;

    move-result-object v0

    invoke-virtual {v0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v1

    sget-object v2, Lzi/a;->m:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v1

    const-string v2, "error recovering public key"

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Loj/v;->B()Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    const-string v1, "ECGOST3410"

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/b;->L()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/r;->G([B)Lorg/bouncycastle/asn1/r;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/o;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object p1

    const/16 v1, 0x41

    new-array v1, v1, [B

    aput-byte v3, v1, v4

    :goto_0
    const/16 v2, 0x20

    if-gt v5, v2, :cond_0

    rsub-int/lit8 v2, v5, 0x20

    aget-byte v2, p1, v2

    aput-byte v2, v1, v5

    add-int/lit8 v2, v5, 0x20

    rsub-int/lit8 v3, v5, 0x40

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-static {p1}, Lzi/e;->z(Ljava/lang/Object;)Lzi/e;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lzi/e;

    invoke-virtual {p1}, Lzi/e;->B()Lorg/bouncycastle/asn1/n;

    move-result-object p1

    invoke-static {p1}, Lzi/b;->f(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lck/a;->a(Ljava/lang/String;)Lek/b;

    move-result-object p1

    invoke-virtual {p1}, Lek/d;->a()Lfk/e;

    move-result-object v0

    invoke-virtual {p1}, Lek/d;->e()[B

    move-result-object v2

    invoke-static {v0, v2}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v0, v1}, Lfk/e;->h([B)Lfk/i;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    new-instance v0, Lek/c;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lzi/e;

    invoke-virtual {v1}, Lzi/e;->B()Lorg/bouncycastle/asn1/n;

    move-result-object v1

    invoke-static {v1}, Lzi/b;->f(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lek/d;->b()Lfk/i;

    move-result-object v1

    invoke-static {v1}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v6

    invoke-virtual {p1}, Lek/d;->d()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p1}, Lek/d;->c()Ljava/math/BigInteger;

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lek/c;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto/16 :goto_4

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v0}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lpj/g;->x(Ljava/lang/Object;)Lpj/g;

    move-result-object v0

    invoke-virtual {v0}, Lpj/g;->B()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lpj/g;->y()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/n;

    invoke-static {v0}, Lyj/c;->f(Lorg/bouncycastle/asn1/n;)Lpj/i;

    move-result-object v1

    invoke-virtual {v1}, Lpj/i;->x()Lfk/e;

    move-result-object v6

    invoke-virtual {v1}, Lpj/i;->G()[B

    move-result-object v7

    invoke-static {v6, v7}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v10

    new-instance v7, Lek/c;

    invoke-static {v0}, Lyj/c;->c(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lpj/i;->y()Lfk/i;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v11

    invoke-virtual {v1}, Lpj/i;->F()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v1}, Lpj/i;->z()Ljava/math/BigInteger;

    move-result-object v13

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lek/c;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_1
    iput-object v7, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lpj/g;->z()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lzj/b;

    invoke-interface {v0}, Lzj/b;->b()Lek/d;

    move-result-object v0

    invoke-virtual {v0}, Lek/d;->a()Lfk/e;

    move-result-object v6

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lpj/g;->y()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    invoke-static {v0}, Lpj/i;->B(Ljava/lang/Object;)Lpj/i;

    move-result-object v0

    invoke-virtual {v0}, Lpj/i;->x()Lfk/e;

    move-result-object v6

    invoke-virtual {v0}, Lpj/i;->G()[B

    move-result-object v1

    invoke-static {v6, v1}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    new-instance v7, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Lpj/i;->y()Lfk/i;

    move-result-object v8

    invoke-static {v8}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v8

    invoke-virtual {v0}, Lpj/i;->F()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v0}, Lpj/i;->z()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {v7, v1, v8, v9, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_1

    :goto_2
    invoke-virtual {p1}, Loj/v;->B()Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/b;->L()[B

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/asn1/w0;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    aget-byte v1, p1, v4

    if-ne v1, v3, :cond_5

    aget-byte v1, p1, v5

    array-length v3, p1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_5

    aget-byte v1, p1, v4

    const/4 v3, 0x3

    if-eq v1, v4, :cond_4

    aget-byte v1, p1, v4

    if-ne v1, v3, :cond_5

    :cond_4
    new-instance v1, Lpj/n;

    invoke-direct {v1}, Lpj/n;-><init>()V

    invoke-virtual {v1, v6}, Lpj/n;->a(Lfk/e;)I

    move-result v1

    array-length v4, p1

    sub-int/2addr v4, v3

    if-lt v1, v4, :cond_5

    :try_start_1
    invoke-static {p1}, Lorg/bouncycastle/asn1/r;->G([B)Lorg/bouncycastle/asn1/r;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/o;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    new-instance p1, Lpj/k;

    invoke-direct {p1, v6, v0}, Lpj/k;-><init>(Lfk/e;Lorg/bouncycastle/asn1/o;)V

    invoke-virtual {p1}, Lpj/k;->x()Lfk/i;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    :goto_4
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

    invoke-static {v0}, Loj/v;->z(Ljava/lang/Object;)Loj/v;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->populateFromPubKeyInfo(Loj/v;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    return-void
.end method


# virtual methods
.method public engineGetQ()Lfk/i;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    return-object v0
.end method

.method engineGetSpec()Lek/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    instance-of v0, p1, Lorg/bouncycastle/jce/provider/JCEECPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jce/provider/JCEECPublicKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lfk/i;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lfk/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfk/i;->e(Lfk/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Lek/d;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Lek/d;

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

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->algorithm:Ljava/lang/String;

    const-string v1, "ECGOST3410"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->gostParams:Lzi/e;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Lek/c;

    if-eqz v1, :cond_1

    new-instance v1, Lzi/e;

    check-cast v0, Lek/c;

    invoke-virtual {v0}, Lek/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzi/b;->g(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;

    move-result-object v0

    sget-object v2, Lzi/a;->p:Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0, v2}, Lzi/e;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/n;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->a(Ljava/security/spec/EllipticCurve;)Lfk/e;

    move-result-object v2

    new-instance v0, Lpj/i;

    new-instance v3, Lpj/k;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v2, v1}, Lyj/b;->d(Lfk/e;Ljava/security/spec/ECPoint;)Lfk/i;

    move-result-object v1

    iget-boolean v4, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-direct {v3, v1, v4}, Lpj/k;-><init>(Lfk/i;Z)V

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v1, Lpj/g;

    invoke-direct {v1, v0}, Lpj/g;-><init>(Lpj/i;)V

    :goto_0
    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    invoke-virtual {v1}, Lfk/i;->f()Lfk/f;

    move-result-object v1

    invoke-virtual {v1}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    invoke-virtual {v2}, Lfk/i;->g()Lfk/f;

    move-result-object v2

    invoke-virtual {v2}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x40

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v1}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->extractBytes([BILjava/math/BigInteger;)V

    const/16 v1, 0x20

    invoke-direct {p0, v3, v1, v2}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->extractBytes([BILjava/math/BigInteger;)V

    :try_start_0
    new-instance v1, Loj/v;

    new-instance v2, Loj/a;

    sget-object v4, Lzi/a;->m:Lorg/bouncycastle/asn1/n;

    invoke-direct {v2, v4, v0}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    new-instance v0, Lorg/bouncycastle/asn1/w0;

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-direct {v1, v2, v0}, Loj/v;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Lek/c;

    if-eqz v1, :cond_4

    check-cast v0, Lek/c;

    invoke-virtual {v0}, Lek/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyj/c;->g(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/n;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    check-cast v1, Lek/c;

    invoke-virtual {v1}, Lek/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n;-><init>(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lpj/g;

    invoke-direct {v1, v0}, Lpj/g;-><init>(Lorg/bouncycastle/asn1/n;)V

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    new-instance v1, Lpj/g;

    sget-object v0, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    invoke-direct {v1, v0}, Lpj/g;-><init>(Lorg/bouncycastle/asn1/l;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->a(Ljava/security/spec/EllipticCurve;)Lfk/e;

    move-result-object v2

    new-instance v0, Lpj/i;

    new-instance v3, Lpj/k;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v2, v1}, Lyj/b;->d(Lfk/e;Ljava/security/spec/ECPoint;)Lfk/i;

    move-result-object v1

    iget-boolean v4, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-direct {v3, v1, v4}, Lpj/k;-><init>(Lfk/i;Z)V

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v1, Lpj/g;

    invoke-direct {v1, v0}, Lpj/g;-><init>(Lpj/i;)V

    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->getQ()Lfk/i;

    move-result-object v0

    iget-boolean v2, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    invoke-virtual {v0, v2}, Lfk/i;->l(Z)[B

    move-result-object v0

    new-instance v2, Loj/v;

    new-instance v3, Loj/a;

    sget-object v4, Lpj/o;->v3:Lorg/bouncycastle/asn1/n;

    invoke-direct {v3, v4, v1}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    invoke-direct {v2, v3, v0}, Loj/v;-><init>(Loj/a;[B)V

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lyj/e;->e(Loj/v;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getParameters()Lek/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getQ()Lfk/i;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    invoke-virtual {v0}, Lfk/i;->k()Lfk/i;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    invoke-static {v0}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetQ()Lfk/i;

    move-result-object v0

    invoke-virtual {v0}, Lfk/i;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->engineGetSpec()Lek/d;

    move-result-object v1

    invoke-virtual {v1}, Lek/d;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->withCompression:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/i;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EC Public Key"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "            X: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    invoke-virtual {v2}, Lfk/i;->f()Lfk/f;

    move-result-object v2

    invoke-virtual {v2}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "            Y: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEECPublicKey;->q:Lfk/i;

    invoke-virtual {v2}, Lfk/i;->g()Lfk/f;

    move-result-object v2

    invoke-virtual {v2}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
