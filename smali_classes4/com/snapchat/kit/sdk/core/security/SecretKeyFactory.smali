.class public Lcom/snapchat/kit/sdk/core/security/SecretKeyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES"

.field private static final ALIAS:Ljava/lang/String; = "SnapConnectSDK.AES"

.field private static final KEY_LENGTH:I = 0x100

.field private static final KEY_LENGTH_IN_BYTES:I = 0x20

.field private static final SECRET_KEY_KEY:Ljava/lang/String; = "encoded_secret"

.field private static final TAG:Ljava/lang/String; = "SecretKeyFactory"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeSecret(Ljava/lang/String;ILcom/snapchat/kit/sdk/core/security/EncryptDecryptAlgorithm;)Ljavax/crypto/SecretKey;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p2, p0}, Lcom/snapchat/kit/sdk/core/security/EncryptDecryptAlgorithm;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, p1

    const-string v1, "AES"

    invoke-direct {p2, v0, p0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    return-object p2
.end method

.method private static encodeSecret(Ljavax/crypto/SecretKey;Lcom/snapchat/kit/sdk/core/security/EncryptDecryptAlgorithm;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {p1, v0}, Lcom/snapchat/kit/sdk/core/security/EncryptDecryptAlgorithm;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static generate()Ljavax/crypto/SecretKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "AES"

    .line 1
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x100

    .line 2
    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 3
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public static getFromKeyStore(Ljava/security/KeyStore;)Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const-string v0, "SnapConnectSDK.AES"

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v0, v2}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v2

    check-cast v2, Ljava/security/KeyStore$SecretKeyEntry;

    .line 4
    invoke-virtual {v2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;-><init>(Ljavax/crypto/SecretKey;Z)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 5
    :catch_0
    :cond_0
    invoke-virtual {p0}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AES"

    invoke-static {v1, p0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p0

    .line 6
    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v0, "GCM"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const-string v1, "NoPadding"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    const/16 v1, 0x100

    .line 9
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 12
    new-instance v0, Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;

    invoke-virtual {p0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;-><init>(Ljavax/crypto/SecretKey;Z)V

    return-object v0
.end method

.method public static getFromSharedPreferences(Landroid/content/SharedPreferences;Lcom/snapchat/kit/sdk/core/security/EncryptDecryptAlgorithm;Z)Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "encoded_secret"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 1
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 v1, 0x20

    .line 2
    invoke-static {p2, v1, p1}, Lcom/snapchat/kit/sdk/core/security/SecretKeyFactory;->decodeSecret(Ljava/lang/String;ILcom/snapchat/kit/sdk/core/security/EncryptDecryptAlgorithm;)Ljavax/crypto/SecretKey;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const/4 p2, 0x1

    .line 3
    invoke-static {}, Lcom/snapchat/kit/sdk/core/security/SecretKeyFactory;->generate()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 5
    invoke-static {v1, p1}, Lcom/snapchat/kit/sdk/core/security/SecretKeyFactory;->encodeSecret(Ljavax/crypto/SecretKey;Lcom/snapchat/kit/sdk/core/security/EncryptDecryptAlgorithm;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 7
    :goto_0
    new-instance p0, Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;

    invoke-direct {p0, v1, p2}, Lcom/snapchat/kit/sdk/core/security/SecretGenerationResult;-><init>(Ljavax/crypto/SecretKey;Z)V

    return-object p0
.end method
