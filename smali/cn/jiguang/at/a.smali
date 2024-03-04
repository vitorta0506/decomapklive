.class public Lcn/jiguang/at/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(ILjava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 5

    const-string v0, "AES"

    const-string v1, "CryptoUtils"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doCrypto cipherMode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", key is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", inputFile is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", outputFile is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/jiguang/as/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v3, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    invoke-virtual {p1, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int p2, v3

    new-array p2, p2, [B

    invoke-virtual {p0, p2}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0}, Lcn/jiguang/f/i;->a(Ljava/io/Closeable;)V

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    goto :goto_2

    :catch_5
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p2, v2

    :goto_0
    move-object v2, p0

    goto :goto_6

    :catch_6
    move-exception p1

    goto :goto_1

    :catch_7
    move-exception p1

    goto :goto_1

    :catch_8
    move-exception p1

    goto :goto_1

    :catch_9
    move-exception p1

    goto :goto_1

    :catch_a
    move-exception p1

    goto :goto_1

    :catch_b
    move-exception p1

    :goto_1
    move-object p2, v2

    :goto_2
    move-object v2, p0

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object p2, v2

    goto :goto_6

    :catch_c
    move-exception p1

    goto :goto_3

    :catch_d
    move-exception p1

    goto :goto_3

    :catch_e
    move-exception p1

    goto :goto_3

    :catch_f
    move-exception p1

    goto :goto_3

    :catch_10
    move-exception p1

    goto :goto_3

    :catch_11
    move-exception p1

    :goto_3
    move-object p2, v2

    :goto_4
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error encrypting/decrypting file, error message is "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcn/jiguang/as/d;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v2}, Lcn/jiguang/f/i;->a(Ljava/io/Closeable;)V

    :goto_5
    invoke-static {p2}, Lcn/jiguang/f/i;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_3
    move-exception p1

    :goto_6
    invoke-static {v2}, Lcn/jiguang/f/i;->a(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcn/jiguang/f/i;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1, p2}, Lcn/jiguang/at/a;->a(ILjava/lang/String;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method
