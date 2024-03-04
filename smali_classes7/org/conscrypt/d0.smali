.class public final Lorg/conscrypt/d0;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/d0$b;,
        Lorg/conscrypt/d0$c;
    }
.end annotation


# static fields
.field private static final o:Ljava/util/logging/Logger;

.field private static final p:Lorg/conscrypt/d0$c;


# instance fields
.field private final a:Ljava/security/KeyStore;

.field private b:Lorg/conscrypt/e;

.field private final c:Lorg/conscrypt/j;

.field private final d:Ljava/security/cert/CertPathValidator;

.field private final e:Lorg/conscrypt/e0;

.field private final f:Lorg/conscrypt/e0;

.field private final g:[Ljava/security/cert/X509Certificate;

.field private final h:Ljava/lang/Exception;

.field private final i:Ljava/security/cert/CertificateFactory;

.field private final j:Lorg/conscrypt/d;

.field private k:Lorg/conscrypt/ct/c;

.field private l:Lgl/b;

.field private m:Lorg/conscrypt/k;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lorg/conscrypt/d0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/d0;->o:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lorg/conscrypt/d0$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/conscrypt/d0$c;-><init>(Lorg/conscrypt/d0$a;)V

    sput-object v0, Lorg/conscrypt/d0;->p:Lorg/conscrypt/d0$c;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/conscrypt/d0;-><init>(Ljava/security/KeyStore;Lorg/conscrypt/e;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/conscrypt/e;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/conscrypt/d0;-><init>(Ljava/security/KeyStore;Lorg/conscrypt/e;Lorg/conscrypt/j;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/conscrypt/e;Lorg/conscrypt/j;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/conscrypt/d0;-><init>(Ljava/security/KeyStore;Lorg/conscrypt/e;Lorg/conscrypt/j;Lorg/conscrypt/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/conscrypt/e;Lorg/conscrypt/j;Lorg/conscrypt/d;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4
    invoke-direct/range {v0 .. v7}, Lorg/conscrypt/d0;-><init>(Ljava/security/KeyStore;Lorg/conscrypt/e;Lorg/conscrypt/j;Lorg/conscrypt/d;Lgl/a;Lorg/conscrypt/ct/c;Lgl/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/conscrypt/e;Lorg/conscrypt/j;Lorg/conscrypt/d;Lgl/a;Lorg/conscrypt/ct/c;Lgl/b;)V
    .locals 5

    .line 5
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    const/4 p6, 0x0

    :try_start_0
    const-string v0, "PKIX"

    .line 6
    invoke-static {v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    const-string v1, "X509"

    .line 7
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    const-string v2, "AndroidCAStore"

    .line 8
    invoke-virtual {p1}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {}, Lorg/conscrypt/a0;->u()Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    :try_start_3
    invoke-static {}, Lorg/conscrypt/a0;->n()Lorg/conscrypt/j;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 11
    :goto_0
    :try_start_4
    new-instance v2, Lorg/conscrypt/e0;

    invoke-direct {v2}, Lorg/conscrypt/e0;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v2

    move-object v2, p3

    move-object p3, p6

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p3

    move-object p3, p6

    goto/16 :goto_3

    :catch_1
    move-exception v2

    move-object p3, p6

    goto :goto_2

    .line 12
    :cond_1
    :try_start_5
    invoke-static {p1}, Lorg/conscrypt/d0;->a(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 13
    :try_start_6
    new-instance v2, Lorg/conscrypt/e0;

    .line 14
    invoke-static {p1}, Lorg/conscrypt/d0;->r([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/conscrypt/e0;-><init>(Ljava/util/Set;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v3, v2

    move-object v2, p3

    move-object p3, p1

    move-object p1, p6

    :goto_1
    move-object v4, v3

    move-object v3, p6

    move-object p6, v4

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p3

    move-object p3, p1

    move-object p1, p6

    goto :goto_3

    :catch_3
    move-exception v2

    move-object p1, p6

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p3

    move-object p3, p1

    goto :goto_3

    :catch_4
    move-exception v2

    move-object p1, p6

    move-object p3, p1

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p3

    goto :goto_3

    :catch_5
    move-exception v2

    move-object p1, p6

    move-object p3, p1

    move-object v1, v0

    move-object v3, v2

    move-object v0, p3

    move-object v2, v0

    goto :goto_3

    :catch_6
    move-exception v2

    move-object p1, p6

    move-object p3, p1

    move-object v0, p3

    move-object v1, v0

    move-object v3, v2

    move-object v2, v1

    :goto_3
    move-object v4, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v4

    :goto_4
    if-nez p4, :cond_2

    .line 15
    invoke-static {}, Lorg/conscrypt/a0;->m()Lorg/conscrypt/d;

    move-result-object p4

    :cond_2
    if-nez p5, :cond_3

    .line 16
    invoke-static {}, Lorg/conscrypt/a0;->o()Lgl/a;

    move-result-object p5

    :cond_3
    if-nez p7, :cond_4

    .line 17
    invoke-static {p5}, Lorg/conscrypt/a0;->p(Lgl/a;)Lgl/b;

    move-result-object p7

    .line 18
    :cond_4
    iput-object p2, p0, Lorg/conscrypt/d0;->b:Lorg/conscrypt/e;

    .line 19
    iput-object p1, p0, Lorg/conscrypt/d0;->a:Ljava/security/KeyStore;

    .line 20
    iput-object v2, p0, Lorg/conscrypt/d0;->c:Lorg/conscrypt/j;

    .line 21
    iput-object v0, p0, Lorg/conscrypt/d0;->d:Ljava/security/cert/CertPathValidator;

    .line 22
    iput-object v1, p0, Lorg/conscrypt/d0;->i:Ljava/security/cert/CertificateFactory;

    .line 23
    iput-object p6, p0, Lorg/conscrypt/d0;->e:Lorg/conscrypt/e0;

    .line 24
    new-instance p1, Lorg/conscrypt/e0;

    invoke-direct {p1}, Lorg/conscrypt/e0;-><init>()V

    iput-object p1, p0, Lorg/conscrypt/d0;->f:Lorg/conscrypt/e0;

    .line 25
    iput-object p3, p0, Lorg/conscrypt/d0;->g:[Ljava/security/cert/X509Certificate;

    .line 26
    iput-object v3, p0, Lorg/conscrypt/d0;->h:Ljava/lang/Exception;

    .line 27
    iput-object p4, p0, Lorg/conscrypt/d0;->j:Lorg/conscrypt/d;

    .line 28
    new-instance p1, Lorg/conscrypt/ct/c;

    invoke-direct {p1, p5}, Lorg/conscrypt/ct/c;-><init>(Lgl/a;)V

    iput-object p1, p0, Lorg/conscrypt/d0;->k:Lorg/conscrypt/ct/c;

    .line 29
    iput-object p7, p0, Lorg/conscrypt/d0;->l:Lgl/b;

    return-void
.end method

.method private static a(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {p0, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method private b(Ljava/security/cert/X509Certificate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/conscrypt/d0;->j:Lorg/conscrypt/d;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/conscrypt/d;->a(Ljava/security/PublicKey;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate blocklisted by public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/util/List;[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;[B[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/conscrypt/d0;->k:Lorg/conscrypt/ct/c;

    .line 2
    invoke-virtual {v0, p2, p4, p3}, Lorg/conscrypt/ct/c;->h(Ljava/util/List;[B[B)Lorg/conscrypt/ct/b;

    move-result-object p3

    .line 3
    iget-object p4, p0, Lorg/conscrypt/d0;->l:Lgl/b;

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/security/cert/X509Certificate;

    .line 5
    invoke-interface {p4, p3, p1, p2}, Lgl/b;->a(Lorg/conscrypt/ct/b;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Certificate chain does not conform to required transparency policy."

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLSession;",
            "Ljavax/net/ssl/SSLParameters;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p3}, Lorg/conscrypt/d0;->k(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v1

    .line 3
    invoke-direct {p0, p3}, Lorg/conscrypt/d0;->l(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v2

    move-object v8, v0

    move-object v5, v1

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v5, v0

    move-object v6, v5

    move-object v8, v6

    :goto_0
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 4
    invoke-virtual {p4}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object p4

    const-string v0, "HTTPS"

    .line 5
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 6
    invoke-direct {p0}, Lorg/conscrypt/d0;->j()Lorg/conscrypt/k;

    move-result-object p4

    .line 7
    invoke-interface {p4, p1, v8, p3}, Lorg/conscrypt/k;->verify([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "No subjectAltNames on the certificate match"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move v9, p5

    .line 9
    invoke-direct/range {v3 .. v9}, Lorg/conscrypt/d0;->e([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private e([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_2

    .line 2
    iget-object p4, p0, Lorg/conscrypt/d0;->h:Ljava/lang/Exception;

    if-nez p4, :cond_1

    .line 3
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 p4, 0x0

    .line 6
    aget-object p4, p1, p4

    .line 7
    invoke-direct {p0, p4}, Lorg/conscrypt/d0;->h(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v6, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :goto_0
    invoke-interface {v8, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v5, p6

    .line 12
    invoke-direct/range {v0 .. v8}, Lorg/conscrypt/d0;->f([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    new-instance p1, Ljava/security/cert/CertificateException;

    iget-object p2, p0, Lorg/conscrypt/d0;->h:Ljava/lang/Exception;

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null or zero-length parameter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    move-object v8, p0

    move-object v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    .line 1
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    :goto_0
    move-object v6, v0

    .line 4
    invoke-direct {p0, v6}, Lorg/conscrypt/d0;->b(Ljava/security/cert/X509Certificate;)V

    .line 5
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 6
    invoke-direct/range {v1 .. v7}, Lorg/conscrypt/d0;->s(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    invoke-direct {p0, v6}, Lorg/conscrypt/d0;->g(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    const/4 v7, 0x0

    .line 8
    invoke-static {v0}, Lorg/conscrypt/d0;->q(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, v10

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/TrustAnchor;

    .line 9
    invoke-virtual {v11}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v12

    .line 10
    invoke-interface {v4, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :try_start_0
    invoke-direct/range {p0 .. p8}, Lorg/conscrypt/d0;->f([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 15
    invoke-interface {v4, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    if-nez v7, :cond_4

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    .line 17
    invoke-direct/range {v1 .. v7}, Lorg/conscrypt/d0;->s(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 18
    :cond_4
    throw v0

    :cond_5
    const/4 v7, 0x1

    .line 19
    :goto_2
    array-length v9, v1

    if-ge v7, v9, :cond_8

    .line 20
    aget-object v9, v1, v7

    .line 21
    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v11

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 23
    :try_start_1
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 24
    invoke-static {v9}, Lorg/conscrypt/g;->b(Ljava/security/cert/X509Certificate;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 25
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :try_start_2
    invoke-direct/range {p0 .. p8}, Lorg/conscrypt/d0;->f([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 28
    invoke-interface {v4, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 29
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :catch_2
    move-exception v0

    .line 30
    new-instance v11, Ljava/security/cert/CertificateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unacceptable certificate: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v11

    :cond_7
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 32
    :cond_8
    iget-object v7, v8, Lorg/conscrypt/d0;->f:Lorg/conscrypt/e0;

    .line 33
    invoke-virtual {v7, v6}, Lorg/conscrypt/e0;->a(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v6

    .line 34
    invoke-static {v6}, Lorg/conscrypt/d0;->q(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/TrustAnchor;

    .line 35
    invoke-virtual {v7}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 36
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_4

    .line 37
    :cond_9
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :try_start_3
    invoke-direct/range {p0 .. p8}, Lorg/conscrypt/d0;->f([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    .line 40
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 41
    invoke-interface {v4, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    if-eqz v0, :cond_b

    .line 42
    throw v0

    .line 43
    :cond_b
    iget-object v0, v8, Lorg/conscrypt/d0;->i:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const/4 v3, -0x1

    const-string v4, "Trust anchor for certification path not found."

    invoke-direct {v2, v4, v10, v0, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private g(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/conscrypt/d0;->e:Lorg/conscrypt/e0;

    .line 2
    invoke-virtual {v0, p1}, Lorg/conscrypt/e0;->a(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/conscrypt/d0;->c:Lorg/conscrypt/j;

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v1, p1}, Lorg/conscrypt/j;->b(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 7
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 8
    iget-object v2, p0, Lorg/conscrypt/d0;->e:Lorg/conscrypt/e0;

    invoke-virtual {v2, v1}, Lorg/conscrypt/e0;->d(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private h(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/conscrypt/d0;->e:Lorg/conscrypt/e0;

    invoke-virtual {v0, p1}, Lorg/conscrypt/e0;->b(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/d0;->c:Lorg/conscrypt/j;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-interface {v0, p1}, Lorg/conscrypt/j;->a(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    new-instance v0, Ljava/security/cert/TrustAnchor;

    invoke-direct {v0, p1, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method private static i(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "Not in handshake; no session available"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private j()Lorg/conscrypt/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/conscrypt/d0;->m:Lorg/conscrypt/k;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lorg/conscrypt/a0;->d()Lorg/conscrypt/k;

    move-result-object v0

    return-object v0
.end method

.method private static k(Ljavax/net/ssl/SSLSession;)[B
    .locals 5

    .line 1
    instance-of v0, p0, Lorg/conscrypt/l;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lorg/conscrypt/l;

    .line 3
    invoke-interface {p0}, Lorg/conscrypt/l;->f()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getStatusResponses"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 8
    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    .line 10
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :cond_3
    :goto_1
    return-object v1
.end method

.method private l(Ljavax/net/ssl/SSLSession;)[B
    .locals 5

    .line 1
    instance-of v0, p1, Lorg/conscrypt/l;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lorg/conscrypt/l;

    .line 3
    invoke-interface {p1}, Lorg/conscrypt/l;->b()[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPeerSignedCertificateTimestamp"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    instance-of v1, p1, [B

    if-eqz v1, :cond_1

    .line 8
    check-cast p1, [B
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    :cond_1
    :goto_0
    return-object v0
.end method

.method private p(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;[B)V
    .locals 5

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    .line 4
    instance-of v4, v3, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v4, :cond_1

    .line 5
    move-object v0, v3

    check-cast v0, Ljava/security/cert/PKIXRevocationChecker;

    :cond_2
    if-nez v0, :cond_3

    .line 6
    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/d0;->d:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidator;->getRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXRevocationChecker;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v2, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/cert/PKIXRevocationChecker;->setOptions(Ljava/util/Set;)V

    goto :goto_0

    :catch_0
    return-void

    .line 9
    :cond_3
    :goto_0
    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/security/cert/PKIXRevocationChecker;->setOcspResponses(Ljava/util/Map;)V

    .line 10
    invoke-virtual {p1, v1}, Ljava/security/cert/PKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    return-void
.end method

.method private static q(Ljava/util/Set;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    sget-object p0, Lorg/conscrypt/d0;->p:Lorg/conscrypt/d0$c;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static r([Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 3
    new-instance v4, Ljava/security/cert/TrustAnchor;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private s(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/lang/String;",
            "Z[B[B)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-string v0, "Chain validation failed"

    .line 1
    :try_start_0
    iget-object v1, p0, Lorg/conscrypt/d0;->i:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v1, p1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/TrustAnchor;

    .line 6
    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v4, p0, Lorg/conscrypt/d0;->b:Lorg/conscrypt/e;

    if-eqz v4, :cond_1

    .line 8
    invoke-interface {v4, p3, v2}, Lorg/conscrypt/e;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 9
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 10
    invoke-direct {p0, v5}, Lorg/conscrypt/d0;->b(Ljava/security/cert/X509Certificate;)V

    goto :goto_1

    :cond_2
    if-nez p4, :cond_4

    .line 11
    iget-boolean v4, p0, Lorg/conscrypt/d0;->n:Z

    if-nez v4, :cond_3

    if-eqz p3, :cond_4

    .line 12
    invoke-static {p3}, Lorg/conscrypt/a0;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 13
    :cond_3
    invoke-direct {p0, p3, v2, p5, p6}, Lorg/conscrypt/d0;->c(Ljava/lang/String;Ljava/util/List;[B[B)V

    .line 14
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    return-object v2

    .line 15
    :cond_5
    invoke-static {p1}, Lorg/conscrypt/g;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 16
    :try_start_1
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    const/4 p6, 0x0

    .line 17
    invoke-interface {p2, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance p2, Ljava/security/cert/PKIXParameters;

    invoke-direct {p2, p3}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 19
    invoke-virtual {p2, p6}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 20
    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    .line 21
    invoke-direct {p0, p2, p3, p5}, Lorg/conscrypt/d0;->p(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;[B)V

    .line 22
    new-instance p5, Lorg/conscrypt/d0$b;

    invoke-direct {p5, p4, p3, v3}, Lorg/conscrypt/d0$b;-><init>(ZLjava/security/cert/X509Certificate;Lorg/conscrypt/d0$a;)V

    invoke-virtual {p2, p5}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    .line 23
    iget-object p3, p0, Lorg/conscrypt/d0;->d:Ljava/security/cert/CertPathValidator;

    invoke-virtual {p3, v1, p2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 p2, 0x1

    .line 24
    :goto_2
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_6

    .line 25
    iget-object p3, p0, Lorg/conscrypt/d0;->f:Lorg/conscrypt/e0;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/security/cert/X509Certificate;

    invoke-virtual {p3, p4}, Lorg/conscrypt/e0;->d(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    return-object v2

    :catch_0
    move-exception p1

    .line 26
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 27
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, v0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 28
    :cond_7
    new-instance p1, Ljava/security/cert/CertificateException;

    new-instance p2, Ljava/security/cert/CertPathValidatorException;

    const-string p3, "Trust anchor for certification path not found."

    const/4 p4, -0x1

    invoke-direct {p2, p3, v3, v1, p4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception p1

    .line 29
    sget-object p2, Lorg/conscrypt/d0;->o:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Rejected candidate cert chain due to error: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 30
    throw p1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/d0;->d([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 2
    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    check-cast p3, Ljavax/net/ssl/SSLSocket;

    .line 4
    invoke-static {p3}, Lorg/conscrypt/d0;->i(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 5
    invoke-virtual {p3}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p3

    move-object v6, p3

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v1

    move-object v6, v5

    :goto_0
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 6
    invoke-direct/range {v2 .. v7}, Lorg/conscrypt/d0;->d([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 7
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/d0;->d([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Not in handshake; no session available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/d0;->d([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/d0;->m([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/d0;->n([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/conscrypt/d0;->g:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/conscrypt/d0;->a:Ljava/security/KeyStore;

    invoke-static {v0}, Lorg/conscrypt/d0;->a(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public m([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p3, Ljavax/net/ssl/SSLSocket;

    .line 3
    invoke-static {p3}, Lorg/conscrypt/d0;->i(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 4
    invoke-virtual {p3}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object p3

    move-object v6, p3

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v1

    move-object v6, v5

    :goto_0
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 5
    invoke-direct/range {v2 .. v7}, Lorg/conscrypt/d0;->d([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public n([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLEngine;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/d0;->d([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Not in handshake; no session available"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method o(Lorg/conscrypt/k;)V
    .locals 0

    iput-object p1, p0, Lorg/conscrypt/d0;->m:Lorg/conscrypt/k;

    return-void
.end method
