.class public Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/kit/sdk/core/security/EncryptDecryptAlgorithm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AESEncryptDecrypt"

.field private static final TAG_LENGTH:I = 0x80

.field private static final TRANSFORM:Ljava/lang/String; = "AES/GCM/NoPadding"


# instance fields
.field private final mGson:Lcom/google/gson/Gson;

.field private final mSecretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Lcom/google/gson/Gson;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 3
    iput-object p2, p0, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method private decryptInternal(Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;)Ljava/lang/String;
    .locals 4
    .param p1    # Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;->mIv:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2
    iget-object p1, p1, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;->mData:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v1, "AES/GCM/NoPadding"

    .line 3
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 4
    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v3, 0x80

    invoke-direct {v2, v3, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 5
    iget-object v0, p0, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt;->mSecretKey:Ljavax/crypto/SecretKey;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 6
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private encryptInternal(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;
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
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const-string v0, "AES/GCM/NoPadding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt;->mSecretKey:Ljavax/crypto/SecretKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 5
    new-instance v0, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;

    const/4 v2, 0x0

    .line 6
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt;->mGson:Lcom/google/gson/Gson;

    const-class v2, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v1, p1, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;->mData:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;->mIv:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt;->decryptInternal(Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    :cond_1
    :goto_1
    return-object v0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt;->mGson:Lcom/google/gson/Gson;

    invoke-direct {p0, p1}, Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt;->encryptInternal(Ljava/lang/String;)Lcom/snapchat/kit/sdk/core/security/AESEncryptDecrypt$EncryptedData;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method
