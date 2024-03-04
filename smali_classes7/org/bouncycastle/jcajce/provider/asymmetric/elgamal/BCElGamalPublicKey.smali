.class public Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;
.implements Ljavax/crypto/interfaces/DHPublicKey;


# static fields
.field static final serialVersionUID:J = 0x78e9d455552c6634L


# instance fields
.field private transient elSpec:Lek/h;

.field private y:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lek/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    throw p1
.end method

.method constructor <init>(Ljava/math/BigInteger;Lek/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->y:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->elSpec:Lek/h;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/interfaces/DHPublicKey;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Lek/h;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lek/h;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->elSpec:Lek/h;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->y:Ljava/math/BigInteger;

    new-instance v0, Lek/h;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lek/h;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->elSpec:Lek/h;

    return-void
.end method

.method constructor <init>(Loj/v;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Loj/v;->x()Loj/a;

    move-result-object v0

    invoke-virtual {v0}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lfj/a;->y(Ljava/lang/Object;)Lfj/a;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Loj/v;->F()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->y:Ljava/math/BigInteger;

    new-instance p1, Lek/h;

    invoke-virtual {v0}, Lfj/a;->z()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lfj/a;->x()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lek/h;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->elSpec:Lek/h;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid info structure in DSA public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->y:Ljava/math/BigInteger;

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;->getParameters()Lek/h;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->elSpec:Lek/h;

    return-void
.end method

.method constructor <init>(Lvj/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    throw p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Lek/h;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {v0, v1, p1}, Lek/h;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->elSpec:Lek/h;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->elSpec:Lek/h;

    invoke-virtual {v0}, Lek/h;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->elSpec:Lek/h;

    invoke-virtual {v0}, Lek/h;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "ElGamal"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    :try_start_0
    new-instance v0, Loj/v;

    new-instance v1, Loj/a;

    sget-object v2, Lfj/b;->l:Lorg/bouncycastle/asn1/n;

    new-instance v3, Lfj/a;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->elSpec:Lek/h;

    invoke-virtual {v4}, Lek/h;->b()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->elSpec:Lek/h;

    invoke-virtual {v5}, Lek/h;->a()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lfj/a;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    new-instance v2, Lorg/bouncycastle/asn1/k;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->y:Ljava/math/BigInteger;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Loj/v;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/m;->u(Ljava/lang/String;)[B

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

    const-string v0, "X.509"

    return-object v0
.end method

.method public getParameters()Lek/h;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->elSpec:Lek/h;

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 3

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->elSpec:Lek/h;

    invoke-virtual {v1}, Lek/h;->b()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->elSpec:Lek/h;

    invoke-virtual {v2}, Lek/h;->a()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->y:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/elgamal/BCElGamalPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
