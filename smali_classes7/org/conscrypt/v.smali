.class final Lorg/conscrypt/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPublicKey;
.implements Lorg/conscrypt/x;


# static fields
.field private static final serialVersionUID:J = 0x2ca0f81a89dc7224L


# instance fields
.field protected transient a:Lorg/conscrypt/w;

.field protected transient b:Lorg/conscrypt/t;


# direct methods
.method constructor <init>(Lorg/conscrypt/w;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/conscrypt/t;

    new-instance v1, Lorg/conscrypt/NativeRef$EC_GROUP;

    .line 3
    invoke-virtual {p1}, Lorg/conscrypt/w;->a()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v2}, Lorg/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lorg/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    invoke-direct {v0, v1}, Lorg/conscrypt/t;-><init>(Lorg/conscrypt/NativeRef$EC_GROUP;)V

    iput-object v0, p0, Lorg/conscrypt/v;->b:Lorg/conscrypt/t;

    .line 4
    iput-object p1, p0, Lorg/conscrypt/v;->a:Lorg/conscrypt/w;

    return-void
.end method

.method private a()Ljava/security/spec/ECPoint;
    .locals 5

    .line 1
    new-instance v0, Lorg/conscrypt/u;

    iget-object v1, p0, Lorg/conscrypt/v;->b:Lorg/conscrypt/t;

    new-instance v2, Lorg/conscrypt/NativeRef$EC_POINT;

    iget-object v3, p0, Lorg/conscrypt/v;->a:Lorg/conscrypt/w;

    .line 2
    invoke-virtual {v3}, Lorg/conscrypt/w;->a()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    invoke-static {v3}, Lorg/conscrypt/NativeCrypto;->EC_KEY_get_public_key(Lorg/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/conscrypt/NativeRef$EC_POINT;-><init>(J)V

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/u;-><init>(Lorg/conscrypt/t;Lorg/conscrypt/NativeRef$EC_POINT;)V

    .line 3
    invoke-virtual {v0}, Lorg/conscrypt/u;->a()Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    .line 3
    :try_start_0
    new-instance v0, Lorg/conscrypt/w;

    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->EVP_parse_public_key([B)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/w;-><init>(J)V

    iput-object v0, p0, Lorg/conscrypt/v;->a:Lorg/conscrypt/w;
    :try_end_0
    .catch Lorg/conscrypt/y; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    new-instance p1, Lorg/conscrypt/t;

    new-instance v0, Lorg/conscrypt/NativeRef$EC_GROUP;

    iget-object v1, p0, Lorg/conscrypt/v;->a:Lorg/conscrypt/w;

    .line 5
    invoke-virtual {v1}, Lorg/conscrypt/w;->a()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->EC_KEY_get1_group(Lorg/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/NativeRef$EC_GROUP;-><init>(J)V

    invoke-direct {p1, v0}, Lorg/conscrypt/t;-><init>(Lorg/conscrypt/NativeRef$EC_GROUP;)V

    iput-object p1, p0, Lorg/conscrypt/v;->b:Lorg/conscrypt/t;

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/conscrypt/v;->a:Lorg/conscrypt/w;

    invoke-virtual {v0}, Lorg/conscrypt/w;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 3
    invoke-virtual {p0}, Lorg/conscrypt/v;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/io/NotSerializableException;

    const-string v0, "Hardware backed keys cannot be serialized"

    invoke-direct {p1, v0}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/conscrypt/v;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lorg/conscrypt/v;

    .line 3
    iget-object v0, p0, Lorg/conscrypt/v;->a:Lorg/conscrypt/w;

    iget-object p1, p1, Lorg/conscrypt/v;->a:Lorg/conscrypt/w;

    invoke-virtual {v0, p1}, Lorg/conscrypt/w;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    instance-of v1, p1, Ljava/security/interfaces/ECPublicKey;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5
    :cond_2
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    .line 6
    invoke-direct {p0}, Lorg/conscrypt/v;->a()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 7
    :cond_3
    invoke-virtual {p0}, Lorg/conscrypt/v;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 8
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    .line 9
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    invoke-virtual {p1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p1

    if-ne v1, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "EC"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/v;->a:Lorg/conscrypt/w;

    invoke-virtual {v0}, Lorg/conscrypt/w;->a()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EVP_marshal_public_key(Lorg/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getOpenSSLKey()Lorg/conscrypt/w;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/v;->a:Lorg/conscrypt/w;

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/v;->b:Lorg/conscrypt/t;

    invoke-virtual {v0}, Lorg/conscrypt/t;->a()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public getW()Ljava/security/spec/ECPoint;
    .locals 1

    invoke-direct {p0}, Lorg/conscrypt/v;->a()Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/v;->a:Lorg/conscrypt/w;

    invoke-virtual {v0}, Lorg/conscrypt/w;->a()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EVP_marshal_public_key(Lorg/conscrypt/NativeRef$EVP_PKEY;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/v;->a:Lorg/conscrypt/w;

    invoke-virtual {v0}, Lorg/conscrypt/w;->a()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_print_public(Lorg/conscrypt/NativeRef$EVP_PKEY;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
