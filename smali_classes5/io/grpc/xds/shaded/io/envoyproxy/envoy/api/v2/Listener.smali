.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$e;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DrainType;
    }
.end annotation


# static fields
.field public static final ACCESS_LOG_FIELD_NUMBER:I = 0x16

.field public static final ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final API_LISTENER_FIELD_NUMBER:I = 0x13

.field public static final CONNECTION_BALANCE_CONFIG_FIELD_NUMBER:I = 0x14

.field public static final CONTINUE_ON_LISTENER_FILTERS_TIMEOUT_FIELD_NUMBER:I = 0x11

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

.field public static final DEPRECATED_V1_FIELD_NUMBER:I = 0x7

.field public static final DRAIN_TYPE_FIELD_NUMBER:I = 0x8

.field public static final FILTER_CHAINS_FIELD_NUMBER:I = 0x3

.field public static final FREEBIND_FIELD_NUMBER:I = 0xb

.field public static final LISTENER_FILTERS_FIELD_NUMBER:I = 0x9

.field public static final LISTENER_FILTERS_TIMEOUT_FIELD_NUMBER:I = 0xf

.field public static final METADATA_FIELD_NUMBER:I = 0x6

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;",
            ">;"
        }
    .end annotation
.end field

.field public static final PER_CONNECTION_BUFFER_LIMIT_BYTES_FIELD_NUMBER:I = 0x5

.field public static final REUSE_PORT_FIELD_NUMBER:I = 0x15

.field public static final SOCKET_OPTIONS_FIELD_NUMBER:I = 0xd

.field public static final TCP_FAST_OPEN_QUEUE_LENGTH_FIELD_NUMBER:I = 0xc

.field public static final TRAFFIC_DIRECTION_FIELD_NUMBER:I = 0x10

.field public static final TRANSPARENT_FIELD_NUMBER:I = 0xa

.field public static final UDP_LISTENER_CONFIG_FIELD_NUMBER:I = 0x12

.field public static final USE_ORIGINAL_DST_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private accessLog_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLog;",
            ">;"
        }
    .end annotation
.end field

.field private address_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

.field private apiListener_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

.field private connectionBalanceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

.field private continueOnListenerFiltersTimeout_:Z

.field private deprecatedV1_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

.field private drainType_:I

.field private filterChains_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field private freebind_:Lcom/google/protobuf/BoolValue;

.field private listenerFiltersTimeout_:Lcom/google/protobuf/Duration;

.field private listenerFilters_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilter;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

.field private volatile name_:Ljava/lang/Object;

.field private perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

.field private reusePort_:Z

.field private socketOptions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;",
            ">;"
        }
    .end annotation
.end field

.field private tcpFastOpenQueueLength_:Lcom/google/protobuf/UInt32Value;

.field private trafficDirection_:I

.field private transparent_:Lcom/google/protobuf/BoolValue;

.field private udpListenerConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

.field private useOriginalDst_:Lcom/google/protobuf/BoolValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->name_:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->drainType_:I

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    .line 12
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->trafficDirection_:I

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;-><init>()V

    .line 15
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_15

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    .line 18
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_2

    :sswitch_0
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_1

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 20
    :cond_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    .line 21
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLog;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLog;

    .line 22
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->reusePort_:Z

    goto :goto_0

    .line 24
    :sswitch_2
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->connectionBalanceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    if-eqz v3, :cond_2

    .line 25
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig$b;

    move-result-object v5

    .line 26
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->connectionBalanceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    if-eqz v5, :cond_0

    .line 27
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig$b;

    .line 28
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->connectionBalanceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    goto :goto_0

    .line 29
    :sswitch_3
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->apiListener_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    if-eqz v3, :cond_3

    .line 30
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener$b;

    move-result-object v5

    .line 31
    :cond_3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->apiListener_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    if-eqz v5, :cond_0

    .line 32
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener$b;

    .line 33
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->apiListener_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    goto :goto_0

    .line 34
    :sswitch_4
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->udpListenerConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    if-eqz v3, :cond_4

    .line 35
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig$c;

    move-result-object v5

    .line 36
    :cond_4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->udpListenerConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    if-eqz v5, :cond_0

    .line 37
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig$c;

    .line 38
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->udpListenerConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    goto/16 :goto_0

    .line 39
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->continueOnListenerFiltersTimeout_:Z

    goto/16 :goto_0

    .line 40
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v3

    .line 41
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->trafficDirection_:I

    goto/16 :goto_0

    .line 42
    :sswitch_7
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFiltersTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v3, :cond_5

    .line 43
    invoke-virtual {v3}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v5

    .line 44
    :cond_5
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Duration;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFiltersTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_0

    .line 45
    invoke-virtual {v5, v3}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 46
    invoke-virtual {v5}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFiltersTimeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_6

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 48
    :cond_6
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    .line 49
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;

    .line 50
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 51
    :sswitch_9
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->tcpFastOpenQueueLength_:Lcom/google/protobuf/UInt32Value;

    if-eqz v3, :cond_7

    .line 52
    invoke-virtual {v3}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v5

    .line 53
    :cond_7
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/UInt32Value;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->tcpFastOpenQueueLength_:Lcom/google/protobuf/UInt32Value;

    if-eqz v5, :cond_0

    .line 54
    invoke-virtual {v5, v3}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 55
    invoke-virtual {v5}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->tcpFastOpenQueueLength_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 56
    :sswitch_a
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->freebind_:Lcom/google/protobuf/BoolValue;

    if-eqz v3, :cond_8

    .line 57
    invoke-virtual {v3}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v5

    .line 58
    :cond_8
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/BoolValue;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->freebind_:Lcom/google/protobuf/BoolValue;

    if-eqz v5, :cond_0

    .line 59
    invoke-virtual {v5, v3}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 60
    invoke-virtual {v5}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->freebind_:Lcom/google/protobuf/BoolValue;

    goto/16 :goto_0

    .line 61
    :sswitch_b
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->transparent_:Lcom/google/protobuf/BoolValue;

    if-eqz v3, :cond_9

    .line 62
    invoke-virtual {v3}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v5

    .line 63
    :cond_9
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/BoolValue;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->transparent_:Lcom/google/protobuf/BoolValue;

    if-eqz v5, :cond_0

    .line 64
    invoke-virtual {v5, v3}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 65
    invoke-virtual {v5}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->transparent_:Lcom/google/protobuf/BoolValue;

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_a

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 67
    :cond_a
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    .line 68
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilter;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilter;

    .line 69
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 70
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v3

    .line 71
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->drainType_:I

    goto/16 :goto_0

    .line 72
    :sswitch_e
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->deprecatedV1_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    if-eqz v3, :cond_b

    .line 73
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1$b;

    move-result-object v5

    .line 74
    :cond_b
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->deprecatedV1_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    if-eqz v5, :cond_0

    .line 75
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1$b;

    .line 76
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->deprecatedV1_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    goto/16 :goto_0

    .line 77
    :sswitch_f
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v3, :cond_c

    .line 78
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;

    move-result-object v5

    .line 79
    :cond_c
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v5, :cond_0

    .line 80
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;

    .line 81
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    goto/16 :goto_0

    .line 82
    :sswitch_10
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v3, :cond_d

    .line 83
    invoke-virtual {v3}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v5

    .line 84
    :cond_d
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/UInt32Value;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v5, :cond_0

    .line 85
    invoke-virtual {v5, v3}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 86
    invoke-virtual {v5}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 87
    :sswitch_11
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->useOriginalDst_:Lcom/google/protobuf/BoolValue;

    if-eqz v3, :cond_e

    .line 88
    invoke-virtual {v3}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v5

    .line 89
    :cond_e
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/BoolValue;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->useOriginalDst_:Lcom/google/protobuf/BoolValue;

    if-eqz v5, :cond_0

    .line 90
    invoke-virtual {v5, v3}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 91
    invoke-virtual {v5}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->useOriginalDst_:Lcom/google/protobuf/BoolValue;

    goto/16 :goto_0

    :sswitch_12
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_f

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 93
    :cond_f
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    .line 94
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChain;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChain;

    .line 95
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 96
    :sswitch_13
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->address_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    if-eqz v3, :cond_10

    .line 97
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address$c;

    move-result-object v5

    .line 98
    :cond_10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->address_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    if-eqz v5, :cond_0

    .line 99
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address$c;

    .line 100
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->address_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    goto/16 :goto_0

    .line 101
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 102
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_15
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 103
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 104
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 105
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_11

    .line 106
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    :cond_11
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_12

    .line 107
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    :cond_12
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_13

    .line 108
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    :cond_13
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_14

    .line 109
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    .line 110
    :cond_14
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 111
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_15
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_16

    .line 112
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    :cond_16
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_17

    .line 113
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    :cond_17
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_18

    .line 114
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    :cond_18
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_19

    .line 115
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    .line 116
    :cond_19
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 117
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_15
        0xa -> :sswitch_14
        0x12 -> :sswitch_13
        0x1a -> :sswitch_12
        0x22 -> :sswitch_11
        0x2a -> :sswitch_10
        0x32 -> :sswitch_f
        0x3a -> :sswitch_e
        0x40 -> :sswitch_d
        0x4a -> :sswitch_c
        0x52 -> :sswitch_b
        0x5a -> :sswitch_a
        0x62 -> :sswitch_9
        0x6a -> :sswitch_8
        0x7a -> :sswitch_7
        0x80 -> :sswitch_6
        0x88 -> :sswitch_5
        0x92 -> :sswitch_4
        0x9a -> :sswitch_3
        0xa2 -> :sswitch_2
        0xa8 -> :sswitch_1
        0xb2 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$2600()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->address_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    return-object p1
.end method

.method static synthetic access$3000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->useOriginalDst_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$3202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$3302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    return-object p1
.end method

.method static synthetic access$3402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->deprecatedV1_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    return-object p1
.end method

.method static synthetic access$3500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->drainType_:I

    return p0
.end method

.method static synthetic access$3502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->drainType_:I

    return p1
.end method

.method static synthetic access$3600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFiltersTimeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$3802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->continueOnListenerFiltersTimeout_:Z

    return p1
.end method

.method static synthetic access$3902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->transparent_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$4002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->freebind_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$4100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->tcpFastOpenQueueLength_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$4300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->trafficDirection_:I

    return p0
.end method

.method static synthetic access$4302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->trafficDirection_:I

    return p1
.end method

.method static synthetic access$4402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->udpListenerConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    return-object p1
.end method

.method static synthetic access$4502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->apiListener_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    return-object p1
.end method

.method static synthetic access$4602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->connectionBalanceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    return-object p1
.end method

.method static synthetic access$4702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->reusePort_:Z

    return p1
.end method

.method static synthetic access$4800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$5400()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/h;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;->u0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasAddress()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasAddress()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 7
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getFilterChainsList()Ljava/util/List;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getFilterChainsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasUseOriginalDst()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasUseOriginalDst()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasUseOriginalDst()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getUseOriginalDst()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getUseOriginalDst()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasPerConnectionBufferLimitBytes()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasPerConnectionBufferLimitBytes()Z

    move-result v3

    if-eq v1, v3, :cond_8

    return v2

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasPerConnectionBufferLimitBytes()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getPerConnectionBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getPerConnectionBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasMetadata()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasMetadata()Z

    move-result v3

    if-eq v1, v3, :cond_a

    return v2

    .line 21
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasMetadata()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 24
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasDeprecatedV1()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasDeprecatedV1()Z

    move-result v3

    if-eq v1, v3, :cond_c

    return v2

    .line 25
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasDeprecatedV1()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getDeprecatedV1()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getDeprecatedV1()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 28
    :cond_d
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->drainType_:I

    iget v3, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->drainType_:I

    if-eq v1, v3, :cond_e

    return v2

    .line 29
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getListenerFiltersList()Ljava/util/List;

    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getListenerFiltersList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 31
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasListenerFiltersTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasListenerFiltersTimeout()Z

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    .line 32
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasListenerFiltersTimeout()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getListenerFiltersTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getListenerFiltersTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 35
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getContinueOnListenerFiltersTimeout()Z

    move-result v1

    .line 36
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getContinueOnListenerFiltersTimeout()Z

    move-result v3

    if-eq v1, v3, :cond_12

    return v2

    .line 37
    :cond_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasTransparent()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasTransparent()Z

    move-result v3

    if-eq v1, v3, :cond_13

    return v2

    .line 38
    :cond_13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasTransparent()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 39
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getTransparent()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 40
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getTransparent()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 41
    :cond_14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasFreebind()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasFreebind()Z

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    .line 42
    :cond_15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasFreebind()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 43
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getFreebind()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getFreebind()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    .line 45
    :cond_16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getSocketOptionsList()Ljava/util/List;

    move-result-object v1

    .line 46
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getSocketOptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    .line 47
    :cond_17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasTcpFastOpenQueueLength()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasTcpFastOpenQueueLength()Z

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    .line 48
    :cond_18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasTcpFastOpenQueueLength()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 49
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getTcpFastOpenQueueLength()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getTcpFastOpenQueueLength()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    .line 51
    :cond_19
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->trafficDirection_:I

    iget v3, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->trafficDirection_:I

    if-eq v1, v3, :cond_1a

    return v2

    .line 52
    :cond_1a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasUdpListenerConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasUdpListenerConfig()Z

    move-result v3

    if-eq v1, v3, :cond_1b

    return v2

    .line 53
    :cond_1b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasUdpListenerConfig()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 54
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getUdpListenerConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getUdpListenerConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    .line 56
    :cond_1c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasApiListener()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasApiListener()Z

    move-result v3

    if-eq v1, v3, :cond_1d

    return v2

    .line 57
    :cond_1d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasApiListener()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 58
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getApiListener()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getApiListener()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    .line 60
    :cond_1e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasConnectionBalanceConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasConnectionBalanceConfig()Z

    move-result v3

    if-eq v1, v3, :cond_1f

    return v2

    .line 61
    :cond_1f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasConnectionBalanceConfig()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 62
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getConnectionBalanceConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    move-result-object v1

    .line 63
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getConnectionBalanceConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    .line 64
    :cond_20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getReusePort()Z

    move-result v1

    .line 65
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getReusePort()Z

    move-result v3

    if-eq v1, v3, :cond_21

    return v2

    .line 66
    :cond_21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getAccessLogList()Ljava/util/List;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getAccessLogList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    .line 68
    :cond_22
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    return v2

    :cond_23
    return v0
.end method

.method public getAccessLog(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLog;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLog;

    return-object p1
.end method

.method public getAccessLogCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAccessLogList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/AccessLog;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    return-object v0
.end method

.method public getAccessLogOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/b;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/b;

    return-object p1
.end method

.method public getAccessLogOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/filter/accesslog/v2/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    return-object v0
.end method

.method public getAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->address_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAddressOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    move-result-object v0

    return-object v0
.end method

.method public getApiListener()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->apiListener_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getApiListenerOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getApiListener()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionBalanceConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->connectionBalanceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConnectionBalanceConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$d;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getConnectionBalanceConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    move-result-object v0

    return-object v0
.end method

.method public getContinueOnListenerFiltersTimeout()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->continueOnListenerFiltersTimeout_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    return-object v0
.end method

.method public getDeprecatedV1()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->deprecatedV1_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDeprecatedV1OrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$e;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getDeprecatedV1()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    move-result-object v0

    return-object v0
.end method

.method public getDrainType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DrainType;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->drainType_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DrainType;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DrainType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DrainType;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DrainType;

    :cond_0
    return-object v0
.end method

.method public getDrainTypeValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->drainType_:I

    return v0
.end method

.method public getFilterChains(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChain;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChain;

    return-object p1
.end method

.method public getFilterChainsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilterChainsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/FilterChain;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    return-object v0
.end method

.method public getFilterChainsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/b;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/b;

    return-object p1
.end method

.method public getFilterChainsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    return-object v0
.end method

.method public getFreebind()Lcom/google/protobuf/BoolValue;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->freebind_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFreebindOrBuilder()Lcom/google/protobuf/l;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getFreebind()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getListenerFilters(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilter;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilter;

    return-object p1
.end method

.method public getListenerFiltersCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getListenerFiltersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/ListenerFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    return-object v0
.end method

.method public getListenerFiltersOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/f;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/f;

    return-object p1
.end method

.method public getListenerFiltersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    return-object v0
.end method

.method public getListenerFiltersTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFiltersTimeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getListenerFiltersTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getListenerFiltersTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMetadataOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/d0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->name_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPerConnectionBufferLimitBytes()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPerConnectionBufferLimitBytesOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getPerConnectionBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getReusePort()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->reusePort_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->name_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->address_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    const/4 v2, 0x0

    .line 6
    :goto_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/4 v3, 0x3

    .line 7
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    .line 8
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->useOriginalDst_:Lcom/google/protobuf/BoolValue;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getUseOriginalDst()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11
    :cond_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getPerConnectionBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13
    :cond_5
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v2, :cond_6

    const/4 v2, 0x6

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15
    :cond_6
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->deprecatedV1_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getDeprecatedV1()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17
    :cond_7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->drainType_:I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DrainType;->DEFAULT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DrainType;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DrainType;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_8

    const/16 v2, 0x8

    .line 18
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->drainType_:I

    .line 19
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_8
    const/4 v2, 0x0

    .line 20
    :goto_2
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    const/16 v3, 0x9

    .line 21
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    .line 22
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 23
    :cond_9
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->transparent_:Lcom/google/protobuf/BoolValue;

    if-eqz v2, :cond_a

    const/16 v2, 0xa

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getTransparent()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25
    :cond_a
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->freebind_:Lcom/google/protobuf/BoolValue;

    if-eqz v2, :cond_b

    const/16 v2, 0xb

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getFreebind()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27
    :cond_b
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->tcpFastOpenQueueLength_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_c

    const/16 v2, 0xc

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getTcpFastOpenQueueLength()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    const/4 v2, 0x0

    .line 29
    :goto_3
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    const/16 v3, 0xd

    .line 30
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    .line 31
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 32
    :cond_d
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFiltersTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_e

    const/16 v2, 0xf

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getListenerFiltersTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34
    :cond_e
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->trafficDirection_:I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TrafficDirection;->UNSPECIFIED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TrafficDirection;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TrafficDirection;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_f

    const/16 v2, 0x10

    .line 35
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->trafficDirection_:I

    .line 36
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 37
    :cond_f
    iget-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->continueOnListenerFiltersTimeout_:Z

    if-eqz v2, :cond_10

    const/16 v3, 0x11

    .line 38
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 39
    :cond_10
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->udpListenerConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    if-eqz v2, :cond_11

    const/16 v2, 0x12

    .line 40
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getUdpListenerConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 41
    :cond_11
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->apiListener_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    if-eqz v2, :cond_12

    const/16 v2, 0x13

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getApiListener()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 43
    :cond_12
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->connectionBalanceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    if-eqz v2, :cond_13

    const/16 v2, 0x14

    .line 44
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getConnectionBalanceConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 45
    :cond_13
    iget-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->reusePort_:Z

    if-eqz v2, :cond_14

    const/16 v3, 0x15

    .line 46
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 47
    :cond_14
    :goto_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    const/16 v2, 0x16

    .line 48
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    .line 49
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 50
    :cond_15
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSocketOptions(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;

    return-object p1
.end method

.method public getSocketOptionsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSocketOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/SocketOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    return-object v0
.end method

.method public getSocketOptionsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/o0;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/o0;

    return-object p1
.end method

.method public getSocketOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/o0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    return-object v0
.end method

.method public getTcpFastOpenQueueLength()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->tcpFastOpenQueueLength_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTcpFastOpenQueueLengthOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getTcpFastOpenQueueLength()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getTrafficDirection()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TrafficDirection;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->trafficDirection_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TrafficDirection;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TrafficDirection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TrafficDirection;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TrafficDirection;

    :cond_0
    return-object v0
.end method

.method public getTrafficDirectionValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->trafficDirection_:I

    return v0
.end method

.method public getTransparent()Lcom/google/protobuf/BoolValue;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->transparent_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTransparentOrBuilder()Lcom/google/protobuf/l;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getTransparent()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getUdpListenerConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->udpListenerConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUdpListenerConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/g;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getUdpListenerConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getUseOriginalDst()Lcom/google/protobuf/BoolValue;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->useOriginalDst_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUseOriginalDstOrBuilder()Lcom/google/protobuf/l;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getUseOriginalDst()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public hasAddress()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->address_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasApiListener()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->apiListener_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConnectionBalanceConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->connectionBalanceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeprecatedV1()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->deprecatedV1_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFreebind()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->freebind_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasListenerFiltersTimeout()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFiltersTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMetadata()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPerConnectionBufferLimitBytes()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTcpFastOpenQueueLength()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->tcpFastOpenQueueLength_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransparent()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->transparent_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUdpListenerConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->udpListenerConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUseOriginalDst()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->useOriginalDst_:Lcom/google/protobuf/BoolValue;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getFilterChainsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getFilterChainsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasUseOriginalDst()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getUseOriginalDst()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasPerConnectionBufferLimitBytes()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getPerConnectionBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasMetadata()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasDeprecatedV1()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getDeprecatedV1()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 16
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->drainType_:I

    add-int/2addr v0, v1

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getListenerFiltersCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getListenerFiltersList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasListenerFiltersTimeout()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getListenerFiltersTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getContinueOnListenerFiltersTimeout()Z

    move-result v1

    .line 22
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasTransparent()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getTransparent()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasFreebind()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getFreebind()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getSocketOptionsCount()I

    move-result v1

    if-lez v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getSocketOptionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasTcpFastOpenQueueLength()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getTcpFastOpenQueueLength()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 31
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->trafficDirection_:I

    add-int/2addr v0, v1

    .line 32
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasUdpListenerConfig()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getUdpListenerConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasApiListener()Z

    move-result v1

    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 35
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getApiListener()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->hasConnectionBalanceConfig()Z

    move-result v1

    if-eqz v1, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 37
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getConnectionBalanceConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getReusePort()Z

    move-result v1

    .line 39
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getAccessLogCount()I

    move-result v1

    if-lez v1, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x35

    .line 41
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getAccessLogList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    mul-int/lit8 v0, v0, 0x1d

    .line 42
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/h;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;->u0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->address_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getAddress()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 6
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->filterChains_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->useOriginalDst_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getUseOriginalDst()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getPerConnectionBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->deprecatedV1_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getDeprecatedV1()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DeprecatedV1;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->drainType_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DrainType;->DEFAULT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DrainType;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$DrainType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_7

    const/16 v1, 0x8

    .line 16
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->drainType_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    :cond_7
    const/4 v1, 0x0

    .line 17
    :goto_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0x9

    .line 18
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFilters_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19
    :cond_8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->transparent_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getTransparent()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 21
    :cond_9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->freebind_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getFreebind()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 23
    :cond_a
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->tcpFastOpenQueueLength_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getTcpFastOpenQueueLength()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_b
    const/4 v1, 0x0

    .line 25
    :goto_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    const/16 v2, 0xd

    .line 26
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->socketOptions_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 27
    :cond_c
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->listenerFiltersTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_d

    const/16 v1, 0xf

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getListenerFiltersTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 29
    :cond_d
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->trafficDirection_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TrafficDirection;->UNSPECIFIED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TrafficDirection;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TrafficDirection;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_e

    const/16 v1, 0x10

    .line 30
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->trafficDirection_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 31
    :cond_e
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->continueOnListenerFiltersTimeout_:Z

    if-eqz v1, :cond_f

    const/16 v2, 0x11

    .line 32
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 33
    :cond_f
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->udpListenerConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    if-eqz v1, :cond_10

    const/16 v1, 0x12

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getUdpListenerConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/listener/UdpListenerConfig;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 35
    :cond_10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->apiListener_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    if-eqz v1, :cond_11

    const/16 v1, 0x13

    .line 36
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getApiListener()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v2/ApiListener;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 37
    :cond_11
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->connectionBalanceConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    if-eqz v1, :cond_12

    const/16 v1, 0x14

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->getConnectionBalanceConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener$ConnectionBalanceConfig;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 39
    :cond_12
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->reusePort_:Z

    if-eqz v1, :cond_13

    const/16 v2, 0x15

    .line 40
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 41
    :cond_13
    :goto_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    const/16 v1, 0x16

    .line 42
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Listener;->accessLog_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 43
    :cond_14
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
