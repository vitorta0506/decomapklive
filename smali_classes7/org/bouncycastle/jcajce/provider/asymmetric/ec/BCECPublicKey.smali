.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lorg/bouncycastle/jce/interfaces/ECPublicKey;


# static fields
.field static final serialVersionUID:J = 0x219f7a8aa3ea4824L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private transient configuration:Lzj/b;

.field private transient ecPublicKey:Lvj/q;

.field private transient ecSpec:Ljava/security/spec/ECParameterSpec;

.field private withCompression:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lek/f;Lzj/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPublicKeySpec;Lzj/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    new-instance v0, Lvj/q;

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {p1, v1}, Lyj/b;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lfk/i;

    move-result-object p1

    invoke-virtual {p2}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    invoke-static {p3, p2}, Lyj/b;->l(Lzj/b;Ljava/security/spec/ECParameterSpec;)Lvj/l;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lvj/q;-><init>(Lfk/i;Lvj/l;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lvj/q;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lzj/b;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Loj/v;Lzj/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lzj/b;

    invoke-direct {p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->populateFromPubKeyInfo(Loj/v;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lvj/q;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lvj/q;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iget-boolean p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lzj/b;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lzj/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/q;Lek/d;Lzj/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/n;->b()Lvj/l;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lvj/l;->a()Lfk/e;

    move-result-object p1

    invoke-virtual {v0}, Lvj/l;->e()[B

    move-result-object p3

    invoke-static {p1, p3}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lvj/l;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lek/d;->a()Lfk/e;

    move-result-object p1

    invoke-virtual {p3}, Lek/d;->e()[B

    move-result-object v0

    invoke-static {p1, v0}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1, p3}, Lyj/b;->h(Ljava/security/spec/EllipticCurve;Lek/d;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lvj/q;

    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lzj/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/q;Ljava/security/spec/ECParameterSpec;Lzj/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Lvj/n;->b()Lvj/l;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lvj/q;

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lvj/l;->a()Lfk/e;

    move-result-object p1

    invoke-virtual {v0}, Lvj/l;->e()[B

    move-result-object p2

    invoke-static {p1, p2}, Lyj/b;->b(Lfk/e;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->createSpec(Ljava/security/spec/EllipticCurve;Lvj/l;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    :goto_0
    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lzj/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lvj/q;Lzj/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lvj/q;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lzj/b;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;Lzj/b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    new-instance v1, Lvj/q;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {v0, v2}, Lyj/b;->e(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;)Lfk/i;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-static {p2, p1}, Lyj/b;->l(Lzj/b;Ljava/security/spec/ECParameterSpec;)Lvj/l;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lvj/q;-><init>(Lfk/i;Lvj/l;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lvj/q;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lzj/b;

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

.method private populateFromPubKeyInfo(Loj/v;)V
    .locals 6

    invoke-virtual {p1}, Loj/v;->x()Loj/a;

    move-result-object v0

    invoke-virtual {v0}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lpj/g;->x(Ljava/lang/Object;)Lpj/g;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lzj/b;

    invoke-static {v1, v0}, Lyj/b;->k(Lzj/b;Lpj/g;)Lfk/e;

    move-result-object v1

    invoke-static {v0, v1}, Lyj/b;->i(Lpj/g;Lfk/e;)Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Loj/v;->B()Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/b;->L()[B

    move-result-object p1

    new-instance v2, Lorg/bouncycastle/asn1/w0;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    array-length v4, p1

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_1

    aget-byte v3, p1, v5

    const/4 v4, 0x3

    if-eq v3, v5, :cond_0

    aget-byte v3, p1, v5

    if-ne v3, v4, :cond_1

    :cond_0
    new-instance v3, Lpj/n;

    invoke-direct {v3}, Lpj/n;-><init>()V

    invoke-virtual {v3, v1}, Lpj/n;->a(Lfk/e;)I

    move-result v3

    array-length v5, p1

    sub-int/2addr v5, v4

    if-lt v3, v5, :cond_1

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/r;->G([B)Lorg/bouncycastle/asn1/r;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/asn1/o;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "error recovering public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance p1, Lpj/k;

    invoke-direct {p1, v1, v2}, Lpj/k;-><init>(Lfk/e;Lorg/bouncycastle/asn1/o;)V

    new-instance v1, Lvj/q;

    invoke-virtual {p1}, Lpj/k;->x()Lfk/i;

    move-result-object p1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lzj/b;

    invoke-static {v2, v0}, Lyj/c;->e(Lzj/b;Lpj/g;)Lvj/l;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lvj/q;-><init>(Lfk/i;Lvj/l;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lvj/q;

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

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lzj/b;

    invoke-static {p1}, Lorg/bouncycastle/asn1/r;->G([B)Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-static {p1}, Loj/v;->z(Ljava/lang/Object;)Loj/v;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->populateFromPubKeyInfo(Loj/v;)V

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

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method engineGetKeyParameters()Lvj/q;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lvj/q;

    return-object v0
.end method

.method engineGetSpec()Lek/d;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lyj/b;->g(Ljava/security/spec/ECParameterSpec;)Lek/d;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->configuration:Lzj/b;

    invoke-interface {v0}, Lzj/b;->b()Lek/d;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lvj/q;

    invoke-virtual {v0}, Lvj/q;->c()Lfk/i;

    move-result-object v0

    iget-object v2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lvj/q;

    invoke-virtual {v2}, Lvj/q;->c()Lfk/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfk/i;->e(Lfk/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetSpec()Lek/d;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetSpec()Lek/d;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    if-nez v0, :cond_1

    const-string v0, "org.bouncycastle.ec.enable_pc"

    invoke-static {v0}, Lorg/bouncycastle/util/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Loj/a;

    sget-object v2, Lpj/o;->v3:Lorg/bouncycastle/asn1/n;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    invoke-static {v3, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/a;->a(Ljava/security/spec/ECParameterSpec;Z)Lpj/g;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lvj/q;

    invoke-virtual {v2}, Lvj/q;->c()Lfk/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfk/i;->l(Z)[B

    move-result-object v0

    invoke-static {v1, v0}, Lyj/e;->d(Loj/a;[B)[B

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getQ()Lfk/i;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lvj/q;

    invoke-virtual {v0}, Lvj/q;->c()Lfk/i;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecSpec:Ljava/security/spec/ECParameterSpec;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lfk/i;->k()Lfk/i;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lvj/q;

    invoke-virtual {v0}, Lvj/q;->c()Lfk/i;

    move-result-object v0

    invoke-static {v0}, Lyj/b;->f(Lfk/i;)Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lvj/q;

    invoke-virtual {v0}, Lvj/q;->c()Lfk/i;

    move-result-object v0

    invoke-virtual {v0}, Lfk/i;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetSpec()Lek/d;

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

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->withCompression:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->ecPublicKey:Lvj/q;

    invoke-virtual {v0}, Lvj/q;->c()Lfk/i;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->engineGetSpec()Lek/d;

    move-result-object v1

    const-string v2, "EC"

    invoke-static {v2, v0, v1}, Lyj/c;->j(Ljava/lang/String;Lfk/i;Lek/d;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
