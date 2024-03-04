.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$HostRewriteSpecifierCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterSpecifierCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$UpgradeConfig;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$f;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$HashPolicy;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$e;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$InternalRedirectAction;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterNotFoundResponseCode;
    }
.end annotation


# static fields
.field public static final AUTO_HOST_REWRITE_FIELD_NUMBER:I = 0x7

.field public static final AUTO_HOST_REWRITE_HEADER_FIELD_NUMBER:I = 0x1d

.field public static final CLUSTER_FIELD_NUMBER:I = 0x1

.field public static final CLUSTER_HEADER_FIELD_NUMBER:I = 0x2

.field public static final CLUSTER_NOT_FOUND_RESPONSE_CODE_FIELD_NUMBER:I = 0x14

.field public static final CORS_FIELD_NUMBER:I = 0x11

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

.field public static final GRPC_TIMEOUT_OFFSET_FIELD_NUMBER:I = 0x1c

.field public static final HASH_POLICY_FIELD_NUMBER:I = 0xf

.field public static final HEDGE_POLICY_FIELD_NUMBER:I = 0x1b

.field public static final HOST_REWRITE_FIELD_NUMBER:I = 0x6

.field public static final IDLE_TIMEOUT_FIELD_NUMBER:I = 0x18

.field public static final INCLUDE_VH_RATE_LIMITS_FIELD_NUMBER:I = 0xe

.field public static final INTERNAL_REDIRECT_ACTION_FIELD_NUMBER:I = 0x1a

.field public static final MAX_GRPC_TIMEOUT_FIELD_NUMBER:I = 0x17

.field public static final MAX_INTERNAL_REDIRECTS_FIELD_NUMBER:I = 0x1f

.field public static final METADATA_MATCH_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREFIX_REWRITE_FIELD_NUMBER:I = 0x5

.field public static final PRIORITY_FIELD_NUMBER:I = 0xb

.field public static final RATE_LIMITS_FIELD_NUMBER:I = 0xd

.field public static final REGEX_REWRITE_FIELD_NUMBER:I = 0x20

.field public static final REQUEST_MIRROR_POLICIES_FIELD_NUMBER:I = 0x1e

.field public static final REQUEST_MIRROR_POLICY_FIELD_NUMBER:I = 0xa

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

.field private cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

.field private grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

.field private hashPolicy_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$HashPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

.field private hostRewriteSpecifierCase_:I

.field private hostRewriteSpecifier_:Ljava/lang/Object;

.field private idleTimeout_:Lcom/google/protobuf/Duration;

.field private includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

.field private internalRedirectAction_:I

.field private maxGrpcTimeout_:Lcom/google/protobuf/Duration;

.field private maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

.field private memoizedIsInitialized:B

.field private metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

.field private volatile prefixRewrite_:Ljava/lang/Object;

.field private priority_:I

.field private rateLimits_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit;",
            ">;"
        }
    .end annotation
.end field

.field private regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

.field private requestMirrorPolicies_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private requestMirrorPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

.field private retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

.field private retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

.field private timeout_:Lcom/google/protobuf/Duration;

.field private upgradeConfigs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$UpgradeConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    .line 9
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, -0x1

    .line 10
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->memoizedIsInitialized:B

    .line 11
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterNotFoundResponseCode_:I

    const-string v1, ""

    .line 12
    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    .line 14
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->priority_:I

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    .line 18
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->internalRedirectAction_:I

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    .line 5
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 p1, -0x1

    .line 6
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;-><init>()V

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

    if-nez v1, :cond_1a

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
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    if-eqz v4, :cond_1

    .line 25
    invoke-virtual {v4}, Lcom/google/protobuf/Any;->toBuilder()Lcom/google/protobuf/Any$b;

    move-result-object v5

    .line 26
    :cond_1
    invoke-static {}, Lcom/google/protobuf/Any;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Any;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    if-eqz v5, :cond_0

    .line 27
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Any$b;->d0(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any$b;

    .line 28
    invoke-virtual {v5}, Lcom/google/protobuf/Any$b;->Y()Lcom/google/protobuf/Any;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    goto :goto_0

    .line 29
    :sswitch_1
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    if-eqz v4, :cond_2

    .line 30
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute$b;

    move-result-object v5

    .line 31
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    if-eqz v5, :cond_0

    .line 32
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute$b;

    .line 33
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    goto :goto_0

    .line 34
    :sswitch_2
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_3

    .line 35
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v5

    .line 36
    :cond_3
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/UInt32Value;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

    if-eqz v5, :cond_0

    .line 37
    invoke-virtual {v5, v4}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 38
    invoke-virtual {v5}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    :sswitch_3
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_4

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 40
    :cond_4
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    .line 41
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    .line 42
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 43
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1d

    .line 44
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    .line 45
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 46
    :sswitch_5
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_5

    .line 47
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v5

    .line 48
    :cond_5
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_0

    .line 49
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 50
    invoke-virtual {v5}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 51
    :sswitch_6
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    if-eqz v4, :cond_6

    .line 52
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy$b;

    move-result-object v5

    .line 53
    :cond_6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    if-eqz v5, :cond_0

    .line 54
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy$b;

    .line 55
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    goto/16 :goto_0

    .line 56
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 57
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->internalRedirectAction_:I

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_7

    .line 58
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 59
    :cond_7
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    .line 60
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$UpgradeConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$UpgradeConfig;

    .line 61
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 62
    :sswitch_9
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_8

    .line 63
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v5

    .line 64
    :cond_8
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 66
    invoke-virtual {v5}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->idleTimeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 67
    :sswitch_a
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->maxGrpcTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_9

    .line 68
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v5

    .line 69
    :cond_9
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->maxGrpcTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_0

    .line 70
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 71
    invoke-virtual {v5}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->maxGrpcTimeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 72
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 73
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterNotFoundResponseCode_:I

    goto/16 :goto_0

    .line 74
    :sswitch_c
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    if-eqz v4, :cond_a

    .line 75
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy$c;

    move-result-object v5

    .line 76
    :cond_a
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    if-eqz v5, :cond_0

    .line 77
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy$c;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy$c;

    .line 78
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    goto/16 :goto_0

    :sswitch_d
    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_b

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 80
    :cond_b
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    .line 81
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$HashPolicy;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$HashPolicy;

    .line 82
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 83
    :sswitch_e
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

    if-eqz v4, :cond_c

    .line 84
    invoke-virtual {v4}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v5

    .line 85
    :cond_c
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/BoolValue;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

    if-eqz v5, :cond_0

    .line 86
    invoke-virtual {v5, v4}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 87
    invoke-virtual {v5}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

    goto/16 :goto_0

    :sswitch_f
    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_d

    .line 88
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 89
    :cond_d
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    .line 90
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit;

    .line 91
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 92
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v4

    .line 93
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->priority_:I

    goto/16 :goto_0

    .line 94
    :sswitch_11
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    if-eqz v4, :cond_e

    .line 95
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy$b;

    move-result-object v5

    .line 96
    :cond_e
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    if-eqz v5, :cond_0

    .line 97
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy$b;

    .line 98
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    goto/16 :goto_0

    .line 99
    :sswitch_12
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    if-eqz v4, :cond_f

    .line 100
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy$c;

    move-result-object v5

    .line 101
    :cond_f
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    if-eqz v5, :cond_0

    .line 102
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy$c;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy$c;

    .line 103
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    goto/16 :goto_0

    .line 104
    :sswitch_13
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->timeout_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_10

    .line 105
    invoke-virtual {v4}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v5

    .line 106
    :cond_10
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Duration;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->timeout_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_0

    .line 107
    invoke-virtual {v5, v4}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 108
    invoke-virtual {v5}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->timeout_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 109
    :sswitch_14
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v6, 0x7

    if-ne v4, v6, :cond_11

    .line 110
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    check-cast v4, Lcom/google/protobuf/BoolValue;

    invoke-virtual {v4}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v5

    .line 111
    :cond_11
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_12

    .line 112
    check-cast v4, Lcom/google/protobuf/BoolValue;

    invoke-virtual {v5, v4}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 113
    invoke-virtual {v5}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    .line 114
    :cond_12
    iput v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    goto/16 :goto_0

    .line 115
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    .line 116
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    .line 117
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 118
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 119
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 120
    :sswitch_17
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v4, :cond_13

    .line 121
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;

    move-result-object v5

    .line 122
    :cond_13
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v5, :cond_0

    .line 123
    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;

    .line 124
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    goto/16 :goto_0

    .line 125
    :sswitch_18
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_14

    .line 126
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster$b;

    move-result-object v5

    .line 127
    :cond_14
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_15

    .line 128
    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;

    invoke-virtual {v5, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster$b;

    .line 129
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    .line 130
    :cond_15
    iput v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    goto/16 :goto_0

    .line 131
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 132
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    .line 133
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 134
    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v4

    .line 135
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    .line 136
    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_1b
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

    .line 137
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 138
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 139
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_16

    .line 140
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    :cond_16
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_17

    .line 141
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    :cond_17
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_18

    .line 142
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    :cond_18
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_19

    .line 143
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    .line 144
    :cond_19
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 145
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_1a
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_1b

    .line 146
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    :cond_1b
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_1c

    .line 147
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    :cond_1c
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_1d

    .line 148
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    :cond_1d
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_1e

    .line 149
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    .line 150
    :cond_1e
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 151
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1b
        0xa -> :sswitch_1a
        0x12 -> :sswitch_19
        0x1a -> :sswitch_18
        0x22 -> :sswitch_17
        0x2a -> :sswitch_16
        0x32 -> :sswitch_15
        0x3a -> :sswitch_14
        0x42 -> :sswitch_13
        0x4a -> :sswitch_12
        0x52 -> :sswitch_11
        0x58 -> :sswitch_10
        0x6a -> :sswitch_f
        0x72 -> :sswitch_e
        0x7a -> :sswitch_d
        0x8a -> :sswitch_c
        0xa0 -> :sswitch_b
        0xba -> :sswitch_a
        0xc2 -> :sswitch_9
        0xca -> :sswitch_8
        0xd0 -> :sswitch_7
        0xda -> :sswitch_6
        0xe2 -> :sswitch_5
        0xea -> :sswitch_4
        0xf2 -> :sswitch_3
        0xfa -> :sswitch_2
        0x102 -> :sswitch_1
        0x10a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$10002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    return-object p1
.end method

.method static synthetic access$10102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->maxGrpcTimeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$10202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$10300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$10302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$10400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->internalRedirectAction_:I

    return p0
.end method

.method static synthetic access$10402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->internalRedirectAction_:I

    return p1
.end method

.method static synthetic access$10502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$10602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    return-object p1
.end method

.method static synthetic access$10702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    return p1
.end method

.method static synthetic access$10802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    return p1
.end method

.method static synthetic access$10900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$11400()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$8400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterNotFoundResponseCode_:I

    return p0
.end method

.method static synthetic access$8502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterNotFoundResponseCode_:I

    return p1
.end method

.method static synthetic access$8602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    return-object p1
.end method

.method static synthetic access$8700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    return-object p1
.end method

.method static synthetic access$8900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->timeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$9102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->idleTimeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$9202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    return-object p1
.end method

.method static synthetic access$9302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    return-object p1
.end method

.method static synthetic access$9402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    return-object p1
.end method

.method static synthetic access$9500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->priority_:I

    return p0
.end method

.method static synthetic access$9602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->priority_:I

    return p1
.end method

.method static synthetic access$9700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$9802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$9900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$9902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->E:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;->r0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterNotFoundResponseCode_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterNotFoundResponseCode_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasMetadataMatch()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasMetadataMatch()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 6
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasMetadataMatch()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getPrefixRewrite()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getPrefixRewrite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasRegexRewrite()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasRegexRewrite()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 12
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasRegexRewrite()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 15
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasTimeout()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 16
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasTimeout()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 19
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasIdleTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasIdleTimeout()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 20
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasIdleTimeout()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 23
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasRetryPolicy()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasRetryPolicy()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 24
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasRetryPolicy()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 27
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasRetryPolicyTypedConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasRetryPolicyTypedConfig()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 28
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasRetryPolicyTypedConfig()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Any;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 31
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasRequestMirrorPolicy()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasRequestMirrorPolicy()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    .line 32
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasRequestMirrorPolicy()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRequestMirrorPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRequestMirrorPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 35
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRequestMirrorPoliciesList()Ljava/util/List;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRequestMirrorPoliciesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    .line 37
    :cond_12
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->priority_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->priority_:I

    if-eq v1, v2, :cond_13

    return v3

    .line 38
    :cond_13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRateLimitsList()Ljava/util/List;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRateLimitsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v3

    .line 40
    :cond_14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasIncludeVhRateLimits()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasIncludeVhRateLimits()Z

    move-result v2

    if-eq v1, v2, :cond_15

    return v3

    .line 41
    :cond_15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasIncludeVhRateLimits()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getIncludeVhRateLimits()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getIncludeVhRateLimits()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v3

    .line 44
    :cond_16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getHashPolicyList()Ljava/util/List;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getHashPolicyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v3

    .line 46
    :cond_17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasCors()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasCors()Z

    move-result v2

    if-eq v1, v2, :cond_18

    return v3

    .line 47
    :cond_18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasCors()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 48
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v3

    .line 50
    :cond_19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasMaxGrpcTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasMaxGrpcTimeout()Z

    move-result v2

    if-eq v1, v2, :cond_1a

    return v3

    .line 51
    :cond_1a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasMaxGrpcTimeout()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 52
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMaxGrpcTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMaxGrpcTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v3

    .line 54
    :cond_1b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasGrpcTimeoutOffset()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasGrpcTimeoutOffset()Z

    move-result v2

    if-eq v1, v2, :cond_1c

    return v3

    .line 55
    :cond_1c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasGrpcTimeoutOffset()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 56
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getGrpcTimeoutOffset()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getGrpcTimeoutOffset()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v3

    .line 58
    :cond_1d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getUpgradeConfigsList()Ljava/util/List;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getUpgradeConfigsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v3

    .line 60
    :cond_1e
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->internalRedirectAction_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->internalRedirectAction_:I

    if-eq v1, v2, :cond_1f

    return v3

    .line 61
    :cond_1f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasMaxInternalRedirects()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasMaxInternalRedirects()Z

    move-result v2

    if-eq v1, v2, :cond_20

    return v3

    .line 62
    :cond_20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasMaxInternalRedirects()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 63
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMaxInternalRedirects()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMaxInternalRedirects()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v3

    .line 65
    :cond_21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasHedgePolicy()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasHedgePolicy()Z

    move-result v2

    if-eq v1, v2, :cond_22

    return v3

    .line 66
    :cond_22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasHedgePolicy()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 67
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    move-result-object v1

    .line 68
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v3

    .line 69
    :cond_23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getClusterSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterSpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getClusterSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterSpecifierCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v3

    .line 70
    :cond_24
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    if-eq v1, v0, :cond_27

    const/4 v2, 0x2

    if-eq v1, v2, :cond_26

    const/4 v2, 0x3

    if-eq v1, v2, :cond_25

    goto :goto_0

    .line 71
    :cond_25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getWeightedClusters()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;

    move-result-object v1

    .line 72
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getWeightedClusters()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v3

    .line 73
    :cond_26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getClusterHeader()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getClusterHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v3

    .line 75
    :cond_27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getCluster()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getCluster()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v3

    .line 77
    :cond_28
    :goto_0
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getHostRewriteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$HostRewriteSpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getHostRewriteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$HostRewriteSpecifierCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v3

    .line 78
    :cond_29
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2b

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_2a

    goto :goto_1

    .line 79
    :cond_2a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getAutoHostRewriteHeader()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getAutoHostRewriteHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v3

    .line 81
    :cond_2b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getAutoHostRewrite()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 82
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getAutoHostRewrite()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v3

    .line 83
    :cond_2c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getHostRewrite()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getHostRewrite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v3

    .line 85
    :cond_2d
    :goto_1
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    return v3

    :cond_2e
    return v0
.end method

.method public getAutoHostRewrite()Lcom/google/protobuf/BoolValue;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/BoolValue;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getAutoHostRewriteHeader()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getAutoHostRewriteHeaderBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAutoHostRewriteOrBuilder()Lcom/google/protobuf/l;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getClusterBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getClusterHeaderBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getClusterNotFoundResponseCode()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterNotFoundResponseCode;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterNotFoundResponseCode_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterNotFoundResponseCode;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterNotFoundResponseCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterNotFoundResponseCode;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterNotFoundResponseCode;

    :cond_0
    return-object v0
.end method

.method public getClusterNotFoundResponseCodeValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterNotFoundResponseCode_:I

    return v0
.end method

.method public getClusterSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterSpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterSpecifierCase;

    move-result-object v0

    return-object v0
.end method

.method public getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCorsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    return-object v0
.end method

.method public getGrpcTimeoutOffset()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGrpcTimeoutOffsetOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getGrpcTimeoutOffset()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getHashPolicy(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$HashPolicy;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$HashPolicy;

    return-object p1
.end method

.method public getHashPolicyCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

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
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$HashPolicy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    return-object v0
.end method

.method public getHashPolicyOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$d;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$d;

    return-object p1
.end method

.method public getHashPolicyOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    return-object v0
.end method

.method public getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHedgePolicyOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    move-result-object v0

    return-object v0
.end method

.method public getHostRewrite()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getHostRewriteBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

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
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHostRewriteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$HostRewriteSpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$HostRewriteSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$HostRewriteSpecifierCase;

    move-result-object v0

    return-object v0
.end method

.method public getIdleTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIdleTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getIncludeVhRateLimits()Lcom/google/protobuf/BoolValue;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIncludeVhRateLimitsOrBuilder()Lcom/google/protobuf/l;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getIncludeVhRateLimits()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getInternalRedirectAction()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$InternalRedirectAction;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->internalRedirectAction_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$InternalRedirectAction;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$InternalRedirectAction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$InternalRedirectAction;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$InternalRedirectAction;

    :cond_0
    return-object v0
.end method

.method public getInternalRedirectActionValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->internalRedirectAction_:I

    return v0
.end method

.method public getMaxGrpcTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->maxGrpcTimeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxGrpcTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMaxGrpcTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getMaxInternalRedirects()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxInternalRedirectsOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMaxInternalRedirects()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMetadataMatchOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/d0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPrefixRewrite()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->prefixRewrite_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPrefixRewriteBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPriority()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RoutingPriority;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->priority_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RoutingPriority;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RoutingPriority;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RoutingPriority;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RoutingPriority;

    :cond_0
    return-object v0
.end method

.method public getPriorityValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->priority_:I

    return v0
.end method

.method public getRateLimits(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit;

    return-object p1
.end method

.method public getRateLimitsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

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
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    return-object v0
.end method

.method public getRateLimitsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/h;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/h;

    return-object p1
.end method

.method public getRateLimitsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    return-object v0
.end method

.method public getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRegexRewriteOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/h;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMirrorPolicies(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    return-object p1
.end method

.method public getRequestMirrorPoliciesCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

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
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestMirrorPoliciesOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$e;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$e;

    return-object p1
.end method

.method public getRequestMirrorPoliciesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestMirrorPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRequestMirrorPolicyOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$e;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRequestMirrorPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRetryPolicyOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/j;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Any;->getDefaultInstance()Lcom/google/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRetryPolicyTypedConfigOrBuilder()Lcom/google/protobuf/f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 5
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6
    :cond_2
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 7
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;

    .line 8
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9
    :cond_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 11
    :cond_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    invoke-static {v2}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x5

    .line 12
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13
    :cond_5
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 14
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 15
    :cond_6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 16
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    check-cast v2, Lcom/google/protobuf/BoolValue;

    .line 17
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18
    :cond_7
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->timeout_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_8

    const/16 v2, 0x8

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 20
    :cond_8
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    if-eqz v2, :cond_9

    const/16 v2, 0x9

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22
    :cond_9
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    if-eqz v2, :cond_a

    const/16 v2, 0xa

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRequestMirrorPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 24
    :cond_a
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->priority_:I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RoutingPriority;->DEFAULT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RoutingPriority;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RoutingPriority;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_b

    const/16 v2, 0xb

    .line 25
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->priority_:I

    .line 26
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_b
    const/4 v2, 0x0

    .line 27
    :goto_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    const/16 v3, 0xd

    .line 28
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    .line 29
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 30
    :cond_c
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

    if-eqz v2, :cond_d

    const/16 v2, 0xe

    .line 31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getIncludeVhRateLimits()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_d
    const/4 v2, 0x0

    .line 32
    :goto_2
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    const/16 v3, 0xf

    .line 33
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    .line 34
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 35
    :cond_e
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    if-eqz v2, :cond_f

    const/16 v2, 0x11

    .line 36
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 37
    :cond_f
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterNotFoundResponseCode_:I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterNotFoundResponseCode;->SERVICE_UNAVAILABLE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterNotFoundResponseCode;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterNotFoundResponseCode;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_10

    const/16 v2, 0x14

    .line 38
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterNotFoundResponseCode_:I

    .line 39
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 40
    :cond_10
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->maxGrpcTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_11

    const/16 v2, 0x17

    .line 41
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMaxGrpcTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42
    :cond_11
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_12

    const/16 v2, 0x18

    .line 43
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_12
    const/4 v2, 0x0

    .line 44
    :goto_3
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_13

    const/16 v3, 0x19

    .line 45
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    .line 46
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 47
    :cond_13
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->internalRedirectAction_:I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$InternalRedirectAction;->PASS_THROUGH_INTERNAL_REDIRECT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$InternalRedirectAction;

    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$InternalRedirectAction;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_14

    const/16 v2, 0x1a

    .line 48
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->internalRedirectAction_:I

    .line 49
    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 50
    :cond_14
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    if-eqz v2, :cond_15

    const/16 v2, 0x1b

    .line 51
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 52
    :cond_15
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_16

    const/16 v2, 0x1c

    .line 53
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getGrpcTimeoutOffset()Lcom/google/protobuf/Duration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    .line 54
    :cond_16
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_17

    .line 55
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 56
    :cond_17
    :goto_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    const/16 v2, 0x1e

    .line 57
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    .line 58
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 59
    :cond_18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_19

    const/16 v1, 0x1f

    .line 60
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMaxInternalRedirects()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_19
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    if-eqz v1, :cond_1a

    const/16 v1, 0x20

    .line 62
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    :cond_1a
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    if-eqz v1, :cond_1b

    const/16 v1, 0x21

    .line 64
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_1b
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->timeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getUpgradeConfigs(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$UpgradeConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$UpgradeConfig;

    return-object p1
.end method

.method public getUpgradeConfigsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

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
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$UpgradeConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    return-object v0
.end method

.method public getUpgradeConfigsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$f;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$f;

    return-object p1
.end method

.method public getUpgradeConfigsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    return-object v0
.end method

.method public getWeightedClusters()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;

    move-result-object v0

    return-object v0
.end method

.method public getWeightedClustersOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/r;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;

    move-result-object v0

    return-object v0
.end method

.method public hasAutoHostRewrite()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAutoHostRewriteHeader()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/16 v1, 0x1d

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

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

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

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x2

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHostRewrite()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, 0x6

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->idleTimeout_:Lcom/google/protobuf/Duration;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->maxGrpcTimeout_:Lcom/google/protobuf/Duration;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRequestMirrorPolicy()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->timeout_:Lcom/google/protobuf/Duration;

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

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterNotFoundResponseCode_:I

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasMetadataMatch()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getPrefixRewrite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasRegexRewrite()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x20

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasTimeout()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasIdleTimeout()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasRetryPolicy()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasRetryPolicyTypedConfig()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x21

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Any;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasRequestMirrorPolicy()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRequestMirrorPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRequestMirrorPoliciesCount()I

    move-result v1

    if-lez v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRequestMirrorPoliciesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 21
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->priority_:I

    add-int/2addr v0, v1

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRateLimitsCount()I

    move-result v1

    if-lez v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRateLimitsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasIncludeVhRateLimits()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getIncludeVhRateLimits()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getHashPolicyCount()I

    move-result v1

    if-lez v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getHashPolicyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasCors()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasMaxGrpcTimeout()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    .line 31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMaxGrpcTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasGrpcTimeoutOffset()Z

    move-result v1

    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1c

    mul-int/lit8 v0, v0, 0x35

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getGrpcTimeoutOffset()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getUpgradeConfigsCount()I

    move-result v1

    if-lez v1, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x19

    mul-int/lit8 v0, v0, 0x35

    .line 35
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getUpgradeConfigsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1a

    mul-int/lit8 v0, v0, 0x35

    .line 36
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->internalRedirectAction_:I

    add-int/2addr v0, v1

    .line 37
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasMaxInternalRedirects()Z

    move-result v1

    if-eqz v1, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x35

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMaxInternalRedirects()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hasHedgePolicy()Z

    move-result v1

    if-eqz v1, :cond_11

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1b

    mul-int/lit8 v0, v0, 0x35

    .line 40
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    :cond_11
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_14

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    const/4 v2, 0x3

    if-eq v1, v2, :cond_12

    goto :goto_1

    :cond_12
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getWeightedClusters()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_13
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 43
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getClusterHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_14
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 44
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getCluster()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 45
    :goto_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v2, 0x6

    const/16 v3, 0x1d

    if-eq v1, v2, :cond_17

    const/4 v2, 0x7

    if-eq v1, v2, :cond_16

    if-eq v1, v3, :cond_15

    goto :goto_3

    :cond_15
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    .line 46
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getAutoHostRewriteHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_16
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 47
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getAutoHostRewrite()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_17
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 48
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getHostRewrite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    :goto_3
    mul-int/lit8 v0, v0, 0x1d

    .line 49
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->F:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;->r0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$c;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/WeightedCluster;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Metadata;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->prefixRewrite_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 13
    :cond_5
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/BoolValue;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->timeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRequestMirrorPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$RequestMirrorPolicy;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 21
    :cond_9
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->priority_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RoutingPriority;->DEFAULT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RoutingPriority;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/RoutingPriority;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_a

    const/16 v0, 0xb

    .line 22
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->priority_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    :cond_a
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 23
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    const/16 v2, 0xd

    .line 24
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->rateLimits_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_b
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->includeVhRateLimits_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_c

    const/16 v1, 0xe

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getIncludeVhRateLimits()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_c
    const/4 v1, 0x0

    .line 27
    :goto_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    const/16 v2, 0xf

    .line 28
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hashPolicy_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 29
    :cond_d
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    if-eqz v1, :cond_e

    const/16 v1, 0x11

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 31
    :cond_e
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterNotFoundResponseCode_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterNotFoundResponseCode;->SERVICE_UNAVAILABLE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterNotFoundResponseCode;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$ClusterNotFoundResponseCode;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_f

    const/16 v1, 0x14

    .line 32
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->clusterNotFoundResponseCode_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 33
    :cond_f
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->maxGrpcTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_10

    const/16 v1, 0x17

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMaxGrpcTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 35
    :cond_10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->idleTimeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_11

    const/16 v1, 0x18

    .line 36
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getIdleTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_11
    const/4 v1, 0x0

    .line 37
    :goto_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    const/16 v2, 0x19

    .line 38
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->upgradeConfigs_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 39
    :cond_12
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->internalRedirectAction_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$InternalRedirectAction;->PASS_THROUGH_INTERNAL_REDIRECT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$InternalRedirectAction;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction$InternalRedirectAction;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_13

    const/16 v1, 0x1a

    .line 40
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->internalRedirectAction_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 41
    :cond_13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    if-eqz v1, :cond_14

    const/16 v1, 0x1b

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 43
    :cond_14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->grpcTimeoutOffset_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_15

    const/16 v1, 0x1c

    .line 44
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getGrpcTimeoutOffset()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 45
    :cond_15
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifierCase_:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_16

    .line 46
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->hostRewriteSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 47
    :cond_16
    :goto_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    const/16 v1, 0x1e

    .line 48
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->requestMirrorPolicies_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 49
    :cond_17
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->maxInternalRedirects_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_18

    const/16 v0, 0x1f

    .line 50
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getMaxInternalRedirects()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 51
    :cond_18
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->regexRewrite_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    if-eqz v0, :cond_19

    const/16 v0, 0x20

    .line 52
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRegexRewrite()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/RegexMatchAndSubstitute;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 53
    :cond_19
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    if-eqz v0, :cond_1a

    const/16 v0, 0x21

    .line 54
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RouteAction;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 55
    :cond_1a
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
