.class public Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateKey;
.implements Ldk/b;


# static fields
.field private static ZERO:Ljava/math/BigInteger; = null

.field static final serialVersionUID:J = 0x46eb09c007cf411cL


# instance fields
.field private transient attrCarrier:Lyj/f;

.field protected modulus:Ljava/math/BigInteger;

.field protected privateExponent:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lyj/f;

    return-void
.end method

.method constructor <init>(Ljava/security/interfaces/RSAPrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lyj/f;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->modulus:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    return-void
.end method

.method constructor <init>(Ljava/security/spec/RSAPrivateKeySpec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/RSAPrivateKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    return-void
.end method

.method constructor <init>(Lvj/e0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {p1}, Lvj/e0;->c()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lvj/e0;->b()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

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

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->modulus:Ljava/math/BigInteger;

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0, p1}, Lyj/f;->a(Ljava/io/ObjectInputStream;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0, p1}, Lyj/f;->b(Ljava/io/ObjectOutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "RSA"

    return-object v0
.end method

.method public getBagAttribute(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/asn1/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0, p1}, Lyj/f;->getBagAttribute(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    return-object p1
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0}, Lyj/f;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 12

    new-instance v0, Loj/a;

    sget-object v1, Lgj/c;->l0:Lorg/bouncycastle/asn1/n;

    sget-object v2, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    invoke-direct {v0, v1, v2}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lgj/e;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v6

    sget-object v11, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->ZERO:Ljava/math/BigInteger;

    move-object v3, v1

    move-object v7, v11

    move-object v8, v11

    move-object v9, v11

    move-object v10, v11

    invoke-direct/range {v3 .. v11}, Lgj/e;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lyj/e;->b(Loj/a;Lorg/bouncycastle/asn1/e;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->privateExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setBagAttribute(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0, p1, p2}, Lyj/f;->setBagAttribute(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    return-void
.end method
