.class public Lcom/guochao/faceshow/aaspring/utils/NativeBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeBridge"

.field public static dictionaries:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 40

    const-string v0, "g"

    const-string v1, "h"

    const-string v2, "i"

    const-string v3, "j"

    const-string v4, "k"

    const-string v5, "l"

    const-string v6, "m"

    const-string v7, "n"

    const-string v8, "o"

    const-string v9, "p"

    const-string v10, "q"

    const-string v11, "r"

    const-string v12, "s"

    const-string v13, "t"

    const-string v14, "u"

    const-string v15, "v"

    const-string v16, "w"

    const-string v17, "x"

    const-string v18, "y"

    const-string v19, "z"

    const-string v20, "G"

    const-string v21, "H"

    const-string v22, "I"

    const-string v23, "J"

    const-string v24, "K"

    const-string v25, "L"

    const-string v26, "M"

    const-string v27, "N"

    const-string v28, "O"

    const-string v29, "P"

    const-string v30, "Q"

    const-string v31, "R"

    const-string v32, "S"

    const-string v33, "T"

    const-string v34, "U"

    const-string v35, "V"

    const-string v36, "W"

    const-string v37, "X"

    const-string v38, "Y"

    const-string v39, "Z"

    filled-new-array/range {v0 .. v39}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/NativeBridge;->dictionaries:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "RSA"

    .line 3
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    const-string v0, "RSA/ECB/PKCS1Padding"

    .line 4
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 6
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x80

    invoke-direct {p1, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    .line 7
    :goto_0
    array-length v3, p0

    mul-int/lit16 v4, v2, 0x80

    sub-int/2addr v3, v4

    if-lez v3, :cond_0

    .line 8
    invoke-virtual {v0, p0, v4, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method public static b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const-string v0, "/"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 2
    aget-object v2, p0, v1

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/NativeBridge;->getHIndexEnd(Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object v2

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    .line 8
    :goto_0
    array-length v8, p0

    if-ge v7, v8, :cond_1

    .line 9
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 10
    aget-object v8, p0, v7

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 12
    :cond_0
    aget-object v8, p0, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    const-string v0, "+"

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3

    .line 16
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    goto :goto_2

    .line 17
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    .line 18
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v3

    :goto_2
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 2
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/ECB/PKCS5Padding"

    .line 3
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 5
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 6
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 7
    new-instance p1, Ljava/lang/String;

    const-string v0, "utf-8"

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

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

    goto :goto_0

    :catch_4
    move-exception p0

    goto :goto_0

    :catch_5
    move-exception p0

    :goto_0
    const-string p1, "NativeBridge"

    const-string v0, "\u89e3\u5bc6 AES \u5bc6\u6587\u5931\u8d25 "

    .line 8
    invoke-static {p1, v0, p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "NativeBridge"

    .line 1
    :try_start_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 2
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/ECB/PKCS5Padding"

    .line 3
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 5
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 6
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 7
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    .line 8
    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/NativeBridge;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u52a0\u5bc6\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89e3\u5bc6\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

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

    goto :goto_0

    :catch_4
    move-exception p0

    :goto_0
    const-string p1, "\u751f\u4ea7 AES \u5bc6\u6587\u5931\u8d25 "

    .line 11
    invoke-static {v0, p1, p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getHIndexEnd(Ljava/lang/String;)Ljava/util/TreeSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/NativeBridge;->dictionaries:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, ","

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    .line 3
    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v2, p0, v3

    .line 5
    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0x10

    invoke-direct {v4, v2, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/utils/NativeBridge;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/NativeBridge;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
