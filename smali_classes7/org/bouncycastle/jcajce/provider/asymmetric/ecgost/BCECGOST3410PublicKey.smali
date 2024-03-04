.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lorg/bouncycastle/jce/interfaces/ECPublicKey;


# static fields
.field static final serialVersionUID:J = 0x61823879c4d16022L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private transient ecPublicKey:Lvj/q;

.field private transient ecSpec:Ljava/security/spec/ECParameterSpec;

.field private transient gostParams:Lorg/bouncycastle/asn1/e;

.field private withCompression:Z


# direct methods
.method public constructor <init>(Lek/f;Lzj/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "ECGOST3410"

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/q;Lek/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/n;->b()Lvj/l;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lvj/l;->a()Lfk/e;

    move-result-object p1

    invoke-virtual {v0}, Lvj/l;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lvj/l;)Ljava/security/spec/ECParameterSpec;

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
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/q;Ljava/security/spec/ECParameterSpec;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/n;->b()Lvj/l;

    move-result-object v0

    instance-of v1, v0, Lvj/m;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lvj/m;

    new-instance v2, Lzi/e;

    invoke-virtual {v1}, Lvj/m;->k()Lorg/bouncycastle/asn1/n;

    move-result-object v3

    invoke-virtual {v1}, Lvj/m;->i()Lorg/bouncycastle/asn1/n;

    move-result-object v4

    invoke-virtual {v1}, Lvj/m;->j()Lorg/bouncycastle/asn1/n;

    move-result-object v1

    invoke-direct {v2, v3, v4, v1}, Lzi/e;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/n;)V

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->gostParams:Lorg/bouncycastle/asn1/e;

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    if-nez p3, :cond_1

    invoke-virtual {v0}, Lvj/l;->a()Lfk/e;

    move-result-object p1

    invoke-virtual {v0}, Lvj/l;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lvj/l;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    new-instance v1, Lvj/q;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v0, v2}, Lyj/b;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lfk/i;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lyj/b;->l(Lzj/b;Ljava/security/spec/ECParameterSpec;)Lvj/l;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lvj/q;-><init>(Lfk/i;Lvj/l;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPublicKeySpec;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    new-instance v1, Lvj/q;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v0, v2}, Lyj/b;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lfk/i;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lyj/b;->l(Lzj/b;Ljava/security/spec/ECParameterSpec;)Lvj/l;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lvj/q;-><init>(Lfk/i;Lvj/l;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    return-void
.end method

.method constructor <init>(Loj/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->populateFromPubKeyInfo(Loj/v;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ECGOST3410"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    iget-object v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->withCompression:Z

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->withCompression:Z

    iget-object p1, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->gostParams:Lorg/bouncycastle/asn1/e;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->gostParams:Lorg/bouncycastle/asn1/e;

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
    .locals 10

    invoke-virtual {p1}, Loj/v;->B()Lorg/bouncycastle/asn1/n0;

    move-result-object v0

    const-string v1, "ECGOST3410"

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/b;->L()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/r;->G([B)Lorg/bouncycastle/asn1/r;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/o;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v0

    const/16 v1, 0x41

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0x20

    if-gt v2, v3, :cond_0

    rsub-int/lit8 v3, v2, 0x20

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    add-int/lit8 v3, v2, 0x20

    rsub-int/lit8 v4, v2, 0x40

    aget-byte v4, v0, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Loj/v;->x()Loj/a;

    move-result-object v0

    invoke-virtual {v0}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/n;

    invoke-virtual {p1}, Loj/v;->x()Loj/a;

    move-result-object p1

    invoke-virtual {p1}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object p1

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/asn1/n;->P(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->gostParams:Lorg/bouncycastle/asn1/e;

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lzi/e;->z(Ljava/lang/Object;)Lzi/e;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->gostParams:Lorg/bouncycastle/asn1/e;

    invoke-virtual {p1}, Lzi/e;->B()Lorg/bouncycastle/asn1/n;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lzi/b;->f(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lck/a;->a(Ljava/lang/String;)Lek/b;

    move-result-object v0

    invoke-virtual {v0}, Lek/d;->a()Lfk/e;

    move-result-object v2

    invoke-virtual {v0}, Lek/d;->e()[B

    move-result-object v3

    invoke-static {v2, v3}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    new-instance v3, Lvj/q;

    invoke-virtual {v2, v1}, Lfk/e;->h([B)Lfk/i;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lyj/c;->d(Lzj/b;Lek/d;)Lvj/l;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lvj/q;-><init>(Lfk/i;Lvj/l;)V

    iput-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    new-instance v1, Lek/c;

    invoke-static {p1}, Lzi/b;->f(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lek/d;->b()Lfk/i;

    move-result-object p1

    invoke-static {p1}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v7

    invoke-virtual {v0}, Lek/d;->d()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0}, Lek/d;->c()Ljava/math/BigInteger;

    move-result-object v9

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lek/c;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error recovering public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    invoke-static {p1}, Loj/v;->z(Ljava/lang/Object;)Loj/v;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->populateFromPubKeyInfo(Loj/v;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method engineGetKeyParameters()Lvj/q;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    return-object v0
.end method

.method engineGetSpec()Lek/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    invoke-virtual {v0}, Lvj/q;->c()Lfk/i;

    move-result-object v0

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    invoke-virtual {v2}, Lvj/q;->c()Lfk/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfk/i;->e(Lfk/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->engineGetSpec()Lek/d;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->engineGetSpec()Lek/d;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 7

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->getGostParams()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Lek/c;

    if-eqz v1, :cond_0

    new-instance v1, Lzi/e;

    check-cast v0, Lek/c;

    invoke-virtual {v0}, Lek/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzi/b;->g(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;

    move-result-object v0

    sget-object v2, Lzi/a;->p:Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0, v2}, Lzi/e;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/n;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->a(Ljava/security/spec/EllipticCurve;)Lfk/e;

    move-result-object v2

    new-instance v0, Lpj/i;

    new-instance v3, Lpj/k;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v2, v1}, Lyj/b;->d(Lfk/e;Ljava/security/spec/ECPoint;)Lfk/i;

    move-result-object v1

    iget-boolean v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->withCompression:Z

    invoke-direct {v3, v1, v4}, Lpj/k;-><init>(Lfk/i;Z)V

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    invoke-virtual {v1}, Lvj/q;->c()Lfk/i;

    move-result-object v1

    invoke-virtual {v1}, Lfk/i;->f()Lfk/f;

    move-result-object v1

    invoke-virtual {v1}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    invoke-virtual {v2}, Lvj/q;->c()Lfk/i;

    move-result-object v2

    invoke-virtual {v2}, Lfk/i;->g()Lfk/f;

    move-result-object v2

    invoke-virtual {v2}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object v2

    const/16 v3, 0x40

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->extractBytes([BILjava/math/BigInteger;)V

    const/16 v1, 0x20

    invoke-direct {p0, v3, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->extractBytes([BILjava/math/BigInteger;)V

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

    invoke-static {v1}, Lyj/e;->e(Loj/v;)[B

    move-result-object v0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method getGostParams()Lorg/bouncycastle/asn1/e;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->gostParams:Lorg/bouncycastle/asn1/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Lek/c;

    if-eqz v1, :cond_0

    new-instance v1, Lzi/e;

    check-cast v0, Lek/c;

    invoke-virtual {v0}, Lek/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzi/b;->g(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;

    move-result-object v0

    sget-object v2, Lzi/a;->p:Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0, v2}, Lzi/e;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/n;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->gostParams:Lorg/bouncycastle/asn1/e;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->gostParams:Lorg/bouncycastle/asn1/e;

    return-object v0
.end method

.method public getParameters()Lek/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getQ()Lfk/i;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    invoke-virtual {v0}, Lvj/q;->c()Lfk/i;

    move-result-object v0

    invoke-virtual {v0}, Lfk/i;->k()Lfk/i;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    invoke-virtual {v0}, Lvj/q;->c()Lfk/i;

    move-result-object v0

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    invoke-virtual {v0}, Lvj/q;->c()Lfk/i;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    invoke-virtual {v0}, Lvj/q;->c()Lfk/i;

    move-result-object v0

    invoke-virtual {v0}, Lfk/i;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->engineGetSpec()Lek/d;

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

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->withCompression:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->ecPublicKey:Lvj/q;

    invoke-virtual {v1}, Lvj/q;->c()Lfk/i;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/BCECGOST3410PublicKey;->engineGetSpec()Lek/d;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lyj/c;->j(Ljava/lang/String;Lfk/i;Lek/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
