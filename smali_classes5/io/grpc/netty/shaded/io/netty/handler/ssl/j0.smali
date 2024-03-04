.class public final Lio/grpc/netty/shaded/io/netty/handler/ssl/j0;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/l0;
.source "SourceFile"


# instance fields
.field private final D:Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;


# direct methods
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
    sget-object v7, Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;->NONE:Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v6, p3

    move-object/from16 v8, p10

    move/from16 v10, p15

    move-object/from16 v11, p17

    invoke-direct/range {v1 .. v11}, Lio/grpc/netty/shaded/io/netty/handler/ssl/l0;-><init>(Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;I[Ljava/security/cert/Certificate;Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZ[Ljava/util/Map$Entry;)V

    .line 2
    :try_start_0
    invoke-static/range {p3 .. p5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/s0;->d([Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;)V

    .line 3
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
    iput-object v0, v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/j0;->D:Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;
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

    .line 4
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->release()Z

    .line 5
    throw v0
.end method


# virtual methods
.method public P()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/j0;->D:Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    return-object v0
.end method

.method public bridge synthetic y()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j0;->P()Lio/grpc/netty/shaded/io/netty/handler/ssl/z0;

    move-result-object v0

    return-object v0
.end method
