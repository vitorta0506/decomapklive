.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$TlsRequirementType;
    }
.end annotation


# static fields
.field public static final CORS_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

.field public static final DOMAINS_FIELD_NUMBER:I = 0x2

.field public static final HEDGE_POLICY_FIELD_NUMBER:I = 0x11

.field public static final INCLUDE_ATTEMPT_COUNT_IN_RESPONSE_FIELD_NUMBER:I = 0x13

.field public static final INCLUDE_REQUEST_ATTEMPT_COUNT_FIELD_NUMBER:I = 0xe

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;",
            ">;"
        }
    .end annotation
.end field

.field public static final PER_FILTER_CONFIG_FIELD_NUMBER:I = 0xc

.field public static final PER_REQUEST_BUFFER_LIMIT_BYTES_FIELD_NUMBER:I = 0x12

.field public static final RATE_LIMITS_FIELD_NUMBER:I = 0x6

.field public static final REQUEST_HEADERS_TO_ADD_FIELD_NUMBER:I = 0x7

.field public static final REQUEST_HEADERS_TO_REMOVE_FIELD_NUMBER:I = 0xd

.field public static final REQUIRE_TLS_FIELD_NUMBER:I = 0x4

.field public static final RESPONSE_HEADERS_TO_ADD_FIELD_NUMBER:I = 0xa

.field public static final RESPONSE_HEADERS_TO_REMOVE_FIELD_NUMBER:I = 0xb

.field public static final RETRY_POLICY_FIELD_NUMBER:I = 0x10

.field public static final RETRY_POLICY_TYPED_CONFIG_FIELD_NUMBER:I = 0x14

.field public static final ROUTES_FIELD_NUMBER:I = 0x3

.field public static final TYPED_PER_FILTER_CONFIG_FIELD_NUMBER:I = 0xf

.field public static final VIRTUAL_CLUSTERS_FIELD_NUMBER:I = 0x5

.field private static final serialVersionUID:J


# instance fields
.field private cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

.field private domains_:Lcom/google/protobuf/z0;

.field private hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

.field private includeAttemptCountInResponse_:Z

.field private includeRequestAttemptCount_:Z

.field private memoizedIsInitialized:B

.field private volatile name_:Ljava/lang/Object;

.field private perFilterConfig_:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Struct;",
            ">;"
        }
    .end annotation
.end field

.field private perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

.field private rateLimits_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit;",
            ">;"
        }
    .end annotation
.end field

.field private requestHeadersToAdd_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;",
            ">;"
        }
    .end annotation
.end field

.field private requestHeadersToRemove_:Lcom/google/protobuf/z0;

.field private requireTls_:I

.field private responseHeadersToAdd_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeadersToRemove_:Lcom/google/protobuf/z0;

.field private retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

.field private retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

.field private routes_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;",
            ">;"
        }
    .end annotation
.end field

.field private typedPerFilterConfig_:Lcom/google/protobuf/g1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/g1<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private virtualClusters_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualCluster;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->name_:Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requireTls_:I

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    .line 16
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;-><init>()V

    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_18

    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 21
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_2

    .line 22
    :sswitch_0
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    if-eqz v3, :cond_1

    .line 23
    invoke-virtual {v3}, Lcom/google/protobuf/Any;->toBuilder()Lcom/google/protobuf/Any$b;

    move-result-object v4

    .line 24
    :cond_1
    invoke-static {}, Lcom/google/protobuf/Any;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Any;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    if-eqz v4, :cond_0

    .line 25
    invoke-virtual {v4, v3}, Lcom/google/protobuf/Any$b;->d0(Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any$b;

    .line 26
    invoke-virtual {v4}, Lcom/google/protobuf/Any$b;->Y()Lcom/google/protobuf/Any;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    goto :goto_0

    .line 27
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->includeAttemptCountInResponse_:Z

    goto :goto_0

    .line 28
    :sswitch_2
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v3, :cond_2

    .line 29
    invoke-virtual {v3}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 30
    :cond_2
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/UInt32Value;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 31
    invoke-virtual {v4, v3}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 32
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 33
    :sswitch_3
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    if-eqz v3, :cond_3

    .line 34
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy$b;

    move-result-object v4

    .line 35
    :cond_3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    if-eqz v4, :cond_0

    .line 36
    invoke-virtual {v4, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy$b;

    .line 37
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    goto :goto_0

    .line 38
    :sswitch_4
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    if-eqz v3, :cond_4

    .line 39
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy$c;

    move-result-object v4

    .line 40
    :cond_4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {v4, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy$c;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy$c;

    .line 42
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    goto/16 :goto_0

    :sswitch_5
    and-int/lit16 v3, v2, 0x200

    if-nez v3, :cond_5

    .line 43
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$d;->a:Lcom/google/protobuf/e1;

    invoke-static {v3}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->typedPerFilterConfig_:Lcom/google/protobuf/g1;

    or-int/lit16 v2, v2, 0x200

    .line 44
    :cond_5
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$d;->a:Lcom/google/protobuf/e1;

    .line 45
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->getParserForType()Lcom/google/protobuf/e2;

    move-result-object v3

    .line 46
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/e1;

    .line 47
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->typedPerFilterConfig_:Lcom/google/protobuf/g1;

    invoke-virtual {v4}, Lcom/google/protobuf/g1;->l()Ljava/util/Map;

    move-result-object v4

    .line 48
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Any;

    .line 49
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 50
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->includeRequestAttemptCount_:Z

    goto/16 :goto_0

    .line 51
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x20

    if-nez v4, :cond_6

    .line 52
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x20

    .line 53
    :cond_6
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    and-int/lit16 v3, v2, 0x100

    if-nez v3, :cond_7

    .line 54
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v3}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->perFilterConfig_:Lcom/google/protobuf/g1;

    or-int/lit16 v2, v2, 0x100

    .line 55
    :cond_7
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$c;->a:Lcom/google/protobuf/e1;

    .line 56
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->getParserForType()Lcom/google/protobuf/e2;

    move-result-object v3

    .line 57
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/e1;

    .line 58
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->perFilterConfig_:Lcom/google/protobuf/g1;

    invoke-virtual {v4}, Lcom/google/protobuf/g1;->l()Ljava/util/Map;

    move-result-object v4

    .line 59
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Struct;

    .line 60
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 61
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit16 v4, v2, 0x80

    if-nez v4, :cond_8

    .line 62
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    or-int/lit16 v2, v2, 0x80

    .line 63
    :cond_8
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_a
    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_9

    .line 64
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x40

    .line 65
    :cond_9
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    .line 66
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;

    .line 67
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 68
    :sswitch_b
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    if-eqz v3, :cond_a

    .line 69
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy$c;

    move-result-object v4

    .line 70
    :cond_a
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    if-eqz v4, :cond_0

    .line 71
    invoke-virtual {v4, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy$c;->n0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy$c;

    .line 72
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    goto/16 :goto_0

    :sswitch_c
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_b

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    .line 74
    :cond_b
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    .line 75
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;

    .line 76
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_d
    and-int/lit8 v3, v2, 0x8

    if-nez v3, :cond_c

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    .line 78
    :cond_c
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

    .line 79
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit;

    .line 80
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_e
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_d

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 82
    :cond_d
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    .line 83
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualCluster;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualCluster;

    .line 84
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 85
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v3

    .line 86
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requireTls_:I

    goto/16 :goto_0

    :sswitch_10
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_e

    .line 87
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 88
    :cond_e
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    .line 89
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    .line 90
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 91
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_f

    .line 92
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x1

    .line 93
    :cond_f
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 94
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 95
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_13
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

    .line 96
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 97
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 98
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_10

    .line 99
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    :cond_10
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_11

    .line 100
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    :cond_11
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_12

    .line 101
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    :cond_12
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_13

    .line 102
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

    :cond_13
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_14

    .line 103
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    :cond_14
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_15

    .line 104
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    :cond_15
    and-int/lit16 p2, v2, 0x80

    if-eqz p2, :cond_16

    .line 105
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    :cond_16
    and-int/lit8 p2, v2, 0x20

    if-eqz p2, :cond_17

    .line 106
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    .line 107
    :cond_17
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 108
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_18
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_19

    .line 109
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    :cond_19
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_1a

    .line 110
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    :cond_1a
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_1b

    .line 111
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    :cond_1b
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_1c

    .line 112
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

    :cond_1c
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_1d

    .line 113
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    :cond_1d
    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_1e

    .line 114
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    :cond_1e
    and-int/lit16 p1, v2, 0x80

    if-eqz p1, :cond_1f

    .line 115
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    :cond_1f
    and-int/lit8 p1, v2, 0x20

    if-eqz p1, :cond_20

    .line 116
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    .line 117
    :cond_20
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 118
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_13
        0xa -> :sswitch_12
        0x12 -> :sswitch_11
        0x1a -> :sswitch_10
        0x20 -> :sswitch_f
        0x2a -> :sswitch_e
        0x32 -> :sswitch_d
        0x3a -> :sswitch_c
        0x42 -> :sswitch_b
        0x52 -> :sswitch_a
        0x5a -> :sswitch_9
        0x62 -> :sswitch_8
        0x6a -> :sswitch_7
        0x70 -> :sswitch_6
        0x7a -> :sswitch_5
        0x82 -> :sswitch_4
        0x8a -> :sswitch_3
        0x92 -> :sswitch_2
        0x98 -> :sswitch_1
        0xa2 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    return-object p1
.end method

.method static synthetic access$1500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Lcom/google/protobuf/g1;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->perFilterConfig_:Lcom/google/protobuf/g1;

    return-object p0
.end method

.method static synthetic access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->perFilterConfig_:Lcom/google/protobuf/g1;

    return-object p1
.end method

.method static synthetic access$1600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Lcom/google/protobuf/g1;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->typedPerFilterConfig_:Lcom/google/protobuf/g1;

    return-object p0
.end method

.method static synthetic access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->typedPerFilterConfig_:Lcom/google/protobuf/g1;

    return-object p1
.end method

.method static synthetic access$1702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->includeRequestAttemptCount_:Z

    return p1
.end method

.method static synthetic access$1802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->includeAttemptCountInResponse_:Z

    return p1
.end method

.method static synthetic access$1902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    return-object p1
.end method

.method static synthetic access$2102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    return-object p1
.end method

.method static synthetic access$2202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$2300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2600()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Lcom/google/protobuf/g1;
    .locals 0

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Lcom/google/protobuf/g1;
    .locals 0

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$3100()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requireTls_:I

    return p0
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requireTls_:I

    return p1
.end method

.method static synthetic access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method private internalGetPerFilterConfig()Lcom/google/protobuf/g1;
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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->perFilterConfig_:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;
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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->typedPerFilterConfig_:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$d;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;->B0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public containsPerFilterConfig(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsTypedPerFilterConfig(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getDomainsList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getDomainsList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRoutesList()Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRoutesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 10
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requireTls_:I

    iget v3, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requireTls_:I

    if-eq v1, v3, :cond_5

    return v2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getVirtualClustersList()Ljava/util/List;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getVirtualClustersList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRateLimitsList()Ljava/util/List;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRateLimitsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 15
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRequestHeadersToAddList()Ljava/util/List;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRequestHeadersToAddList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 19
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getResponseHeadersToAddList()Ljava/util/List;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getResponseHeadersToAddList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 21
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 23
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasCors()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasCors()Z

    move-result v3

    if-eq v1, v3, :cond_c

    return v2

    .line 24
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasCors()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 27
    :cond_d
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    .line 28
    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v3

    .line 29
    invoke-virtual {v1, v3}, Lcom/google/protobuf/g1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 30
    :cond_e
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    .line 31
    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v3

    .line 32
    invoke-virtual {v1, v3}, Lcom/google/protobuf/g1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 33
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getIncludeRequestAttemptCount()Z

    move-result v1

    .line 34
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getIncludeRequestAttemptCount()Z

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    .line 35
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getIncludeAttemptCountInResponse()Z

    move-result v1

    .line 36
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getIncludeAttemptCountInResponse()Z

    move-result v3

    if-eq v1, v3, :cond_11

    return v2

    .line 37
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasRetryPolicy()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasRetryPolicy()Z

    move-result v3

    if-eq v1, v3, :cond_12

    return v2

    .line 38
    :cond_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasRetryPolicy()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 39
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    move-result-object v1

    .line 40
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 41
    :cond_13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasRetryPolicyTypedConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasRetryPolicyTypedConfig()Z

    move-result v3

    if-eq v1, v3, :cond_14

    return v2

    .line 42
    :cond_14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasRetryPolicyTypedConfig()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 43
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/Any;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    .line 45
    :cond_15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasHedgePolicy()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasHedgePolicy()Z

    move-result v3

    if-eq v1, v3, :cond_16

    return v2

    .line 46
    :cond_16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasHedgePolicy()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 47
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    .line 49
    :cond_17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasPerRequestBufferLimitBytes()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasPerRequestBufferLimitBytes()Z

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    .line 50
    :cond_18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasPerRequestBufferLimitBytes()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 51
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getPerRequestBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 52
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getPerRequestBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    .line 53
    :cond_19
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCorsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    return-object v0
.end method

.method public getDomains(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDomainsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getDomainsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDomainsList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getDomainsList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getDomainsList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHedgePolicyOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    move-result-object v0

    return-object v0
.end method

.method public getIncludeAttemptCountInResponse()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->includeAttemptCountInResponse_:Z

    return v0
.end method

.method public getIncludeRequestAttemptCount()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->includeRequestAttemptCount_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->name_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->name_:Ljava/lang/Object;

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
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPerFilterConfig()Ljava/util/Map;
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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getPerFilterConfigMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPerFilterConfigCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getPerFilterConfigMap()Ljava/util/Map;
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

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPerFilterConfigOrDefault(Ljava/lang/String;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

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

.method public getPerFilterConfigOrThrow(Ljava/lang/String;)Lcom/google/protobuf/Struct;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

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

.method public getPerRequestBufferLimitBytes()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPerRequestBufferLimitBytesOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getPerRequestBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getRateLimits(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RateLimit;

    return-object p1
.end method

.method public getRateLimitsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

    return-object v0
.end method

.method public getRateLimitsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/h;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestHeadersToAdd(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;

    return-object p1
.end method

.method public getRequestHeadersToAddCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestHeadersToAddList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestHeadersToAddOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/t;

    return-object p1
.end method

.method public getRequestHeadersToAddOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/t;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestHeadersToRemove(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRequestHeadersToRemoveBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRequestHeadersToRemoveCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getRequestHeadersToRemoveList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getRequireTls()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$TlsRequirementType;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requireTls_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$TlsRequirementType;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$TlsRequirementType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$TlsRequirementType;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$TlsRequirementType;

    :cond_0
    return-object v0
.end method

.method public getRequireTlsValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requireTls_:I

    return v0
.end method

.method public getResponseHeadersToAdd(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;

    return-object p1
.end method

.method public getResponseHeadersToAddCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseHeadersToAddList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HeaderValueOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getResponseHeadersToAddOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/t;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/t;

    return-object p1
.end method

.method public getResponseHeadersToAddOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/t;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getResponseHeadersToRemove(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getResponseHeadersToRemoveBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getResponseHeadersToRemoveCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getResponseHeadersToRemoveList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRetryPolicyOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/j;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Any;->getDefaultInstance()Lcom/google/protobuf/Any;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRetryPolicyTypedConfigOrBuilder()Lcom/google/protobuf/f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public getRoutes(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;

    return-object p1
.end method

.method public getRoutesCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRoutesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/Route;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    return-object v0
.end method

.method public getRoutesOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/n;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/n;

    return-object p1
.end method

.method public getRoutesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->name_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    :goto_1
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 5
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v3}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v4

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getDomainsList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 7
    :goto_2
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    const/4 v4, 0x3

    .line 8
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    .line 9
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 10
    :cond_3
    iget v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requireTls_:I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$TlsRequirementType;->NONE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$TlsRequirementType;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$TlsRequirementType;->getNumber()I

    move-result v4

    if-eq v3, v4, :cond_4

    const/4 v3, 0x4

    .line 11
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requireTls_:I

    .line 12
    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    const/4 v3, 0x0

    .line 13
    :goto_3
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    const/4 v4, 0x5

    .line 14
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    .line 15
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 16
    :goto_4
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    const/4 v4, 0x6

    .line 17
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

    .line 18
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    .line 19
    :goto_5
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    const/4 v4, 0x7

    .line 20
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    .line 21
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 22
    :cond_7
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    if-eqz v3, :cond_8

    const/16 v3, 0x8

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_8
    const/4 v3, 0x0

    .line 24
    :goto_6
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    const/16 v4, 0xa

    .line 25
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    .line 26
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 27
    :goto_7
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 28
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v3}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    add-int/2addr v0, v4

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 30
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 31
    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$c;->a:Lcom/google/protobuf/e1;

    invoke-virtual {v5}, Lcom/google/protobuf/e1;->j()Lcom/google/protobuf/e1$b;

    move-result-object v5

    .line 32
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/protobuf/e1$b;->N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v5

    .line 33
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Struct;

    invoke-virtual {v5, v4}, Lcom/google/protobuf/e1$b;->P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v4

    .line 34
    invoke-virtual {v4}, Lcom/google/protobuf/e1$b;->C()Lcom/google/protobuf/e1;

    move-result-object v4

    const/16 v5, 0xc

    .line 35
    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    .line 36
    :goto_9
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_c

    .line 37
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v2}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    add-int/2addr v0, v3

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 39
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->includeRequestAttemptCount_:Z

    if-eqz v1, :cond_d

    const/16 v2, 0xe

    .line 40
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    :cond_d
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 42
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$d;->a:Lcom/google/protobuf/e1;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->j()Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 43
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/protobuf/e1$b;->N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Any;

    invoke-virtual {v3, v2}, Lcom/google/protobuf/e1$b;->P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/google/protobuf/e1$b;->C()Lcom/google/protobuf/e1;

    move-result-object v2

    const/16 v3, 0xf

    .line 46
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_a

    .line 47
    :cond_e
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    if-eqz v1, :cond_f

    const/16 v1, 0x10

    .line 48
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 49
    :cond_f
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    if-eqz v1, :cond_10

    const/16 v1, 0x11

    .line 50
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    :cond_10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_11

    const/16 v1, 0x12

    .line 52
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getPerRequestBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    :cond_11
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->includeAttemptCountInResponse_:Z

    if-eqz v1, :cond_12

    const/16 v2, 0x13

    .line 54
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    if-eqz v1, :cond_13

    const/16 v1, 0x14

    .line 56
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_13
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTypedPerFilterConfig()Ljava/util/Map;
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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getTypedPerFilterConfigMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTypedPerFilterConfigCount()I
    .locals 1

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getTypedPerFilterConfigMap()Ljava/util/Map;
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

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTypedPerFilterConfigOrDefault(Ljava/lang/String;Lcom/google/protobuf/Any;)Lcom/google/protobuf/Any;
    .locals 2

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

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

.method public getTypedPerFilterConfigOrThrow(Ljava/lang/String;)Lcom/google/protobuf/Any;
    .locals 2

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

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

.method public getVirtualClusters(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualCluster;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualCluster;

    return-object p1
.end method

.method public getVirtualClustersCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVirtualClustersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualCluster;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    return-object v0
.end method

.method public getVirtualClustersOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/p;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/p;

    return-object p1
.end method

.method public getVirtualClustersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    return-object v0
.end method

.method public hasCors()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPerRequestBufferLimitBytes()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getDomainsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getDomainsList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRoutesCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRoutesList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requireTls_:I

    add-int/2addr v0, v1

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getVirtualClustersCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getVirtualClustersList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRateLimitsCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRateLimitsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRequestHeadersToAddCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRequestHeadersToAddList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRequestHeadersToRemoveCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getResponseHeadersToAddCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getResponseHeadersToAddList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getResponseHeadersToRemoveCount()I

    move-result v1

    if-lez v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasCors()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 24
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_a
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 26
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getIncludeRequestAttemptCount()Z

    move-result v1

    .line 28
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getIncludeAttemptCountInResponse()Z

    move-result v1

    .line 30
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasRetryPolicy()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 32
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasRetryPolicyTypedConfig()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Any;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasHedgePolicy()Z

    move-result v1

    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 36
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hasPerRequestBufferLimitBytes()Z

    move-result v1

    if-eqz v1, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getPerRequestBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    mul-int/lit8 v0, v0, 0x1d

    .line 39
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/l;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetMapField(I)Lcom/google/protobuf/g1;
    .locals 3

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object p1

    return-object p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;->B0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$b;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->domains_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 6
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->routes_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requireTls_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$TlsRequirementType;->NONE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$TlsRequirementType;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$TlsRequirementType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x4

    .line 8
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requireTls_:I

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    :cond_3
    const/4 v1, 0x0

    .line 9
    :goto_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 10
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->virtualClusters_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 11
    :goto_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 12
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->rateLimits_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 13
    :goto_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, 0x7

    .line 14
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 15
    :cond_6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->cors_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getCors()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/CorsPolicy;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_7
    const/4 v1, 0x0

    .line 17
    :goto_5
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0xa

    .line 18
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    .line 19
    :goto_6
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0xb

    .line 20
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 21
    :cond_9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$c;->a:Lcom/google/protobuf/e1;

    const/16 v3, 0xc

    .line 22
    invoke-static {p1, v1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/g1;Lcom/google/protobuf/e1;I)V

    .line 23
    :goto_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    const/16 v1, 0xd

    .line 24
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v2, v0}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 25
    :cond_a
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->includeRequestAttemptCount_:Z

    if-eqz v0, :cond_b

    const/16 v1, 0xe

    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 27
    :cond_b
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v0

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost$d;->a:Lcom/google/protobuf/e1;

    const/16 v2, 0xf

    .line 28
    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/g1;Lcom/google/protobuf/e1;I)V

    .line 29
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->retryPolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    if-eqz v0, :cond_c

    const/16 v0, 0x10

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRetryPolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/RetryPolicy;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 31
    :cond_c
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->hedgePolicy_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    if-eqz v0, :cond_d

    const/16 v0, 0x11

    .line 32
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getHedgePolicy()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/HedgePolicy;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 33
    :cond_d
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->perRequestBufferLimitBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_e

    const/16 v0, 0x12

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getPerRequestBufferLimitBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 35
    :cond_e
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->includeAttemptCountInResponse_:Z

    if-eqz v0, :cond_f

    const/16 v1, 0x13

    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 37
    :cond_f
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->retryPolicyTypedConfig_:Lcom/google/protobuf/Any;

    if-eqz v0, :cond_10

    const/16 v0, 0x14

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/route/VirtualHost;->getRetryPolicyTypedConfig()Lcom/google/protobuf/Any;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 39
    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
