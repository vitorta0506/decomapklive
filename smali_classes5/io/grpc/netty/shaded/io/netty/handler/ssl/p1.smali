.class public abstract Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final c:Ljava/security/cert/CertificateFactory;


# instance fields
.field private final a:Z

.field private final b:Lio/grpc/netty/shaded/io/netty/util/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "X.509"

    .line 1
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->c:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unable to instance X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/grpc/netty/shaded/io/netty/util/k;

    invoke-direct {v0}, Lio/grpc/netty/shaded/io/netty/util/k;-><init>()V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->b:Lio/grpc/netty/shaded/io/netty/util/f;

    .line 4
    iput-boolean p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->a:Z

    return-void
.end method

.method protected static A(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/KeyException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g1;->c(Ljava/io/InputStream;)Lkg/j;

    move-result-object p0

    invoke-static {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->p(Lkg/j;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method protected static B(Ljava/io/InputStream;)[Ljava/security/cert/X509Certificate;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/g1;->a(Ljava/io/InputStream;)[Lkg/j;

    move-result-object p0

    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->o([Lkg/j;)[Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method private static C(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;Ljava/security/Provider;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java Security Provider unsupported for SslProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static b(Ljava/security/KeyStore;Ljava/lang/String;[CLjavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/KeyManagerFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    if-nez p3, :cond_1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p3

    .line 3
    :cond_1
    invoke-virtual {p3, p0, p2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    return-object p3
.end method

.method protected static e([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    .line 2
    :cond_0
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->s(Ljava/lang/String;)[C

    move-result-object p3

    .line 3
    invoke-static {p0, p2, p3, p5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->h([Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;[CLjava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    .line 4
    invoke-static {p0, p1, p3, p4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->b(Ljava/security/KeyStore;Ljava/lang/String;[CLjavax/net/ssl/KeyManagerFactory;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p0

    return-object p0
.end method

.method protected static h([Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;[CLjava/lang/String;)Ljava/security/KeyStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object p3

    .line 2
    :cond_0
    invoke-static {p3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p3

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p3, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v0, "key"

    .line 4
    invoke-virtual {p3, v0, p1, p2, p0}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    return-object p3
.end method

.method protected static i([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object p2

    .line 2
    :cond_0
    invoke-static {p2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p2, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 4
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v4, p0, v1

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {p2, v5, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    add-int/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 7
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    .line 8
    :cond_2
    invoke-virtual {p1, p2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    return-object p1
.end method

.method public static j()Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->k()Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    move-result-object v0

    return-object v0
.end method

.method private static k()Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;
    .locals 1

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->OPENSSL:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;->JDK:Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    return-object v0
.end method

.method public static l()Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;
    .locals 1

    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->k()Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    move-result-object v0

    return-object v0
.end method

.method protected static n([C[B)Ljava/security/spec/PKCS8EncodedKeySpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljavax/crypto/EncryptedPrivateKeyInfo;

    invoke-direct {v0, p1}, Ljavax/crypto/EncryptedPrivateKeyInfo;-><init>([B)V

    .line 3
    invoke-virtual {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p1

    .line 4
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v1, p0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 5
    invoke-virtual {p1, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 6
    invoke-virtual {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getAlgParameters()Ljava/security/AlgorithmParameters;

    move-result-object v2

    invoke-virtual {p1, v1, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 8
    invoke-virtual {v0, p1}, Ljavax/crypto/EncryptedPrivateKeyInfo;->getKeySpec(Ljavax/crypto/Cipher;)Ljava/security/spec/PKCS8EncodedKeySpec;

    move-result-object p0

    return-object p0
.end method

.method private static o([Lkg/j;)[Ljava/security/cert/X509Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "X.509"

    .line 1
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 2
    array-length v1, p0

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    :try_start_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 4
    new-instance v4, Lkg/m;

    aget-object v5, p0, v3

    invoke-direct {v4, v5, v2}, Lkg/m;-><init>(Lkg/j;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_0
    move-exception v0

    .line 8
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 9
    :try_start_5
    throw v0

    :catch_1
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 11
    :cond_0
    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 12
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    :catchall_1
    move-exception v0

    .line 13
    array-length v1, p0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 14
    invoke-interface {v3}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 15
    :cond_2
    throw v0
.end method

.method private static p(Lkg/j;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/KeyException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkg/j;->P1()I

    move-result v0

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0, v0}, Lkg/j;->C1([B)Lkg/j;

    move-result-object p0

    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/util/s;->release()Z

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 4
    :goto_0
    invoke-static {p0, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->n([C[B)Ljava/security/spec/PKCS8EncodedKeySpec;

    move-result-object p0

    :try_start_0
    const-string p1, "RSA"

    .line 5
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :try_start_1
    const-string p1, "DSA"

    .line 6
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :try_start_2
    const-string p1, "EC"

    .line 7
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    .line 8
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Neither RSA, DSA nor EC worked"

    invoke-direct {p1, v0, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static s(Ljava/lang/String;)[C
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lio/grpc/netty/shaded/io/netty/util/internal/h;->c:[C

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static varargs t(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;Ljava/security/Provider;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;[Ljava/lang/String;JJZLjava/lang/String;[Ljava/util/Map$Entry;)Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;",
            "Ljava/security/Provider;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljavax/net/ssl/TrustManagerFactory;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/KeyManagerFactory;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/i;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;",
            "[",
            "Ljava/lang/String;",
            "JJZ",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Map$Entry<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/r1<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    move-object/from16 v1, p1

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->j()Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    .line 2
    :goto_0
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 3
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->C(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;Ljava/security/Provider;)V

    .line 4
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->e()V

    .line 5
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1;

    move-object v4, v0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-wide/from16 v15, p12

    move-wide/from16 v17, p14

    move/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    invoke-direct/range {v4 .. v21}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1;-><init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;[Ljava/lang/String;JJZLjava/lang/String;[Ljava/util/Map$Entry;)V

    return-object v0

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_2
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->C(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;Ljava/security/Provider;)V

    .line 8
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->e()V

    .line 9
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j0;

    move-object v2, v0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    invoke-direct/range {v2 .. v19}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j0;-><init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;[Ljava/lang/String;JJZLjava/lang/String;[Ljava/util/Map$Entry;)V

    return-object v0

    :cond_3
    if-nez p16, :cond_4

    .line 10
    new-instance v17, Lio/grpc/netty/shaded/io/netty/handler/ssl/y;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-object/from16 v16, p17

    invoke-direct/range {v0 .. v16}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y;-><init>(Ljava/security/Provider;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;[Ljava/lang/String;JJLjava/lang/String;)V

    return-object v17

    .line 11
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OCSP is not supported with this SslProvider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static varargs w(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;Ljava/security/Provider;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;JJLio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;[Ljava/util/Map$Entry;)Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;",
            "Ljava/security/Provider;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljavax/net/ssl/TrustManagerFactory;",
            "[",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/PrivateKey;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/KeyManagerFactory;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/i;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;",
            "JJ",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Map$Entry<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/r1<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    move-object/from16 v1, p1

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->l()Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    .line 2
    :goto_0
    sget-object v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 3
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->C(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;Ljava/security/Provider;)V

    .line 4
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1;

    move-object v4, v0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move/from16 v20, p17

    move/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    invoke-direct/range {v4 .. v23}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1;-><init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;JJLio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;[Ljava/util/Map$Entry;)V

    return-object v0

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6
    :cond_2
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->C(Lio/grpc/netty/shaded/io/netty/handler/ssl/SslProvider;Ljava/security/Provider;)V

    .line 7
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v0;

    move-object v2, v0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    invoke-direct/range {v2 .. v21}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v0;-><init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;JJLio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;[Ljava/util/Map$Entry;)V

    return-object v0

    :cond_3
    if-nez p18, :cond_4

    .line 8
    new-instance v19, Lio/grpc/netty/shaded/io/netty/handler/ssl/b0;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p19

    invoke-direct/range {v0 .. v18}, Lio/grpc/netty/shaded/io/netty/handler/ssl/b0;-><init>(Ljava/security/Provider;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;JJLio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZLjava/lang/String;)V

    return-object v19

    .line 9
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OCSP is not supported with this SslProvider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract a()Lio/grpc/netty/shaded/io/netty/handler/ssl/b;
.end method

.method public abstract q()Z
.end method

.method public final r()Z
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->q()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract v(Lkg/k;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
.end method

.method public abstract y()Ljavax/net/ssl/SSLSessionContext;
.end method

.method public z()J
    .locals 2

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->y()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
