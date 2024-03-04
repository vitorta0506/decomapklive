.class public Lcom/guochao/faceshow/aaspring/utils/AESUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/guochao/faceshow/aaspring/utils/AESUtil;


# instance fields
.field private ivParameter:Ljava/lang/String;

.field private sKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "$%^ETDFc)(KL:JD)"

    .line 2
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/AESUtil;->sKey:Ljava/lang/String;

    const-string v0, "6183150073612153"

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/AESUtil;->ivParameter:Ljava/lang/String;

    return-void
.end method

.method public static Encrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 2
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 4
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 5
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p2, 0x1

    .line 6
    invoke-virtual {v0, p2, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string p1, "utf-8"

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/guochao/faceshow/aaspring/utils/AESUtil;
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AESUtil;->instance:Lcom/guochao/faceshow/aaspring/utils/AESUtil;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/AESUtil;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/AESUtil;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/AESUtil;->instance:Lcom/guochao/faceshow/aaspring/utils/AESUtil;

    .line 3
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/AESUtil;->instance:Lcom/guochao/faceshow/aaspring/utils/AESUtil;

    return-object v0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/AESUtil;->sKey:Ljava/lang/String;

    const-string v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 3
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 4
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/AESUtil;->ivParameter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 6
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 8
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "ASCII"

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 20
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p2, "AES/CBC/PKCS5Padding"

    .line 21
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 v1, 0x2

    .line 22
    invoke-virtual {p2, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 23
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 24
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 25
    new-instance p2, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "ASCII"

    .line 10
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 11
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p2, "AES/CBC/PKCS5Padding"

    .line 12
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 13
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    invoke-direct {v1, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 p3, 0x2

    .line 14
    invoke-virtual {p2, p3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 15
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 16
    invoke-virtual {p2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 17
    new-instance p2, Ljava/lang/String;

    const-string p3, "utf-8"

    invoke-direct {p2, p1, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/utils/AESUtil;->sKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 3
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 4
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/utils/AESUtil;->ivParameter:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v0, v3, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v1, "utf-8"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "AES/ECB/PKCS5Padding"

    .line 8
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 10
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p2, 0x1

    .line 11
    invoke-virtual {v0, p2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 12
    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "utf-8"

    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encryptJZdj(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "AES/ECB/PKCS5Padding"

    .line 1
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const-string v1, "ksfqw@o2131#!sdf"

    .line 2
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 3
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string v1, "utf-8"

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method
