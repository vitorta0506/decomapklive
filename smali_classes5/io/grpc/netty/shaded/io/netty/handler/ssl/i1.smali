.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/i1;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$b;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$a;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$d;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$c;
    }
.end annotation


# static fields
.field private static final E:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final D:Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    const-string v1, "RSA"

    const-string v2, "DH_RSA"

    const-string v3, "EC"

    const-string v4, "EC_RSA"

    const-string v5, "EC_EC"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1;->E:Ljava/util/Set;

    return-void
.end method

.method varargs constructor <init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;[Ljava/lang/String;JJZLjava/lang/String;[Ljava/util/Map$Entry;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
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
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    move-object/from16 v14, p0

    .line 1
    invoke-static/range {p9 .. p9}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->U(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;)Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

    move-result-object v4

    sget-object v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;->NONE:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v6, p3

    move-object/from16 v8, p10

    move/from16 v10, p15

    move-object/from16 v12, p17

    invoke-direct/range {v1 .. v12}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;-><init>(Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;I[Ljava/security/cert/Certificate;Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ[Ljava/util/Map$Entry;)V

    .line 2
    :try_start_0
    iget-wide v2, v14, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->d:J

    iget-object v4, v14, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->n:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p16

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    :try_start_1
    invoke-static/range {v1 .. v15}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1;->Y(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;JLio/grpc/netty/shaded/io/netty/handler/ssl/p0;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;JJ)Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v0, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1;->D:Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v14

    .line 3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->release()Z

    .line 4
    throw v0
.end method

.method static synthetic X()Ljava/util/Set;
    .locals 1

    sget-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1;->E:Ljava/util/Set;

    return-object v0
.end method

.method static Y(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;JLio/grpc/netty/shaded/io/netty/handler/ssl/p0;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;JJ)Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-wide/from16 v10, p11

    move-wide/from16 v12, p13

    if-nez v6, :cond_0

    if-nez v5, :cond_1

    :cond_0
    if-eqz v6, :cond_2

    if-eqz v5, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either both keyCertChain and key needs to be null or none of them"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v14, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->r()Z

    move-result v15

    if-nez v15, :cond_5

    if-nez v8, :cond_4

    if-eqz v5, :cond_3

    .line 3
    invoke-static {v0, v1, v5, v6, v7}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->Q(J[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V

    :cond_3
    move-object v5, v14

    goto :goto_3

    .line 4
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyManagerFactory not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez v8, :cond_7

    if-eqz v5, :cond_7

    .line 5
    invoke-static/range {p8 .. p8}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->s(Ljava/lang/String;)[C

    move-result-object v8

    .line 6
    invoke-static {v5, v6, v8, v9}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->h([Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;[CLjava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 8
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1;

    invoke-direct {v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1;-><init>()V

    goto :goto_1

    .line 9
    :cond_6
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/ssl/i0;

    .line 10
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v15

    invoke-direct {v6, v15}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i0;-><init>(Ljavax/net/ssl/KeyManagerFactory;)V

    .line 11
    :goto_1
    invoke-virtual {v6, v5, v8}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 12
    invoke-static {v6, v7}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->O(Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

    move-result-object v5

    goto :goto_2

    :cond_7
    if-eqz v8, :cond_8

    .line 13
    invoke-static {v8, v7}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->O(Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

    :cond_8
    move-object v5, v14

    :goto_2
    if-eqz v5, :cond_9

    .line 14
    :try_start_1
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;

    invoke-direct {v6, v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;)V

    .line 15
    new-instance v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$b;

    invoke-direct {v7, v2, v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;)V

    invoke-static {v0, v1, v7}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCertificateCallback(JLio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v14, v5

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v14, v5

    goto/16 :goto_6

    :cond_9
    :goto_3
    const/4 v6, 0x1

    const/16 v7, 0xa

    .line 16
    :try_start_2
    invoke-static {v0, v1, v6, v7}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setVerify(JII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_a

    .line 17
    :try_start_3
    invoke-static {v3, v4, v9}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->i([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_a
    if-nez v4, :cond_b

    .line 18
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 20
    invoke-virtual {v3, v14}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    goto :goto_4

    :cond_b
    move-object v3, v4

    .line 21
    :goto_4
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->G([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    .line 22
    invoke-static {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1;->Z(JLio/grpc/netty/shaded/io/netty/handler/ssl/p0;Ljavax/net/ssl/X509TrustManager;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    :try_start_4
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$c;

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;)V

    .line 24
    sget-boolean v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->B:Z

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->e(Z)V

    const-wide/32 v1, 0x7fffffff

    const-wide/16 v3, 0x0

    cmp-long v6, v10, v3

    if-lez v6, :cond_c

    .line 25
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v0, v7}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->setSessionCacheSize(I)V

    :cond_c
    cmp-long v6, v12, v3

    if-lez v6, :cond_d

    .line 26
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->setSessionTimeout(I)V

    .line 27
    :cond_d
    sget-boolean v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->w:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    new-array v1, v1, [Lio/grpc/netty/shaded/io/netty/handler/ssl/c1;

    .line 28
    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->g([Lio/grpc/netty/shaded/io/netty/handler/ssl/c1;)V

    :cond_e
    return-object v0

    :goto_5
    if-eqz v5, :cond_f

    .line 29
    invoke-virtual {v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;->b()V

    .line 30
    :cond_f
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "unable to setup trustmanager"

    invoke-direct {v1, v2, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    .line 31
    :goto_6
    :try_start_5
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "failed to set certificate and key"

    invoke-direct {v1, v2, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_7
    if-eqz v14, :cond_10

    .line 32
    invoke-virtual {v14}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;->b()V

    .line 33
    :cond_10
    throw v0
.end method

.method private static Z(JLio/grpc/netty/shaded/io/netty/handler/ssl/p0;Ljavax/net/ssl/X509TrustManager;)V
    .locals 1

    .line 1
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->V(Ljavax/net/ssl/X509TrustManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$a;

    check-cast p3, Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-direct {v0, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;Ljavax/net/ssl/X509ExtendedTrustManager;)V

    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCertVerifyCallback(JLio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$d;

    invoke-direct {v0, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;Ljavax/net/ssl/X509TrustManager;)V

    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCertVerifyCallback(JLio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public P()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1;->D:Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    return-object v0
.end method

.method public bridge synthetic y()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i1;->P()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    move-result-object v0

    return-object v0
.end method
