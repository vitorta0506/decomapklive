.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HostRewriteSpecifierCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$e;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$UpgradeConfig;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$g;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$RequestMirrorPolicy;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$f;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$InternalRedirectAction;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterNotFoundResponseCode;
    }
.end annotation


# static fields
.field public static final AUTO_HOST_REWRITE_FIELD_NUMBER:I = 0x7

.field public static final CLUSTER_FIELD_NUMBER:I = 0x1

.field public static final CLUSTER_HEADER_FIELD_NUMBER:I = 0x2

.field public static final CLUSTER_NOT_FOUND_RESPONSE_CODE_FIELD_NUMBER:I = 0x14

.field public static final CLUSTER_SPECIFIER_PLUGIN_FIELD_NUMBER:I = 0x25

.field public static final CORS_FIELD_NUMBER:I = 0x11

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

.field public static final GRPC_TIMEOUT_OFFSET_FIELD_NUMBER:I = 0x1c

.field public static final HASH_POLICY_FIELD_NUMBER:I = 0xf

.field public static final HEDGE_POLICY_FIELD_NUMBER:I = 0x1b

.field public static final HOST_REWRITE_HEADER_FIELD_NUMBER:I = 0x1d

.field public static final HOST_REWRITE_LITERAL_FIELD_NUMBER:I = 0x6

.field public static final HOST_REWRITE_PATH_REGEX_FIELD_NUMBER:I = 0x23

.field public static final IDLE_TIMEOUT_FIELD_NUMBER:I = 0x18

.field public static final INCLUDE_VH_RATE_LIMITS_FIELD_NUMBER:I = 0xe

.field public static final INTERNAL_REDIRECT_ACTION_FIELD_NUMBER:I = 0x1a

.field public static final INTERNAL_REDIRECT_POLICY_FIELD_NUMBER:I = 0x22

.field public static final MAX_GRPC_TIMEOUT_FIELD_NUMBER:I = 0x17

.field public static final MAX_INTERNAL_REDIRECTS_FIELD_NUMBER:I = 0x1f

.field public static final MAX_STREAM_DURATION_FIELD_NUMBER:I = 0x24

.field public static final METADATA_MATCH_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREFIX_REWRITE_FIELD_NUMBER:I = 0x5

.field public static final PRIORITY_FIELD_NUMBER:I = 0xb

.field public static final RATE_LIMITS_FIELD_NUMBER:I = 0xd

.field public static final REGEX_REWRITE_FIELD_NUMBER:I = 0x20

.field public static final REQUEST_MIRROR_POLICIES_FIELD_NUMBER:I = 0x1e

.field public static final RETRY_POLICY_FIELD_NUMBER:I = 0x9

.field public static final RETRY_POLICY_TYPED_CONFIG_FIELD_NUMBER:I = 0x21

.field public static final TIMEOUT_FIELD_NUMBER:I = 0x8

.field public static final UPGRADE_CONFIGS_FIELD_NUMBER:I = 0x19

.field public static final WEIGHTED_CLUSTERS_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private clusterNotFoundResponseCode_:I

.field private clusterSpecifierCase_:I

.field private clusterSpecifier_:Ljava/lang/Object;

.field private cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

.field private grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

.field private hashPolicy_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

.field private hostRewriteSpecifierCase_:I

.field private hostRewriteSpecifier_:Ljava/lang/Object;

.field private idleTimeout_:Lcom/google/protobuf/Duration;

.field private includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

.field private internalRedirectAction_:I

.field private internalRedirectPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

.field private maxGrpcTimeout_:Lcom/google/protobuf/Duration;

.field private maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

.field private maxStreamDuration_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

.field private memoizedIsInitialized:B

.field private metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

.field private volatile prefixRewrite_:Ljava/lang/Object;

.field private priority_:I

.field private rateLimits_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit;",
            ">;"
        }
    .end annotation
.end field

.field private regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

.field private requestMirrorPolicies_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$RequestMirrorPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

.field private retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

.field private timeout_:Lcom/google/protobuf/Duration;

.field private upgradeConfigs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$UpgradeConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    .line 9
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, -0x1

    .line 10
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->memoizedIsInitialized:B

    .line 11
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterNotFoundResponseCode_:I

    const-string v1, ""

    .line 12
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    .line 14
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->priority_:I

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    .line 18
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectAction_:I

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    .line 5
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 p1, -0x1

    .line 6
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;-><init>()V

    .line 20
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_1d

    .line 22
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    const/4 v5, 0x0

    sparse-switch v4, :sswitch_data_0

    .line 23
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    goto/16 :goto_2

    .line 24
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x25

    .line 25
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    .line 26
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    goto :goto_0

    .line 27
    :sswitch_1
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxStreamDuration_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    if-eqz v4, :cond_1

    .line 28
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration$b;

    move-result-object v5

    .line 29
    :cond_1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxStreamDuration_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    if-eqz v5, :cond_0

    .line 30
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration$b;

    .line 31
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxStreamDuration_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    goto :goto_0

    .line 32
    :sswitch_2
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/16 v6, 0x23

    if-ne v4, v6, :cond_2

    .line 33
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute$b;

    move-result-object v5

    .line 34
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 35
    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute$b;

    .line 36
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    .line 37
    :cond_3
    iput v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    goto :goto_0

    .line 38
    :sswitch_3
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    if-eqz v4, :cond_4

    .line 39
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy$b;

    move-result-object v5

    .line 40
    :cond_4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    if-eqz v5, :cond_0

    .line 41
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy$b;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy$b;

    .line 42
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    goto/16 :goto_0

    .line 43
    :sswitch_4
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    if-eqz v4, :cond_5

    .line 44
    invoke-virtual {v4}, Lcom/google/protobuf/Any;->toBuilder()Lcom/google/protobuf/Any$b;

    move-result-object v5

    .line 45
    :cond_5
    invoke-static {}, Lcom/google/protobuf/Any;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Any;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    if-eqz v5, :cond_0

    .line 46
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Any$b;->d0(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any$b;

    .line 47
    invoke-virtual {v5}, Lcom/google/protobuf/Any$b;->Y()Lcom/google/protobuf/Any;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    goto/16 :goto_0

    .line 48
    :sswitch_5
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    if-eqz v4, :cond_6

    .line 49
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute$b;

    move-result-object v5

    .line 50
    :cond_6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    if-eqz v5, :cond_0

    .line 51
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute$b;

    .line 52
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    goto/16 :goto_0

    .line 53
    :sswitch_6
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_7

    .line 54
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v5

    .line 55
    :cond_7
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/UInt32Value;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

    if-eqz v5, :cond_0

    .line 56
    invoke-virtual {v5, v4}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 57
    invoke-virtual {v5}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    :sswitch_7
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_8

    .line 58
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 59
    :cond_8
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    .line 60
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$RequestMirrorPolicy;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$RequestMirrorPolicy;

    .line 61
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 62
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1d

    .line 63
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    .line 64
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 65
    :sswitch_9
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_9

    .line 66
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v5

    .line 67
    :cond_9
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_0

    .line 68
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 69
    invoke-virtual {v5}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 70
    :sswitch_a
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    if-eqz v4, :cond_a

    .line 71
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy$b;

    move-result-object v5

    .line 72
    :cond_a
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    if-eqz v5, :cond_0

    .line 73
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy$b;

    .line 74
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    goto/16 :goto_0

    .line 75
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 76
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectAction_:I

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_b

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 78
    :cond_b
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    .line 79
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$UpgradeConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$UpgradeConfig;

    .line 80
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 81
    :sswitch_d
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_c

    .line 82
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v5

    .line 83
    :cond_c
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_0

    .line 84
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 85
    invoke-virtual {v5}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->idleTimeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 86
    :sswitch_e
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxGrpcTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_d

    .line 87
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v5

    .line 88
    :cond_d
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxGrpcTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_0

    .line 89
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 90
    invoke-virtual {v5}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxGrpcTimeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 91
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 92
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterNotFoundResponseCode_:I

    goto/16 :goto_0

    .line 93
    :sswitch_10
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    if-eqz v4, :cond_e

    .line 94
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    move-result-object v5

    .line 95
    :cond_e
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    if-eqz v5, :cond_0

    .line 96
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;

    .line 97
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    goto/16 :goto_0

    :sswitch_11
    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_f

    .line 98
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 99
    :cond_f
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    .line 100
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    .line 101
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 102
    :sswitch_12
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

    if-eqz v4, :cond_10

    .line 103
    invoke-virtual {v4}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v5

    .line 104
    :cond_10
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/BoolValue;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

    if-eqz v5, :cond_0

    .line 105
    invoke-virtual {v5, v4}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 106
    invoke-virtual {v5}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

    goto/16 :goto_0

    :sswitch_13
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_11

    .line 107
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 108
    :cond_11
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    .line 109
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit;

    .line 110
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 111
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 112
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->priority_:I

    goto/16 :goto_0

    .line 113
    :sswitch_15
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    if-eqz v4, :cond_12

    .line 114
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;

    move-result-object v5

    .line 115
    :cond_12
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    if-eqz v5, :cond_0

    .line 116
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;

    .line 117
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    goto/16 :goto_0

    .line 118
    :sswitch_16
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->timeout_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_13

    .line 119
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v5

    .line 120
    :cond_13
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->timeout_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_0

    .line 121
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 122
    invoke-virtual {v5}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->timeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 123
    :sswitch_17
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v6, 0x7

    if-ne v4, v6, :cond_14

    .line 124
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    check-cast v4, Lcom/google/protobuf/BoolValue;

    invoke-virtual {v4}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v5

    .line 125
    :cond_14
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_15

    .line 126
    check-cast v4, Lcom/google/protobuf/BoolValue;

    invoke-virtual {v5, v4}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 127
    invoke-virtual {v5}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    .line 128
    :cond_15
    iput v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    goto/16 :goto_0

    .line 129
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    .line 130
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    .line 131
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 132
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 133
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 134
    :sswitch_1a
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    if-eqz v4, :cond_16

    .line 135
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata$b;

    move-result-object v5

    .line 136
    :cond_16
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    if-eqz v5, :cond_0

    .line 137
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata$b;

    .line 138
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    goto/16 :goto_0

    .line 139
    :sswitch_1b
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_17

    .line 140
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$c;

    move-result-object v5

    .line 141
    :cond_17
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_18

    .line 142
    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;

    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$c;

    .line 143
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    .line 144
    :cond_18
    iput v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    goto/16 :goto_0

    .line 145
    :sswitch_1c
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 146
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    .line 147
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 148
    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 149
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    .line 150
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;
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
    if-nez v4, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 151
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 152
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 153
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_19

    .line 154
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    :cond_19
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_1a

    .line 155
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    :cond_1a
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_1b

    .line 156
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    :cond_1b
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_1c

    .line 157
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    .line 158
    :cond_1c
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 159
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_1d
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_1e

    .line 160
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    :cond_1e
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_1f

    .line 161
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    :cond_1f
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_20

    .line 162
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    :cond_20
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_21

    .line 163
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    .line 164
    :cond_21
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 165
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
        0x58 -> :sswitch_14
        0x6a -> :sswitch_13
        0x72 -> :sswitch_12
        0x7a -> :sswitch_11
        0x8a -> :sswitch_10
        0xa0 -> :sswitch_f
        0xba -> :sswitch_e
        0xc2 -> :sswitch_d
        0xca -> :sswitch_c
        0xd0 -> :sswitch_b
        0xda -> :sswitch_a
        0xe2 -> :sswitch_9
        0xea -> :sswitch_8
        0xf2 -> :sswitch_7
        0xfa -> :sswitch_6
        0x102 -> :sswitch_5
        0x10a -> :sswitch_4
        0x112 -> :sswitch_3
        0x11a -> :sswitch_2
        0x122 -> :sswitch_1
        0x12a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$10100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$10302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterNotFoundResponseCode_:I

    return p0
.end method

.method static synthetic access$10402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterNotFoundResponseCode_:I

    return p1
.end method

.method static synthetic access$10502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    return-object p1
.end method

.method static synthetic access$10600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$10602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    return-object p1
.end method

.method static synthetic access$10800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$10802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->timeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$11002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->idleTimeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$11102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    return-object p1
.end method

.method static synthetic access$11202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    return-object p1
.end method

.method static synthetic access$11300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$11302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->priority_:I

    return p0
.end method

.method static synthetic access$11402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->priority_:I

    return p1
.end method

.method static synthetic access$11500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$11502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$11700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$11702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    return-object p1
.end method

.method static synthetic access$11902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxGrpcTimeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$12002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$12100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$12102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$12202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    return-object p1
.end method

.method static synthetic access$12300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectAction_:I

    return p0
.end method

.method static synthetic access$12302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectAction_:I

    return p1
.end method

.method static synthetic access$12402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$12502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    return-object p1
.end method

.method static synthetic access$12602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxStreamDuration_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    return-object p1
.end method

.method static synthetic access$12702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    return p1
.end method

.method static synthetic access$12802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    return p1
.end method

.method static synthetic access$12900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$13400()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$13500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->A:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;->r0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterNotFoundResponseCode_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterNotFoundResponseCode_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMetadataMatch()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMetadataMatch()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 6
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMetadataMatch()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getPrefixRewrite()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getPrefixRewrite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasRegexRewrite()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasRegexRewrite()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 12
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasRegexRewrite()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 15
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasTimeout()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 16
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasTimeout()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 19
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasIdleTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasIdleTimeout()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 20
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasIdleTimeout()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 23
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasRetryPolicy()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasRetryPolicy()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 24
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasRetryPolicy()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 27
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasRetryPolicyTypedConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasRetryPolicyTypedConfig()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 28
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasRetryPolicyTypedConfig()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Any;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 31
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRequestMirrorPoliciesList()Ljava/util/List;

    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRequestMirrorPoliciesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    .line 33
    :cond_10
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->priority_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->priority_:I

    if-eq v1, v2, :cond_11

    return v3

    .line 34
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRateLimitsList()Ljava/util/List;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRateLimitsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    .line 36
    :cond_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasIncludeVhRateLimits()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasIncludeVhRateLimits()Z

    move-result v2

    if-eq v1, v2, :cond_13

    return v3

    .line 37
    :cond_13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasIncludeVhRateLimits()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getIncludeVhRateLimits()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getIncludeVhRateLimits()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v3

    .line 40
    :cond_14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHashPolicyList()Ljava/util/List;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHashPolicyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    .line 42
    :cond_15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasCors()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasCors()Z

    move-result v2

    if-eq v1, v2, :cond_16

    return v3

    .line 43
    :cond_16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasCors()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 44
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v3

    .line 46
    :cond_17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMaxGrpcTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMaxGrpcTimeout()Z

    move-result v2

    if-eq v1, v2, :cond_18

    return v3

    .line 47
    :cond_18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMaxGrpcTimeout()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 48
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxGrpcTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxGrpcTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v3

    .line 50
    :cond_19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasGrpcTimeoutOffset()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasGrpcTimeoutOffset()Z

    move-result v2

    if-eq v1, v2, :cond_1a

    return v3

    .line 51
    :cond_1a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasGrpcTimeoutOffset()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 52
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getGrpcTimeoutOffset()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getGrpcTimeoutOffset()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v3

    .line 54
    :cond_1b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getUpgradeConfigsList()Ljava/util/List;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getUpgradeConfigsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v3

    .line 56
    :cond_1c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasInternalRedirectPolicy()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasInternalRedirectPolicy()Z

    move-result v2

    if-eq v1, v2, :cond_1d

    return v3

    .line 57
    :cond_1d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasInternalRedirectPolicy()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 58
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getInternalRedirectPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getInternalRedirectPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v3

    .line 60
    :cond_1e
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectAction_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectAction_:I

    if-eq v1, v2, :cond_1f

    return v3

    .line 61
    :cond_1f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMaxInternalRedirects()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMaxInternalRedirects()Z

    move-result v2

    if-eq v1, v2, :cond_20

    return v3

    .line 62
    :cond_20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMaxInternalRedirects()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 63
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxInternalRedirects()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxInternalRedirects()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v3

    .line 65
    :cond_21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasHedgePolicy()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasHedgePolicy()Z

    move-result v2

    if-eq v1, v2, :cond_22

    return v3

    .line 66
    :cond_22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasHedgePolicy()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 67
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    move-result-object v1

    .line 68
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v3

    .line 69
    :cond_23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMaxStreamDuration()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMaxStreamDuration()Z

    move-result v2

    if-eq v1, v2, :cond_24

    return v3

    .line 70
    :cond_24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMaxStreamDuration()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 71
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxStreamDuration()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxStreamDuration()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v3

    .line 73
    :cond_25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getClusterSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getClusterSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v3

    .line 74
    :cond_26
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    if-eq v1, v0, :cond_2a

    const/4 v2, 0x2

    if-eq v1, v2, :cond_29

    const/4 v2, 0x3

    if-eq v1, v2, :cond_28

    const/16 v2, 0x25

    if-eq v1, v2, :cond_27

    goto :goto_0

    .line 75
    :cond_27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getClusterSpecifierPlugin()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getClusterSpecifierPlugin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v3

    .line 77
    :cond_28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getWeightedClusters()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;

    move-result-object v1

    .line 78
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getWeightedClusters()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v3

    .line 79
    :cond_29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getClusterHeader()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getClusterHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v3

    .line 81
    :cond_2a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getCluster()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getCluster()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v3

    .line 83
    :cond_2b
    :goto_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHostRewriteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HostRewriteSpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHostRewriteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HostRewriteSpecifierCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    return v3

    .line 84
    :cond_2c
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_30

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2f

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_2e

    const/16 v2, 0x23

    if-eq v1, v2, :cond_2d

    goto :goto_1

    .line 85
    :cond_2d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHostRewritePathRegex()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v1

    .line 86
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHostRewritePathRegex()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return v3

    .line 87
    :cond_2e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHostRewriteHeader()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHostRewriteHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return v3

    .line 89
    :cond_2f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getAutoHostRewrite()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getAutoHostRewrite()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return v3

    .line 91
    :cond_30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHostRewriteLiteral()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHostRewriteLiteral()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    return v3

    .line 93
    :cond_31
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    return v3

    :cond_32
    return v0
.end method

.method public getAutoHostRewrite()Lcom/google/protobuf/BoolValue;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/BoolValue;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getAutoHostRewriteOrBuilder()Lcom/google/protobuf/l;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/BoolValue;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getCluster()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getClusterBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getClusterHeader()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getClusterHeaderBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getClusterNotFoundResponseCode()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterNotFoundResponseCode;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterNotFoundResponseCode_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterNotFoundResponseCode;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterNotFoundResponseCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterNotFoundResponseCode;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterNotFoundResponseCode;

    :cond_0
    return-object v0
.end method

.method public getClusterNotFoundResponseCodeValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterNotFoundResponseCode_:I

    return v0
.end method

.method public getClusterSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;

    move-result-object v0

    return-object v0
.end method

.method public getClusterSpecifierPlugin()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getClusterSpecifierPluginBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCorsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/b;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    return-object v0
.end method

.method public getGrpcTimeoutOffset()Lcom/google/protobuf/Duration;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGrpcTimeoutOffsetOrBuilder()Lcom/google/protobuf/v;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getGrpcTimeoutOffset()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getHashPolicy(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;

    return-object p1
.end method

.method public getHashPolicyCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHashPolicyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    return-object v0
.end method

.method public getHashPolicyOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$d;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$d;

    return-object p1
.end method

.method public getHashPolicyOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    return-object v0
.end method

.method public getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHedgePolicyOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/g;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    move-result-object v0

    return-object v0
.end method

.method public getHostRewriteHeader()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getHostRewriteHeaderBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHostRewriteLiteral()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getHostRewriteLiteralBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHostRewritePathRegex()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v0

    return-object v0
.end method

.method public getHostRewritePathRegexOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/k;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v0

    return-object v0
.end method

.method public getHostRewriteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HostRewriteSpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HostRewriteSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HostRewriteSpecifierCase;

    move-result-object v0

    return-object v0
.end method

.method public getIdleTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIdleTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getIncludeVhRateLimits()Lcom/google/protobuf/BoolValue;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIncludeVhRateLimitsOrBuilder()Lcom/google/protobuf/l;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getIncludeVhRateLimits()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getInternalRedirectAction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$InternalRedirectAction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectAction_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$InternalRedirectAction;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$InternalRedirectAction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$InternalRedirectAction;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$InternalRedirectAction;

    :cond_0
    return-object v0
.end method

.method public getInternalRedirectActionValue()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectAction_:I

    return v0
.end method

.method public getInternalRedirectPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInternalRedirectPolicyOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/h;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getInternalRedirectPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getMaxGrpcTimeout()Lcom/google/protobuf/Duration;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxGrpcTimeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxGrpcTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxGrpcTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getMaxInternalRedirects()Lcom/google/protobuf/UInt32Value;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxInternalRedirectsOrBuilder()Lcom/google/protobuf/e3;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxInternalRedirects()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getMaxStreamDuration()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxStreamDuration_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxStreamDurationOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$e;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxStreamDuration()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMetadataMatchOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/k0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPrefixRewrite()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->prefixRewrite_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPrefixRewriteBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPriority()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->priority_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;

    :cond_0
    return-object v0
.end method

.method public getPriorityValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->priority_:I

    return v0
.end method

.method public getRateLimits(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit;

    return-object p1
.end method

.method public getRateLimitsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRateLimitsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RateLimit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    return-object v0
.end method

.method public getRateLimitsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/k;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/k;

    return-object p1
.end method

.method public getRateLimitsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    return-object v0
.end method

.method public getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRegexRewriteOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/k;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMirrorPolicies(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$RequestMirrorPolicy;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$RequestMirrorPolicy;

    return-object p1
.end method

.method public getRequestMirrorPoliciesCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestMirrorPoliciesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$RequestMirrorPolicy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestMirrorPoliciesOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$f;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$f;

    return-object p1
.end method

.method public getRequestMirrorPoliciesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    return-object v0
.end method

.method public getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRetryPolicyOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/m;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Any;->getDefaultInstance()Lcom/google/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRetryPolicyTypedConfigOrBuilder()Lcom/google/protobuf/f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0
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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 5
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6
    :cond_2
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 7
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;

    .line 8
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9
    :cond_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11
    :cond_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x5

    .line 12
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13
    :cond_5
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 14
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15
    :cond_6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 16
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/BoolValue;

    .line 17
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18
    :cond_7
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->timeout_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_8

    const/16 v2, 0x8

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 20
    :cond_8
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    if-eqz v2, :cond_9

    const/16 v2, 0x9

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22
    :cond_9
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->priority_:I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;->DEFAULT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_a

    const/16 v2, 0xb

    .line 23
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->priority_:I

    .line 24
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_a
    const/4 v2, 0x0

    .line 25
    :goto_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    const/16 v3, 0xd

    .line 26
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    .line 27
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 28
    :cond_b
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

    if-eqz v2, :cond_c

    const/16 v2, 0xe

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getIncludeVhRateLimits()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_c
    const/4 v2, 0x0

    .line 30
    :goto_2
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    const/16 v3, 0xf

    .line 31
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    .line 32
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 33
    :cond_d
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    if-eqz v2, :cond_e

    const/16 v2, 0x11

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 35
    :cond_e
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterNotFoundResponseCode_:I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterNotFoundResponseCode;->SERVICE_UNAVAILABLE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterNotFoundResponseCode;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterNotFoundResponseCode;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_f

    const/16 v2, 0x14

    .line 36
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterNotFoundResponseCode_:I

    .line 37
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 38
    :cond_f
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxGrpcTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_10

    const/16 v2, 0x17

    .line 39
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxGrpcTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 40
    :cond_10
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_11

    const/16 v2, 0x18

    .line 41
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_11
    const/4 v2, 0x0

    .line 42
    :goto_3
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_12

    const/16 v3, 0x19

    .line 43
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    .line 44
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 45
    :cond_12
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectAction_:I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$InternalRedirectAction;->PASS_THROUGH_INTERNAL_REDIRECT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$InternalRedirectAction;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$InternalRedirectAction;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_13

    const/16 v2, 0x1a

    .line 46
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectAction_:I

    .line 47
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 48
    :cond_13
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    if-eqz v2, :cond_14

    const/16 v2, 0x1b

    .line 49
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 50
    :cond_14
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_15

    const/16 v2, 0x1c

    .line 51
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getGrpcTimeoutOffset()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52
    :cond_15
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_16

    .line 53
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 54
    :cond_16
    :goto_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    const/16 v2, 0x1e

    .line 55
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    .line 56
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 57
    :cond_17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_18

    const/16 v1, 0x1f

    .line 58
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxInternalRedirects()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    if-eqz v1, :cond_19

    const/16 v1, 0x20

    .line 60
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_19
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    if-eqz v1, :cond_1a

    const/16 v1, 0x21

    .line 62
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_1a
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    if-eqz v1, :cond_1b

    const/16 v1, 0x22

    .line 64
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getInternalRedirectPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_1b
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/16 v2, 0x23

    if-ne v1, v2, :cond_1c

    .line 66
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    .line 67
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 68
    :cond_1c
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxStreamDuration_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    if-eqz v1, :cond_1d

    const/16 v1, 0x24

    .line 69
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxStreamDuration()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_1d
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/16 v2, 0x25

    if-ne v1, v2, :cond_1e

    .line 71
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 72
    :cond_1e
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->timeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getUpgradeConfigs(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$UpgradeConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$UpgradeConfig;

    return-object p1
.end method

.method public getUpgradeConfigsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUpgradeConfigsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$UpgradeConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    return-object v0
.end method

.method public getUpgradeConfigsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$g;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$g;

    return-object p1
.end method

.method public getUpgradeConfigsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    return-object v0
.end method

.method public getWeightedClusters()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;

    move-result-object v0

    return-object v0
.end method

.method public getWeightedClustersOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/z;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;

    move-result-object v0

    return-object v0
.end method

.method public hasAutoHostRewrite()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCluster()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasClusterHeader()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasClusterSpecifierPlugin()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCors()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGrpcTimeoutOffset()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHedgePolicy()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHostRewriteHeader()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHostRewriteLiteral()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHostRewritePathRegex()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIdleTimeout()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIncludeVhRateLimits()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInternalRedirectPolicy()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxGrpcTimeout()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxGrpcTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxInternalRedirects()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxStreamDuration()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxStreamDuration_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMetadataMatch()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRegexRewrite()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRetryPolicy()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRetryPolicyTypedConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimeout()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->timeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWeightedClusters()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x25

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 3
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterNotFoundResponseCode_:I

    add-int/2addr v0, v2

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMetadataMatch()Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getPrefixRewrite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasRegexRewrite()Z

    move-result v2

    if-eqz v2, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x20

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 9
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasTimeout()Z

    move-result v2

    if-eqz v2, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 11
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasIdleTimeout()Z

    move-result v2

    if-eqz v2, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 13
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasRetryPolicy()Z

    move-result v2

    if-eqz v2, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 15
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasRetryPolicyTypedConfig()Z

    move-result v2

    if-eqz v2, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x21

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Any;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 17
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRequestMirrorPoliciesCount()I

    move-result v2

    if-lez v2, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRequestMirrorPoliciesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 19
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->priority_:I

    add-int/2addr v0, v2

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRateLimitsCount()I

    move-result v2

    if-lez v2, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRateLimitsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 22
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasIncludeVhRateLimits()Z

    move-result v2

    if-eqz v2, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getIncludeVhRateLimits()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 24
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHashPolicyCount()I

    move-result v2

    if-lez v2, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHashPolicyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 26
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasCors()Z

    move-result v2

    if-eqz v2, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 28
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMaxGrpcTimeout()Z

    move-result v2

    if-eqz v2, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxGrpcTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 30
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasGrpcTimeoutOffset()Z

    move-result v2

    if-eqz v2, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1c

    mul-int/lit8 v0, v0, 0x35

    .line 31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getGrpcTimeoutOffset()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 32
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getUpgradeConfigsCount()I

    move-result v2

    if-lez v2, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x19

    mul-int/lit8 v0, v0, 0x35

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getUpgradeConfigsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 34
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasInternalRedirectPolicy()Z

    move-result v2

    if-eqz v2, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x22

    mul-int/lit8 v0, v0, 0x35

    .line 35
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getInternalRedirectPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_f
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1a

    mul-int/lit8 v0, v0, 0x35

    .line 36
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectAction_:I

    add-int/2addr v0, v2

    .line 37
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMaxInternalRedirects()Z

    move-result v2

    if-eqz v2, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x35

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxInternalRedirects()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 39
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasHedgePolicy()Z

    move-result v2

    if-eqz v2, :cond_11

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1b

    mul-int/lit8 v0, v0, 0x35

    .line 40
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 41
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hasMaxStreamDuration()Z

    move-result v2

    if-eqz v2, :cond_12

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x24

    mul-int/lit8 v0, v0, 0x35

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxStreamDuration()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 43
    :cond_12
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    const/4 v3, 0x2

    if-eq v2, v3, :cond_15

    const/4 v3, 0x3

    if-eq v2, v3, :cond_14

    if-eq v2, v1, :cond_13

    goto :goto_1

    :cond_13
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x35

    .line 44
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getClusterSpecifierPlugin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_14
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    .line 45
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getWeightedClusters()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_15
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    .line 46
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getClusterHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_16
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    .line 47
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getCluster()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 48
    :goto_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v2, 0x6

    const/16 v3, 0x1d

    if-eq v1, v2, :cond_1a

    const/4 v2, 0x7

    if-eq v1, v2, :cond_19

    if-eq v1, v3, :cond_18

    const/16 v2, 0x23

    if-eq v1, v2, :cond_17

    goto :goto_3

    :cond_17
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 49
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHostRewritePathRegex()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_18
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    .line 50
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHostRewriteHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_19
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 51
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getAutoHostRewrite()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_1a
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 52
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHostRewriteLiteral()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    :goto_3
    mul-int/lit8 v0, v0, 0x1d

    .line 53
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 54
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->B:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;->r0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$c;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 13
    :cond_5
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/BoolValue;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->timeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->priority_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;->DEFAULT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_9

    const/16 v0, 0xb

    .line 20
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->priority_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 21
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    const/16 v2, 0xd

    .line 22
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->rateLimits_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_a
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_b

    const/16 v1, 0xe

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getIncludeVhRateLimits()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_b
    const/4 v1, 0x0

    .line 25
    :goto_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    const/16 v2, 0xf

    .line 26
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hashPolicy_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 27
    :cond_c
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    if-eqz v1, :cond_d

    const/16 v1, 0x11

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 29
    :cond_d
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterNotFoundResponseCode_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterNotFoundResponseCode;->SERVICE_UNAVAILABLE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterNotFoundResponseCode;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterNotFoundResponseCode;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_e

    const/16 v1, 0x14

    .line 30
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterNotFoundResponseCode_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 31
    :cond_e
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxGrpcTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_f

    const/16 v1, 0x17

    .line 32
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxGrpcTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 33
    :cond_f
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_10

    const/16 v1, 0x18

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_10
    const/4 v1, 0x0

    .line 35
    :goto_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_11

    const/16 v2, 0x19

    .line 36
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 37
    :cond_11
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectAction_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$InternalRedirectAction;->PASS_THROUGH_INTERNAL_REDIRECT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$InternalRedirectAction;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$InternalRedirectAction;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_12

    const/16 v1, 0x1a

    .line 38
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectAction_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 39
    :cond_12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    if-eqz v1, :cond_13

    const/16 v1, 0x1b

    .line 40
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HedgePolicy;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 41
    :cond_13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_14

    const/16 v1, 0x1c

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getGrpcTimeoutOffset()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 43
    :cond_14
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_15

    .line 44
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 45
    :cond_15
    :goto_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    const/16 v1, 0x1e

    .line 46
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 47
    :cond_16
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_17

    const/16 v0, 0x1f

    .line 48
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxInternalRedirects()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 49
    :cond_17
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    if-eqz v0, :cond_18

    const/16 v0, 0x20

    .line 50
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 51
    :cond_18
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    if-eqz v0, :cond_19

    const/16 v0, 0x21

    .line 52
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 53
    :cond_19
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->internalRedirectPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    if-eqz v0, :cond_1a

    const/16 v0, 0x22

    .line 54
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getInternalRedirectPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/InternalRedirectPolicy;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 55
    :cond_1a
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifierCase_:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1b

    .line 56
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/RegexMatchAndSubstitute;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 57
    :cond_1b
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->maxStreamDuration_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    if-eqz v0, :cond_1c

    const/16 v0, 0x24

    .line 58
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->getMaxStreamDuration()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$MaxStreamDuration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 59
    :cond_1c
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifierCase_:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_1d

    .line 60
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 61
    :cond_1d
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
