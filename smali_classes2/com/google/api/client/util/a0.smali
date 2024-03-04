.class public final Lcom/google/api/client/util/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/InputStream;)Ljava/security/KeyStore;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "JKS"

    .line 1
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 3
    new-instance v2, Lcom/google/api/client/util/y;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Lcom/google/api/client/util/y;-><init>(Ljava/io/Reader;)V

    move-object p0, v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-nez p0, :cond_2

    .line 4
    :cond_1
    invoke-virtual {v2}, Lcom/google/api/client/util/y;->c()Lcom/google/api/client/util/y$a;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_2
    if-eqz v1, :cond_4

    if-eqz p0, :cond_3

    const-string v2, "X.509"

    .line 5
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 7
    invoke-virtual {v1}, Lcom/google/api/client/util/y$a;->a()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 8
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 9
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p0}, Lcom/google/api/client/util/y$a;->a()[B

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 10
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    const/4 v2, 0x0

    new-array v3, v2, [C

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/security/cert/X509Certificate;

    aput-object v1, v4, v2

    const-string v1, "alias"

    .line 11
    invoke-virtual {v0, v1, p0, v3, v4}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    return-object v0

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "private key is missing from certAndKey string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "certificate is missing from certAndKey string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-nez v1, :cond_6

    .line 14
    invoke-virtual {v3}, Lcom/google/api/client/util/y$a;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CERTIFICATE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v1, v3

    goto :goto_0

    .line 15
    :cond_6
    invoke-virtual {v3}, Lcom/google/api/client/util/y$a;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PRIVATE KEY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object p0, v3

    goto :goto_0
.end method

.method public static b()Ljava/security/KeyFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/security/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "SHA256withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/security/Signature;Ljava/security/PrivateKey;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 2
    invoke-virtual {p0, p2}, Ljava/security/Signature;->update([B)V

    .line 3
    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    return-object p0
.end method
