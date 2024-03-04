.class public Lcom/tencent/liteav/sdk/common/LicenseCheckerPlatformAndroid;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::license"
.end annotation


# static fields
.field private static final ALGORITHM_AES:Ljava/lang/String; = "AES"

.field private static final ALGORITHM_AES_CBC_PKCS5PADDING:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final ALGORITHM_RSA:Ljava/lang/String; = "RSA"

.field private static final ALGORITHM_SHA256WITH_RSA:Ljava/lang/String; = "SHA256WithRSA"

.field private static final TAG:Ljava/lang/String; = "LicenseCheckerPlatformAndroid"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptLicense([B[B[B)Ljava/lang/String;
    .locals 4
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 1
    array-length v2, p0

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    array-length v2, p2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :try_start_0
    const-string p2, "AES/CBC/PKCS5Padding"

    .line 4
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v3, 0x2

    .line 5
    invoke-virtual {p2, v3, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 6
    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :cond_1
    :goto_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "LicenseCheckerPlatformAndroid"

    const-string p2, "decryptLicense: invalid parameter."

    .line 9
    invoke-static {p1, p2, p0}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getPackageFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/liteav/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p0

    .line 3
    new-array p0, p0, [B

    .line 4
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v2, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0

    .line 6
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :try_start_4
    const-string v2, "LicenseCheckerPlatformAndroid"

    const-string v3, "read asset file failed."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    .line 9
    invoke-static {v2, v3, v4}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    .line 10
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_1
    return-object v0

    :goto_0
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 11
    :catch_4
    :cond_2
    throw p0
.end method

.method public static verifyLicense([B[B[B)Z
    .locals 2
    .annotation build Lcom/tencent/liteav/base/annotations/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    array-length v1, p0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    .line 3
    invoke-static {p2, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p2, "RSA"

    .line 4
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    .line 5
    invoke-virtual {p2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p2

    const-string v1, "SHA256WithRSA"

    .line 6
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 7
    invoke-virtual {v1, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 8
    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/Signature;->update([B)V

    .line 9
    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    return v0

    :cond_1
    :goto_1
    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "LicenseCheckerPlatformAndroid"

    const-string/jumbo p2, "verifyLicense: invalid parameter."

    .line 11
    invoke-static {p1, p2, p0}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method
