.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;
    }
.end annotation


# static fields
.field public static final CRYPTO_HANDSHAKE_TIMEOUT_FIELD_NUMBER:I = 0x3

.field public static final CRYPTO_STREAM_CONFIG_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

.field public static final ENABLED_FIELD_NUMBER:I = 0x4

.field public static final IDLE_TIMEOUT_FIELD_NUMBER:I = 0x2

.field public static final PACKETS_TO_READ_TO_CONNECTION_COUNT_RATIO_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROOF_SOURCE_CONFIG_FIELD_NUMBER:I = 0x7

.field public static final QUIC_PROTOCOL_OPTIONS_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private cryptoHandshakeTimeout_:Lcom/google/protobuf/Duration;

.field private cryptoStreamConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

.field private enabled_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

.field private idleTimeout_:Lcom/google/protobuf/Duration;

.field private memoizedIsInitialized:B

.field private packetsToReadToConnectionCountRatio_:Lcom/google/protobuf/UInt32Value;

.field private proofSourceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

.field private quicProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$b<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;-><init>()V

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_10

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_f

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_d

    const/16 v4, 0x12

    if-eq v2, v4, :cond_b

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_9

    const/16 v4, 0x22

    if-eq v2, v4, :cond_7

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_5

    const/16 v4, 0x32

    if-eq v2, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 12
    :cond_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->proofSourceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;

    move-result-object v5

    .line 14
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->proofSourceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v5, :cond_0

    .line 15
    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;

    .line 16
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->proofSourceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    goto :goto_0

    .line 17
    :cond_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->cryptoStreamConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;

    move-result-object v5

    .line 19
    :cond_4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->cryptoStreamConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v5, :cond_0

    .line 20
    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;

    .line 21
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->cryptoStreamConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    goto :goto_0

    .line 22
    :cond_5
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->packetsToReadToConnectionCountRatio_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_6

    .line 23
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v5

    .line 24
    :cond_6
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->packetsToReadToConnectionCountRatio_:Lcom/google/protobuf/UInt32Value;

    if-eqz v5, :cond_0

    .line 25
    invoke-virtual {v5, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 26
    invoke-virtual {v5}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->packetsToReadToConnectionCountRatio_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 27
    :cond_7
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->enabled_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    if-eqz v2, :cond_8

    .line 28
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag$b;

    move-result-object v5

    .line 29
    :cond_8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->enabled_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    if-eqz v5, :cond_0

    .line 30
    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag$b;

    .line 31
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->enabled_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    goto/16 :goto_0

    .line 32
    :cond_9
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->cryptoHandshakeTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_a

    .line 33
    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v5

    .line 34
    :cond_a
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Duration;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->cryptoHandshakeTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_0

    .line 35
    invoke-virtual {v5, v2}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 36
    invoke-virtual {v5}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->cryptoHandshakeTimeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 37
    :cond_b
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_c

    .line 38
    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v5

    .line 39
    :cond_c
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Duration;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_0

    .line 40
    invoke-virtual {v5, v2}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 41
    invoke-virtual {v5}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->idleTimeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 42
    :cond_d
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->quicProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;

    if-eqz v2, :cond_e

    .line 43
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions$b;

    move-result-object v5

    .line 44
    :cond_e
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->quicProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;

    if-eqz v5, :cond_0

    .line 45
    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions$b;

    .line 46
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->quicProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_f
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 47
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 48
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 49
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 51
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 52
    :cond_10
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 53
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->proofSourceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    return-object p1
.end method

.method static synthetic access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->quicProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;

    return-object p1
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->idleTimeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->cryptoHandshakeTimeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->enabled_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    return-object p1
.end method

.method static synthetic access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->packetsToReadToConnectionCountRatio_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->cryptoStreamConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/k;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasQuicProtocolOptions()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasQuicProtocolOptions()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasQuicProtocolOptions()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getQuicProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getQuicProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasIdleTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasIdleTimeout()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasIdleTimeout()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasCryptoHandshakeTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasCryptoHandshakeTimeout()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasCryptoHandshakeTimeout()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getCryptoHandshakeTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getCryptoHandshakeTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasEnabled()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getEnabled()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getEnabled()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasPacketsToReadToConnectionCountRatio()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasPacketsToReadToConnectionCountRatio()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 21
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasPacketsToReadToConnectionCountRatio()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getPacketsToReadToConnectionCountRatio()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getPacketsToReadToConnectionCountRatio()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 24
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasCryptoStreamConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasCryptoStreamConfig()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 25
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasCryptoStreamConfig()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getCryptoStreamConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getCryptoStreamConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 28
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasProofSourceConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasProofSourceConfig()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 29
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasProofSourceConfig()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getProofSourceConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getProofSourceConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 32
    :cond_f
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    return v3

    :cond_10
    return v0
.end method

.method public getCryptoHandshakeTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->cryptoHandshakeTimeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCryptoHandshakeTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getCryptoHandshakeTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getCryptoStreamConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->cryptoStreamConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCryptoStreamConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/i1;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getCryptoStreamConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    return-object v0
.end method

.method public getEnabled()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->enabled_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEnabledOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/w0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getEnabled()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    move-result-object v0

    return-object v0
.end method

.method public getIdleTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIdleTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getPacketsToReadToConnectionCountRatio()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->packetsToReadToConnectionCountRatio_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPacketsToReadToConnectionCountRatioOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getPacketsToReadToConnectionCountRatio()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getProofSourceConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->proofSourceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getProofSourceConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/i1;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getProofSourceConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getQuicProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->quicProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getQuicProtocolOptionsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/q0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getQuicProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->quicProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getQuicProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->cryptoHandshakeTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getCryptoHandshakeTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->enabled_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getEnabled()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->packetsToReadToConnectionCountRatio_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getPacketsToReadToConnectionCountRatio()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->cryptoStreamConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getCryptoStreamConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->proofSourceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getProofSourceConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasCryptoHandshakeTimeout()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->cryptoHandshakeTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCryptoStreamConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->cryptoStreamConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnabled()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->enabled_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIdleTimeout()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPacketsToReadToConnectionCountRatio()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->packetsToReadToConnectionCountRatio_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProofSourceConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->proofSourceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasQuicProtocolOptions()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->quicProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasQuicProtocolOptions()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getQuicProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasIdleTimeout()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasCryptoHandshakeTimeout()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getCryptoHandshakeTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getEnabled()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasPacketsToReadToConnectionCountRatio()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getPacketsToReadToConnectionCountRatio()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasCryptoStreamConfig()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getCryptoStreamConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->hasProofSourceConfig()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getProofSourceConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    mul-int/lit8 v0, v0, 0x1d

    .line 17
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/k;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->quicProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getQuicProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/QuicProtocolOptions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->cryptoHandshakeTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getCryptoHandshakeTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->enabled_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getEnabled()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RuntimeFeatureFlag;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->packetsToReadToConnectionCountRatio_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getPacketsToReadToConnectionCountRatio()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->cryptoStreamConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getCryptoStreamConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->proofSourceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/QuicProtocolOptions;->getProofSourceConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
