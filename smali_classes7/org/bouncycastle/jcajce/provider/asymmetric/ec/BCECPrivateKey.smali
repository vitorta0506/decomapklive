.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lorg/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Ldk/b;


# static fields
.field static final serialVersionUID:J = 0xdcd5cdd2909ced4L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private transient attrCarrier:Lyj/f;

.field private transient configuration:Lzj/b;

.field private transient d:Ljava/math/BigInteger;

.field private transient ecSpec:Ljava/security/spec/ECParameterSpec;

.field private transient publicKey:Lorg/bouncycastle/asn1/n0;

.field private withCompression:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lyj/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lek/e;Lzj/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "EC"

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance p2, Lyj/f;

    invoke-direct {p2}, Lyj/f;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method

.method constructor <init>(Ljava/lang/String;Lgj/d;Lzj/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lzj/b;

    invoke-direct {p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->populateFromPrivKeyInfo(Lgj/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;Lzj/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lzj/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lyj/f;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lzj/b;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lzj/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/p;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Lek/d;Lzj/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lzj/b;

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

    move-result-object p5

    invoke-static {p5}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object p5

    invoke-virtual {p1}, Lvj/l;->d()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lvj/l;->c()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {p4, p2, p5, v0, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lek/d;->a()Lfk/e;

    move-result-object p1

    invoke-virtual {p4}, Lek/d;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1, p4}, Lyj/b;->h(Ljava/security/spec/EllipticCurve;Lek/d;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    :try_start_0
    invoke-direct {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getPublicKeyDetails(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/p;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;Ljava/security/spec/ECParameterSpec;Lzj/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lzj/b;

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

    move-result-object p5

    invoke-static {p5}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object p5

    invoke-virtual {p1}, Lvj/l;->d()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lvj/l;->c()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {p4, p2, p5, v0, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    :cond_0
    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-direct {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getPublicKeyDetails(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/p;Lzj/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lyj/f;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lzj/b;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;Lzj/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lyj/f;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lzj/b;

    return-void
.end method

.method private getPublicKeyDetails(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)Lorg/bouncycastle/asn1/n0;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getEncoded()[B

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
    .locals 2
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

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lzj/b;

    invoke-static {v1, v0}, Lyj/b;->k(Lzj/b;Lpj/g;)Lfk/e;

    move-result-object v1

    invoke-static {v0, v1}, Lyj/b;->i(Lpj/g;Lfk/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Lgj/d;->I()Lorg/bouncycastle/asn1/e;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/asn1/k;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lij/a;->x(Ljava/lang/Object;)Lij/a;

    move-result-object p1

    invoke-virtual {p1}, Lij/a;->y()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lij/a;->B()Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    :goto_0
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

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lzj/b;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lzj/b;

    invoke-static {p1}, Lorg/bouncycastle/asn1/r;->G([B)Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-static {p1}, Lgj/d;->y(Ljava/lang/Object;)Lgj/d;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->populateFromPrivKeyInfo(Lgj/d;)V

    new-instance p1, Lyj/f;

    invoke-direct {p1}, Lyj/f;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lyj/f;

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

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method engineGetSpec()Lek/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lyj/b;->g(Ljava/security/spec/ECParameterSpec;)Lek/d;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lzj/b;

    invoke-interface {v0}, Lzj/b;->b()Lek/d;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->engineGetSpec()Lek/d;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->engineGetSpec()Lek/d;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getBagAttribute(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/asn1/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0, p1}, Lyj/f;->getBagAttribute(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    return-object p1
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0}, Lyj/f;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getD()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/a;->a(Ljava/security/spec/ECParameterSpec;Z)Lpj/g;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lzj/b;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lyj/c;->h(Lzj/b;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->configuration:Lzj/b;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lyj/c;->h(Lzj/b;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    if-eqz v3, :cond_1

    new-instance v3, Lij/a;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->publicKey:Lorg/bouncycastle/asn1/n0;

    invoke-direct {v3, v1, v4, v5, v0}, Lij/a;-><init>(ILjava/math/BigInteger;Lorg/bouncycastle/asn1/n0;Lorg/bouncycastle/asn1/e;)V

    goto :goto_1

    :cond_1
    new-instance v3, Lij/a;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v1, v4, v0}, Lij/a;-><init>(ILjava/math/BigInteger;Lorg/bouncycastle/asn1/e;)V

    :goto_1
    :try_start_0
    new-instance v1, Lgj/d;

    new-instance v4, Loj/a;

    sget-object v5, Lpj/o;->v3:Lorg/bouncycastle/asn1/n;

    invoke-direct {v4, v5, v0}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    invoke-direct {v1, v4, v3}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    const-string v0, "DER"

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/m;->u(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Lek/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->engineGetSpec()Lek/d;

    move-result-object v1

    invoke-virtual {v1}, Lek/d;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setBagAttribute(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0, p1, p2}, Lyj/f;->setBagAttribute(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    return-void
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->withCompression:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->d:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPrivateKey;->engineGetSpec()Lek/d;

    move-result-object v1

    const-string v2, "EC"

    invoke-static {v2, v0, v1}, Lyj/c;->i(Ljava/lang/String;Ljava/math/BigInteger;Lek/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
