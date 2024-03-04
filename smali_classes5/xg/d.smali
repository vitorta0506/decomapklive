.class public final Lxg/d;
.super Lio/grpc/internal/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxg/d$f;,
        Lxg/d$g;,
        Lxg/d$d;,
        Lxg/d$e;,
        Lxg/d$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/internal/b<",
        "Lxg/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final r:Ljava/util/logging/Logger;

.field static final s:Lio/grpc/okhttp/internal/a;

.field private static final t:J

.field private static final u:Lio/grpc/internal/f2$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/f2$d<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lio/grpc/TlsChannelCredentials$Feature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lio/grpc/internal/h1;

.field private c:Lio/grpc/internal/p2$b;

.field private d:Ljava/util/concurrent/Executor;

.field private e:Ljava/util/concurrent/ScheduledExecutorService;

.field private f:Ljavax/net/SocketFactory;

.field private g:Ljavax/net/ssl/SSLSocketFactory;

.field private final h:Z

.field private i:Ljavax/net/ssl/HostnameVerifier;

.field private j:Lio/grpc/okhttp/internal/a;

.field private k:Lxg/d$c;

.field private l:J

.field private m:J

.field private n:I

.field private o:Z

.field private p:I

.field private final q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lxg/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lxg/d;->r:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lio/grpc/okhttp/internal/a$b;

    sget-object v1, Lio/grpc/okhttp/internal/a;->f:Lio/grpc/okhttp/internal/a;

    invoke-direct {v0, v1}, Lio/grpc/okhttp/internal/a$b;-><init>(Lio/grpc/okhttp/internal/a;)V

    const/4 v1, 0x6

    new-array v1, v1, [Lio/grpc/okhttp/internal/CipherSuite;

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    sget-object v2, Lio/grpc/okhttp/internal/CipherSuite;->TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256:Lio/grpc/okhttp/internal/CipherSuite;

    const/4 v5, 0x5

    aput-object v2, v1, v5

    .line 3
    invoke-virtual {v0, v1}, Lio/grpc/okhttp/internal/a$b;->f([Lio/grpc/okhttp/internal/CipherSuite;)Lio/grpc/okhttp/internal/a$b;

    move-result-object v0

    new-array v1, v4, [Lio/grpc/okhttp/internal/TlsVersion;

    sget-object v2, Lio/grpc/okhttp/internal/TlsVersion;->TLS_1_2:Lio/grpc/okhttp/internal/TlsVersion;

    aput-object v2, v1, v3

    .line 4
    invoke-virtual {v0, v1}, Lio/grpc/okhttp/internal/a$b;->i([Lio/grpc/okhttp/internal/TlsVersion;)Lio/grpc/okhttp/internal/a$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v4}, Lio/grpc/okhttp/internal/a$b;->h(Z)Lio/grpc/okhttp/internal/a$b;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lio/grpc/okhttp/internal/a$b;->e()Lio/grpc/okhttp/internal/a;

    move-result-object v0

    sput-object v0, Lxg/d;->s:Lio/grpc/okhttp/internal/a;

    .line 7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lxg/d;->t:J

    .line 8
    new-instance v0, Lxg/d$a;

    invoke-direct {v0}, Lxg/d$a;-><init>()V

    sput-object v0, Lxg/d;->u:Lio/grpc/internal/f2$d;

    .line 9
    sget-object v0, Lio/grpc/TlsChannelCredentials$Feature;->MTLS:Lio/grpc/TlsChannelCredentials$Feature;

    sget-object v1, Lio/grpc/TlsChannelCredentials$Feature;->CUSTOM_MANAGERS:Lio/grpc/TlsChannelCredentials$Feature;

    .line 10
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lxg/d;->v:Ljava/util/EnumSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lio/grpc/internal/b;-><init>()V

    .line 3
    invoke-static {}, Lio/grpc/internal/p2;->a()Lio/grpc/internal/p2$b;

    move-result-object v0

    iput-object v0, p0, Lxg/d;->c:Lio/grpc/internal/p2$b;

    .line 4
    sget-object v0, Lxg/d;->s:Lio/grpc/okhttp/internal/a;

    iput-object v0, p0, Lxg/d;->j:Lio/grpc/okhttp/internal/a;

    .line 5
    sget-object v0, Lxg/d$c;->a:Lxg/d$c;

    iput-object v0, p0, Lxg/d;->k:Lxg/d$c;

    const-wide v0, 0x7fffffffffffffffL

    .line 6
    iput-wide v0, p0, Lxg/d;->l:J

    .line 7
    sget-wide v0, Lio/grpc/internal/GrpcUtil;->m:J

    iput-wide v0, p0, Lxg/d;->m:J

    const v0, 0xffff

    .line 8
    iput v0, p0, Lxg/d;->n:I

    const v0, 0x7fffffff

    .line 9
    iput v0, p0, Lxg/d;->p:I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lxg/d;->q:Z

    .line 11
    new-instance v1, Lio/grpc/internal/h1;

    new-instance v2, Lxg/d$e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lxg/d$e;-><init>(Lxg/d;Lxg/d$a;)V

    new-instance v4, Lxg/d$d;

    invoke-direct {v4, p0, v3}, Lxg/d$d;-><init>(Lxg/d;Lxg/d$a;)V

    invoke-direct {v1, p1, v2, v4}, Lio/grpc/internal/h1;-><init>(Ljava/lang/String;Lio/grpc/internal/h1$c;Lio/grpc/internal/h1$b;)V

    iput-object v1, p0, Lxg/d;->b:Lio/grpc/internal/h1;

    .line 12
    iput-boolean v0, p0, Lxg/d;->h:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/grpc/internal/GrpcUtil;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lxg/d;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lio/grpc/e;Lio/grpc/b;Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 8

    .line 13
    invoke-direct {p0}, Lio/grpc/internal/b;-><init>()V

    .line 14
    invoke-static {}, Lio/grpc/internal/p2;->a()Lio/grpc/internal/p2$b;

    move-result-object v0

    iput-object v0, p0, Lxg/d;->c:Lio/grpc/internal/p2$b;

    .line 15
    sget-object v0, Lxg/d;->s:Lio/grpc/okhttp/internal/a;

    iput-object v0, p0, Lxg/d;->j:Lio/grpc/okhttp/internal/a;

    .line 16
    sget-object v0, Lxg/d$c;->a:Lxg/d$c;

    iput-object v0, p0, Lxg/d;->k:Lxg/d$c;

    const-wide v1, 0x7fffffffffffffffL

    .line 17
    iput-wide v1, p0, Lxg/d;->l:J

    .line 18
    sget-wide v1, Lio/grpc/internal/GrpcUtil;->m:J

    iput-wide v1, p0, Lxg/d;->m:J

    const v1, 0xffff

    .line 19
    iput v1, p0, Lxg/d;->n:I

    const v1, 0x7fffffff

    .line 20
    iput v1, p0, Lxg/d;->p:I

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lxg/d;->q:Z

    .line 22
    new-instance v1, Lio/grpc/internal/h1;

    new-instance v6, Lxg/d$e;

    const/4 v2, 0x0

    invoke-direct {v6, p0, v2}, Lxg/d$e;-><init>(Lxg/d;Lxg/d$a;)V

    new-instance v7, Lxg/d$d;

    invoke-direct {v7, p0, v2}, Lxg/d$d;-><init>(Lxg/d;Lxg/d$a;)V

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lio/grpc/internal/h1;-><init>(Ljava/lang/String;Lio/grpc/e;Lio/grpc/b;Lio/grpc/internal/h1$c;Lio/grpc/internal/h1$b;)V

    iput-object v1, p0, Lxg/d;->b:Lio/grpc/internal/h1;

    .line 23
    iput-object p4, p0, Lxg/d;->g:Ljavax/net/ssl/SSLSocketFactory;

    if-nez p4, :cond_0

    .line 24
    sget-object v0, Lxg/d$c;->b:Lxg/d$c;

    :cond_0
    iput-object v0, p0, Lxg/d;->k:Lxg/d$c;

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lxg/d;->h:Z

    return-void
.end method

.method static B([B)[Ljavax/net/ssl/TrustManager;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "X.509"

    .line 3
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 6
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    const-string v3, "RFC2253"

    .line 7
    invoke-virtual {v1, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-static {v2}, Lio/grpc/internal/GrpcUtil;->f(Ljava/io/Closeable;)V

    .line 9
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p0

    .line 10
    invoke-virtual {p0, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 11
    invoke-virtual {p0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 12
    invoke-static {v2}, Lio/grpc/internal/GrpcUtil;->f(Ljava/io/Closeable;)V

    throw p0

    :catch_0
    move-exception p0

    .line 13
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static C(Ljava/lang/String;I)Lxg/d;
    .locals 1

    new-instance v0, Lxg/d;

    invoke-direct {v0, p0, p1}, Lxg/d;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method static J(Lio/grpc/e;)Lxg/d$g;
    .locals 4

    .line 1
    instance-of v0, p0, Lio/grpc/TlsChannelCredentials;

    if-eqz v0, :cond_5

    .line 2
    check-cast p0, Lio/grpc/TlsChannelCredentials;

    .line 3
    sget-object v0, Lxg/d;->v:Ljava/util/EnumSet;

    .line 4
    invoke-virtual {p0, v0}, Lio/grpc/TlsChannelCredentials;->h(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TLS features not understood: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxg/d$g;->a(Ljava/lang/String;)Lxg/d$g;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->c()Ljava/util/List;

    move-result-object v0

    new-array v3, v1, [Ljavax/net/ssl/KeyManager;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/KeyManager;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->d()[B

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p0, "byte[]-based private key unsupported. Use KeyManager"

    .line 10
    invoke-static {p0}, Lxg/d$g;->a(Ljava/lang/String;)Lxg/d$g;

    move-result-object p0

    return-object p0

    :cond_2
    move-object v0, v2

    .line 11
    :goto_0
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->g()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->g()Ljava/util/List;

    move-result-object p0

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljavax/net/ssl/TrustManager;

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->f()[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lio/grpc/TlsChannelCredentials;->f()[B

    move-result-object p0

    invoke-static {p0}, Lxg/d;->B([B)[Ljavax/net/ssl/TrustManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 15
    sget-object v0, Lxg/d;->r:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Exception loading root certificates from credential"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to load root certificates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lxg/d$g;->a(Ljava/lang/String;)Lxg/d$g;

    move-result-object p0

    return-object p0

    :cond_4
    move-object p0, v2

    :goto_1
    :try_start_1
    const-string v1, "TLS"

    .line 19
    invoke-static {}, Lio/grpc/okhttp/internal/Platform;->e()Lio/grpc/okhttp/internal/Platform;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/okhttp/internal/Platform;->g()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v1, v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 20
    invoke-virtual {v1, v0, p0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 21
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-static {p0}, Lxg/d$g;->b(Ljavax/net/ssl/SSLSocketFactory;)Lxg/d$g;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 22
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TLS Provider failure"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 23
    :cond_5
    instance-of v0, p0, Lio/grpc/b0;

    if-eqz v0, :cond_6

    .line 24
    invoke-static {}, Lxg/d$g;->c()Lxg/d$g;

    move-result-object p0

    return-object p0

    .line 25
    :cond_6
    instance-of v0, p0, Lio/grpc/n;

    if-eqz v0, :cond_7

    .line 26
    check-cast p0, Lio/grpc/n;

    .line 27
    invoke-virtual {p0}, Lio/grpc/n;->c()Lio/grpc/e;

    move-result-object v0

    invoke-static {v0}, Lxg/d;->J(Lio/grpc/e;)Lxg/d$g;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lio/grpc/n;->b()Lio/grpc/b;

    move-result-object p0

    invoke-virtual {v0, p0}, Lxg/d$g;->d(Lio/grpc/b;)Lxg/d$g;

    move-result-object p0

    return-object p0

    .line 29
    :cond_7
    instance-of v0, p0, Lxg/p;

    if-eqz v0, :cond_8

    .line 30
    check-cast p0, Lxg/p;

    .line 31
    invoke-virtual {p0}, Lxg/p;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    invoke-static {p0}, Lxg/d$g;->b(Ljavax/net/ssl/SSLSocketFactory;)Lxg/d$g;

    move-result-object p0

    return-object p0

    .line 32
    :cond_8
    instance-of v0, p0, Lio/grpc/f;

    if-eqz v0, :cond_b

    .line 33
    check-cast p0, Lio/grpc/f;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-virtual {p0}, Lio/grpc/f;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/e;

    .line 36
    invoke-static {v1}, Lxg/d;->J(Lio/grpc/e;)Lxg/d$g;

    move-result-object v1

    .line 37
    iget-object v2, v1, Lxg/d$g;->c:Ljava/lang/String;

    if-nez v2, :cond_9

    return-object v1

    :cond_9
    const-string v2, ", "

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, v1, Lxg/d$g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    const/4 p0, 0x2

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lxg/d$g;->a(Ljava/lang/String;)Lxg/d$g;

    move-result-object p0

    return-object p0

    .line 41
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported credential type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 43
    invoke-static {p0}, Lxg/d$g;->a(Ljava/lang/String;)Lxg/d$g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y()Lio/grpc/internal/f2$d;
    .locals 1

    sget-object v0, Lxg/d;->u:Lio/grpc/internal/f2$d;

    return-object v0
.end method


# virtual methods
.method A()Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 1
    sget-object v0, Lxg/d$b;->b:[I

    iget-object v1, p0, Lxg/d;->k:Lxg/d$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lxg/d;->g:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    const-string v0, "Default"

    .line 3
    invoke-static {}, Lio/grpc/okhttp/internal/Platform;->e()Lio/grpc/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/okhttp/internal/Platform;->g()Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lxg/d;->g:Ljavax/net/ssl/SSLSocketFactory;

    .line 5
    :cond_0
    iget-object v0, p0, Lxg/d;->g:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "TLS Provider failure"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown negotiation type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lxg/d;->k:Lxg/d$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method D()I
    .locals 3

    .line 1
    sget-object v0, Lxg/d$b;->b:[I

    iget-object v1, p0, Lxg/d;->k:Lxg/d$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1bb

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lxg/d;->k:Lxg/d$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const/16 v0, 0x50

    return v0
.end method

.method public E(JLjava/util/concurrent/TimeUnit;)Lxg/d;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "keepalive time must be positive"

    .line 1
    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lxg/d;->l:J

    .line 3
    invoke-static {p1, p2}, Lio/grpc/internal/c1;->l(J)J

    move-result-wide p1

    iput-wide p1, p0, Lxg/d;->l:J

    .line 4
    sget-wide v0, Lxg/d;->t:J

    cmp-long p3, p1, v0

    if-ltz p3, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    .line 5
    iput-wide p1, p0, Lxg/d;->l:J

    :cond_1
    return-object p0
.end method

.method public F(JLjava/util/concurrent/TimeUnit;)Lxg/d;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "keepalive timeout must be positive"

    .line 1
    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lxg/d;->m:J

    .line 3
    invoke-static {p1, p2}, Lio/grpc/internal/c1;->m(J)J

    move-result-wide p1

    iput-wide p1, p0, Lxg/d;->m:J

    return-object p0
.end method

.method public G(Z)Lxg/d;
    .locals 0

    iput-boolean p1, p0, Lxg/d;->o:Z

    return-object p0
.end method

.method public H(I)Lxg/d;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "negative max"

    .line 1
    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    iput p1, p0, Lio/grpc/internal/b;->a:I

    return-object p0
.end method

.method public I(I)Lxg/d;
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxInboundMetadataSize must be > 0"

    .line 1
    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    iput p1, p0, Lxg/d;->p:I

    return-object p0
.end method

.method public bridge synthetic i(JLjava/util/concurrent/TimeUnit;)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lxg/d;->E(JLjava/util/concurrent/TimeUnit;)Lxg/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(JLjava/util/concurrent/TimeUnit;)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lxg/d;->F(JLjava/util/concurrent/TimeUnit;)Lxg/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Z)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lxg/d;->G(Z)Lxg/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l(I)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lxg/d;->H(I)Lxg/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic m(I)Lio/grpc/r0;
    .locals 0

    invoke-virtual {p0, p1}, Lxg/d;->I(I)Lxg/d;

    move-result-object p1

    return-object p1
.end method

.method protected q()Lio/grpc/r0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/r0<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lxg/d;->b:Lio/grpc/internal/h1;

    return-object v0
.end method

.method z()Lio/grpc/internal/s;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lxg/d;->l:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 2
    :goto_0
    new-instance v1, Lxg/d$f;

    move-object v2, v1

    iget-object v3, v0, Lxg/d;->d:Ljava/util/concurrent/Executor;

    iget-object v4, v0, Lxg/d;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v5, v0, Lxg/d;->f:Ljavax/net/SocketFactory;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lxg/d;->A()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    iget-object v7, v0, Lxg/d;->i:Ljavax/net/ssl/HostnameVerifier;

    iget-object v8, v0, Lxg/d;->j:Lio/grpc/okhttp/internal/a;

    iget v9, v0, Lio/grpc/internal/b;->a:I

    iget-wide v11, v0, Lxg/d;->l:J

    iget-wide v13, v0, Lxg/d;->m:J

    iget v15, v0, Lxg/d;->n:I

    move-object/from16 v21, v1

    iget-boolean v1, v0, Lxg/d;->o:Z

    move/from16 v16, v1

    iget v1, v0, Lxg/d;->p:I

    move/from16 v17, v1

    iget-object v1, v0, Lxg/d;->c:Lio/grpc/internal/p2$b;

    move-object/from16 v18, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v2 .. v20}, Lxg/d$f;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lio/grpc/okhttp/internal/a;IZJJIZILio/grpc/internal/p2$b;ZLxg/d$a;)V

    return-object v21
.end method
