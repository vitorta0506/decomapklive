.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/b0;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/z;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>(Ljava/security/Provider;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;JJLio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZLjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-wide/from16 v7, p11

    move-wide/from16 v9, p13

    move-object/from16 v11, p18

    .line 1
    invoke-static/range {v0 .. v11}, Lio/grpc/netty/shaded/io/netty/handler/ssl/b0;->L(Ljava/security/Provider;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;JJLjava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v0, 0x1

    move-object/from16 v1, p10

    .line 2
    invoke-static {v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->K(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;Z)Lio/grpc/netty/shaded/io/netty/handler/ssl/u;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, p0

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v7, p15

    move-object/from16 v8, p16

    move/from16 v9, p17

    .line 3
    invoke-direct/range {v1 .. v9}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;-><init>(Ljavax/net/ssl/SSLContext;ZLjava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/u;Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;Z)V

    return-void
.end method

.method private static L(Ljava/security/Provider;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;JJLjava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    if-nez p4, :cond_0

    const-string v2, "key, keyManagerFactory"

    move-object/from16 v5, p6

    .line 1
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object/from16 v5, p6

    :goto_0
    if-eqz v1, :cond_1

    move-object v2, p2

    move-object/from16 v3, p11

    .line 2
    :try_start_0
    invoke-static {p1, p2, v3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->i([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_1
    move-object v2, p2

    move-object v11, v2

    :goto_1
    if-eqz p4, :cond_2

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 3
    invoke-static/range {v1 .. v6}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->e([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    :cond_2
    const-string v1, "TLS"

    if-nez v0, :cond_3

    .line 4
    :try_start_1
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    goto :goto_2

    .line 5
    :cond_3
    invoke-static {v1, p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 6
    :goto_2
    invoke-virtual {v5}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v11, :cond_4

    move-object v3, v2

    goto :goto_3

    .line 7
    :cond_4
    invoke-virtual {v11}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 8
    :goto_3
    invoke-virtual {v0, v1, v3, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 9
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    const-wide/32 v2, 0x7fffffff

    const-wide/16 v4, 0x0

    cmp-long v6, v7, v4

    if-lez v6, :cond_5

    .line 10
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    invoke-interface {v1, v7}, Ljavax/net/ssl/SSLSessionContext;->setSessionCacheSize(I)V

    :cond_5
    cmp-long v6, v9, v4

    if-lez v6, :cond_6

    .line 11
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {v1, v3}, Ljavax/net/ssl/SSLSessionContext;->setSessionTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-object v0

    .line 12
    :goto_4
    instance-of v1, v0, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_7

    .line 13
    check-cast v0, Ljavax/net/ssl/SSLException;

    throw v0

    .line 14
    :cond_7
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "failed to initialize the server-side SSL context"

    invoke-direct {v1, v2, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
