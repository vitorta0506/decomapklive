.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StatsFlushCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$e;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$f;
    }
.end annotation


# static fields
.field public static final ADMIN_FIELD_NUMBER:I = 0xc

.field public static final BOOTSTRAP_EXTENSIONS_FIELD_NUMBER:I = 0x15

.field public static final CERTIFICATE_PROVIDER_INSTANCES_FIELD_NUMBER:I = 0x19

.field public static final CLUSTER_MANAGER_FIELD_NUMBER:I = 0x4

.field public static final CONFIG_SOURCES_FIELD_NUMBER:I = 0x16

.field public static final DEFAULT_CONFIG_SOURCE_FIELD_NUMBER:I = 0x17

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

.field public static final DEFAULT_SOCKET_INTERFACE_FIELD_NUMBER:I = 0x18

.field public static final DNS_RESOLUTION_CONFIG_FIELD_NUMBER:I = 0x1e

.field public static final DYNAMIC_RESOURCES_FIELD_NUMBER:I = 0x3

.field public static final ENABLE_DISPATCHER_STATS_FIELD_NUMBER:I = 0x10

.field public static final FATAL_ACTIONS_FIELD_NUMBER:I = 0x1c

.field public static final FLAGS_PATH_FIELD_NUMBER:I = 0x5

.field public static final HDS_CONFIG_FIELD_NUMBER:I = 0xe

.field public static final HEADER_PREFIX_FIELD_NUMBER:I = 0x12

.field public static final INLINE_HEADERS_FIELD_NUMBER:I = 0x20

.field public static final LAYERED_RUNTIME_FIELD_NUMBER:I = 0x11

.field public static final NODE_CONTEXT_PARAMS_FIELD_NUMBER:I = 0x1a

.field public static final NODE_FIELD_NUMBER:I = 0x1

.field public static final OVERLOAD_MANAGER_FIELD_NUMBER:I = 0xf

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATIC_RESOURCES_FIELD_NUMBER:I = 0x2

.field public static final STATS_CONFIG_FIELD_NUMBER:I = 0xd

.field public static final STATS_FLUSH_INTERVAL_FIELD_NUMBER:I = 0x7

.field public static final STATS_FLUSH_ON_ADMIN_FIELD_NUMBER:I = 0x1d

.field public static final STATS_SERVER_VERSION_OVERRIDE_FIELD_NUMBER:I = 0x13

.field public static final STATS_SINKS_FIELD_NUMBER:I = 0x6

.field public static final TRACING_FIELD_NUMBER:I = 0x9

.field public static final TYPED_DNS_RESOLVER_CONFIG_FIELD_NUMBER:I = 0x1f

.field public static final USE_TCP_FOR_DNS_LOOKUPS_FIELD_NUMBER:I = 0x14

.field public static final WATCHDOGS_FIELD_NUMBER:I = 0x1b

.field public static final WATCHDOG_FIELD_NUMBER:I = 0x8

.field private static final serialVersionUID:J


# instance fields
.field private admin_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

.field private bootstrapExtensions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private certificateProviderInstances_:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private clusterManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

.field private configSources_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;",
            ">;"
        }
    .end annotation
.end field

.field private defaultConfigSource_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

.field private volatile defaultSocketInterface_:Ljava/lang/Object;

.field private dnsResolutionConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

.field private dynamicResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

.field private enableDispatcherStats_:Z

.field private fatalActions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/FatalAction;",
            ">;"
        }
    .end annotation
.end field

.field private volatile flagsPath_:Ljava/lang/Object;

.field private hdsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

.field private volatile headerPrefix_:Ljava/lang/Object;

.field private inlineHeaders_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/CustomInlineHeader;",
            ">;"
        }
    .end annotation
.end field

.field private layeredRuntime_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

.field private memoizedIsInitialized:B

.field private nodeContextParams_:Lcom/google/protobuf/z0;

.field private node_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

.field private overloadManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

.field private staticResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

.field private statsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

.field private statsFlushCase_:I

.field private statsFlushInterval_:Lcom/google/protobuf/Duration;

.field private statsFlush_:Ljava/lang/Object;

.field private statsServerVersionOverride_:Lcom/google/protobuf/UInt64Value;

.field private statsSinks_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsSink;",
            ">;"
        }
    .end annotation
.end field

.field private tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

.field private typedDnsResolverConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

.field private useTcpForDnsLookups_:Z

.field private watchdog_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

.field private watchdogs_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->memoizedIsInitialized:B

    .line 9
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->flagsPath_:Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    .line 12
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->headerPrefix_:Ljava/lang/Object;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultSocketInterface_:Ljava/lang/Object;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;-><init>()V

    .line 19
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_1f

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_0

    .line 22
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_2

    :sswitch_0
    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_1

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x40

    .line 24
    :cond_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    .line 25
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/CustomInlineHeader;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/CustomInlineHeader;

    .line 26
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :sswitch_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->typedDnsResolverConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v3, :cond_2

    .line 28
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;

    move-result-object v5

    .line 29
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->typedDnsResolverConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v5, :cond_0

    .line 30
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;

    .line 31
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->typedDnsResolverConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    goto :goto_0

    .line 32
    :sswitch_2
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->dnsResolutionConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    if-eqz v3, :cond_3

    .line 33
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig$b;

    move-result-object v5

    .line 34
    :cond_3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->dnsResolutionConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    if-eqz v5, :cond_0

    .line 35
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig$b;

    .line 36
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->dnsResolutionConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    goto :goto_0

    .line 37
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlush_:Ljava/lang/Object;

    const/16 v3, 0x1d

    .line 38
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushCase_:I

    goto :goto_0

    :sswitch_4
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_4

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 40
    :cond_4
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    .line 41
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/FatalAction;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/FatalAction;

    .line 42
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 43
    :sswitch_5
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->watchdogs_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    if-eqz v3, :cond_5

    .line 44
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs$b;

    move-result-object v5

    .line 45
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->watchdogs_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    if-eqz v5, :cond_0

    .line 46
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs$b;

    .line 47
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->watchdogs_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    goto/16 :goto_0

    .line 48
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_6

    .line 49
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x1

    .line 50
    :cond_6
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v3, v2, 0x20

    if-nez v3, :cond_7

    .line 51
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$d;->a:Lcom/google/protobuf/e1;

    invoke-static {v3}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->certificateProviderInstances_:Lcom/google/protobuf/g1;

    or-int/lit8 v2, v2, 0x20

    .line 52
    :cond_7
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$d;->a:Lcom/google/protobuf/e1;

    .line 53
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->getParserForType()Lcom/google/protobuf/e2;

    move-result-object v3

    .line 54
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/e1;

    .line 55
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->certificateProviderInstances_:Lcom/google/protobuf/g1;

    invoke-virtual {v4}, Lcom/google/protobuf/g1;->l()Ljava/util/Map;

    move-result-object v4

    .line 56
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    .line 57
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 58
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 59
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultSocketInterface_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 60
    :sswitch_9
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultConfigSource_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    if-eqz v3, :cond_8

    .line 61
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    move-result-object v5

    .line 62
    :cond_8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultConfigSource_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    if-eqz v5, :cond_0

    .line 63
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;

    .line 64
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultConfigSource_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    goto/16 :goto_0

    :sswitch_a
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_9

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    .line 66
    :cond_9
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    .line 67
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    .line 68
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_b
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_a

    .line 69
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 70
    :cond_a
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    .line 71
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    .line 72
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 73
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->useTcpForDnsLookups_:Z

    goto/16 :goto_0

    .line 74
    :sswitch_d
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsServerVersionOverride_:Lcom/google/protobuf/UInt64Value;

    if-eqz v3, :cond_b

    .line 75
    invoke-virtual {v3}, Lcom/google/protobuf/UInt64Value;->toBuilder()Lcom/google/protobuf/UInt64Value$b;

    move-result-object v5

    .line 76
    :cond_b
    invoke-static {}, Lcom/google/protobuf/UInt64Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/UInt64Value;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsServerVersionOverride_:Lcom/google/protobuf/UInt64Value;

    if-eqz v5, :cond_0

    .line 77
    invoke-virtual {v5, v3}, Lcom/google/protobuf/UInt64Value$b;->g0(Lcom/google/protobuf/UInt64Value;)Lcom/google/protobuf/UInt64Value$b;

    .line 78
    invoke-virtual {v5}, Lcom/google/protobuf/UInt64Value$b;->Y()Lcom/google/protobuf/UInt64Value;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsServerVersionOverride_:Lcom/google/protobuf/UInt64Value;

    goto/16 :goto_0

    .line 79
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 80
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->headerPrefix_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 81
    :sswitch_f
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->layeredRuntime_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    if-eqz v3, :cond_c

    .line 82
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime$b;

    move-result-object v5

    .line 83
    :cond_c
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->layeredRuntime_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    if-eqz v5, :cond_0

    .line 84
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime$b;

    .line 85
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->layeredRuntime_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    goto/16 :goto_0

    .line 86
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->enableDispatcherStats_:Z

    goto/16 :goto_0

    .line 87
    :sswitch_11
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->overloadManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    if-eqz v3, :cond_d

    .line 88
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager$b;

    move-result-object v5

    .line 89
    :cond_d
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->overloadManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    if-eqz v5, :cond_0

    .line 90
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager$b;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager$b;

    .line 91
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->overloadManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    goto/16 :goto_0

    .line 92
    :sswitch_12
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hdsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    if-eqz v3, :cond_e

    .line 93
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    move-result-object v5

    .line 94
    :cond_e
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hdsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    if-eqz v5, :cond_0

    .line 95
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;

    .line 96
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hdsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    goto/16 :goto_0

    .line 97
    :sswitch_13
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    if-eqz v3, :cond_f

    .line 98
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig$b;

    move-result-object v5

    .line 99
    :cond_f
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    if-eqz v5, :cond_0

    .line 100
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig$b;

    .line 101
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    goto/16 :goto_0

    .line 102
    :sswitch_14
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->admin_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    if-eqz v3, :cond_10

    .line 103
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin$b;

    move-result-object v5

    .line 104
    :cond_10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->admin_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    if-eqz v5, :cond_0

    .line 105
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin$b;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin$b;

    .line 106
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->admin_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    goto/16 :goto_0

    .line 107
    :sswitch_15
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    if-eqz v3, :cond_11

    .line 108
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing$c;

    move-result-object v5

    .line 109
    :cond_11
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    if-eqz v5, :cond_0

    .line 110
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing$c;

    .line 111
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    goto/16 :goto_0

    .line 112
    :sswitch_16
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->watchdog_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    if-eqz v3, :cond_12

    .line 113
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog$b;

    move-result-object v5

    .line 114
    :cond_12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->watchdog_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    if-eqz v5, :cond_0

    .line 115
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog$b;

    .line 116
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->watchdog_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    goto/16 :goto_0

    .line 117
    :sswitch_17
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushInterval_:Lcom/google/protobuf/Duration;

    if-eqz v3, :cond_13

    .line 118
    invoke-virtual {v3}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v5

    .line 119
    :cond_13
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Duration;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushInterval_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_0

    .line 120
    invoke-virtual {v5, v3}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 121
    invoke-virtual {v5}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushInterval_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    :sswitch_18
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_14

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 123
    :cond_14
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    .line 124
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsSink;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsSink;

    .line 125
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 126
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 127
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->flagsPath_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 128
    :sswitch_1a
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->clusterManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    if-eqz v3, :cond_15

    .line 129
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager$b;

    move-result-object v5

    .line 130
    :cond_15
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->clusterManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    if-eqz v5, :cond_0

    .line 131
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager$b;

    .line 132
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->clusterManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    goto/16 :goto_0

    .line 133
    :sswitch_1b
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->dynamicResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    if-eqz v3, :cond_16

    .line 134
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources$b;

    move-result-object v5

    .line 135
    :cond_16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->dynamicResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    if-eqz v5, :cond_0

    .line 136
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources$b;

    .line 137
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->dynamicResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    goto/16 :goto_0

    .line 138
    :sswitch_1c
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->staticResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    if-eqz v3, :cond_17

    .line 139
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources$b;

    move-result-object v5

    .line 140
    :cond_17
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->staticResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    if-eqz v5, :cond_0

    .line 141
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources$b;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources$b;

    .line 142
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->staticResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    goto/16 :goto_0

    .line 143
    :sswitch_1d
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->node_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    if-eqz v3, :cond_18

    .line 144
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;

    move-result-object v5

    .line 145
    :cond_18
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->node_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    if-eqz v5, :cond_0

    .line 146
    invoke-virtual {v5, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;->q0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;

    .line 147
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node$c;->a0()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->node_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_1e
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

    .line 148
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 149
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 150
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_19

    .line 151
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    :cond_19
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_1a

    .line 152
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    :cond_1a
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_1b

    .line 153
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    :cond_1b
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_1c

    .line 154
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    :cond_1c
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_1d

    .line 155
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    :cond_1d
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_1e

    .line 156
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    .line 157
    :cond_1e
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 158
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_1f
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_20

    .line 159
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    :cond_20
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_21

    .line 160
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    :cond_21
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_22

    .line 161
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    :cond_22
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_23

    .line 162
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    :cond_23
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_24

    .line 163
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    :cond_24
    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_25

    .line 164
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    .line 165
    :cond_25
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 166
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_1d
        0x12 -> :sswitch_1c
        0x1a -> :sswitch_1b
        0x22 -> :sswitch_1a
        0x2a -> :sswitch_19
        0x32 -> :sswitch_18
        0x3a -> :sswitch_17
        0x42 -> :sswitch_16
        0x4a -> :sswitch_15
        0x62 -> :sswitch_14
        0x6a -> :sswitch_13
        0x72 -> :sswitch_12
        0x7a -> :sswitch_11
        0x80 -> :sswitch_10
        0x8a -> :sswitch_f
        0x92 -> :sswitch_e
        0x9a -> :sswitch_d
        0xa0 -> :sswitch_c
        0xaa -> :sswitch_b
        0xb2 -> :sswitch_a
        0xba -> :sswitch_9
        0xc2 -> :sswitch_8
        0xca -> :sswitch_7
        0xd2 -> :sswitch_6
        0xda -> :sswitch_5
        0xe2 -> :sswitch_4
        0xe8 -> :sswitch_3
        0xf2 -> :sswitch_2
        0xfa -> :sswitch_1
        0x102 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$2900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->node_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    return-object p1
.end method

.method static synthetic access$3200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$3202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$3302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->staticResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    return-object p1
.end method

.method static synthetic access$3402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->dynamicResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    return-object p1
.end method

.method static synthetic access$3502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->clusterManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    return-object p1
.end method

.method static synthetic access$3602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hdsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    return-object p1
.end method

.method static synthetic access$3700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->flagsPath_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->flagsPath_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    return-object p1
.end method

.method static synthetic access$4002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushInterval_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$4102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlush_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->watchdog_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    return-object p1
.end method

.method static synthetic access$4302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->watchdogs_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    return-object p1
.end method

.method static synthetic access$4402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    return-object p1
.end method

.method static synthetic access$4502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->layeredRuntime_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    return-object p1
.end method

.method static synthetic access$4602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->admin_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    return-object p1
.end method

.method static synthetic access$4702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->overloadManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    return-object p1
.end method

.method static synthetic access$4802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->enableDispatcherStats_:Z

    return p1
.end method

.method static synthetic access$4900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->headerPrefix_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->headerPrefix_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lcom/google/protobuf/UInt64Value;)Lcom/google/protobuf/UInt64Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsServerVersionOverride_:Lcom/google/protobuf/UInt64Value;

    return-object p1
.end method

.method static synthetic access$5102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->useTcpForDnsLookups_:Z

    return p1
.end method

.method static synthetic access$5202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->dnsResolutionConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    return-object p1
.end method

.method static synthetic access$5302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->typedDnsResolverConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    return-object p1
.end method

.method static synthetic access$5400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultConfigSource_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    return-object p1
.end method

.method static synthetic access$5800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultSocketInterface_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultSocketInterface_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;)Lcom/google/protobuf/g1;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->certificateProviderInstances_:Lcom/google/protobuf/g1;

    return-object p0
.end method

.method static synthetic access$5902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->certificateProviderInstances_:Lcom/google/protobuf/g1;

    return-object p1
.end method

.method static synthetic access$6000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$6002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$6102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushCase_:I

    return p1
.end method

.method static synthetic access$6200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;)Lcom/google/protobuf/g1;
    .locals 0

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->internalGetCertificateProviderInstances()Lcom/google/protobuf/g1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$6900()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method private internalGetCertificateProviderInstances()Lcom/google/protobuf/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->certificateProviderInstances_:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$d;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;->B0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public containsCertificateProviderInstances(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->internalGetCertificateProviderInstances()Lcom/google/protobuf/g1;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasNode()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasNode()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasNode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getNode()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getNode()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getNodeContextParamsList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getNodeContextParamsList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasStaticResources()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasStaticResources()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasStaticResources()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStaticResources()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStaticResources()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasDynamicResources()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasDynamicResources()Z

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 15
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasDynamicResources()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDynamicResources()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDynamicResources()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 18
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasClusterManager()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasClusterManager()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 19
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasClusterManager()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getClusterManager()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getClusterManager()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 22
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasHdsConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasHdsConfig()Z

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    .line 23
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasHdsConfig()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getHdsConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getHdsConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 26
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getFlagsPath()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getFlagsPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 28
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsSinksList()Ljava/util/List;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsSinksList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    .line 30
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasStatsConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasStatsConfig()Z

    move-result v2

    if-eq v1, v2, :cond_f

    return v3

    .line 31
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasStatsConfig()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 32
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    .line 34
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasStatsFlushInterval()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasStatsFlushInterval()Z

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    .line 35
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasStatsFlushInterval()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 36
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsFlushInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsFlushInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    .line 38
    :cond_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasWatchdog()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasWatchdog()Z

    move-result v2

    if-eq v1, v2, :cond_13

    return v3

    .line 39
    :cond_13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasWatchdog()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 40
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getWatchdog()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getWatchdog()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v3

    .line 42
    :cond_14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasWatchdogs()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasWatchdogs()Z

    move-result v2

    if-eq v1, v2, :cond_15

    return v3

    .line 43
    :cond_15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasWatchdogs()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 44
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getWatchdogs()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getWatchdogs()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v3

    .line 46
    :cond_16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasTracing()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasTracing()Z

    move-result v2

    if-eq v1, v2, :cond_17

    return v3

    .line 47
    :cond_17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasTracing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 48
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v3

    .line 50
    :cond_18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasLayeredRuntime()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasLayeredRuntime()Z

    move-result v2

    if-eq v1, v2, :cond_19

    return v3

    .line 51
    :cond_19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasLayeredRuntime()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 52
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getLayeredRuntime()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getLayeredRuntime()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v3

    .line 54
    :cond_1a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasAdmin()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasAdmin()Z

    move-result v2

    if-eq v1, v2, :cond_1b

    return v3

    .line 55
    :cond_1b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasAdmin()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 56
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getAdmin()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getAdmin()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v3

    .line 58
    :cond_1c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasOverloadManager()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasOverloadManager()Z

    move-result v2

    if-eq v1, v2, :cond_1d

    return v3

    .line 59
    :cond_1d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasOverloadManager()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 60
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getOverloadManager()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getOverloadManager()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v3

    .line 62
    :cond_1e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getEnableDispatcherStats()Z

    move-result v1

    .line 63
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getEnableDispatcherStats()Z

    move-result v2

    if-eq v1, v2, :cond_1f

    return v3

    .line 64
    :cond_1f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getHeaderPrefix()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getHeaderPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v3

    .line 66
    :cond_20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasStatsServerVersionOverride()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasStatsServerVersionOverride()Z

    move-result v2

    if-eq v1, v2, :cond_21

    return v3

    .line 67
    :cond_21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasStatsServerVersionOverride()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 68
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsServerVersionOverride()Lcom/google/protobuf/UInt64Value;

    move-result-object v1

    .line 69
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsServerVersionOverride()Lcom/google/protobuf/UInt64Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt64Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v3

    .line 70
    :cond_22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getUseTcpForDnsLookups()Z

    move-result v1

    .line 71
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getUseTcpForDnsLookups()Z

    move-result v2

    if-eq v1, v2, :cond_23

    return v3

    .line 72
    :cond_23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasDnsResolutionConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasDnsResolutionConfig()Z

    move-result v2

    if-eq v1, v2, :cond_24

    return v3

    .line 73
    :cond_24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasDnsResolutionConfig()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 74
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDnsResolutionConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    move-result-object v1

    .line 75
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDnsResolutionConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v3

    .line 76
    :cond_25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasTypedDnsResolverConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasTypedDnsResolverConfig()Z

    move-result v2

    if-eq v1, v2, :cond_26

    return v3

    .line 77
    :cond_26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasTypedDnsResolverConfig()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 78
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getTypedDnsResolverConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getTypedDnsResolverConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    return v3

    .line 80
    :cond_27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getBootstrapExtensionsList()Ljava/util/List;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getBootstrapExtensionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v3

    .line 82
    :cond_28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getFatalActionsList()Ljava/util/List;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getFatalActionsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v3

    .line 84
    :cond_29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getConfigSourcesList()Ljava/util/List;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getConfigSourcesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v3

    .line 86
    :cond_2a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasDefaultConfigSource()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasDefaultConfigSource()Z

    move-result v2

    if-eq v1, v2, :cond_2b

    return v3

    .line 87
    :cond_2b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasDefaultConfigSource()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 88
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDefaultConfigSource()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDefaultConfigSource()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v3

    .line 90
    :cond_2c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDefaultSocketInterface()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDefaultSocketInterface()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v3

    .line 92
    :cond_2d
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->internalGetCertificateProviderInstances()Lcom/google/protobuf/g1;

    move-result-object v1

    .line 93
    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->internalGetCertificateProviderInstances()Lcom/google/protobuf/g1;

    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Lcom/google/protobuf/g1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v3

    .line 95
    :cond_2e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getInlineHeadersList()Ljava/util/List;

    move-result-object v1

    .line 96
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getInlineHeadersList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    return v3

    .line 97
    :cond_2f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsFlushCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StatsFlushCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsFlushCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StatsFlushCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v3

    .line 98
    :cond_30
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushCase_:I

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_31

    goto :goto_0

    .line 99
    :cond_31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsFlushOnAdmin()Z

    move-result v1

    .line 100
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsFlushOnAdmin()Z

    move-result v2

    if-eq v1, v2, :cond_32

    return v3

    .line 101
    :cond_32
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    return v3

    :cond_33
    return v0
.end method

.method public getAdmin()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->admin_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAdminOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getAdmin()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    move-result-object v0

    return-object v0
.end method

.method public getBootstrapExtensions(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    return-object p1
.end method

.method public getBootstrapExtensionsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBootstrapExtensionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    return-object v0
.end method

.method public getBootstrapExtensionsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/i1;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/i1;

    return-object p1
.end method

.method public getBootstrapExtensionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/i1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    return-object v0
.end method

.method public getCertificateProviderInstances()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getCertificateProviderInstancesMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateProviderInstancesCount()I
    .locals 1

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->internalGetCertificateProviderInstances()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCertificateProviderInstancesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->internalGetCertificateProviderInstances()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCertificateProviderInstancesOrDefault(Ljava/lang/String;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;
    .locals 2

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->internalGetCertificateProviderInstances()Lcom/google/protobuf/g1;

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

    check-cast p2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    :cond_0
    return-object p2
.end method

.method public getCertificateProviderInstancesOrThrow(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;
    .locals 2

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->internalGetCertificateProviderInstances()Lcom/google/protobuf/g1;

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

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getClusterManager()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->clusterManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getClusterManagerOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/d;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getClusterManager()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    move-result-object v0

    return-object v0
.end method

.method public getConfigSources(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    return-object p1
.end method

.method public getConfigSourcesCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getConfigSourcesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    return-object v0
.end method

.method public getConfigSourcesOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/k;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/k;

    return-object p1
.end method

.method public getConfigSourcesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultConfigSource()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultConfigSource_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDefaultConfigSourceOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/k;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDefaultConfigSource()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    return-object v0
.end method

.method public getDefaultSocketInterface()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultSocketInterface_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultSocketInterface_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDefaultSocketInterfaceBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultSocketInterface_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultSocketInterface_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDnsResolutionConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->dnsResolutionConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDnsResolutionConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/o;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDnsResolutionConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicResources()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->dynamicResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDynamicResourcesOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$e;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDynamicResources()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    move-result-object v0

    return-object v0
.end method

.method public getEnableDispatcherStats()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->enableDispatcherStats_:Z

    return v0
.end method

.method public getFatalActions(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/FatalAction;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/FatalAction;

    return-object p1
.end method

.method public getFatalActionsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFatalActionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/FatalAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    return-object v0
.end method

.method public getFatalActionsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/f;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/f;

    return-object p1
.end method

.method public getFatalActionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    return-object v0
.end method

.method public getFlagsPath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->flagsPath_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->flagsPath_:Ljava/lang/Object;

    return-object v0
.end method

.method public getFlagsPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->flagsPath_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->flagsPath_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHdsConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hdsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHdsConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/d;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getHdsConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderPrefix()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->headerPrefix_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->headerPrefix_:Ljava/lang/Object;

    return-object v0
.end method

.method public getHeaderPrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->headerPrefix_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->headerPrefix_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getInlineHeaders(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/CustomInlineHeader;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/CustomInlineHeader;

    return-object p1
.end method

.method public getInlineHeadersCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInlineHeadersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/CustomInlineHeader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    return-object v0
.end method

.method public getInlineHeadersOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/e;

    return-object p1
.end method

.method public getInlineHeadersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    return-object v0
.end method

.method public getLayeredRuntime()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->layeredRuntime_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLayeredRuntimeOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/g;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getLayeredRuntime()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->node_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNodeContextParams(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getNodeContextParamsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getNodeContextParamsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNodeContextParamsList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getNodeContextParamsList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getNodeContextParamsList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getNodeOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/l0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getNode()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    move-result-object v0

    return-object v0
.end method

.method public getOverloadManager()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->overloadManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOverloadManagerOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/c;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getOverloadManager()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->node_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getNode()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->staticResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStaticResources()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6
    :cond_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->dynamicResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDynamicResources()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8
    :cond_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->clusterManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getClusterManager()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 10
    :cond_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->flagsPath_:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x5

    .line 11
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->flagsPath_:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    const/4 v2, 0x0

    .line 12
    :goto_1
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    const/4 v4, 0x6

    .line 13
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    .line 14
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15
    :cond_6
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushInterval_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsFlushInterval()Lcom/google/protobuf/Duration;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 17
    :cond_7
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->watchdog_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    if-eqz v2, :cond_8

    const/16 v2, 0x8

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getWatchdog()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 19
    :cond_8
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    if-eqz v2, :cond_9

    const/16 v2, 0x9

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21
    :cond_9
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->admin_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    if-eqz v2, :cond_a

    const/16 v2, 0xc

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getAdmin()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 23
    :cond_a
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    if-eqz v2, :cond_b

    const/16 v2, 0xd

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25
    :cond_b
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hdsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    if-eqz v2, :cond_c

    const/16 v2, 0xe

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getHdsConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 27
    :cond_c
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->overloadManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    if-eqz v2, :cond_d

    const/16 v2, 0xf

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getOverloadManager()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 29
    :cond_d
    iget-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->enableDispatcherStats_:Z

    if-eqz v2, :cond_e

    const/16 v4, 0x10

    .line 30
    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 31
    :cond_e
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->layeredRuntime_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    if-eqz v2, :cond_f

    const/16 v2, 0x11

    .line 32
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getLayeredRuntime()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 33
    :cond_f
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->headerPrefix_:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const/16 v2, 0x12

    .line 34
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->headerPrefix_:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 35
    :cond_10
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsServerVersionOverride_:Lcom/google/protobuf/UInt64Value;

    if-eqz v2, :cond_11

    const/16 v2, 0x13

    .line 36
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsServerVersionOverride()Lcom/google/protobuf/UInt64Value;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 37
    :cond_11
    iget-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->useTcpForDnsLookups_:Z

    if-eqz v2, :cond_12

    const/16 v4, 0x14

    .line 38
    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_12
    const/4 v2, 0x0

    .line 39
    :goto_2
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_13

    const/16 v4, 0x15

    .line 40
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    .line 41
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_13
    const/4 v2, 0x0

    .line 42
    :goto_3
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_14

    const/16 v4, 0x16

    .line 43
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    .line 44
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 45
    :cond_14
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultConfigSource_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    if-eqz v2, :cond_15

    const/16 v2, 0x17

    .line 46
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDefaultConfigSource()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47
    :cond_15
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultSocketInterface_:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const/16 v2, 0x18

    .line 48
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultSocketInterface_:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 49
    :cond_16
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->internalGetCertificateProviderInstances()Lcom/google/protobuf/g1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 50
    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$d;->a:Lcom/google/protobuf/e1;

    invoke-virtual {v5}, Lcom/google/protobuf/e1;->j()Lcom/google/protobuf/e1$b;

    move-result-object v5

    .line 51
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/protobuf/e1$b;->N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v5

    .line 52
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    invoke-virtual {v5, v4}, Lcom/google/protobuf/e1$b;->P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v4

    .line 53
    invoke-virtual {v4}, Lcom/google/protobuf/e1$b;->C()Lcom/google/protobuf/e1;

    move-result-object v4

    const/16 v5, 0x19

    .line 54
    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_4

    :cond_17
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 55
    :goto_5
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_18

    .line 56
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v2}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_18
    add-int/2addr v0, v4

    .line 57
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getNodeContextParamsList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 58
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->watchdogs_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    if-eqz v2, :cond_19

    const/16 v2, 0x1b

    .line 59
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getWatchdogs()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_19
    const/4 v2, 0x0

    .line 60
    :goto_6
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1a

    const/16 v3, 0x1c

    .line 61
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    .line 62
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 63
    :cond_1a
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushCase_:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_1b

    .line 64
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlush_:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    .line 65
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 66
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 67
    :cond_1b
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->dnsResolutionConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    if-eqz v2, :cond_1c

    const/16 v2, 0x1e

    .line 68
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDnsResolutionConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 69
    :cond_1c
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->typedDnsResolverConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v2, :cond_1d

    const/16 v2, 0x1f

    .line 70
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getTypedDnsResolverConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 71
    :cond_1d
    :goto_7
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    const/16 v2, 0x20

    .line 72
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    .line 73
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 74
    :cond_1e
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getStaticResources()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->staticResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStaticResourcesOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStaticResources()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    move-result-object v0

    return-object v0
.end method

.method public getStatsConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStatsConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getStatsFlushCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StatsFlushCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StatsFlushCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StatsFlushCase;

    move-result-object v0

    return-object v0
.end method

.method public getStatsFlushInterval()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushInterval_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStatsFlushIntervalOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsFlushInterval()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getStatsFlushOnAdmin()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushCase_:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlush_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStatsServerVersionOverride()Lcom/google/protobuf/UInt64Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsServerVersionOverride_:Lcom/google/protobuf/UInt64Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt64Value;->getDefaultInstance()Lcom/google/protobuf/UInt64Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStatsServerVersionOverrideOrBuilder()Lcom/google/protobuf/f3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsServerVersionOverride()Lcom/google/protobuf/UInt64Value;

    move-result-object v0

    return-object v0
.end method

.method public getStatsSinks(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsSink;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsSink;

    return-object p1
.end method

.method public getStatsSinksCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getStatsSinksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsSink;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    return-object v0
.end method

.method public getStatsSinksOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/e;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/e;

    return-object p1
.end method

.method public getStatsSinksOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    return-object v0
.end method

.method public getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTracingOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/g;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    move-result-object v0

    return-object v0
.end method

.method public getTypedDnsResolverConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->typedDnsResolverConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTypedDnsResolverConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/i1;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getTypedDnsResolverConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getUseTcpForDnsLookups()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->useTcpForDnsLookups_:Z

    return v0
.end method

.method public getWatchdog()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->watchdog_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWatchdogOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/i;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getWatchdog()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    move-result-object v0

    return-object v0
.end method

.method public getWatchdogs()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->watchdogs_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWatchdogsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/j;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getWatchdogs()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    move-result-object v0

    return-object v0
.end method

.method public hasAdmin()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->admin_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasClusterManager()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->clusterManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDefaultConfigSource()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultConfigSource_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDnsResolutionConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->dnsResolutionConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDynamicResources()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->dynamicResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHdsConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hdsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLayeredRuntime()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->layeredRuntime_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNode()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->node_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOverloadManager()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->overloadManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStaticResources()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->staticResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatsConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatsFlushInterval()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushInterval_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatsFlushOnAdmin()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushCase_:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStatsServerVersionOverride()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsServerVersionOverride_:Lcom/google/protobuf/UInt64Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTracing()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTypedDnsResolverConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->typedDnsResolverConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWatchdog()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->watchdog_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWatchdogs()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->watchdogs_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasNode()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getNode()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getNodeContextParamsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1a

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getNodeContextParamsList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasStaticResources()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStaticResources()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasDynamicResources()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDynamicResources()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasClusterManager()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getClusterManager()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasHdsConfig()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getHdsConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getFlagsPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsSinksCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsSinksList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasStatsConfig()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasStatsFlushInterval()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsFlushInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasWatchdog()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getWatchdog()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasWatchdogs()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1b

    mul-int/lit8 v0, v0, 0x35

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getWatchdogs()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasTracing()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasLayeredRuntime()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getLayeredRuntime()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasAdmin()Z

    move-result v1

    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getAdmin()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasOverloadManager()Z

    move-result v1

    if-eqz v1, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getOverloadManager()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getEnableDispatcherStats()Z

    move-result v1

    .line 35
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 36
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getHeaderPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasStatsServerVersionOverride()Z

    move-result v1

    if-eqz v1, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsServerVersionOverride()Lcom/google/protobuf/UInt64Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt64Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 39
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getUseTcpForDnsLookups()Z

    move-result v1

    .line 40
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasDnsResolutionConfig()Z

    move-result v1

    if-eqz v1, :cond_11

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x35

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDnsResolutionConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasTypedDnsResolverConfig()Z

    move-result v1

    if-eqz v1, :cond_12

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x35

    .line 44
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getTypedDnsResolverConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    :cond_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getBootstrapExtensionsCount()I

    move-result v1

    if-lez v1, :cond_13

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    .line 46
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getBootstrapExtensionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 47
    :cond_13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getFatalActionsCount()I

    move-result v1

    if-lez v1, :cond_14

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1c

    mul-int/lit8 v0, v0, 0x35

    .line 48
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getFatalActionsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getConfigSourcesCount()I

    move-result v1

    if-lez v1, :cond_15

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x35

    .line 50
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getConfigSourcesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hasDefaultConfigSource()Z

    move-result v1

    if-eqz v1, :cond_16

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    .line 52
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDefaultConfigSource()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x35

    .line 53
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDefaultSocketInterface()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->internalGetCertificateProviderInstances()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x19

    mul-int/lit8 v0, v0, 0x35

    .line 55
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->internalGetCertificateProviderInstances()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 56
    :cond_17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getInlineHeadersCount()I

    move-result v1

    if-lez v1, :cond_18

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x20

    mul-int/lit8 v0, v0, 0x35

    .line 57
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getInlineHeadersList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    :cond_18
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushCase_:I

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_19

    goto :goto_0

    :cond_19
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 59
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsFlushOnAdmin()Z

    move-result v1

    .line 60
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1d

    .line 61
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/c;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetMapField(I)Lcom/google/protobuf/g1;
    .locals 3

    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->internalGetCertificateProviderInstances()Lcom/google/protobuf/g1;

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
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;->B0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$c;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->node_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getNode()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Node;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->staticResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStaticResources()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$StaticResources;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->dynamicResources_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDynamicResources()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$DynamicResources;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->clusterManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getClusterManager()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/ClusterManager;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->flagsPath_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->flagsPath_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 12
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsSinks_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushInterval_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsFlushInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->watchdog_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getWatchdog()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdog;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->tracing_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getTracing()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/trace/v3/Tracing;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->admin_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    if-eqz v1, :cond_9

    const/16 v1, 0xc

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getAdmin()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Admin;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 21
    :cond_9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    if-eqz v1, :cond_a

    const/16 v1, 0xd

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/metrics/v3/StatsConfig;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 23
    :cond_a
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->hdsConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    if-eqz v1, :cond_b

    const/16 v1, 0xe

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getHdsConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ApiConfigSource;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 25
    :cond_b
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->overloadManager_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    if-eqz v1, :cond_c

    const/16 v1, 0xf

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getOverloadManager()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/overload/v3/OverloadManager;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 27
    :cond_c
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->enableDispatcherStats_:Z

    if-eqz v1, :cond_d

    const/16 v2, 0x10

    .line 28
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 29
    :cond_d
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->layeredRuntime_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    if-eqz v1, :cond_e

    const/16 v1, 0x11

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getLayeredRuntime()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/LayeredRuntime;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 31
    :cond_e
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->headerPrefix_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0x12

    .line 32
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->headerPrefix_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 33
    :cond_f
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsServerVersionOverride_:Lcom/google/protobuf/UInt64Value;

    if-eqz v1, :cond_10

    const/16 v1, 0x13

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getStatsServerVersionOverride()Lcom/google/protobuf/UInt64Value;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 35
    :cond_10
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->useTcpForDnsLookups_:Z

    if-eqz v1, :cond_11

    const/16 v2, 0x14

    .line 36
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    :cond_11
    const/4 v1, 0x0

    .line 37
    :goto_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    const/16 v2, 0x15

    .line 38
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->bootstrapExtensions_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_12
    const/4 v1, 0x0

    .line 39
    :goto_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_13

    const/16 v2, 0x16

    .line 40
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->configSources_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 41
    :cond_13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultConfigSource_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    if-eqz v1, :cond_14

    const/16 v1, 0x17

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDefaultConfigSource()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/ConfigSource;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 43
    :cond_14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultSocketInterface_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const/16 v1, 0x18

    .line 44
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->defaultSocketInterface_:Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 45
    :cond_15
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->internalGetCertificateProviderInstances()Lcom/google/protobuf/g1;

    move-result-object v1

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap$d;->a:Lcom/google/protobuf/e1;

    const/16 v3, 0x19

    .line 46
    invoke-static {p1, v1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/g1;Lcom/google/protobuf/e1;I)V

    const/4 v1, 0x0

    .line 47
    :goto_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    const/16 v2, 0x1a

    .line 48
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->nodeContextParams_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 49
    :cond_16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->watchdogs_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    if-eqz v1, :cond_17

    const/16 v1, 0x1b

    .line 50
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getWatchdogs()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Watchdogs;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_17
    const/4 v1, 0x0

    .line 51
    :goto_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    const/16 v2, 0x1c

    .line 52
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->fatalActions_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 53
    :cond_18
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlushCase_:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_19

    .line 54
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->statsFlush_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 55
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 56
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 57
    :cond_19
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->dnsResolutionConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    if-eqz v1, :cond_1a

    const/16 v1, 0x1e

    .line 58
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getDnsResolutionConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/DnsResolutionConfig;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 59
    :cond_1a
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->typedDnsResolverConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    if-eqz v1, :cond_1b

    const/16 v1, 0x1f

    .line 60
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->getTypedDnsResolverConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/TypedExtensionConfig;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 61
    :cond_1b
    :goto_5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    const/16 v1, 0x20

    .line 62
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/Bootstrap;->inlineHeaders_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 63
    :cond_1c
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
