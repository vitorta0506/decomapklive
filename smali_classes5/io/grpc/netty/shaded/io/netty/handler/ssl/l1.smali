.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/l1;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$c;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$a;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$d;,
        Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$b;
    }
.end annotation


# static fields
.field private static final E:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

.field private static final F:[B


# instance fields
.field private final D:Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1;

    .line 2
    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1;->E:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const/4 v0, 0x5

    new-array v0, v0, [B

    .line 3
    fill-array-data v0, :array_0

    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1;->F:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6et
        0x65t
        0x74t
        0x74t
        0x79t
    .end array-data
.end method

.method varargs constructor <init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;JJLio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;[Ljava/util/Map$Entry;)V
    .locals 20
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
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    .line 1
    invoke-static/range {p9 .. p9}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->U(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;)Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

    move-result-object v9

    .line 2
    invoke-direct/range {v0 .. v19}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1;-><init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;JJLio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;[Ljava/util/Map$Entry;)V

    return-void
.end method

.method varargs constructor <init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;JJLio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;[Ljava/util/Map$Entry;)V
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
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;",
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
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    move-object/from16 v14, p0

    const/4 v5, 0x1

    const/4 v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v6, p3

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move/from16 v9, p16

    move/from16 v10, p17

    move-object/from16 v12, p19

    .line 3
    invoke-direct/range {v1 .. v12}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;-><init>(Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;I[Ljava/security/cert/Certificate;Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ[Ljava/util/Map$Entry;)V

    .line 4
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

    move-object/from16 v11, p18

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    :try_start_1
    invoke-static/range {v1 .. v15}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1;->X(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;JLio/grpc/netty/shaded/io/netty/handler/ssl/p0;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;JJ)Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object v0, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1;->D:Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;

    .line 5
    sget-boolean v2, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->y:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Lio/grpc/netty/shaded/io/netty/handler/ssl/c1;

    .line 6
    invoke-virtual {v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->g([Lio/grpc/netty/shaded/io/netty/handler/ssl/c1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
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

    .line 7
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->release()Z

    .line 8
    throw v0
.end method

.method static X(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;JLio/grpc/netty/shaded/io/netty/handler/ssl/p0;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;JJ)Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;
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

    move-object/from16 v8, p10

    move-wide/from16 v9, p11

    move-wide/from16 v11, p13

    const/4 v13, 0x0

    const/16 v14, 0xa

    const/4 v15, 0x0

    .line 1
    :try_start_0
    invoke-static {v0, v1, v13, v14}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setVerify(JII)V

    .line 2
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->r()Z

    move-result v13

    if-nez v13, :cond_1

    if-nez p9, :cond_0

    const-string v13, "keyCertChain"

    .line 3
    invoke-static {v5, v13}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {v0, v1, v5, v6, v7}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->Q(J[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V

    move-object v5, v15

    goto :goto_2

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyManagerFactory not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p9, :cond_3

    .line 6
    invoke-static/range {p8 .. p8}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->s(Ljava/lang/String;)[C

    move-result-object v13

    .line 7
    invoke-static {v5, v6, v13, v8}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->h([Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;[CLjava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1;

    invoke-direct {v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/d1;-><init>()V

    goto :goto_0

    .line 10
    :cond_2
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/ssl/i0;

    .line 11
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v14

    invoke-direct {v6, v14}, Lio/grpc/netty/shaded/io/netty/handler/ssl/i0;-><init>(Ljavax/net/ssl/KeyManagerFactory;)V

    .line 12
    :goto_0
    invoke-virtual {v6, v5, v13}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    goto :goto_1

    :cond_3
    move-object/from16 v6, p9

    .line 13
    :goto_1
    invoke-static {v6, v7}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->O(Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 14
    :try_start_1
    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$b;

    new-instance v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;

    invoke-direct {v7, v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;)V

    invoke-direct {v6, v2, v7}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$b;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;Lio/grpc/netty/shaded/io/netty/handler/ssl/r0;)V

    invoke-static {v0, v1, v6}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCertificateCallback(JLio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_2
    if-eqz v3, :cond_4

    .line 15
    :try_start_2
    invoke-static {v3, v4, v8}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->i([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_7

    :cond_4
    if-nez v4, :cond_5

    .line 16
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 18
    invoke-virtual {v3, v15}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    goto :goto_3

    :cond_5
    move-object v3, v4

    .line 19
    :goto_3
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    invoke-static {v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->G([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    .line 20
    invoke-static {v0, v1, v2, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1;->Z(JLio/grpc/netty/shaded/io/netty/handler/ssl/p0;Ljavax/net/ssl/X509TrustManager;)V

    .line 21
    invoke-interface {v3}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v4

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_7

    .line 22
    array-length v8, v4
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-lez v8, :cond_7

    .line 23
    :try_start_3
    sget-object v8, Lkg/k;->a:Lkg/k;

    invoke-static {v8, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->T(Lkg/k;[Ljava/security/cert/X509Certificate;)J

    move-result-wide v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 24
    :try_start_4
    invoke-static {v0, v1, v13, v14}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCACertificateBio(JJ)Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_6

    .line 25
    :try_start_5
    invoke-static {v13, v14}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->J(J)V
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    .line 26
    :cond_6
    :try_start_6
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to setup accepted issuers for trustmanager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    move-wide v6, v13

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 27
    :goto_4
    :try_start_7
    invoke-static {v6, v7}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->J(J)V

    .line 28
    throw v0

    .line 29
    :cond_7
    :goto_5
    invoke-static {}, Lio/grpc/netty/shaded/io/netty/util/internal/t;->l0()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_8

    .line 30
    new-instance v3, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$c;

    invoke-direct {v3, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$c;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;)V

    invoke-static {v0, v1, v3}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setSniHostnameMatcher(JLio/grpc/netty/shaded/io/netty/internal/tcnative/SniHostNameMatcher;)V
    :try_end_7
    .catch Ljavax/net/ssl/SSLException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 31
    :cond_8
    :try_start_8
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;)V

    .line 32
    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1;->F:[B

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;->i([B)Z

    .line 33
    sget-boolean v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->A:Z

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->e(Z)V

    const-wide/32 v1, 0x7fffffff

    cmp-long v3, v9, v6

    if-lez v3, :cond_9

    .line 34
    invoke-static {v9, v10, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    invoke-virtual {v0, v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->setSessionCacheSize(I)V

    :cond_9
    cmp-long v3, v11, v6

    if-lez v3, :cond_a

    .line 35
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;->setSessionTimeout(I)V

    :cond_a
    return-object v0

    .line 36
    :goto_6
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "unable to setup trustmanager"

    invoke-direct {v1, v2, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 37
    :goto_7
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    move-object v15, v5

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v15, v5

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    .line 38
    :goto_8
    :try_start_9
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "failed to set certificate and key"

    invoke-direct {v1, v2, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_9
    if-eqz v15, :cond_b

    .line 39
    invoke-virtual {v15}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;->b()V

    .line 40
    :cond_b
    throw v0
.end method

.method private static Z(JLio/grpc/netty/shaded/io/netty/handler/ssl/p0;Ljavax/net/ssl/X509TrustManager;)V
    .locals 1

    .line 1
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->V(Ljavax/net/ssl/X509TrustManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$a;

    check-cast p3, Ljavax/net/ssl/X509ExtendedTrustManager;

    invoke-direct {v0, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;Ljavax/net/ssl/X509ExtendedTrustManager;)V

    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCertVerifyCallback(JLio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$d;

    invoke-direct {v0, p2, p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1$d;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;Ljavax/net/ssl/X509TrustManager;)V

    invoke-static {p0, p1, v0}, Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLContext;->setCertVerifyCallback(JLio/grpc/netty/shaded/io/netty/internal/tcnative/CertificateVerifier;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic P()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1;->Y()Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;

    move-result-object v0

    return-object v0
.end method

.method public Y()Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1;->D:Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;

    return-object v0
.end method

.method public bridge synthetic y()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l1;->Y()Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;

    move-result-object v0

    return-object v0
.end method
