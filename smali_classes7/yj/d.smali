.class public Lyj/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/security/PrivateKey;)Lvj/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/jce/interfaces/GOST3410PrivateKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jce/interfaces/GOST3410PrivateKey;

    invoke-interface {p0}, Lorg/bouncycastle/jce/interfaces/GOST3410PrivateKey;->getParameters()Ldk/a;

    move-result-object v0

    invoke-interface {v0}, Ldk/a;->a()Lek/m;

    move-result-object v0

    new-instance v1, Lvj/a0;

    invoke-interface {p0}, Lorg/bouncycastle/jce/interfaces/GOST3410PrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v2, Lvj/z;

    invoke-virtual {v0}, Lek/m;->b()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lek/m;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lek/m;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lvj/z;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p0, v2}, Lvj/a0;-><init>(Ljava/math/BigInteger;Lvj/z;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string v0, "can\'t identify GOST3410 private key."

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/security/PublicKey;)Lvj/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/jce/interfaces/GOST3410PublicKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jce/interfaces/GOST3410PublicKey;

    invoke-interface {p0}, Lorg/bouncycastle/jce/interfaces/GOST3410PublicKey;->getParameters()Ldk/a;

    move-result-object v0

    invoke-interface {v0}, Ldk/a;->a()Lek/m;

    move-result-object v0

    new-instance v1, Lvj/b0;

    invoke-interface {p0}, Lorg/bouncycastle/jce/interfaces/GOST3410PublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v2, Lvj/z;

    invoke-virtual {v0}, Lek/m;->b()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lek/m;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lek/m;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lvj/z;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p0, v2}, Lvj/b0;-><init>(Ljava/math/BigInteger;Lvj/z;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t identify GOST3410 public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
