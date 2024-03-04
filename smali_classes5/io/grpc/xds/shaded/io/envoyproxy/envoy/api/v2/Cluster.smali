.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$n;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$g;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterDiscoveryTypeCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$k;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$j;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$l;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$i;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$h;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$f;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$e;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$TransportSocketMatch;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$m;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterProtocolSelection;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DnsLookupFamily;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DiscoveryType;
    }
.end annotation


# static fields
.field public static final ALT_STAT_NAME_FIELD_NUMBER:I = 0x1c

.field public static final CIRCUIT_BREAKERS_FIELD_NUMBER:I = 0xa

.field public static final CLEANUP_INTERVAL_FIELD_NUMBER:I = 0x14

.field public static final CLOSE_CONNECTIONS_ON_HOST_HEALTH_FAILURE_FIELD_NUMBER:I = 0x1f

.field public static final CLUSTER_TYPE_FIELD_NUMBER:I = 0x26

.field public static final COMMON_HTTP_PROTOCOL_OPTIONS_FIELD_NUMBER:I = 0x1d

.field public static final COMMON_LB_CONFIG_FIELD_NUMBER:I = 0x1b

.field public static final CONNECT_TIMEOUT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

.field public static final DNS_FAILURE_REFRESH_RATE_FIELD_NUMBER:I = 0x2c

.field public static final DNS_LOOKUP_FAMILY_FIELD_NUMBER:I = 0x11

.field public static final DNS_REFRESH_RATE_FIELD_NUMBER:I = 0x10

.field public static final DNS_RESOLVERS_FIELD_NUMBER:I = 0x12

.field public static final DRAIN_CONNECTIONS_ON_HOST_REMOVAL_FIELD_NUMBER:I = 0x20

.field public static final EDS_CLUSTER_CONFIG_FIELD_NUMBER:I = 0x3

.field public static final EXTENSION_PROTOCOL_OPTIONS_FIELD_NUMBER:I = 0x23

.field public static final FILTERS_FIELD_NUMBER:I = 0x28

.field public static final HEALTH_CHECKS_FIELD_NUMBER:I = 0x8

.field public static final HOSTS_FIELD_NUMBER:I = 0x7

.field public static final HTTP2_PROTOCOL_OPTIONS_FIELD_NUMBER:I = 0xe

.field public static final HTTP_PROTOCOL_OPTIONS_FIELD_NUMBER:I = 0xd

.field public static final LB_POLICY_FIELD_NUMBER:I = 0x6

.field public static final LB_SUBSET_CONFIG_FIELD_NUMBER:I = 0x16

.field public static final LEAST_REQUEST_LB_CONFIG_FIELD_NUMBER:I = 0x25

.field public static final LOAD_ASSIGNMENT_FIELD_NUMBER:I = 0x21

.field public static final LOAD_BALANCING_POLICY_FIELD_NUMBER:I = 0x29

.field public static final LRS_SERVER_FIELD_NUMBER:I = 0x2a

.field public static final MAX_REQUESTS_PER_CONNECTION_FIELD_NUMBER:I = 0x9

.field public static final METADATA_FIELD_NUMBER:I = 0x19

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final ORIGINAL_DST_LB_CONFIG_FIELD_NUMBER:I = 0x22

.field public static final OUTLIER_DETECTION_FIELD_NUMBER:I = 0x13

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;",
            ">;"
        }
    .end annotation
.end field

.field public static final PER_CONNECTION_BUFFER_LIMIT_BYTES_FIELD_NUMBER:I = 0x5

.field public static final PROTOCOL_SELECTION_FIELD_NUMBER:I = 0x1a

.field public static final RESPECT_DNS_TTL_FIELD_NUMBER:I = 0x27

.field public static final RING_HASH_LB_CONFIG_FIELD_NUMBER:I = 0x17

.field public static final TLS_CONTEXT_FIELD_NUMBER:I = 0xb

.field public static final TRACK_TIMEOUT_BUDGETS_FIELD_NUMBER:I = 0x2f

.field public static final TRANSPORT_SOCKET_FIELD_NUMBER:I = 0x18

.field public static final TRANSPORT_SOCKET_MATCHES_FIELD_NUMBER:I = 0x2b

.field public static final TYPED_EXTENSION_PROTOCOL_OPTIONS_FIELD_NUMBER:I = 0x24

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final UPSTREAM_BIND_CONFIG_FIELD_NUMBER:I = 0x15

.field public static final UPSTREAM_CONNECTION_OPTIONS_FIELD_NUMBER:I = 0x1e

.field public static final UPSTREAM_HTTP_PROTOCOL_OPTIONS_FIELD_NUMBER:I = 0x2e

.field public static final USE_TCP_FOR_DNS_LOOKUPS_FIELD_NUMBER:I = 0x2d

.field private static final serialVersionUID:J


# instance fields
.field private volatile altStatName_:Ljava/lang/Object;

.field private circuitBreakers_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

.field private cleanupInterval_:Lcom/google/protobuf/Duration;

.field private closeConnectionsOnHostHealthFailure_:Z

.field private clusterDiscoveryTypeCase_:I

.field private clusterDiscoveryType_:Ljava/lang/Object;

.field private commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

.field private commonLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

.field private connectTimeout_:Lcom/google/protobuf/Duration;

.field private dnsFailureRefreshRate_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

.field private dnsLookupFamily_:I

.field private dnsRefreshRate_:Lcom/google/protobuf/Duration;

.field private dnsResolvers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;",
            ">;"
        }
    .end annotation
.end field

.field private drainConnectionsOnHostRemoval_:Z

.field private edsClusterConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

.field private extensionProtocolOptions_:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Struct;",
            ">;"
        }
    .end annotation
.end field

.field private filters_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private healthChecks_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck;",
            ">;"
        }
    .end annotation
.end field

.field private hosts_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;",
            ">;"
        }
    .end annotation
.end field

.field private http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

.field private httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

.field private lbConfigCase_:I

.field private lbConfig_:Ljava/lang/Object;

.field private lbPolicy_:I

.field private lbSubsetConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

.field private loadAssignment_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

.field private loadBalancingPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

.field private lrsServer_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

.field private maxRequestsPerConnection_:Lcom/google/protobuf/UInt32Value;

.field private memoizedIsInitialized:B

.field private metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

.field private volatile name_:Ljava/lang/Object;

.field private outlierDetection_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

.field private perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

.field private protocolSelection_:I

.field private respectDnsTtl_:Z

.field private tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

.field private trackTimeoutBudgets_:Z

.field private transportSocketMatches_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$TransportSocketMatch;",
            ">;"
        }
    .end annotation
.end field

.field private transportSocket_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

.field private typedExtensionProtocolOptions_:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private upstreamBindConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

.field private upstreamConnectionOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

.field private upstreamHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

.field private useTcpForDnsLookups_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    .line 9
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/4 v1, -0x1

    .line 10
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->memoizedIsInitialized:B

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    const-string v1, ""

    .line 12
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->name_:Ljava/lang/Object;

    .line 13
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->altStatName_:Ljava/lang/Object;

    .line 14
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbPolicy_:I

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    .line 17
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsLookupFamily_:I

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    .line 19
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->protocolSelection_:I

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

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

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    .line 5
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/4 p1, -0x1

    .line 6
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;-><init>()V

    .line 22
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_2c

    .line 24
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 25
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    goto/16 :goto_2

    .line 26
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->trackTimeoutBudgets_:Z

    goto :goto_0

    .line 27
    :sswitch_1
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    if-eqz v4, :cond_1

    .line 28
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions$b;

    move-result-object v5

    .line 29
    :cond_1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    if-eqz v5, :cond_0

    .line 30
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions$b;

    .line 31
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    goto :goto_0

    .line 32
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->useTcpForDnsLookups_:Z

    goto :goto_0

    .line 33
    :sswitch_3
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsFailureRefreshRate_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    if-eqz v4, :cond_2

    .line 34
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate$b;

    move-result-object v5

    .line 35
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsFailureRefreshRate_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    if-eqz v5, :cond_0

    .line 36
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate$b;

    .line 37
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsFailureRefreshRate_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    goto :goto_0

    :sswitch_4
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_3

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 39
    :cond_3
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    .line 40
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$TransportSocketMatch;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$TransportSocketMatch;

    .line 41
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :sswitch_5
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lrsServer_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    if-eqz v4, :cond_4

    .line 43
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource$c;

    move-result-object v5

    .line 44
    :cond_4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lrsServer_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    if-eqz v5, :cond_0

    .line 45
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource$c;

    .line 46
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lrsServer_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    goto/16 :goto_0

    .line 47
    :sswitch_6
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->loadBalancingPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    if-eqz v4, :cond_5

    .line 48
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy$b;

    move-result-object v5

    .line 49
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->loadBalancingPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    if-eqz v5, :cond_0

    .line 50
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy$b;

    .line 51
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->loadBalancingPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v4, v2, 0x40

    if-nez v4, :cond_6

    .line 52
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x40

    .line 53
    :cond_6
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    .line 54
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/Filter;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/Filter;

    .line 55
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 56
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->respectDnsTtl_:Z

    goto/16 :goto_0

    .line 57
    :sswitch_9
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    const/16 v6, 0x26

    if-ne v4, v6, :cond_7

    .line 58
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryType_:Ljava/lang/Object;

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType$b;

    move-result-object v5

    .line 59
    :cond_7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryType_:Ljava/lang/Object;

    if-eqz v5, :cond_8

    .line 60
    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;

    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType$b;

    .line 61
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryType_:Ljava/lang/Object;

    .line 62
    :cond_8
    iput v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    goto/16 :goto_0

    .line 63
    :sswitch_a
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v6, 0x25

    if-ne v4, v6, :cond_9

    .line 64
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig$b;

    move-result-object v5

    .line 65
    :cond_9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    if-eqz v5, :cond_a

    .line 66
    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;

    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig$b;

    .line 67
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    .line 68
    :cond_a
    iput v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    goto/16 :goto_0

    :sswitch_b
    and-int/lit8 v4, v2, 0x10

    if-nez v4, :cond_b

    .line 69
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$n;->a:Lcom/google/protobuf/e1;

    invoke-static {v4}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->typedExtensionProtocolOptions_:Lcom/google/protobuf/g1;

    or-int/lit8 v2, v2, 0x10

    .line 70
    :cond_b
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$n;->a:Lcom/google/protobuf/e1;

    .line 71
    invoke-virtual {v4}, Lcom/google/protobuf/e1;->getParserForType()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 72
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/e1;

    .line 73
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->typedExtensionProtocolOptions_:Lcom/google/protobuf/g1;

    invoke-virtual {v5}, Lcom/google/protobuf/g1;->l()Ljava/util/Map;

    move-result-object v5

    .line 74
    invoke-virtual {v4}, Lcom/google/protobuf/e1;->f()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/protobuf/e1;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Any;

    .line 75
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_c

    .line 76
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$g;->a:Lcom/google/protobuf/e1;

    invoke-static {v4}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->extensionProtocolOptions_:Lcom/google/protobuf/g1;

    or-int/lit8 v2, v2, 0x8

    .line 77
    :cond_c
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$g;->a:Lcom/google/protobuf/e1;

    .line 78
    invoke-virtual {v4}, Lcom/google/protobuf/e1;->getParserForType()Lcom/google/protobuf/e2;

    move-result-object v4

    .line 79
    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/e1;

    .line 80
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->extensionProtocolOptions_:Lcom/google/protobuf/g1;

    invoke-virtual {v5}, Lcom/google/protobuf/g1;->l()Ljava/util/Map;

    move-result-object v5

    .line 81
    invoke-virtual {v4}, Lcom/google/protobuf/e1;->f()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/protobuf/e1;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Struct;

    .line 82
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 83
    :sswitch_d
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v6, 0x22

    if-ne v4, v6, :cond_d

    .line 84
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig$b;

    move-result-object v5

    .line 85
    :cond_d
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    if-eqz v5, :cond_e

    .line 86
    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;

    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig$b;

    .line 87
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    .line 88
    :cond_e
    iput v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    goto/16 :goto_0

    .line 89
    :sswitch_e
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->loadAssignment_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    if-eqz v4, :cond_f

    .line 90
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment$b;

    move-result-object v5

    .line 91
    :cond_f
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->loadAssignment_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    if-eqz v5, :cond_0

    .line 92
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment$b;

    .line 93
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->loadAssignment_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    goto/16 :goto_0

    .line 94
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->drainConnectionsOnHostRemoval_:Z

    goto/16 :goto_0

    .line 95
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v4

    iput-boolean v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->closeConnectionsOnHostHealthFailure_:Z

    goto/16 :goto_0

    .line 96
    :sswitch_11
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamConnectionOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    if-eqz v4, :cond_10

    .line 97
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions$b;

    move-result-object v5

    .line 98
    :cond_10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamConnectionOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    if-eqz v5, :cond_0

    .line 99
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions$b;

    .line 100
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamConnectionOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    goto/16 :goto_0

    .line 101
    :sswitch_12
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    if-eqz v4, :cond_11

    .line 102
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions$b;

    move-result-object v5

    .line 103
    :cond_11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    if-eqz v5, :cond_0

    .line 104
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions$b;

    .line 105
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    goto/16 :goto_0

    .line 106
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 107
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->altStatName_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 108
    :sswitch_14
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->commonLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    if-eqz v4, :cond_12

    .line 109
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object v5

    .line 110
    :cond_12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->commonLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    if-eqz v5, :cond_0

    .line 111
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    .line 112
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->commonLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    goto/16 :goto_0

    .line 113
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 114
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->protocolSelection_:I

    goto/16 :goto_0

    .line 115
    :sswitch_16
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v4, :cond_13

    .line 116
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;

    move-result-object v5

    .line 117
    :cond_13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v5, :cond_0

    .line 118
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;

    .line 119
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    goto/16 :goto_0

    .line 120
    :sswitch_17
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocket_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    if-eqz v4, :cond_14

    .line 121
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket$c;

    move-result-object v5

    .line 122
    :cond_14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocket_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    if-eqz v5, :cond_0

    .line 123
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket$c;

    .line 124
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocket_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    goto/16 :goto_0

    .line 125
    :sswitch_18
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v6, 0x17

    if-ne v4, v6, :cond_15

    .line 126
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig$b;

    move-result-object v5

    .line 127
    :cond_15
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    if-eqz v5, :cond_16

    .line 128
    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;

    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig$b;

    .line 129
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    .line 130
    :cond_16
    iput v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    goto/16 :goto_0

    .line 131
    :sswitch_19
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbSubsetConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    if-eqz v4, :cond_17

    .line 132
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    move-result-object v5

    .line 133
    :cond_17
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbSubsetConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    if-eqz v5, :cond_0

    .line 134
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;

    .line 135
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbSubsetConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    goto/16 :goto_0

    .line 136
    :sswitch_1a
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamBindConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    if-eqz v4, :cond_18

    .line 137
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig$b;

    move-result-object v5

    .line 138
    :cond_18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamBindConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    if-eqz v5, :cond_0

    .line 139
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig$b;

    .line 140
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamBindConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    goto/16 :goto_0

    .line 141
    :sswitch_1b
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->cleanupInterval_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_19

    .line 142
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v5

    .line 143
    :cond_19
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->cleanupInterval_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_0

    .line 144
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 145
    invoke-virtual {v5}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->cleanupInterval_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 146
    :sswitch_1c
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->outlierDetection_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

    if-eqz v4, :cond_1a

    .line 147
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection$b;

    move-result-object v5

    .line 148
    :cond_1a
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->outlierDetection_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

    if-eqz v5, :cond_0

    .line 149
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection$b;->v0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection$b;

    .line 150
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->outlierDetection_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

    goto/16 :goto_0

    :sswitch_1d
    and-int/lit8 v4, v2, 0x20

    if-nez v4, :cond_1b

    .line 151
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    .line 152
    :cond_1b
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    .line 153
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    .line 154
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 155
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 156
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsLookupFamily_:I

    goto/16 :goto_0

    .line 157
    :sswitch_1f
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsRefreshRate_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_1c

    .line 158
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v5

    .line 159
    :cond_1c
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsRefreshRate_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_0

    .line 160
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 161
    invoke-virtual {v5}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsRefreshRate_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 162
    :sswitch_20
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    if-eqz v4, :cond_1d

    .line 163
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions$b;

    move-result-object v5

    .line 164
    :cond_1d
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    if-eqz v5, :cond_0

    .line 165
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions$b;

    .line 166
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    goto/16 :goto_0

    .line 167
    :sswitch_21
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    if-eqz v4, :cond_1e

    .line 168
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions$c;

    move-result-object v5

    .line 169
    :cond_1e
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    if-eqz v5, :cond_0

    .line 170
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions$c;

    .line 171
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    goto/16 :goto_0

    .line 172
    :sswitch_22
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    if-eqz v4, :cond_1f

    .line 173
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext$b;

    move-result-object v5

    .line 174
    :cond_1f
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    if-eqz v5, :cond_0

    .line 175
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext$b;

    .line 176
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    goto/16 :goto_0

    .line 177
    :sswitch_23
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->circuitBreakers_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    if-eqz v4, :cond_20

    .line 178
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers$b;

    move-result-object v5

    .line 179
    :cond_20
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->circuitBreakers_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    if-eqz v5, :cond_0

    .line 180
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers$b;

    .line 181
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->circuitBreakers_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    goto/16 :goto_0

    .line 182
    :sswitch_24
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->maxRequestsPerConnection_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_21

    .line 183
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v5

    .line 184
    :cond_21
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/UInt32Value;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->maxRequestsPerConnection_:Lcom/google/protobuf/UInt32Value;

    if-eqz v5, :cond_0

    .line 185
    invoke-virtual {v5, v4}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 186
    invoke-virtual {v5}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->maxRequestsPerConnection_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    :sswitch_25
    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_22

    .line 187
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 188
    :cond_22
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    .line 189
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck;

    .line 190
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_26
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_23

    .line 191
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 192
    :cond_23
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    .line 193
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    .line 194
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 195
    :sswitch_27
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 196
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbPolicy_:I

    goto/16 :goto_0

    .line 197
    :sswitch_28
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_24

    .line 198
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v5

    .line 199
    :cond_24
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/UInt32Value;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v5, :cond_0

    .line 200
    invoke-virtual {v5, v4}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 201
    invoke-virtual {v5}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 202
    :sswitch_29
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->connectTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_25

    .line 203
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v5

    .line 204
    :cond_25
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->connectTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_0

    .line 205
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 206
    invoke-virtual {v5}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->connectTimeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 207
    :sswitch_2a
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->edsClusterConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    if-eqz v4, :cond_26

    .line 208
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig$b;

    move-result-object v5

    .line 209
    :cond_26
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->edsClusterConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    if-eqz v5, :cond_0

    .line 210
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig$b;

    .line 211
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->edsClusterConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    goto/16 :goto_0

    .line 212
    :sswitch_2b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    const/4 v5, 0x2

    .line 213
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    .line 214
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryType_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 215
    :sswitch_2c
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 216
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_2d
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 217
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 218
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 219
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_27

    .line 220
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    :cond_27
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_28

    .line 221
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    :cond_28
    and-int/lit8 p2, v2, 0x20

    if-eqz p2, :cond_29

    .line 222
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    :cond_29
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_2a

    .line 223
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    :cond_2a
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_2b

    .line 224
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    .line 225
    :cond_2b
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 226
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_2c
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_2d

    .line 227
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    :cond_2d
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_2e

    .line 228
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    :cond_2e
    and-int/lit8 p1, v2, 0x20

    if-eqz p1, :cond_2f

    .line 229
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    :cond_2f
    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_30

    .line 230
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    :cond_30
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_31

    .line 231
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    .line 232
    :cond_31
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 233
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2d
        0xa -> :sswitch_2c
        0x10 -> :sswitch_2b
        0x1a -> :sswitch_2a
        0x22 -> :sswitch_29
        0x2a -> :sswitch_28
        0x30 -> :sswitch_27
        0x3a -> :sswitch_26
        0x42 -> :sswitch_25
        0x4a -> :sswitch_24
        0x52 -> :sswitch_23
        0x5a -> :sswitch_22
        0x6a -> :sswitch_21
        0x72 -> :sswitch_20
        0x82 -> :sswitch_1f
        0x88 -> :sswitch_1e
        0x92 -> :sswitch_1d
        0x9a -> :sswitch_1c
        0xa2 -> :sswitch_1b
        0xaa -> :sswitch_1a
        0xb2 -> :sswitch_19
        0xba -> :sswitch_18
        0xc2 -> :sswitch_17
        0xca -> :sswitch_16
        0xd0 -> :sswitch_15
        0xda -> :sswitch_14
        0xe2 -> :sswitch_13
        0xea -> :sswitch_12
        0xf2 -> :sswitch_11
        0xf8 -> :sswitch_10
        0x100 -> :sswitch_f
        0x10a -> :sswitch_e
        0x112 -> :sswitch_d
        0x11a -> :sswitch_c
        0x122 -> :sswitch_b
        0x12a -> :sswitch_a
        0x132 -> :sswitch_9
        0x138 -> :sswitch_8
        0x142 -> :sswitch_7
        0x14a -> :sswitch_6
        0x152 -> :sswitch_5
        0x15a -> :sswitch_4
        0x162 -> :sswitch_3
        0x168 -> :sswitch_2
        0x172 -> :sswitch_1
        0x178 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$13400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$13602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$13700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$13702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->altStatName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$13802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->altStatName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$13902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->edsClusterConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    return-object p1
.end method

.method static synthetic access$14102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->connectTimeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$14202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$14300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbPolicy_:I

    return p0
.end method

.method static synthetic access$14302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbPolicy_:I

    return p1
.end method

.method static synthetic access$14400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$14402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->loadAssignment_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    return-object p1
.end method

.method static synthetic access$14600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$14602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$14702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->maxRequestsPerConnection_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$14802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->circuitBreakers_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    return-object p1
.end method

.method static synthetic access$14902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    return-object p1
.end method

.method static synthetic access$15002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    return-object p1
.end method

.method static synthetic access$15102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    return-object p1
.end method

.method static synthetic access$15202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    return-object p1
.end method

.method static synthetic access$15302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    return-object p1
.end method

.method static synthetic access$15400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)Lcom/google/protobuf/g1;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->extensionProtocolOptions_:Lcom/google/protobuf/g1;

    return-object p0
.end method

.method static synthetic access$15402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->extensionProtocolOptions_:Lcom/google/protobuf/g1;

    return-object p1
.end method

.method static synthetic access$15500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)Lcom/google/protobuf/g1;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->typedExtensionProtocolOptions_:Lcom/google/protobuf/g1;

    return-object p0
.end method

.method static synthetic access$15502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->typedExtensionProtocolOptions_:Lcom/google/protobuf/g1;

    return-object p1
.end method

.method static synthetic access$15602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsRefreshRate_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$15702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsFailureRefreshRate_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    return-object p1
.end method

.method static synthetic access$15802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->respectDnsTtl_:Z

    return p1
.end method

.method static synthetic access$15900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsLookupFamily_:I

    return p0
.end method

.method static synthetic access$15902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsLookupFamily_:I

    return p1
.end method

.method static synthetic access$16000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$16002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$16102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->useTcpForDnsLookups_:Z

    return p1
.end method

.method static synthetic access$16202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->outlierDetection_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

    return-object p1
.end method

.method static synthetic access$16302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->cleanupInterval_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$16402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamBindConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    return-object p1
.end method

.method static synthetic access$16502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbSubsetConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    return-object p1
.end method

.method static synthetic access$16602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$16702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->commonLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    return-object p1
.end method

.method static synthetic access$16802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocket_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    return-object p1
.end method

.method static synthetic access$16902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    return-object p1
.end method

.method static synthetic access$17000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->protocolSelection_:I

    return p0
.end method

.method static synthetic access$17002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->protocolSelection_:I

    return p1
.end method

.method static synthetic access$17102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamConnectionOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    return-object p1
.end method

.method static synthetic access$17202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->closeConnectionsOnHostHealthFailure_:Z

    return p1
.end method

.method static synthetic access$17302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->drainConnectionsOnHostRemoval_:Z

    return p1
.end method

.method static synthetic access$17400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$17402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$17502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->loadBalancingPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    return-object p1
.end method

.method static synthetic access$17602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lrsServer_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    return-object p1
.end method

.method static synthetic access$17702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->trackTimeoutBudgets_:Z

    return p1
.end method

.method static synthetic access$17802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    return p1
.end method

.method static synthetic access$17902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    return p1
.end method

.method static synthetic access$18000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$18100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$18200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$18300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)Lcom/google/protobuf/g1;
    .locals 0

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$18400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)Lcom/google/protobuf/g1;
    .locals 0

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetTypedExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$18500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$18600()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$18700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$18800()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$18900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$19000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method private internalGetExtensionProtocolOptions()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Struct;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->extensionProtocolOptions_:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$g;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetTypedExtensionProtocolOptions()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->typedExtensionProtocolOptions_:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$n;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;->K0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public containsExtensionProtocolOptions(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsTypedExtensionProtocolOptions(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetTypedExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTransportSocketMatchesList()Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTransportSocketMatchesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getAltStatName()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getAltStatName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasEdsClusterConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasEdsClusterConfig()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasEdsClusterConfig()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getEdsClusterConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getEdsClusterConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasConnectTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasConnectTimeout()Z

    move-result v3

    if-eq v1, v3, :cond_7

    return v2

    .line 15
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasConnectTimeout()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getConnectTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getConnectTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 18
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasPerConnectionBufferLimitBytes()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasPerConnectionBufferLimitBytes()Z

    move-result v3

    if-eq v1, v3, :cond_9

    return v2

    .line 19
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasPerConnectionBufferLimitBytes()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getPerConnectionBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getPerConnectionBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 22
    :cond_a
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbPolicy_:I

    iget v3, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbPolicy_:I

    if-eq v1, v3, :cond_b

    return v2

    .line 23
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHostsList()Ljava/util/List;

    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHostsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 25
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasLoadAssignment()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasLoadAssignment()Z

    move-result v3

    if-eq v1, v3, :cond_d

    return v2

    .line 26
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasLoadAssignment()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLoadAssignment()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLoadAssignment()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 29
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHealthChecksList()Ljava/util/List;

    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHealthChecksList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 31
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasMaxRequestsPerConnection()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasMaxRequestsPerConnection()Z

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    .line 32
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasMaxRequestsPerConnection()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getMaxRequestsPerConnection()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getMaxRequestsPerConnection()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 35
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasCircuitBreakers()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasCircuitBreakers()Z

    move-result v3

    if-eq v1, v3, :cond_12

    return v2

    .line 36
    :cond_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasCircuitBreakers()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 37
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCircuitBreakers()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCircuitBreakers()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 39
    :cond_13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasTlsContext()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasTlsContext()Z

    move-result v3

    if-eq v1, v3, :cond_14

    return v2

    .line 40
    :cond_14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasTlsContext()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 41
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    .line 43
    :cond_15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasUpstreamHttpProtocolOptions()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasUpstreamHttpProtocolOptions()Z

    move-result v3

    if-eq v1, v3, :cond_16

    return v2

    .line 44
    :cond_16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasUpstreamHttpProtocolOptions()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 45
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    move-result-object v1

    .line 46
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    .line 47
    :cond_17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasCommonHttpProtocolOptions()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasCommonHttpProtocolOptions()Z

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    .line 48
    :cond_18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasCommonHttpProtocolOptions()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 49
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCommonHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    move-result-object v1

    .line 50
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCommonHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    .line 51
    :cond_19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasHttpProtocolOptions()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasHttpProtocolOptions()Z

    move-result v3

    if-eq v1, v3, :cond_1a

    return v2

    .line 52
    :cond_1a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasHttpProtocolOptions()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 53
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    move-result-object v1

    .line 54
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    .line 55
    :cond_1b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasHttp2ProtocolOptions()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasHttp2ProtocolOptions()Z

    move-result v3

    if-eq v1, v3, :cond_1c

    return v2

    .line 56
    :cond_1c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasHttp2ProtocolOptions()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 57
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHttp2ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHttp2ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    .line 59
    :cond_1d
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v1

    .line 60
    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v3

    .line 61
    invoke-virtual {v1, v3}, Lcom/google/protobuf/g1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    .line 62
    :cond_1e
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetTypedExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v1

    .line 63
    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetTypedExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v3

    .line 64
    invoke-virtual {v1, v3}, Lcom/google/protobuf/g1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    .line 65
    :cond_1f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasDnsRefreshRate()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasDnsRefreshRate()Z

    move-result v3

    if-eq v1, v3, :cond_20

    return v2

    .line 66
    :cond_20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasDnsRefreshRate()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 67
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDnsRefreshRate()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 68
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDnsRefreshRate()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    .line 69
    :cond_21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasDnsFailureRefreshRate()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasDnsFailureRefreshRate()Z

    move-result v3

    if-eq v1, v3, :cond_22

    return v2

    .line 70
    :cond_22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasDnsFailureRefreshRate()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 71
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDnsFailureRefreshRate()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDnsFailureRefreshRate()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    .line 73
    :cond_23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getRespectDnsTtl()Z

    move-result v1

    .line 74
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getRespectDnsTtl()Z

    move-result v3

    if-eq v1, v3, :cond_24

    return v2

    .line 75
    :cond_24
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsLookupFamily_:I

    iget v3, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsLookupFamily_:I

    if-eq v1, v3, :cond_25

    return v2

    .line 76
    :cond_25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDnsResolversList()Ljava/util/List;

    move-result-object v1

    .line 77
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDnsResolversList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v2

    .line 78
    :cond_26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUseTcpForDnsLookups()Z

    move-result v1

    .line 79
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUseTcpForDnsLookups()Z

    move-result v3

    if-eq v1, v3, :cond_27

    return v2

    .line 80
    :cond_27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasOutlierDetection()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasOutlierDetection()Z

    move-result v3

    if-eq v1, v3, :cond_28

    return v2

    .line 81
    :cond_28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasOutlierDetection()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 82
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getOutlierDetection()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getOutlierDetection()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    .line 84
    :cond_29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasCleanupInterval()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasCleanupInterval()Z

    move-result v3

    if-eq v1, v3, :cond_2a

    return v2

    .line 85
    :cond_2a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasCleanupInterval()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 86
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCleanupInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 87
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCleanupInterval()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v2

    .line 88
    :cond_2b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasUpstreamBindConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasUpstreamBindConfig()Z

    move-result v3

    if-eq v1, v3, :cond_2c

    return v2

    .line 89
    :cond_2c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasUpstreamBindConfig()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 90
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamBindConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    move-result-object v1

    .line 91
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamBindConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    .line 92
    :cond_2d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasLbSubsetConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasLbSubsetConfig()Z

    move-result v3

    if-eq v1, v3, :cond_2e

    return v2

    .line 93
    :cond_2e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasLbSubsetConfig()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 94
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLbSubsetConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v1

    .line 95
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLbSubsetConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    return v2

    .line 96
    :cond_2f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasCommonLbConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasCommonLbConfig()Z

    move-result v3

    if-eq v1, v3, :cond_30

    return v2

    .line 97
    :cond_30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasCommonLbConfig()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 98
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCommonLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCommonLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return v2

    .line 100
    :cond_31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasTransportSocket()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasTransportSocket()Z

    move-result v3

    if-eq v1, v3, :cond_32

    return v2

    .line 101
    :cond_32
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasTransportSocket()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 102
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTransportSocket()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    move-result-object v1

    .line 103
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTransportSocket()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    return v2

    .line 104
    :cond_33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasMetadata()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasMetadata()Z

    move-result v3

    if-eq v1, v3, :cond_34

    return v2

    .line 105
    :cond_34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasMetadata()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 106
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v1

    .line 107
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v2

    .line 108
    :cond_35
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->protocolSelection_:I

    iget v3, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->protocolSelection_:I

    if-eq v1, v3, :cond_36

    return v2

    .line 109
    :cond_36
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasUpstreamConnectionOptions()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasUpstreamConnectionOptions()Z

    move-result v3

    if-eq v1, v3, :cond_37

    return v2

    .line 110
    :cond_37
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasUpstreamConnectionOptions()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 111
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamConnectionOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    move-result-object v1

    .line 112
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamConnectionOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    .line 113
    :cond_38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCloseConnectionsOnHostHealthFailure()Z

    move-result v1

    .line 114
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCloseConnectionsOnHostHealthFailure()Z

    move-result v3

    if-eq v1, v3, :cond_39

    return v2

    .line 115
    :cond_39
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDrainConnectionsOnHostRemoval()Z

    move-result v1

    .line 116
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDrainConnectionsOnHostRemoval()Z

    move-result v3

    if-eq v1, v3, :cond_3a

    return v2

    .line 117
    :cond_3a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getFiltersList()Ljava/util/List;

    move-result-object v1

    .line 118
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getFiltersList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    .line 119
    :cond_3b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasLoadBalancingPolicy()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasLoadBalancingPolicy()Z

    move-result v3

    if-eq v1, v3, :cond_3c

    return v2

    .line 120
    :cond_3c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasLoadBalancingPolicy()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 121
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLoadBalancingPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    move-result-object v1

    .line 122
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLoadBalancingPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v2

    .line 123
    :cond_3d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasLrsServer()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasLrsServer()Z

    move-result v3

    if-eq v1, v3, :cond_3e

    return v2

    .line 124
    :cond_3e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasLrsServer()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 125
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLrsServer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    move-result-object v1

    .line 126
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLrsServer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    .line 127
    :cond_3f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTrackTimeoutBudgets()Z

    move-result v1

    .line 128
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTrackTimeoutBudgets()Z

    move-result v3

    if-eq v1, v3, :cond_40

    return v2

    .line 129
    :cond_40
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getClusterDiscoveryTypeCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterDiscoveryTypeCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getClusterDiscoveryTypeCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterDiscoveryTypeCase;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    return v2

    .line 130
    :cond_41
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_43

    const/16 v3, 0x26

    if-eq v1, v3, :cond_42

    goto :goto_0

    .line 131
    :cond_42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getClusterType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;

    move-result-object v1

    .line 132
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getClusterType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    return v2

    .line 133
    :cond_43
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTypeValue()I

    move-result v1

    .line 134
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTypeValue()I

    move-result v3

    if-eq v1, v3, :cond_44

    return v2

    .line 135
    :cond_44
    :goto_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLbConfigCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLbConfigCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    return v2

    .line 136
    :cond_45
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v3, 0x17

    if-eq v1, v3, :cond_48

    const/16 v3, 0x22

    if-eq v1, v3, :cond_47

    const/16 v3, 0x25

    if-eq v1, v3, :cond_46

    goto :goto_1

    .line 137
    :cond_46
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLeastRequestLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;

    move-result-object v1

    .line 138
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLeastRequestLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    return v2

    .line 139
    :cond_47
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getOriginalDstLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;

    move-result-object v1

    .line 140
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getOriginalDstLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    return v2

    .line 141
    :cond_48
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getRingHashLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;

    move-result-object v1

    .line 142
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getRingHashLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    return v2

    .line 143
    :cond_49
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4a

    return v2

    :cond_4a
    return v0
.end method

.method public getAltStatName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->altStatName_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->altStatName_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAltStatNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->altStatName_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->altStatName_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCircuitBreakers()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->circuitBreakers_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCircuitBreakersOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCircuitBreakers()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    move-result-object v0

    return-object v0
.end method

.method public getCleanupInterval()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->cleanupInterval_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCleanupIntervalOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCleanupInterval()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getCloseConnectionsOnHostHealthFailure()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->closeConnectionsOnHostHealthFailure_:Z

    return v0
.end method

.method public getClusterDiscoveryTypeCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterDiscoveryTypeCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterDiscoveryTypeCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterDiscoveryTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getClusterType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryType_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;

    move-result-object v0

    return-object v0
.end method

.method public getClusterTypeOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryType_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;

    move-result-object v0

    return-object v0
.end method

.method public getCommonHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCommonHttpProtocolOptionsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/z;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCommonHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    move-result-object v0

    return-object v0
.end method

.method public getCommonLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->commonLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCommonLbConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$d;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCommonLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->connectTimeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConnectTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getConnectTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    return-object v0
.end method

.method public getDnsFailureRefreshRate()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsFailureRefreshRate_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDnsFailureRefreshRateOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$k;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDnsFailureRefreshRate()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    move-result-object v0

    return-object v0
.end method

.method public getDnsLookupFamily()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DnsLookupFamily;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsLookupFamily_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DnsLookupFamily;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DnsLookupFamily;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DnsLookupFamily;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DnsLookupFamily;

    :cond_0
    return-object v0
.end method

.method public getDnsLookupFamilyValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsLookupFamily_:I

    return v0
.end method

.method public getDnsRefreshRate()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsRefreshRate_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDnsRefreshRateOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDnsRefreshRate()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getDnsResolvers(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    return-object p1
.end method

.method public getDnsResolversCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDnsResolversList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    return-object v0
.end method

.method public getDnsResolversOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/a;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/a;

    return-object p1
.end method

.method public getDnsResolversOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    return-object v0
.end method

.method public getDrainConnectionsOnHostRemoval()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->drainConnectionsOnHostRemoval_:Z

    return v0
.end method

.method public getEdsClusterConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->edsClusterConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEdsClusterConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getEdsClusterConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionProtocolOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Struct;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getExtensionProtocolOptionsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionProtocolOptionsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getExtensionProtocolOptionsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Struct;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionProtocolOptionsOrDefault(Ljava/lang/String;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/google/protobuf/Struct;

    :cond_0
    return-object p2
.end method

.method public getExtensionProtocolOptionsOrThrow(Ljava/lang/String;)Lcom/google/protobuf/Struct;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Struct;

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getFilters(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/Filter;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/Filter;

    return-object p1
.end method

.method public getFiltersCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFiltersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/Filter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    return-object v0
.end method

.method public getFiltersOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/c;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/c;

    return-object p1
.end method

.method public getFiltersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    return-object v0
.end method

.method public getHealthChecks(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck;

    return-object p1
.end method

.method public getHealthChecksCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHealthChecksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    return-object v0
.end method

.method public getHealthChecksOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/v;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/v;

    return-object p1
.end method

.method public getHealthChecksOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    return-object v0
.end method

.method public getHosts(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;

    return-object p1
.end method

.method public getHostsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHostsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Address;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    return-object v0
.end method

.method public getHostsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/a;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/a;

    return-object p1
.end method

.method public getHostsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    return-object v0
.end method

.method public getHttp2ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHttp2ProtocolOptionsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/y;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHttp2ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    move-result-object v0

    return-object v0
.end method

.method public getHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHttpProtocolOptionsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/x;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    move-result-object v0

    return-object v0
.end method

.method public getLbConfigCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    move-result-object v0

    return-object v0
.end method

.method public getLbPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbPolicy_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    :cond_0
    return-object v0
.end method

.method public getLbPolicyValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbPolicy_:I

    return v0
.end method

.method public getLbSubsetConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbSubsetConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLbSubsetConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$h;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLbSubsetConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v0

    return-object v0
.end method

.method public getLeastRequestLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public getLeastRequestLbConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$i;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public getLoadAssignment()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->loadAssignment_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLoadAssignmentOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLoadAssignment()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalancingPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->loadBalancingPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLoadBalancingPolicyOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/i;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLoadBalancingPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getLrsServer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lrsServer_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLrsServerOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/k;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLrsServer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public getMaxRequestsPerConnection()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->maxRequestsPerConnection_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxRequestsPerConnectionOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getMaxRequestsPerConnection()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMetadataOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/d0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->name_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->name_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOriginalDstLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalDstLbConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$j;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public getOutlierDetection()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->outlierDetection_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOutlierDetectionOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/e;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getOutlierDetection()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPerConnectionBufferLimitBytes()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPerConnectionBufferLimitBytesOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getPerConnectionBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolSelection()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterProtocolSelection;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->protocolSelection_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterProtocolSelection;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterProtocolSelection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterProtocolSelection;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterProtocolSelection;

    :cond_0
    return-object v0
.end method

.method public getProtocolSelectionValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->protocolSelection_:I

    return v0
.end method

.method public getRespectDnsTtl()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->respectDnsTtl_:Z

    return v0
.end method

.method public getRingHashLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public getRingHashLbConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$l;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->name_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 5
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryType_:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7
    :cond_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->edsClusterConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getEdsClusterConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9
    :cond_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->connectTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getConnectTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11
    :cond_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getPerConnectionBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13
    :cond_5
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbPolicy_:I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->ROUND_ROBIN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_6

    const/4 v2, 0x6

    .line 14
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbPolicy_:I

    .line 15
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    const/4 v2, 0x0

    .line 16
    :goto_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    const/4 v3, 0x7

    .line 17
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    .line 18
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    .line 19
    :goto_2
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    const/16 v3, 0x8

    .line 20
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    .line 21
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 22
    :cond_8
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->maxRequestsPerConnection_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_9

    const/16 v2, 0x9

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getMaxRequestsPerConnection()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24
    :cond_9
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->circuitBreakers_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    if-eqz v2, :cond_a

    const/16 v2, 0xa

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCircuitBreakers()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 26
    :cond_a
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    if-eqz v2, :cond_b

    const/16 v2, 0xb

    .line 27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 28
    :cond_b
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    if-eqz v2, :cond_c

    const/16 v2, 0xd

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30
    :cond_c
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    if-eqz v2, :cond_d

    const/16 v2, 0xe

    .line 31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHttp2ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 32
    :cond_d
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsRefreshRate_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_e

    const/16 v2, 0x10

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDnsRefreshRate()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 34
    :cond_e
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsLookupFamily_:I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DnsLookupFamily;->AUTO:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DnsLookupFamily;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DnsLookupFamily;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_f

    const/16 v2, 0x11

    .line 35
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsLookupFamily_:I

    .line 36
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_f
    const/4 v2, 0x0

    .line 37
    :goto_3
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_10

    const/16 v3, 0x12

    .line 38
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    .line 39
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 40
    :cond_10
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->outlierDetection_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

    if-eqz v2, :cond_11

    const/16 v2, 0x13

    .line 41
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getOutlierDetection()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42
    :cond_11
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->cleanupInterval_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_12

    const/16 v2, 0x14

    .line 43
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCleanupInterval()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 44
    :cond_12
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamBindConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    if-eqz v2, :cond_13

    const/16 v2, 0x15

    .line 45
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamBindConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 46
    :cond_13
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbSubsetConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    if-eqz v2, :cond_14

    const/16 v2, 0x16

    .line 47
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLbSubsetConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 48
    :cond_14
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_15

    .line 49
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;

    .line 50
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 51
    :cond_15
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocket_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    if-eqz v2, :cond_16

    const/16 v2, 0x18

    .line 52
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTransportSocket()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 53
    :cond_16
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v2, :cond_17

    const/16 v2, 0x19

    .line 54
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 55
    :cond_17
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->protocolSelection_:I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterProtocolSelection;->USE_CONFIGURED_PROTOCOL:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterProtocolSelection;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterProtocolSelection;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_18

    const/16 v2, 0x1a

    .line 56
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->protocolSelection_:I

    .line 57
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 58
    :cond_18
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->commonLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    if-eqz v2, :cond_19

    const/16 v2, 0x1b

    .line 59
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCommonLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 60
    :cond_19
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->altStatName_:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    const/16 v2, 0x1c

    .line 61
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->altStatName_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 62
    :cond_1a
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    if-eqz v2, :cond_1b

    const/16 v2, 0x1d

    .line 63
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCommonHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 64
    :cond_1b
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamConnectionOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    if-eqz v2, :cond_1c

    const/16 v2, 0x1e

    .line 65
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamConnectionOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 66
    :cond_1c
    iget-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->closeConnectionsOnHostHealthFailure_:Z

    if-eqz v2, :cond_1d

    const/16 v3, 0x1f

    .line 67
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 68
    :cond_1d
    iget-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->drainConnectionsOnHostRemoval_:Z

    if-eqz v2, :cond_1e

    const/16 v3, 0x20

    .line 69
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 70
    :cond_1e
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->loadAssignment_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    if-eqz v2, :cond_1f

    const/16 v2, 0x21

    .line 71
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLoadAssignment()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 72
    :cond_1f
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v3, 0x22

    if-ne v2, v3, :cond_20

    .line 73
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;

    .line 74
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 75
    :cond_20
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 76
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$g;->a:Lcom/google/protobuf/e1;

    invoke-virtual {v4}, Lcom/google/protobuf/e1;->j()Lcom/google/protobuf/e1$b;

    move-result-object v4

    .line 77
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/e1$b;->N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v4

    .line 78
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Struct;

    invoke-virtual {v4, v3}, Lcom/google/protobuf/e1$b;->P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/google/protobuf/e1$b;->C()Lcom/google/protobuf/e1;

    move-result-object v3

    const/16 v4, 0x23

    .line 80
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_4

    .line 81
    :cond_21
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetTypedExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 82
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$n;->a:Lcom/google/protobuf/e1;

    invoke-virtual {v4}, Lcom/google/protobuf/e1;->j()Lcom/google/protobuf/e1$b;

    move-result-object v4

    .line 83
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/e1$b;->N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v4

    .line 84
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Any;

    invoke-virtual {v4, v3}, Lcom/google/protobuf/e1$b;->P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lcom/google/protobuf/e1$b;->C()Lcom/google/protobuf/e1;

    move-result-object v3

    const/16 v4, 0x24

    .line 86
    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_5

    .line 87
    :cond_22
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v3, 0x25

    if-ne v2, v3, :cond_23

    .line 88
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;

    .line 89
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 90
    :cond_23
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    const/16 v3, 0x26

    if-ne v2, v3, :cond_24

    .line 91
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryType_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;

    .line 92
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 93
    :cond_24
    iget-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->respectDnsTtl_:Z

    if-eqz v2, :cond_25

    const/16 v3, 0x27

    .line 94
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_25
    const/4 v2, 0x0

    .line 95
    :goto_6
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    const/16 v3, 0x28

    .line 96
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    .line 97
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 98
    :cond_26
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->loadBalancingPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    if-eqz v2, :cond_27

    const/16 v2, 0x29

    .line 99
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLoadBalancingPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 100
    :cond_27
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lrsServer_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    if-eqz v2, :cond_28

    const/16 v2, 0x2a

    .line 101
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLrsServer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 102
    :cond_28
    :goto_7
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    const/16 v2, 0x2b

    .line 103
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    .line 104
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 105
    :cond_29
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsFailureRefreshRate_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    if-eqz v1, :cond_2a

    const/16 v1, 0x2c

    .line 106
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDnsFailureRefreshRate()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    :cond_2a
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->useTcpForDnsLookups_:Z

    if-eqz v1, :cond_2b

    const/16 v2, 0x2d

    .line 108
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_2b
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    if-eqz v1, :cond_2c

    const/16 v1, 0x2e

    .line 110
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_2c
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->trackTimeoutBudgets_:Z

    if-eqz v1, :cond_2d

    const/16 v2, 0x2f

    .line 112
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_2d
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTlsContextOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/m;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    move-result-object v0

    return-object v0
.end method

.method public getTrackTimeoutBudgets()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->trackTimeoutBudgets_:Z

    return v0
.end method

.method public getTransportSocket()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocket_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTransportSocketMatches(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$TransportSocketMatch;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$TransportSocketMatch;

    return-object p1
.end method

.method public getTransportSocketMatchesCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTransportSocketMatchesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$TransportSocketMatch;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    return-object v0
.end method

.method public getTransportSocketMatchesOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$m;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$m;

    return-object p1
.end method

.method public getTransportSocketMatchesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    return-object v0
.end method

.method public getTransportSocketOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/r0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTransportSocket()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DiscoveryType;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DiscoveryType;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DiscoveryType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DiscoveryType;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DiscoveryType;

    :cond_0
    return-object v0

    .line 6
    :cond_1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DiscoveryType;->STATIC:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DiscoveryType;

    return-object v0
.end method

.method public getTypeValue()I
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTypedExtensionProtocolOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTypedExtensionProtocolOptionsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTypedExtensionProtocolOptionsCount()I
    .locals 1

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetTypedExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getTypedExtensionProtocolOptionsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetTypedExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTypedExtensionProtocolOptionsOrDefault(Ljava/lang/String;Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any;
    .locals 2

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetTypedExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/google/protobuf/Any;

    :cond_0
    return-object p2
.end method

.method public getTypedExtensionProtocolOptionsOrThrow(Ljava/lang/String;)Lcom/google/protobuf/Any;
    .locals 2

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetTypedExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getUpstreamBindConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamBindConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUpstreamBindConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/h;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamBindConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    move-result-object v0

    return-object v0
.end method

.method public getUpstreamConnectionOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamConnectionOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUpstreamConnectionOptionsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/q;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamConnectionOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getUpstreamHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUpstreamHttpProtocolOptionsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/s0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    move-result-object v0

    return-object v0
.end method

.method public getUseTcpForDnsLookups()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->useTcpForDnsLookups_:Z

    return v0
.end method

.method public hasCircuitBreakers()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->circuitBreakers_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCleanupInterval()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->cleanupInterval_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasClusterType()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    const/16 v1, 0x26

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCommonHttpProtocolOptions()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCommonLbConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->commonLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConnectTimeout()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->connectTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDnsFailureRefreshRate()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsFailureRefreshRate_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDnsRefreshRate()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsRefreshRate_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEdsClusterConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->edsClusterConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHttp2ProtocolOptions()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHttpProtocolOptions()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLbSubsetConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbSubsetConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLeastRequestLbConfig()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLoadAssignment()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->loadAssignment_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLoadBalancingPolicy()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->loadBalancingPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLrsServer()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lrsServer_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxRequestsPerConnection()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->maxRequestsPerConnection_:Lcom/google/protobuf/UInt32Value;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOriginalDstLbConfig()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOutlierDetection()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->outlierDetection_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRingHashLbConfig()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTlsContext()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransportSocket()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocket_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUpstreamBindConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamBindConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUpstreamConnectionOptions()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamConnectionOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUpstreamHttpProtocolOptions()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTransportSocketMatchesCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2b

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTransportSocketMatchesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    const/16 v1, 0x25

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1c

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getAltStatName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasEdsClusterConfig()Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getEdsClusterConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 9
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasConnectTimeout()Z

    move-result v2

    if-eqz v2, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getConnectTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 11
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasPerConnectionBufferLimitBytes()Z

    move-result v2

    if-eqz v2, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getPerConnectionBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 13
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbPolicy_:I

    add-int/2addr v0, v2

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHostsCount()I

    move-result v2

    if-lez v2, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHostsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 16
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasLoadAssignment()Z

    move-result v2

    if-eqz v2, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x21

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLoadAssignment()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 18
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHealthChecksCount()I

    move-result v2

    if-lez v2, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHealthChecksList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 20
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasMaxRequestsPerConnection()Z

    move-result v2

    if-eqz v2, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getMaxRequestsPerConnection()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 22
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasCircuitBreakers()Z

    move-result v2

    if-eqz v2, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCircuitBreakers()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 24
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasTlsContext()Z

    move-result v2

    if-eqz v2, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 26
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasUpstreamHttpProtocolOptions()Z

    move-result v2

    if-eqz v2, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2e

    mul-int/lit8 v0, v0, 0x35

    .line 27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 28
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasCommonHttpProtocolOptions()Z

    move-result v2

    if-eqz v2, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1d

    mul-int/lit8 v0, v0, 0x35

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCommonHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 30
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasHttpProtocolOptions()Z

    move-result v2

    if-eqz v2, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 32
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasHttp2ProtocolOptions()Z

    move-result v2

    if-eqz v2, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHttp2ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 34
    :cond_e
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x23

    mul-int/lit8 v0, v0, 0x35

    .line 35
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/g1;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 36
    :cond_f
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetTypedExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x24

    mul-int/lit8 v0, v0, 0x35

    .line 37
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetTypedExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/g1;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 38
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasDnsRefreshRate()Z

    move-result v2

    if-eqz v2, :cond_11

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 39
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDnsRefreshRate()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 40
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasDnsFailureRefreshRate()Z

    move-result v2

    if-eqz v2, :cond_12

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2c

    mul-int/lit8 v0, v0, 0x35

    .line 41
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDnsFailureRefreshRate()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_12
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x27

    mul-int/lit8 v0, v0, 0x35

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getRespectDnsTtl()Z

    move-result v2

    .line 43
    invoke-static {v2}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 44
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsLookupFamily_:I

    add-int/2addr v0, v2

    .line 45
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDnsResolversCount()I

    move-result v2

    if-lez v2, :cond_13

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 46
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDnsResolversList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_13
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2d

    mul-int/lit8 v0, v0, 0x35

    .line 47
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUseTcpForDnsLookups()Z

    move-result v2

    .line 48
    invoke-static {v2}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 49
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasOutlierDetection()Z

    move-result v2

    if-eqz v2, :cond_14

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 50
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getOutlierDetection()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 51
    :cond_14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasCleanupInterval()Z

    move-result v2

    if-eqz v2, :cond_15

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 52
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCleanupInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 53
    :cond_15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasUpstreamBindConfig()Z

    move-result v2

    if-eqz v2, :cond_16

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    .line 54
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamBindConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 55
    :cond_16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasLbSubsetConfig()Z

    move-result v2

    if-eqz v2, :cond_17

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x35

    .line 56
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLbSubsetConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 57
    :cond_17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasCommonLbConfig()Z

    move-result v2

    if-eqz v2, :cond_18

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1b

    mul-int/lit8 v0, v0, 0x35

    .line 58
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCommonLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 59
    :cond_18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasTransportSocket()Z

    move-result v2

    if-eqz v2, :cond_19

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x35

    .line 60
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTransportSocket()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 61
    :cond_19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasMetadata()Z

    move-result v2

    if-eqz v2, :cond_1a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x19

    mul-int/lit8 v0, v0, 0x35

    .line 62
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_1a
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1a

    mul-int/lit8 v0, v0, 0x35

    .line 63
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->protocolSelection_:I

    add-int/2addr v0, v2

    .line 64
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasUpstreamConnectionOptions()Z

    move-result v2

    if-eqz v2, :cond_1b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x35

    .line 65
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamConnectionOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_1b
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x35

    .line 66
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCloseConnectionsOnHostHealthFailure()Z

    move-result v2

    .line 67
    invoke-static {v2}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x20

    mul-int/lit8 v0, v0, 0x35

    .line 68
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDrainConnectionsOnHostRemoval()Z

    move-result v2

    .line 69
    invoke-static {v2}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 70
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getFiltersCount()I

    move-result v2

    if-lez v2, :cond_1c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x28

    mul-int/lit8 v0, v0, 0x35

    .line 71
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getFiltersList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 72
    :cond_1c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasLoadBalancingPolicy()Z

    move-result v2

    if-eqz v2, :cond_1d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x29

    mul-int/lit8 v0, v0, 0x35

    .line 73
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLoadBalancingPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 74
    :cond_1d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hasLrsServer()Z

    move-result v2

    if-eqz v2, :cond_1e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2a

    mul-int/lit8 v0, v0, 0x35

    .line 75
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLrsServer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_1e
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2f

    mul-int/lit8 v0, v0, 0x35

    .line 76
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTrackTimeoutBudgets()Z

    move-result v2

    .line 77
    invoke-static {v2}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 78
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_20

    const/16 v3, 0x26

    if-eq v2, v3, :cond_1f

    goto :goto_1

    :cond_1f
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    .line 79
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getClusterType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_20
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    .line 80
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTypeValue()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    .line 81
    :goto_1
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v3, 0x17

    if-eq v2, v3, :cond_23

    const/16 v3, 0x22

    if-eq v2, v3, :cond_22

    if-eq v2, v1, :cond_21

    goto :goto_3

    :cond_21
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 82
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLeastRequestLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_22
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    .line 83
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getOriginalDstLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_23
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    .line 84
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getRingHashLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    :goto_3
    mul-int/lit8 v0, v0, 0x1d

    .line 85
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetMapField(I)Lcom/google/protobuf/g1;
    .locals 3

    const/16 v0, 0x23

    if-eq p1, v0, :cond_1

    const/16 v0, 0x24

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetTypedExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid map field number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;->K0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$c;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->edsClusterConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getEdsClusterConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$EdsClusterConfig;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->connectTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getConnectTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->perConnectionBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getPerConnectionBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbPolicy_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->ROUND_ROBIN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbPolicy;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_5

    const/4 v0, 0x6

    .line 12
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbPolicy_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    :cond_5
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, 0x7

    .line 14
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->hosts_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    .line 15
    :goto_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/16 v2, 0x8

    .line 16
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->healthChecks_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 17
    :cond_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->maxRequestsPerConnection_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getMaxRequestsPerConnection()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->circuitBreakers_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCircuitBreakers()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/CircuitBreakers;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 21
    :cond_9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->tlsContext_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTlsContext()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/auth/UpstreamTlsContext;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 23
    :cond_a
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->httpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    if-eqz v1, :cond_b

    const/16 v1, 0xd

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http1ProtocolOptions;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 25
    :cond_b
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->http2ProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    if-eqz v1, :cond_c

    const/16 v1, 0xe

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getHttp2ProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Http2ProtocolOptions;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 27
    :cond_c
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsRefreshRate_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_d

    const/16 v1, 0x10

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDnsRefreshRate()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 29
    :cond_d
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsLookupFamily_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DnsLookupFamily;->AUTO:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DnsLookupFamily;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$DnsLookupFamily;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_e

    const/16 v1, 0x11

    .line 30
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsLookupFamily_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    :cond_e
    const/4 v1, 0x0

    .line 31
    :goto_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    const/16 v2, 0x12

    .line 32
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsResolvers_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 33
    :cond_f
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->outlierDetection_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

    if-eqz v1, :cond_10

    const/16 v1, 0x13

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getOutlierDetection()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/cluster/OutlierDetection;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 35
    :cond_10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->cleanupInterval_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_11

    const/16 v1, 0x14

    .line 36
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCleanupInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 37
    :cond_11
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamBindConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    if-eqz v1, :cond_12

    const/16 v1, 0x15

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamBindConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/BindConfig;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 39
    :cond_12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbSubsetConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    if-eqz v1, :cond_13

    const/16 v1, 0x16

    .line 40
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLbSubsetConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbSubsetConfig;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 41
    :cond_13
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_14

    .line 42
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RingHashLbConfig;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 43
    :cond_14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocket_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    if-eqz v1, :cond_15

    const/16 v1, 0x18

    .line 44
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getTransportSocket()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/TransportSocket;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 45
    :cond_15
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->metadata_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v1, :cond_16

    const/16 v1, 0x19

    .line 46
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getMetadata()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 47
    :cond_16
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->protocolSelection_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterProtocolSelection;->USE_CONFIGURED_PROTOCOL:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterProtocolSelection;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterProtocolSelection;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_17

    const/16 v1, 0x1a

    .line 48
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->protocolSelection_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 49
    :cond_17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->commonLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    if-eqz v1, :cond_18

    const/16 v1, 0x1b

    .line 50
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCommonLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 51
    :cond_18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->altStatName_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const/16 v1, 0x1c

    .line 52
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->altStatName_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 53
    :cond_19
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->commonHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    if-eqz v1, :cond_1a

    const/16 v1, 0x1d

    .line 54
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getCommonHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HttpProtocolOptions;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 55
    :cond_1a
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamConnectionOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    if-eqz v1, :cond_1b

    const/16 v1, 0x1e

    .line 56
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamConnectionOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/UpstreamConnectionOptions;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 57
    :cond_1b
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->closeConnectionsOnHostHealthFailure_:Z

    if-eqz v1, :cond_1c

    const/16 v2, 0x1f

    .line 58
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 59
    :cond_1c
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->drainConnectionsOnHostRemoval_:Z

    if-eqz v1, :cond_1d

    const/16 v2, 0x20

    .line 60
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 61
    :cond_1d
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->loadAssignment_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    if-eqz v1, :cond_1e

    const/16 v1, 0x21

    .line 62
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLoadAssignment()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/ClusterLoadAssignment;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 63
    :cond_1e
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v2, 0x22

    if-ne v1, v2, :cond_1f

    .line 64
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$OriginalDstLbConfig;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 65
    :cond_1f
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v1

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$g;->a:Lcom/google/protobuf/e1;

    const/16 v3, 0x23

    .line 66
    invoke-static {p1, v1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/g1;Lcom/google/protobuf/e1;I)V

    .line 67
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->internalGetTypedExtensionProtocolOptions()Lcom/google/protobuf/g1;

    move-result-object v1

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$n;->a:Lcom/google/protobuf/e1;

    const/16 v3, 0x24

    .line 68
    invoke-static {p1, v1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/g1;Lcom/google/protobuf/e1;I)V

    .line 69
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfigCase_:I

    const/16 v2, 0x25

    if-ne v1, v2, :cond_20

    .line 70
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lbConfig_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LeastRequestLbConfig;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 71
    :cond_20
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryTypeCase_:I

    const/16 v2, 0x26

    if-ne v1, v2, :cond_21

    .line 72
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->clusterDiscoveryType_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CustomClusterType;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 73
    :cond_21
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->respectDnsTtl_:Z

    if-eqz v1, :cond_22

    const/16 v2, 0x27

    .line 74
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    :cond_22
    const/4 v1, 0x0

    .line 75
    :goto_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    const/16 v2, 0x28

    .line 76
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->filters_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 77
    :cond_23
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->loadBalancingPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    if-eqz v1, :cond_24

    const/16 v1, 0x29

    .line 78
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLoadBalancingPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/LoadBalancingPolicy;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 79
    :cond_24
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->lrsServer_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    if-eqz v1, :cond_25

    const/16 v1, 0x2a

    .line 80
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getLrsServer()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/ConfigSource;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 81
    :cond_25
    :goto_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    const/16 v1, 0x2b

    .line 82
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->transportSocketMatches_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 83
    :cond_26
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->dnsFailureRefreshRate_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    if-eqz v0, :cond_27

    const/16 v0, 0x2c

    .line 84
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getDnsFailureRefreshRate()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$RefreshRate;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 85
    :cond_27
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->useTcpForDnsLookups_:Z

    if-eqz v0, :cond_28

    const/16 v1, 0x2d

    .line 86
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 87
    :cond_28
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->upstreamHttpProtocolOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    if-eqz v0, :cond_29

    const/16 v0, 0x2e

    .line 88
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->getUpstreamHttpProtocolOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/UpstreamHttpProtocolOptions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 89
    :cond_29
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;->trackTimeoutBudgets_:Z

    if-eqz v0, :cond_2a

    const/16 v1, 0x2f

    .line 90
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 91
    :cond_2a
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
