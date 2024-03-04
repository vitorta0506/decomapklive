.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/r1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;
    }
.end annotation


# static fields
.field public static final ABORT_FIELD_NUMBER:I = 0x2

.field public static final ABORT_GRPC_STATUS_RUNTIME_FIELD_NUMBER:I = 0xe

.field public static final ABORT_HTTP_STATUS_RUNTIME_FIELD_NUMBER:I = 0xb

.field public static final ABORT_PERCENT_RUNTIME_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

.field public static final DELAY_DURATION_RUNTIME_FIELD_NUMBER:I = 0xa

.field public static final DELAY_FIELD_NUMBER:I = 0x1

.field public static final DELAY_PERCENT_RUNTIME_FIELD_NUMBER:I = 0x8

.field public static final DISABLE_DOWNSTREAM_CLUSTER_STATS_FIELD_NUMBER:I = 0xf

.field public static final DOWNSTREAM_NODES_FIELD_NUMBER:I = 0x5

.field public static final HEADERS_FIELD_NUMBER:I = 0x4

.field public static final MAX_ACTIVE_FAULTS_FIELD_NUMBER:I = 0x6

.field public static final MAX_ACTIVE_FAULTS_RUNTIME_FIELD_NUMBER:I = 0xc

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESPONSE_RATE_LIMIT_FIELD_NUMBER:I = 0x7

.field public static final RESPONSE_RATE_LIMIT_PERCENT_RUNTIME_FIELD_NUMBER:I = 0xd

.field public static final UPSTREAM_CLUSTER_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private volatile abortGrpcStatusRuntime_:Ljava/lang/Object;

.field private volatile abortHttpStatusRuntime_:Ljava/lang/Object;

.field private volatile abortPercentRuntime_:Ljava/lang/Object;

.field private abort_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

.field private volatile delayDurationRuntime_:Ljava/lang/Object;

.field private volatile delayPercentRuntime_:Ljava/lang/Object;

.field private delay_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

.field private disableDownstreamClusterStats_:Z

.field private downstreamNodes_:Lcom/google/protobuf/z0;

.field private headers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private volatile maxActiveFaultsRuntime_:Ljava/lang/Object;

.field private maxActiveFaults_:Lcom/google/protobuf/UInt32Value;

.field private memoizedIsInitialized:B

.field private volatile responseRateLimitPercentRuntime_:Ljava/lang/Object;

.field private responseRateLimit_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

.field private volatile upstreamCluster_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->upstreamCluster_:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    .line 9
    sget-object v1, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    .line 10
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayPercentRuntime_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortPercentRuntime_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayDurationRuntime_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortHttpStatusRuntime_:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaultsRuntime_:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimitPercentRuntime_:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortGrpcStatusRuntime_:Ljava/lang/Object;

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;-><init>()V

    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_9

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
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->disableDownstreamClusterStats_:Z

    goto :goto_0

    .line 23
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 24
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortGrpcStatusRuntime_:Ljava/lang/Object;

    goto :goto_0

    .line 25
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 26
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimitPercentRuntime_:Ljava/lang/Object;

    goto :goto_0

    .line 27
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 28
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaultsRuntime_:Ljava/lang/Object;

    goto :goto_0

    .line 29
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 30
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortHttpStatusRuntime_:Ljava/lang/Object;

    goto :goto_0

    .line 31
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 32
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayDurationRuntime_:Ljava/lang/Object;

    goto :goto_0

    .line 33
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 34
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortPercentRuntime_:Ljava/lang/Object;

    goto :goto_0

    .line 35
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 36
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayPercentRuntime_:Ljava/lang/Object;

    goto :goto_0

    .line 37
    :sswitch_8
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimit_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

    if-eqz v3, :cond_1

    .line 38
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit$c;

    move-result-object v4

    .line 39
    :cond_1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimit_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

    if-eqz v4, :cond_0

    .line 40
    invoke-virtual {v4, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit$c;

    .line 41
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimit_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

    goto :goto_0

    .line 42
    :sswitch_9
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaults_:Lcom/google/protobuf/UInt32Value;

    if-eqz v3, :cond_2

    .line 43
    invoke-virtual {v3}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 44
    :cond_2
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/UInt32Value;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaults_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 45
    invoke-virtual {v4, v3}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 46
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaults_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 47
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_3

    .line 48
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x2

    .line 49
    :cond_3
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_b
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_4

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 51
    :cond_4
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    .line 52
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    .line 53
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 54
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 55
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->upstreamCluster_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 56
    :sswitch_d
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abort_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    if-eqz v3, :cond_5

    .line 57
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort$c;

    move-result-object v4

    .line 58
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abort_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {v4, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort$c;

    .line 60
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abort_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    goto/16 :goto_0

    .line 61
    :sswitch_e
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delay_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    if-eqz v3, :cond_6

    .line 62
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay$c;

    move-result-object v4

    .line 63
    :cond_6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delay_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    if-eqz v4, :cond_0

    .line 64
    invoke-virtual {v4, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay$c;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay$c;

    .line 65
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delay_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_f
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

    .line 66
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 67
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 68
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_7

    .line 69
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    :cond_7
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_8

    .line 70
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    .line 71
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 72
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_9
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_a

    .line 73
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    :cond_a
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_b

    .line 74
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    .line 75
    :cond_b
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 76
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_f
        0xa -> :sswitch_e
        0x12 -> :sswitch_d
        0x1a -> :sswitch_c
        0x22 -> :sswitch_b
        0x2a -> :sswitch_a
        0x32 -> :sswitch_9
        0x3a -> :sswitch_8
        0x42 -> :sswitch_7
        0x4a -> :sswitch_6
        0x52 -> :sswitch_5
        0x5a -> :sswitch_4
        0x62 -> :sswitch_3
        0x6a -> :sswitch_2
        0x72 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimit_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

    return-object p1
.end method

.method static synthetic access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayPercentRuntime_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayPercentRuntime_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortPercentRuntime_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortPercentRuntime_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayDurationRuntime_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayDurationRuntime_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortHttpStatusRuntime_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortHttpStatusRuntime_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaultsRuntime_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaultsRuntime_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimitPercentRuntime_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimitPercentRuntime_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortGrpcStatusRuntime_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortGrpcStatusRuntime_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->disableDownstreamClusterStats_:Z

    return p1
.end method

.method static synthetic access$1900()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delay_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    return-object p1
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abort_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    return-object p1
.end method

.method static synthetic access$600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->upstreamCluster_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->upstreamCluster_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaults_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/b;->e:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasDelay()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasDelay()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasDelay()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDelay()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDelay()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasAbort()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasAbort()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasAbort()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getAbort()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getAbort()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getUpstreamCluster()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getUpstreamCluster()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getHeadersList()Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getHeadersList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDownstreamNodesList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDownstreamNodesList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 18
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasMaxActiveFaults()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasMaxActiveFaults()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 19
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasMaxActiveFaults()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getMaxActiveFaults()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getMaxActiveFaults()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 22
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasResponseRateLimit()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasResponseRateLimit()Z

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    .line 23
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasResponseRateLimit()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getResponseRateLimit()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getResponseRateLimit()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 26
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDelayPercentRuntime()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDelayPercentRuntime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 28
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getAbortPercentRuntime()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getAbortPercentRuntime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    .line 30
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDelayDurationRuntime()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDelayDurationRuntime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 32
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getAbortHttpStatusRuntime()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getAbortHttpStatusRuntime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    .line 34
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getMaxActiveFaultsRuntime()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getMaxActiveFaultsRuntime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 36
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getResponseRateLimitPercentRuntime()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getResponseRateLimitPercentRuntime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    .line 38
    :cond_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getAbortGrpcStatusRuntime()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getAbortGrpcStatusRuntime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    .line 40
    :cond_13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDisableDownstreamClusterStats()Z

    move-result v1

    .line 41
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDisableDownstreamClusterStats()Z

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    .line 42
    :cond_14
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    return v3

    :cond_15
    return v0
.end method

.method public getAbort()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abort_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAbortGrpcStatusRuntime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortGrpcStatusRuntime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortGrpcStatusRuntime_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAbortGrpcStatusRuntimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortGrpcStatusRuntime_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortGrpcStatusRuntime_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAbortHttpStatusRuntime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortHttpStatusRuntime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortHttpStatusRuntime_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAbortHttpStatusRuntimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortHttpStatusRuntime_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortHttpStatusRuntime_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAbortOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getAbort()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    move-result-object v0

    return-object v0
.end method

.method public getAbortPercentRuntime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortPercentRuntime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortPercentRuntime_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAbortPercentRuntimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortPercentRuntime_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortPercentRuntime_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    return-object v0
.end method

.method public getDelay()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delay_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDelayDurationRuntime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayDurationRuntime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayDurationRuntime_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDelayDurationRuntimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayDurationRuntime_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayDurationRuntime_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDelayOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/a;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDelay()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    move-result-object v0

    return-object v0
.end method

.method public getDelayPercentRuntime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayPercentRuntime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayPercentRuntime_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDelayPercentRuntimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayPercentRuntime_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayPercentRuntime_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDisableDownstreamClusterStats()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->disableDownstreamClusterStats_:Z

    return v0
.end method

.method public getDownstreamNodes(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getDownstreamNodesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getDownstreamNodesCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDownstreamNodesList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getDownstreamNodesList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDownstreamNodesList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;

    return-object p1
.end method

.method public getHeadersCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    return-object v0
.end method

.method public getHeadersOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/f;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/f;

    return-object p1
.end method

.method public getHeadersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    return-object v0
.end method

.method public getMaxActiveFaults()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaults_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxActiveFaultsOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getMaxActiveFaults()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getMaxActiveFaultsRuntime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaultsRuntime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaultsRuntime_:Ljava/lang/Object;

    return-object v0
.end method

.method public getMaxActiveFaultsRuntimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaultsRuntime_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaultsRuntime_:Ljava/lang/Object;

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
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getResponseRateLimit()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimit_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResponseRateLimitOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/c;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getResponseRateLimit()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

    move-result-object v0

    return-object v0
.end method

.method public getResponseRateLimitPercentRuntime()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimitPercentRuntime_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimitPercentRuntime_:Ljava/lang/Object;

    return-object v0
.end method

.method public getResponseRateLimitPercentRuntimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimitPercentRuntime_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimitPercentRuntime_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delay_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDelay()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abort_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getAbort()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    .line 6
    :cond_2
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->upstreamCluster_:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    .line 7
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->upstreamCluster_:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    const/4 v3, 0x0

    .line 8
    :goto_1
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v4, 0x4

    .line 9
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    .line 10
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 11
    :goto_2
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 12
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v2}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v0, v3

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDownstreamNodesList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaults_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getMaxActiveFaults()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimit_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getResponseRateLimit()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayPercentRuntime_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x8

    .line 19
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayPercentRuntime_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortPercentRuntime_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x9

    .line 21
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortPercentRuntime_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayDurationRuntime_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xa

    .line 23
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayDurationRuntime_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_a
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortHttpStatusRuntime_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xb

    .line 25
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortHttpStatusRuntime_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_b
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaultsRuntime_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xc

    .line 27
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaultsRuntime_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_c
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimitPercentRuntime_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xd

    .line 29
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimitPercentRuntime_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_d
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortGrpcStatusRuntime_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xe

    .line 31
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortGrpcStatusRuntime_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_e
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->disableDownstreamClusterStats_:Z

    if-eqz v1, :cond_f

    const/16 v2, 0xf

    .line 33
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_f
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getUpstreamCluster()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->upstreamCluster_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->upstreamCluster_:Ljava/lang/Object;

    return-object v0
.end method

.method public getUpstreamClusterBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->upstreamCluster_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->upstreamCluster_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAbort()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abort_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDelay()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delay_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxActiveFaults()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaults_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResponseRateLimit()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimit_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasDelay()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDelay()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasAbort()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getAbort()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getUpstreamCluster()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getHeadersCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getHeadersList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDownstreamNodesCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDownstreamNodesList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasMaxActiveFaults()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getMaxActiveFaults()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->hasResponseRateLimit()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getResponseRateLimit()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDelayPercentRuntime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getAbortPercentRuntime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDelayDurationRuntime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getAbortHttpStatusRuntime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getMaxActiveFaultsRuntime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getResponseRateLimitPercentRuntime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getAbortGrpcStatusRuntime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDisableDownstreamClusterStats()Z

    move-result v1

    .line 24
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 25
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/b;->f:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault$b;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delay_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getDelay()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultDelay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abort_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getAbort()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/FaultAbort;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->upstreamCluster_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->upstreamCluster_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 8
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->headers_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_3
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    .line 10
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->downstreamNodes_:Lcom/google/protobuf/z0;

    invoke-interface {v2, v0}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaults_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getMaxActiveFaults()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimit_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->getResponseRateLimit()Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/common/fault/v3/FaultRateLimit;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayPercentRuntime_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x8

    .line 16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayPercentRuntime_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortPercentRuntime_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortPercentRuntime_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayDurationRuntime_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    .line 20
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->delayDurationRuntime_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 21
    :cond_9
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortHttpStatusRuntime_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 22
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortHttpStatusRuntime_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 23
    :cond_a
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaultsRuntime_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xc

    .line 24
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->maxActiveFaultsRuntime_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 25
    :cond_b
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimitPercentRuntime_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xd

    .line 26
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->responseRateLimitPercentRuntime_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 27
    :cond_c
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortGrpcStatusRuntime_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0xe

    .line 28
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->abortGrpcStatusRuntime_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 29
    :cond_d
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/http/fault/v3/HTTPFault;->disableDownstreamClusterStats_:Z

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 30
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 31
    :cond_e
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
