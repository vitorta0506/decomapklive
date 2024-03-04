.class public Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/kit/sdk/core/security/EncryptDecryptAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;
    }
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final ALIAS:Ljava/lang/String; = "SnapConnectSDK.RSA"

.field private static final KEY_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "RSAEncryptDecrypt"

.field private static final TRANSFORM:Ljava/lang/String; = "RSA/None/NoPadding"


# instance fields
.field private final mKeyPair:Ljava/security/KeyPair;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;Landroid/content/Context;Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;)V
    .locals 0
    .param p3    # Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2, p3}, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt;->getKeyPair(Ljava/security/KeyStore;Landroid/content/Context;Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;)Ljava/security/KeyPair;

    move-result-object p1

    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt;->mKeyPair:Ljava/security/KeyPair;

    return-void
.end method

.method private decryptInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "RSA/None/NoPadding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v1, 0x0

    .line 3
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 4
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method private encryptInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const-string v0, "RSA/None/NoPadding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getKeyPair(Ljava/security/KeyStore;Landroid/content/Context;Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;)Ljava/security/KeyPair;
    .locals 5
    .param p2    # Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const-string v0, "RSA"

    const-string v1, "SnapConnectSDK.RSA"

    if-eqz p2, :cond_0

    .line 1
    iget-object v2, p2, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;->mModulus:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;->mPublicExp:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    :try_start_0
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p2, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;->mModulus:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigInteger;

    iget-object p2, p2, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;->mPublicExp:Ljava/lang/String;

    invoke-direct {v4, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 4
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p2

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 6
    invoke-virtual {v2}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v2

    .line 7
    new-instance v3, Ljava/security/KeyPair;

    invoke-direct {v3, p2, v2}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 8
    :catch_0
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    const/4 v3, 0x1

    .line 10
    invoke-virtual {p2, v3, v3}, Ljava/util/Calendar;->add(II)V

    .line 11
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    .line 12
    invoke-virtual {p0}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p0

    .line 13
    new-instance v0, Landroid/security/KeyPairGeneratorSpec$Builder;

    invoke-direct {v0, p1}, Landroid/security/KeyPairGeneratorSpec$Builder;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/security/KeyPairGeneratorSpec$Builder;->setAlias(Ljava/lang/String;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setStartDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 16
    invoke-virtual {p1, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setEndDate(Ljava/util/Date;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    new-instance p2, Ljavax/security/auth/x500/X500Principal;

    const-string v0, "CN=SnapConnectSDK.RSA"

    invoke-direct {p2, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    sget-object p2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 18
    invoke-virtual {p1, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setSerialNumber(Ljava/math/BigInteger;)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    const/16 p2, 0x2000

    .line 19
    invoke-virtual {p1, p2}, Landroid/security/KeyPairGeneratorSpec$Builder;->setKeySize(I)Landroid/security/KeyPairGeneratorSpec$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/security/KeyPairGeneratorSpec$Builder;->build()Landroid/security/KeyPairGeneratorSpec;

    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 22
    invoke-virtual {p0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt;->decryptInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt;->encryptInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method public getPublicKeyParams()Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt;->mKeyPair:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 2
    new-instance v1, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$PublicKeyParams;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/snapchat/kit/sdk/core/security/RSAEncryptDecrypt$1;)V

    return-object v1
.end method
