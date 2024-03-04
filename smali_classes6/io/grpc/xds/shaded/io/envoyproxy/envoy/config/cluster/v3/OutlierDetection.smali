.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;
    }
.end annotation


# static fields
.field public static final BASE_EJECTION_TIME_FIELD_NUMBER:I = 0x3

.field public static final CONSECUTIVE_5XX_FIELD_NUMBER:I = 0x1

.field public static final CONSECUTIVE_GATEWAY_FAILURE_FIELD_NUMBER:I = 0xa

.field public static final CONSECUTIVE_LOCAL_ORIGIN_FAILURE_FIELD_NUMBER:I = 0xd

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

.field public static final ENFORCING_CONSECUTIVE_5XX_FIELD_NUMBER:I = 0x5

.field public static final ENFORCING_CONSECUTIVE_GATEWAY_FAILURE_FIELD_NUMBER:I = 0xb

.field public static final ENFORCING_CONSECUTIVE_LOCAL_ORIGIN_FAILURE_FIELD_NUMBER:I = 0xe

.field public static final ENFORCING_FAILURE_PERCENTAGE_FIELD_NUMBER:I = 0x11

.field public static final ENFORCING_FAILURE_PERCENTAGE_LOCAL_ORIGIN_FIELD_NUMBER:I = 0x12

.field public static final ENFORCING_LOCAL_ORIGIN_SUCCESS_RATE_FIELD_NUMBER:I = 0xf

.field public static final ENFORCING_SUCCESS_RATE_FIELD_NUMBER:I = 0x6

.field public static final FAILURE_PERCENTAGE_MINIMUM_HOSTS_FIELD_NUMBER:I = 0x13

.field public static final FAILURE_PERCENTAGE_REQUEST_VOLUME_FIELD_NUMBER:I = 0x14

.field public static final FAILURE_PERCENTAGE_THRESHOLD_FIELD_NUMBER:I = 0x10

.field public static final INTERVAL_FIELD_NUMBER:I = 0x2

.field public static final MAX_EJECTION_PERCENT_FIELD_NUMBER:I = 0x4

.field public static final MAX_EJECTION_TIME_FIELD_NUMBER:I = 0x15

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPLIT_EXTERNAL_LOCAL_ORIGIN_ERRORS_FIELD_NUMBER:I = 0xc

.field public static final SUCCESS_RATE_MINIMUM_HOSTS_FIELD_NUMBER:I = 0x7

.field public static final SUCCESS_RATE_REQUEST_VOLUME_FIELD_NUMBER:I = 0x8

.field public static final SUCCESS_RATE_STDEV_FACTOR_FIELD_NUMBER:I = 0x9

.field private static final serialVersionUID:J


# instance fields
.field private baseEjectionTime_:Lcom/google/protobuf/Duration;

.field private consecutive5Xx_:Lcom/google/protobuf/UInt32Value;

.field private consecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

.field private consecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

.field private enforcingConsecutive5Xx_:Lcom/google/protobuf/UInt32Value;

.field private enforcingConsecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

.field private enforcingConsecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

.field private enforcingFailurePercentageLocalOrigin_:Lcom/google/protobuf/UInt32Value;

.field private enforcingFailurePercentage_:Lcom/google/protobuf/UInt32Value;

.field private enforcingLocalOriginSuccessRate_:Lcom/google/protobuf/UInt32Value;

.field private enforcingSuccessRate_:Lcom/google/protobuf/UInt32Value;

.field private failurePercentageMinimumHosts_:Lcom/google/protobuf/UInt32Value;

.field private failurePercentageRequestVolume_:Lcom/google/protobuf/UInt32Value;

.field private failurePercentageThreshold_:Lcom/google/protobuf/UInt32Value;

.field private interval_:Lcom/google/protobuf/Duration;

.field private maxEjectionPercent_:Lcom/google/protobuf/UInt32Value;

.field private maxEjectionTime_:Lcom/google/protobuf/Duration;

.field private memoizedIsInitialized:B

.field private splitExternalLocalOriginErrors_:Z

.field private successRateMinimumHosts_:Lcom/google/protobuf/UInt32Value;

.field private successRateRequestVolume_:Lcom/google/protobuf/UInt32Value;

.field private successRateStdevFactor_:Lcom/google/protobuf/UInt32Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->memoizedIsInitialized:B

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;-><init>()V

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_15

    .line 10
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 11
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    goto/16 :goto_2

    .line 12
    :sswitch_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->maxEjectionTime_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v4

    .line 14
    :cond_1
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Duration;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->maxEjectionTime_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_0

    .line 15
    invoke-virtual {v4, v2}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 16
    invoke-virtual {v4}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->maxEjectionTime_:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 17
    :sswitch_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageRequestVolume_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 19
    :cond_2
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageRequestVolume_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 20
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 21
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageRequestVolume_:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 22
    :sswitch_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageMinimumHosts_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_3

    .line 23
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 24
    :cond_3
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageMinimumHosts_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 25
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 26
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageMinimumHosts_:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 27
    :sswitch_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingFailurePercentageLocalOrigin_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_4

    .line 28
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 29
    :cond_4
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingFailurePercentageLocalOrigin_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 30
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 31
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingFailurePercentageLocalOrigin_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 32
    :sswitch_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingFailurePercentage_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_5

    .line 33
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 34
    :cond_5
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingFailurePercentage_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 36
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingFailurePercentage_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 37
    :sswitch_5
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageThreshold_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_6

    .line 38
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 39
    :cond_6
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageThreshold_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 40
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 41
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageThreshold_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 42
    :sswitch_6
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingLocalOriginSuccessRate_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_7

    .line 43
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 44
    :cond_7
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingLocalOriginSuccessRate_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 45
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 46
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingLocalOriginSuccessRate_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 47
    :sswitch_7
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_8

    .line 48
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 49
    :cond_8
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 50
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 51
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 52
    :sswitch_8
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_9

    .line 53
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 54
    :cond_9
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 55
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 56
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 57
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v2

    iput-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->splitExternalLocalOriginErrors_:Z

    goto/16 :goto_0

    .line 58
    :sswitch_a
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_a

    .line 59
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 60
    :cond_a
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 62
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 63
    :sswitch_b
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_b

    .line 64
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 65
    :cond_b
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 66
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 67
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 68
    :sswitch_c
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateStdevFactor_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_c

    .line 69
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 70
    :cond_c
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateStdevFactor_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 71
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 72
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateStdevFactor_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 73
    :sswitch_d
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateRequestVolume_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_d

    .line 74
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 75
    :cond_d
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateRequestVolume_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 77
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateRequestVolume_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 78
    :sswitch_e
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateMinimumHosts_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_e

    .line 79
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 80
    :cond_e
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateMinimumHosts_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 81
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 82
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateMinimumHosts_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 83
    :sswitch_f
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingSuccessRate_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_f

    .line 84
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 85
    :cond_f
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingSuccessRate_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 86
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 87
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingSuccessRate_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 88
    :sswitch_10
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutive5Xx_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_10

    .line 89
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 90
    :cond_10
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutive5Xx_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 92
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutive5Xx_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 93
    :sswitch_11
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->maxEjectionPercent_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_11

    .line 94
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 95
    :cond_11
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->maxEjectionPercent_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 97
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->maxEjectionPercent_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 98
    :sswitch_12
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->baseEjectionTime_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_12

    .line 99
    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v4

    .line 100
    :cond_12
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Duration;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->baseEjectionTime_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_0

    .line 101
    invoke-virtual {v4, v2}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 102
    invoke-virtual {v4}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->baseEjectionTime_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 103
    :sswitch_13
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->interval_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_13

    .line 104
    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v4

    .line 105
    :cond_13
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Duration;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->interval_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_0

    .line 106
    invoke-virtual {v4, v2}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 107
    invoke-virtual {v4}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->interval_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 108
    :sswitch_14
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutive5Xx_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_14

    .line 109
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 110
    :cond_14
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutive5Xx_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 112
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutive5Xx_:Lcom/google/protobuf/UInt32Value;
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
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 113
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 114
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 115
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 117
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 118
    :cond_15
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 119
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
        0x42 -> :sswitch_d
        0x4a -> :sswitch_c
        0x52 -> :sswitch_b
        0x5a -> :sswitch_a
        0x60 -> :sswitch_9
        0x6a -> :sswitch_8
        0x72 -> :sswitch_7
        0x7a -> :sswitch_6
        0x82 -> :sswitch_5
        0x8a -> :sswitch_4
        0x92 -> :sswitch_3
        0x9a -> :sswitch_2
        0xa2 -> :sswitch_1
        0xaa -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateMinimumHosts_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateRequestVolume_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateStdevFactor_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->splitExternalLocalOriginErrors_:Z

    return p1
.end method

.method static synthetic access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingLocalOriginSuccessRate_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageThreshold_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingFailurePercentage_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$2102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingFailurePercentageLocalOrigin_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$2202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageMinimumHosts_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$2302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageRequestVolume_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$2402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->maxEjectionTime_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$2500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$2600()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutive5Xx_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->interval_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->baseEjectionTime_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->maxEjectionPercent_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutive5Xx_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingSuccessRate_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/i;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;->v0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasConsecutive5Xx()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasConsecutive5Xx()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasConsecutive5Xx()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutive5Xx()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutive5Xx()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasInterval()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasInterval()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasInterval()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasBaseEjectionTime()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasBaseEjectionTime()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasBaseEjectionTime()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getBaseEjectionTime()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getBaseEjectionTime()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasMaxEjectionPercent()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasMaxEjectionPercent()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasMaxEjectionPercent()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getMaxEjectionPercent()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getMaxEjectionPercent()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingConsecutive5Xx()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingConsecutive5Xx()Z

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 21
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingConsecutive5Xx()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutive5Xx()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutive5Xx()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    .line 24
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingSuccessRate()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingSuccessRate()Z

    move-result v2

    if-eq v1, v2, :cond_c

    return v3

    .line 25
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingSuccessRate()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingSuccessRate()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingSuccessRate()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 28
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasSuccessRateMinimumHosts()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasSuccessRateMinimumHosts()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 29
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasSuccessRateMinimumHosts()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateMinimumHosts()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateMinimumHosts()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 32
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasSuccessRateRequestVolume()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasSuccessRateRequestVolume()Z

    move-result v2

    if-eq v1, v2, :cond_10

    return v3

    .line 33
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasSuccessRateRequestVolume()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateRequestVolume()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 35
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateRequestVolume()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v3

    .line 36
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasSuccessRateStdevFactor()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasSuccessRateStdevFactor()Z

    move-result v2

    if-eq v1, v2, :cond_12

    return v3

    .line 37
    :cond_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasSuccessRateStdevFactor()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateStdevFactor()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateStdevFactor()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v3

    .line 40
    :cond_13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasConsecutiveGatewayFailure()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasConsecutiveGatewayFailure()Z

    move-result v2

    if-eq v1, v2, :cond_14

    return v3

    .line 41
    :cond_14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasConsecutiveGatewayFailure()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutiveGatewayFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutiveGatewayFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v3

    .line 44
    :cond_15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingConsecutiveGatewayFailure()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingConsecutiveGatewayFailure()Z

    move-result v2

    if-eq v1, v2, :cond_16

    return v3

    .line 45
    :cond_16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingConsecutiveGatewayFailure()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 46
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutiveGatewayFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutiveGatewayFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v3

    .line 48
    :cond_17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSplitExternalLocalOriginErrors()Z

    move-result v1

    .line 49
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSplitExternalLocalOriginErrors()Z

    move-result v2

    if-eq v1, v2, :cond_18

    return v3

    .line 50
    :cond_18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasConsecutiveLocalOriginFailure()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasConsecutiveLocalOriginFailure()Z

    move-result v2

    if-eq v1, v2, :cond_19

    return v3

    .line 51
    :cond_19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasConsecutiveLocalOriginFailure()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 52
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutiveLocalOriginFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutiveLocalOriginFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v3

    .line 54
    :cond_1a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingConsecutiveLocalOriginFailure()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingConsecutiveLocalOriginFailure()Z

    move-result v2

    if-eq v1, v2, :cond_1b

    return v3

    .line 55
    :cond_1b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingConsecutiveLocalOriginFailure()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 56
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutiveLocalOriginFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutiveLocalOriginFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v3

    .line 58
    :cond_1c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingLocalOriginSuccessRate()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingLocalOriginSuccessRate()Z

    move-result v2

    if-eq v1, v2, :cond_1d

    return v3

    .line 59
    :cond_1d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingLocalOriginSuccessRate()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 60
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingLocalOriginSuccessRate()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingLocalOriginSuccessRate()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v3

    .line 62
    :cond_1e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasFailurePercentageThreshold()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasFailurePercentageThreshold()Z

    move-result v2

    if-eq v1, v2, :cond_1f

    return v3

    .line 63
    :cond_1f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasFailurePercentageThreshold()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 64
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v3

    .line 66
    :cond_20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingFailurePercentage()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingFailurePercentage()Z

    move-result v2

    if-eq v1, v2, :cond_21

    return v3

    .line 67
    :cond_21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingFailurePercentage()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 68
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingFailurePercentage()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 69
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingFailurePercentage()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v3

    .line 70
    :cond_22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingFailurePercentageLocalOrigin()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingFailurePercentageLocalOrigin()Z

    move-result v2

    if-eq v1, v2, :cond_23

    return v3

    .line 71
    :cond_23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingFailurePercentageLocalOrigin()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 72
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingFailurePercentageLocalOrigin()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingFailurePercentageLocalOrigin()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v3

    .line 74
    :cond_24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasFailurePercentageMinimumHosts()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasFailurePercentageMinimumHosts()Z

    move-result v2

    if-eq v1, v2, :cond_25

    return v3

    .line 75
    :cond_25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasFailurePercentageMinimumHosts()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 76
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageMinimumHosts()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 77
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageMinimumHosts()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v3

    .line 78
    :cond_26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasFailurePercentageRequestVolume()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasFailurePercentageRequestVolume()Z

    move-result v2

    if-eq v1, v2, :cond_27

    return v3

    .line 79
    :cond_27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasFailurePercentageRequestVolume()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 80
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageRequestVolume()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageRequestVolume()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    return v3

    .line 82
    :cond_28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasMaxEjectionTime()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasMaxEjectionTime()Z

    move-result v2

    if-eq v1, v2, :cond_29

    return v3

    .line 83
    :cond_29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasMaxEjectionTime()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 84
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getMaxEjectionTime()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getMaxEjectionTime()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v3

    .line 86
    :cond_2a
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    return v3

    :cond_2b
    return v0
.end method

.method public getBaseEjectionTime()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->baseEjectionTime_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBaseEjectionTimeOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getBaseEjectionTime()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getConsecutive5Xx()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutive5Xx_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConsecutive5XxOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutive5Xx()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getConsecutiveGatewayFailure()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConsecutiveGatewayFailureOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutiveGatewayFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getConsecutiveLocalOriginFailure()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConsecutiveLocalOriginFailureOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutiveLocalOriginFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    return-object v0
.end method

.method public getEnforcingConsecutive5Xx()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutive5Xx_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEnforcingConsecutive5XxOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutive5Xx()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getEnforcingConsecutiveGatewayFailure()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEnforcingConsecutiveGatewayFailureOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutiveGatewayFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getEnforcingConsecutiveLocalOriginFailure()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEnforcingConsecutiveLocalOriginFailureOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutiveLocalOriginFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getEnforcingFailurePercentage()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingFailurePercentage_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEnforcingFailurePercentageLocalOrigin()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingFailurePercentageLocalOrigin_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEnforcingFailurePercentageLocalOriginOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingFailurePercentageLocalOrigin()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getEnforcingFailurePercentageOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingFailurePercentage()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getEnforcingLocalOriginSuccessRate()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingLocalOriginSuccessRate_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEnforcingLocalOriginSuccessRateOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingLocalOriginSuccessRate()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getEnforcingSuccessRate()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingSuccessRate_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEnforcingSuccessRateOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingSuccessRate()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getFailurePercentageMinimumHosts()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageMinimumHosts_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFailurePercentageMinimumHostsOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageMinimumHosts()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getFailurePercentageRequestVolume()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageRequestVolume_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFailurePercentageRequestVolumeOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageRequestVolume()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getFailurePercentageThreshold()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageThreshold_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFailurePercentageThresholdOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getInterval()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->interval_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIntervalOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getInterval()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getMaxEjectionPercent()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->maxEjectionPercent_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxEjectionPercentOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getMaxEjectionPercent()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getMaxEjectionTime()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->maxEjectionTime_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxEjectionTimeOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getMaxEjectionTime()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->PARSER:Lcom/google/protobuf/e2;

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
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutive5Xx_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutive5Xx()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->interval_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->baseEjectionTime_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getBaseEjectionTime()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->maxEjectionPercent_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getMaxEjectionPercent()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutive5Xx_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutive5Xx()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingSuccessRate_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingSuccessRate()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateMinimumHosts_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateMinimumHosts()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateRequestVolume_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateRequestVolume()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateStdevFactor_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateStdevFactor()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutiveGatewayFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_a
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutiveGatewayFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_b
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->splitExternalLocalOriginErrors_:Z

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 25
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_c
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_d

    const/16 v1, 0xd

    .line 27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutiveLocalOriginFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_d
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_e

    const/16 v1, 0xe

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutiveLocalOriginFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_e
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingLocalOriginSuccessRate_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_f

    const/16 v1, 0xf

    .line 31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingLocalOriginSuccessRate()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_f
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageThreshold_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_10

    const/16 v1, 0x10

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_10
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingFailurePercentage_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_11

    const/16 v1, 0x11

    .line 35
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingFailurePercentage()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_11
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingFailurePercentageLocalOrigin_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_12

    const/16 v1, 0x12

    .line 37
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingFailurePercentageLocalOrigin()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageMinimumHosts_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_13

    const/16 v1, 0x13

    .line 39
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageMinimumHosts()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageRequestVolume_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_14

    const/16 v1, 0x14

    .line 41
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageRequestVolume()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->maxEjectionTime_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_15

    const/16 v1, 0x15

    .line 43
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getMaxEjectionTime()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_15
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getSplitExternalLocalOriginErrors()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->splitExternalLocalOriginErrors_:Z

    return v0
.end method

.method public getSuccessRateMinimumHosts()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateMinimumHosts_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSuccessRateMinimumHostsOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateMinimumHosts()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getSuccessRateRequestVolume()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateRequestVolume_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSuccessRateRequestVolumeOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateRequestVolume()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getSuccessRateStdevFactor()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateStdevFactor_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSuccessRateStdevFactorOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateStdevFactor()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasBaseEjectionTime()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->baseEjectionTime_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConsecutive5Xx()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutive5Xx_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConsecutiveGatewayFailure()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConsecutiveLocalOriginFailure()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnforcingConsecutive5Xx()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutive5Xx_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnforcingConsecutiveGatewayFailure()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnforcingConsecutiveLocalOriginFailure()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnforcingFailurePercentage()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingFailurePercentage_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnforcingFailurePercentageLocalOrigin()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingFailurePercentageLocalOrigin_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnforcingLocalOriginSuccessRate()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingLocalOriginSuccessRate_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnforcingSuccessRate()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingSuccessRate_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFailurePercentageMinimumHosts()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageMinimumHosts_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFailurePercentageRequestVolume()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageRequestVolume_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFailurePercentageThreshold()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageThreshold_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInterval()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->interval_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxEjectionPercent()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->maxEjectionPercent_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxEjectionTime()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->maxEjectionTime_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSuccessRateMinimumHosts()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateMinimumHosts_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSuccessRateRequestVolume()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateRequestVolume_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSuccessRateStdevFactor()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateStdevFactor_:Lcom/google/protobuf/UInt32Value;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasConsecutive5Xx()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutive5Xx()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasInterval()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasBaseEjectionTime()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getBaseEjectionTime()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasMaxEjectionPercent()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getMaxEjectionPercent()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingConsecutive5Xx()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutive5Xx()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingSuccessRate()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingSuccessRate()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasSuccessRateMinimumHosts()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateMinimumHosts()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasSuccessRateRequestVolume()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateRequestVolume()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasSuccessRateStdevFactor()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateStdevFactor()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasConsecutiveGatewayFailure()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutiveGatewayFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingConsecutiveGatewayFailure()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutiveGatewayFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSplitExternalLocalOriginErrors()Z

    move-result v1

    .line 26
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasConsecutiveLocalOriginFailure()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xd

    mul-int/lit8 v0, v0, 0x35

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutiveLocalOriginFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingConsecutiveLocalOriginFailure()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutiveLocalOriginFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingLocalOriginSuccessRate()Z

    move-result v1

    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 32
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingLocalOriginSuccessRate()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 33
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasFailurePercentageThreshold()Z

    move-result v1

    if-eqz v1, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingFailurePercentage()Z

    move-result v1

    if-eqz v1, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 36
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingFailurePercentage()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasEnforcingFailurePercentageLocalOrigin()Z

    move-result v1

    if-eqz v1, :cond_11

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingFailurePercentageLocalOrigin()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasFailurePercentageMinimumHosts()Z

    move-result v1

    if-eqz v1, :cond_12

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 40
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageMinimumHosts()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 41
    :cond_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasFailurePercentageRequestVolume()Z

    move-result v1

    if-eqz v1, :cond_13

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageRequestVolume()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 43
    :cond_13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->hasMaxEjectionTime()Z

    move-result v1

    if-eqz v1, :cond_14

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    .line 44
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getMaxEjectionTime()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    mul-int/lit8 v0, v0, 0x1d

    .line 45
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/i;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;->v0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection$b;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutive5Xx_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutive5Xx()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->interval_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->baseEjectionTime_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getBaseEjectionTime()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->maxEjectionPercent_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getMaxEjectionPercent()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutive5Xx_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutive5Xx()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingSuccessRate_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingSuccessRate()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateMinimumHosts_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateMinimumHosts()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateRequestVolume_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateRequestVolume()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->successRateStdevFactor_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getSuccessRateStdevFactor()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutiveGatewayFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 21
    :cond_9
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutiveGatewayFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutiveGatewayFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 23
    :cond_a
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->splitExternalLocalOriginErrors_:Z

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 24
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 25
    :cond_b
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->consecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getConsecutiveLocalOriginFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 27
    :cond_c
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingConsecutiveLocalOriginFailure_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingConsecutiveLocalOriginFailure()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 29
    :cond_d
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingLocalOriginSuccessRate_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingLocalOriginSuccessRate()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 31
    :cond_e
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageThreshold_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    .line 32
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 33
    :cond_f
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingFailurePercentage_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_10

    const/16 v0, 0x11

    .line 34
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingFailurePercentage()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 35
    :cond_10
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->enforcingFailurePercentageLocalOrigin_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_11

    const/16 v0, 0x12

    .line 36
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getEnforcingFailurePercentageLocalOrigin()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 37
    :cond_11
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageMinimumHosts_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageMinimumHosts()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 39
    :cond_12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->failurePercentageRequestVolume_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_13

    const/16 v0, 0x14

    .line 40
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getFailurePercentageRequestVolume()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 41
    :cond_13
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->maxEjectionTime_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_14

    const/16 v0, 0x15

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/OutlierDetection;->getMaxEjectionTime()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 43
    :cond_14
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
