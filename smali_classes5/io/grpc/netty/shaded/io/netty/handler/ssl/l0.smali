.class public abstract Lio/grpc/netty/shaded/io/netty/handler/ssl/l0;
.super Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;
.source "SourceFile"


# direct methods
.method varargs constructor <init>(Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;I[Ljava/security/cert/Certificate;Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZ[Ljava/util/Map$Entry;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/i;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;",
            "I[",
            "Ljava/security/cert/Certificate;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZ[",
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

    .line 1
    invoke-static {p3}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;->U(Lio/grpc/netty/shaded/io/netty/handler/ssl/ApplicationProtocolConfig;)Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;

    move-result-object v3

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;-><init>(Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;I[Ljava/security/cert/Certificate;Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ[Ljava/util/Map$Entry;)V

    return-void
.end method

.method varargs constructor <init>(Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;I[Ljava/security/cert/Certificate;Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZ[Ljava/util/Map$Entry;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/i;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;",
            "I[",
            "Ljava/security/cert/Certificate;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;",
            "[",
            "Ljava/lang/String;",
            "ZZ[",
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

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v11, p10

    .line 2
    invoke-direct/range {v0 .. v11}, Lio/grpc/netty/shaded/io/netty/handler/ssl/j1;-><init>(Ljava/lang/Iterable;Lio/grpc/netty/shaded/io/netty/handler/ssl/i;Lio/grpc/netty/shaded/io/netty/handler/ssl/f0;I[Ljava/security/cert/Certificate;Lio/grpc/netty/shaded/io/netty/handler/ssl/ClientAuth;[Ljava/lang/String;ZZZ[Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method final M(Lkg/k;Ljava/lang/String;IZ)Ljavax/net/ssl/SSLEngine;
    .locals 7

    new-instance v6, Lio/grpc/netty/shaded/io/netty/handler/ssl/o0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/grpc/netty/shaded/io/netty/handler/ssl/o0;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/l0;Lkg/k;Ljava/lang/String;IZ)V

    return-object v6
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/e0;->o(Lio/grpc/netty/shaded/io/netty/util/s;)V

    return-void
.end method
