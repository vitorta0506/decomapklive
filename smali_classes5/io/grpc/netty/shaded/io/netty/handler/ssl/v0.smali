.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/v0;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/l0;
.source "SourceFile"


# instance fields
.field private final D:Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;


# direct methods
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
    invoke-direct/range {v0 .. v19}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v0;-><init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;JJLio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;[Ljava/util/Map$Entry;)V

    return-void
.end method

.method private varargs constructor <init>([Ljava/security/cert/X509Certificate;Ljavax/net/ssl/TrustManagerFactory;[Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;Ljavax/net/ssl/KeyManagerFactory;Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;JJLio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZLjava/lang/String;[Ljava/util/Map$Entry;)V
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

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v6, p3

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    move/from16 v9, p16

    move/from16 v10, p17

    move-object/from16 v11, p19

    .line 3
    invoke-direct/range {v1 .. v11}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l0;-><init>(Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;I[Ljava/security/cert/Certificate;Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZ[Ljava/util/Map$Entry;)V

    .line 4
    :try_start_0
    invoke-static/range {p3 .. p5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;->d([Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V

    .line 5
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
    iput-object v0, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/v0;->D:Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;
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

    .line 6
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->release()Z

    .line 7
    throw v0
.end method


# virtual methods
.method public bridge synthetic P()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v0;->X()Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;

    move-result-object v0

    return-object v0
.end method

.method public X()Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/v0;->D:Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;

    return-object v0
.end method

.method public bridge synthetic y()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/v0;->X()Lio/grpc/netty/shaded/io/netty/handler/ssl/w0;

    move-result-object v0

    return-object v0
.end method
