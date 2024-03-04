.class public Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;
.implements Ljavax/crypto/interfaces/DHPrivateKey;
.implements Ldk/b;


# static fields
.field static final serialVersionUID:J = 0x42e1c55fb6bcc04eL


# instance fields
.field private attrCarrier:Lyj/f;

.field elSpec:Lek/h;

.field x:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lyj/f;

    return-void
.end method

.method constructor <init>(Lek/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lyj/f;

    invoke-direct {p1}, Lyj/f;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lyj/f;

    const/4 p1, 0x0

    throw p1
.end method

.method constructor <init>(Lgj/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {p1}, Lgj/d;->B()Loj/a;

    move-result-object v0

    invoke-virtual {v0}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lfj/a;->y(Ljava/lang/Object;)Lfj/a;

    move-result-object v0

    invoke-virtual {p1}, Lgj/d;->I()Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    new-instance p1, Lek/h;

    invoke-virtual {v0}, Lfj/a;->z()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lfj/a;->x()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lek/h;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lek/h;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/interfaces/DHPrivateKey;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lyj/f;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Lek/h;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lek/h;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lek/h;

    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Lek/h;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lek/h;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lek/h;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyj/f;

    invoke-direct {v0}, Lyj/f;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lyj/f;

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;->getParameters()Lek/h;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lek/h;

    return-void
.end method

.method constructor <init>(Lvj/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lyj/f;

    invoke-direct {p1}, Lyj/f;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lyj/f;

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

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    new-instance v0, Lek/h;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {v0, v1, p1}, Lek/h;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lek/h;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lek/h;

    invoke-virtual {v0}, Lek/h;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lek/h;

    invoke-virtual {v0}, Lek/h;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "ElGamal"

    return-object v0
.end method

.method public getBagAttribute(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/asn1/e;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0, p1}, Lyj/f;->getBagAttribute(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    return-object p1
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0}, Lyj/f;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    new-instance v0, Loj/a;

    sget-object v1, Lfj/b;->l:Lorg/bouncycastle/asn1/n;

    new-instance v2, Lfj/a;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lek/h;

    invoke-virtual {v3}, Lek/h;->b()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lek/h;

    invoke-virtual {v4}, Lek/h;->a()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lfj/a;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lyj/e;->b(Loj/a;Lorg/bouncycastle/asn1/e;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Lek/h;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lek/h;

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 3

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lek/h;

    invoke-virtual {v1}, Lek/h;->b()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->elSpec:Lek/h;

    invoke-virtual {v2}, Lek/h;->a()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public setBagAttribute(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;->attrCarrier:Lyj/f;

    invoke-virtual {v0, p1, p2}, Lyj/f;->setBagAttribute(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    return-void
.end method
