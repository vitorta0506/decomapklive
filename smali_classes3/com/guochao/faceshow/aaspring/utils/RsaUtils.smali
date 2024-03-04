.class public Lcom/guochao/faceshow/aaspring/utils/RsaUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INITIALIZE_LENGTH:I = 0x400

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final MAX_DECRYPT_BLOCK:I = 0x80

.field private static final MAX_ENCRYPT_BLOCK:I = 0x75

.field public static final publicKey:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDecb942lrj0FoBeILmahxRKRMj57Za8JHmlkLgBo1X5tAS8iAwzSByk3Q5aXzMRynNPSrIRaXY0Eixb8mQVw/WChmO4N742o5WM2p7FSn+LnLli9hvIFrSP1F4wyHRNsAuiZhd503hMvmkD/UxRjr1BmSAChtNxbGK1NSsDnBaoQIDAQAB"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeByPrivateKey(Ljava/lang/String;Ljava/security/interfaces/RSAPrivateKey;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3
    new-instance p1, Ljava/lang/String;

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/RsaUtils;->decodec(Ljavax/crypto/Cipher;[B)[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static decodeByPublicKey(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3
    new-instance p1, Ljava/lang/String;

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/RsaUtils;->decodec(Ljavax/crypto/Cipher;[B)[B

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method private static decodec(Ljavax/crypto/Cipher;[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    array-length v4, p1

    if-le v4, v2, :cond_1

    .line 3
    array-length v4, p1

    sub-int/2addr v4, v2

    const/16 v5, 0x80

    if-le v4, v5, :cond_0

    .line 4
    invoke-virtual {p0, p1, v2, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    goto :goto_1

    .line 5
    :cond_0
    array-length v4, p1

    sub-int/2addr v4, v2

    invoke-virtual {p0, p1, v2, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    .line 6
    :goto_1
    array-length v4, v2

    invoke-virtual {v0, v2, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v3, v3, 0x1

    mul-int/lit16 v2, v3, 0x80

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0
.end method

.method public static encodeByPrivateKey(Ljava/lang/String;Ljava/security/interfaces/RSAPrivateKey;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/RsaUtils;->encodec(Ljavax/crypto/Cipher;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeByPublicKey(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/RsaUtils;->encodec(Ljavax/crypto/Cipher;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encodec(Ljavax/crypto/Cipher;[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :goto_0
    array-length v4, p1

    if-le v4, v2, :cond_1

    .line 3
    array-length v4, p1

    sub-int/2addr v4, v2

    const/16 v5, 0x75

    if-le v4, v5, :cond_0

    .line 4
    invoke-virtual {p0, p1, v2, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    goto :goto_1

    .line 5
    :cond_0
    array-length v4, p1

    sub-int/2addr v4, v2

    invoke-virtual {p0, p1, v2, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    .line 6
    :goto_1
    array-length v4, v2

    invoke-virtual {v0, v2, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v2, v3, 0x75

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0
.end method

.method public static getRsaPrivateKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RSA"

    .line 1
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPrivateKey;

    return-object p0
.end method

.method public static getRsaPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "RSA"

    .line 1
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    return-object p0
.end method
