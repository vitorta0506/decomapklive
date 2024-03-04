.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/y;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/z;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method constructor <init>(Ljava/security/Provider;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;[Ljava/lang/String;JJLjava/lang/String;)V
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
            "[",
            "Ljava/lang/String;",
            "JJ",
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

    move-wide/from16 v7, p12

    move-wide/from16 v9, p14

    move-object/from16 v11, p16

    .line 1
    invoke-static/range {v0 .. v11}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y;->L(Ljava/security/Provider;[Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;JJLjava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v0, 0x0

    move-object/from16 v1, p10

    .line 2
    invoke-static {v1, v0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/z;->K(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;Z)Lio/grpc/netty/shaded/io/netty/handler/ssl/u;

    move-result-object v6

    sget-object v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;->NONE:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    const/4 v3, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v8, p11

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

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    if-eqz v1, :cond_0

    move-object v6, p2

    move-object/from16 v11, p11

    .line 1
    :try_start_0
    invoke-static {p1, p2, v11}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->i([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_0
    move-object v6, p2

    move-object/from16 v11, p11

    move-object v1, v6

    :goto_0
    if-eqz p3, :cond_1

    const/4 v7, 0x0

    move-object v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p11

    .line 2
    invoke-static/range {v6 .. v11}, Lio/grpc/netty/shaded/io/netty/handler/ssl/p1;->e([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move-object/from16 v6, p6

    :goto_1
    const-string v7, "TLS"

    if-nez v0, :cond_2

    .line 3
    :try_start_1
    invoke-static {v7}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    goto :goto_2

    .line 4
    :cond_2
    invoke-static {v7, p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    :goto_2
    const/4 v7, 0x0

    if-nez v6, :cond_3

    move-object v6, v7

    goto :goto_3

    .line 5
    :cond_3
    invoke-virtual {v6}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v6

    :goto_3
    if-nez v1, :cond_4

    move-object v1, v7

    goto :goto_4

    .line 6
    :cond_4
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 7
    :goto_4
    invoke-virtual {v0, v6, v1, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 8
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    const-wide/32 v6, 0x7fffffff

    const-wide/16 v8, 0x0

    cmp-long v10, v2, v8

    if-lez v10, :cond_5

    .line 9
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {v1, v3}, Ljavax/net/ssl/SSLSessionContext;->setSessionCacheSize(I)V

    :cond_5
    cmp-long v2, v4, v8

    if-lez v2, :cond_6

    .line 10
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    invoke-interface {v1, v3}, Ljavax/net/ssl/SSLSessionContext;->setSessionTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-object v0

    .line 11
    :goto_5
    instance-of v1, v0, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_7

    .line 12
    check-cast v0, Ljavax/net/ssl/SSLException;

    throw v0

    .line 13
    :cond_7
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "failed to initialize the client-side SSL context"

    invoke-direct {v1, v2, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
