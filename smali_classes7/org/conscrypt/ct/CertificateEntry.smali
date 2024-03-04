.class public Lorg/conscrypt/ct/CertificateEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ct/CertificateEntry$LogEntryType;
    }
.end annotation


# instance fields
.field private final a:Lorg/conscrypt/ct/CertificateEntry$LogEntryType;

.field private final b:[B

.field private final c:[B


# direct methods
.method private constructor <init>(Lorg/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lorg/conscrypt/ct/CertificateEntry$LogEntryType;

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "issuerKeyHash missing for precert entry."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Lorg/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lorg/conscrypt/ct/CertificateEntry$LogEntryType;

    if-ne p1, v0, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unexpected issuerKeyHash for X509 entry."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    .line 6
    array-length v0, p3

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "issuerKeyHash must be 32 bytes long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_5
    :goto_2
    iput-object p1, p0, Lorg/conscrypt/ct/CertificateEntry;->a:Lorg/conscrypt/ct/CertificateEntry$LogEntryType;

    .line 9
    iput-object p3, p0, Lorg/conscrypt/ct/CertificateEntry;->b:[B

    .line 10
    iput-object p2, p0, Lorg/conscrypt/ct/CertificateEntry;->c:[B

    return-void
.end method

.method public static a(Lorg/conscrypt/OpenSSLX509Certificate;Lorg/conscrypt/OpenSSLX509Certificate;)Lorg/conscrypt/ct/CertificateEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "1.3.6.1.4.1.11129.2.4.2"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getNonCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLX509Certificate;->withDeletedExtension(Ljava/lang/String;)Lorg/conscrypt/OpenSSLX509Certificate;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    const-string v0, "SHA-256"

    .line 5
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 7
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 8
    invoke-static {p0, p1}, Lorg/conscrypt/ct/CertificateEntry;->b([B[B)Lorg/conscrypt/ct/CertificateEntry;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "Certificate does not contain embedded signed timestamps"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static b([B[B)Lorg/conscrypt/ct/CertificateEntry;
    .locals 2

    new-instance v0, Lorg/conscrypt/ct/CertificateEntry;

    sget-object v1, Lorg/conscrypt/ct/CertificateEntry$LogEntryType;->PRECERT_ENTRY:Lorg/conscrypt/ct/CertificateEntry$LogEntryType;

    invoke-direct {v0, v1, p0, p1}, Lorg/conscrypt/ct/CertificateEntry;-><init>(Lorg/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V

    return-object v0
.end method

.method public static c(Ljava/security/cert/X509Certificate;)Lorg/conscrypt/ct/CertificateEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/conscrypt/ct/CertificateEntry;->d([B)Lorg/conscrypt/ct/CertificateEntry;

    move-result-object p0

    return-object p0
.end method

.method public static d([B)Lorg/conscrypt/ct/CertificateEntry;
    .locals 3

    new-instance v0, Lorg/conscrypt/ct/CertificateEntry;

    sget-object v1, Lorg/conscrypt/ct/CertificateEntry$LogEntryType;->X509_ENTRY:Lorg/conscrypt/ct/CertificateEntry$LogEntryType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/conscrypt/ct/CertificateEntry;-><init>(Lorg/conscrypt/ct/CertificateEntry$LogEntryType;[B[B)V

    return-object v0
.end method
