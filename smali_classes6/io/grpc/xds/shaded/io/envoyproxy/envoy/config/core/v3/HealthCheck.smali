.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/a0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$i;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$e;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$RedisHealthCheck;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$h;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$f;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$Payload;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$g;
    }
.end annotation


# static fields
.field public static final ALT_PORT_FIELD_NUMBER:I = 0x6

.field public static final ALWAYS_LOG_HEALTH_CHECK_FAILURES_FIELD_NUMBER:I = 0x13

.field public static final CUSTOM_HEALTH_CHECK_FIELD_NUMBER:I = 0xd

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

.field public static final EVENT_LOG_PATH_FIELD_NUMBER:I = 0x11

.field public static final EVENT_SERVICE_FIELD_NUMBER:I = 0x16

.field public static final GRPC_HEALTH_CHECK_FIELD_NUMBER:I = 0xb

.field public static final HEALTHY_EDGE_INTERVAL_FIELD_NUMBER:I = 0x10

.field public static final HEALTHY_THRESHOLD_FIELD_NUMBER:I = 0x5

.field public static final HTTP_HEALTH_CHECK_FIELD_NUMBER:I = 0x8

.field public static final INITIAL_JITTER_FIELD_NUMBER:I = 0x14

.field public static final INTERVAL_FIELD_NUMBER:I = 0x2

.field public static final INTERVAL_JITTER_FIELD_NUMBER:I = 0x3

.field public static final INTERVAL_JITTER_PERCENT_FIELD_NUMBER:I = 0x12

.field public static final NO_TRAFFIC_HEALTHY_INTERVAL_FIELD_NUMBER:I = 0x18

.field public static final NO_TRAFFIC_INTERVAL_FIELD_NUMBER:I = 0xc

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;",
            ">;"
        }
    .end annotation
.end field

.field public static final REUSE_CONNECTION_FIELD_NUMBER:I = 0x7

.field public static final TCP_HEALTH_CHECK_FIELD_NUMBER:I = 0x9

.field public static final TIMEOUT_FIELD_NUMBER:I = 0x1

.field public static final TLS_OPTIONS_FIELD_NUMBER:I = 0x15

.field public static final TRANSPORT_SOCKET_MATCH_CRITERIA_FIELD_NUMBER:I = 0x17

.field public static final UNHEALTHY_EDGE_INTERVAL_FIELD_NUMBER:I = 0xf

.field public static final UNHEALTHY_INTERVAL_FIELD_NUMBER:I = 0xe

.field public static final UNHEALTHY_THRESHOLD_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private altPort_:Lcom/google/protobuf/UInt32Value;

.field private alwaysLogHealthCheckFailures_:Z

.field private volatile eventLogPath_:Ljava/lang/Object;

.field private eventService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

.field private healthCheckerCase_:I

.field private healthChecker_:Ljava/lang/Object;

.field private healthyEdgeInterval_:Lcom/google/protobuf/Duration;

.field private healthyThreshold_:Lcom/google/protobuf/UInt32Value;

.field private initialJitter_:Lcom/google/protobuf/Duration;

.field private intervalJitterPercent_:I

.field private intervalJitter_:Lcom/google/protobuf/Duration;

.field private interval_:Lcom/google/protobuf/Duration;

.field private memoizedIsInitialized:B

.field private noTrafficHealthyInterval_:Lcom/google/protobuf/Duration;

.field private noTrafficInterval_:Lcom/google/protobuf/Duration;

.field private reuseConnection_:Lcom/google/protobuf/BoolValue;

.field private timeout_:Lcom/google/protobuf/Duration;

.field private tlsOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

.field private transportSocketMatchCriteria_:Lcom/google/protobuf/Struct;

.field private unhealthyEdgeInterval_:Lcom/google/protobuf/Duration;

.field private unhealthyInterval_:Lcom/google/protobuf/Duration;

.field private unhealthyThreshold_:Lcom/google/protobuf/UInt32Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->memoizedIsInitialized:B

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventLogPath_:Ljava/lang/Object;

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;-><init>()V

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_19

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 14
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    goto/16 :goto_2

    .line 15
    :sswitch_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->noTrafficHealthyInterval_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_1

    .line 16
    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v4

    .line 17
    :cond_1
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Duration;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->noTrafficHealthyInterval_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_0

    .line 18
    invoke-virtual {v4, v2}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 19
    invoke-virtual {v4}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->noTrafficHealthyInterval_:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 20
    :sswitch_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->transportSocketMatchCriteria_:Lcom/google/protobuf/Struct;

    if-eqz v2, :cond_2

    .line 21
    invoke-virtual {v2}, Lcom/google/protobuf/Struct;->toBuilder()Lcom/google/protobuf/Struct$b;

    move-result-object v4

    .line 22
    :cond_2
    invoke-static {}, Lcom/google/protobuf/Struct;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Struct;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->transportSocketMatchCriteria_:Lcom/google/protobuf/Struct;

    if-eqz v4, :cond_0

    .line 23
    invoke-virtual {v4, v2}, Lcom/google/protobuf/Struct$b;->i0(Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct$b;

    .line 24
    invoke-virtual {v4}, Lcom/google/protobuf/Struct$b;->Y()Lcom/google/protobuf/Struct;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->transportSocketMatchCriteria_:Lcom/google/protobuf/Struct;

    goto :goto_0

    .line 25
    :sswitch_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    if-eqz v2, :cond_3

    .line 26
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig$c;

    move-result-object v4

    .line 27
    :cond_3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    if-eqz v4, :cond_0

    .line 28
    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig$c;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig$c;

    .line 29
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig$c;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    goto :goto_0

    .line 30
    :sswitch_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->tlsOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    if-eqz v2, :cond_4

    .line 31
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions$b;

    move-result-object v4

    .line 32
    :cond_4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->tlsOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    if-eqz v4, :cond_0

    .line 33
    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions$b;

    .line 34
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->tlsOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    goto/16 :goto_0

    .line 35
    :sswitch_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->initialJitter_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_5

    .line 36
    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v4

    .line 37
    :cond_5
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Duration;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->initialJitter_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_0

    .line 38
    invoke-virtual {v4, v2}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 39
    invoke-virtual {v4}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->initialJitter_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 40
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v2

    iput-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->alwaysLogHealthCheckFailures_:Z

    goto/16 :goto_0

    .line 41
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v2

    iput v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->intervalJitterPercent_:I

    goto/16 :goto_0

    .line 42
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v2

    .line 43
    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventLogPath_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 44
    :sswitch_8
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthyEdgeInterval_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_6

    .line 45
    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v4

    .line 46
    :cond_6
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Duration;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthyEdgeInterval_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_0

    .line 47
    invoke-virtual {v4, v2}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 48
    invoke-virtual {v4}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthyEdgeInterval_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 49
    :sswitch_9
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyEdgeInterval_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_7

    .line 50
    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v4

    .line 51
    :cond_7
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Duration;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyEdgeInterval_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_0

    .line 52
    invoke-virtual {v4, v2}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 53
    invoke-virtual {v4}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyEdgeInterval_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 54
    :sswitch_a
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyInterval_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_8

    .line 55
    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v4

    .line 56
    :cond_8
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Duration;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyInterval_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_0

    .line 57
    invoke-virtual {v4, v2}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 58
    invoke-virtual {v4}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyInterval_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 59
    :sswitch_b
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_9

    .line 60
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck$b;

    move-result-object v4

    .line 61
    :cond_9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    if-eqz v4, :cond_a

    .line 62
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck$b;

    .line 63
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    .line 64
    :cond_a
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    goto/16 :goto_0

    .line 65
    :sswitch_c
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->noTrafficInterval_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_b

    .line 66
    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v4

    .line 67
    :cond_b
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Duration;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->noTrafficInterval_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_0

    .line 68
    invoke-virtual {v4, v2}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 69
    invoke-virtual {v4}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->noTrafficInterval_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 70
    :sswitch_d
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_c

    .line 71
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck$b;

    move-result-object v4

    .line 72
    :cond_c
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    if-eqz v4, :cond_d

    .line 73
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck$b;

    .line 74
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    .line 75
    :cond_d
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    goto/16 :goto_0

    .line 76
    :sswitch_e
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_e

    .line 77
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck$b;

    move-result-object v4

    .line 78
    :cond_e
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    if-eqz v4, :cond_f

    .line 79
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck$b;

    .line 80
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    .line 81
    :cond_f
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    goto/16 :goto_0

    .line 82
    :sswitch_f
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_10

    .line 83
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;

    move-result-object v4

    .line 84
    :cond_10
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    if-eqz v4, :cond_11

    .line 85
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    invoke-virtual {v4, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;->l0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;

    .line 86
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    .line 87
    :cond_11
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    goto/16 :goto_0

    .line 88
    :sswitch_10
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->reuseConnection_:Lcom/google/protobuf/BoolValue;

    if-eqz v2, :cond_12

    .line 89
    invoke-virtual {v2}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v4

    .line 90
    :cond_12
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/BoolValue;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->reuseConnection_:Lcom/google/protobuf/BoolValue;

    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {v4, v2}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 92
    invoke-virtual {v4}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->reuseConnection_:Lcom/google/protobuf/BoolValue;

    goto/16 :goto_0

    .line 93
    :sswitch_11
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->altPort_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_13

    .line 94
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 95
    :cond_13
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->altPort_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 97
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->altPort_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 98
    :sswitch_12
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthyThreshold_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_14

    .line 99
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 100
    :cond_14
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthyThreshold_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 101
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 102
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthyThreshold_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 103
    :sswitch_13
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyThreshold_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_15

    .line 104
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 105
    :cond_15
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyThreshold_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 106
    invoke-virtual {v4, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 107
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyThreshold_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 108
    :sswitch_14
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->intervalJitter_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_16

    .line 109
    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v4

    .line 110
    :cond_16
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Duration;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->intervalJitter_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {v4, v2}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 112
    invoke-virtual {v4}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->intervalJitter_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 113
    :sswitch_15
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->interval_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_17

    .line 114
    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v4

    .line 115
    :cond_17
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Duration;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->interval_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_0

    .line 116
    invoke-virtual {v4, v2}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 117
    invoke-virtual {v4}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->interval_:Lcom/google/protobuf/Duration;

    goto/16 :goto_0

    .line 118
    :sswitch_16
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->timeout_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_18

    .line 119
    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v4

    .line 120
    :cond_18
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Duration;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->timeout_:Lcom/google/protobuf/Duration;

    if-eqz v4, :cond_0

    .line 121
    invoke-virtual {v4, v2}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 122
    invoke-virtual {v4}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->timeout_:Lcom/google/protobuf/Duration;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_17
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

    .line 123
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 124
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 125
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 127
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 128
    :cond_19
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 129
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_17
        0xa -> :sswitch_16
        0x12 -> :sswitch_15
        0x1a -> :sswitch_14
        0x22 -> :sswitch_13
        0x2a -> :sswitch_12
        0x32 -> :sswitch_11
        0x3a -> :sswitch_10
        0x42 -> :sswitch_f
        0x4a -> :sswitch_e
        0x5a -> :sswitch_d
        0x62 -> :sswitch_c
        0x6a -> :sswitch_b
        0x72 -> :sswitch_a
        0x7a -> :sswitch_9
        0x82 -> :sswitch_8
        0x8a -> :sswitch_7
        0x90 -> :sswitch_6
        0x98 -> :sswitch_5
        0xa2 -> :sswitch_4
        0xaa -> :sswitch_3
        0xb2 -> :sswitch_2
        0xba -> :sswitch_1
        0xc2 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$10000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventLogPath_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$10002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventLogPath_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    return-object p1
.end method

.method static synthetic access$10202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->alwaysLogHealthCheckFailures_:Z

    return p1
.end method

.method static synthetic access$10302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->tlsOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    return-object p1
.end method

.method static synthetic access$10402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Lcom/google/protobuf/Struct;)Lcom/google/protobuf/Struct;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->transportSocketMatchCriteria_:Lcom/google/protobuf/Struct;

    return-object p1
.end method

.method static synthetic access$10502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    return p1
.end method

.method static synthetic access$10600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$10700()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$8502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->timeout_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$8602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->interval_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$8702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->initialJitter_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$8802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->intervalJitter_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$8902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->intervalJitterPercent_:I

    return p1
.end method

.method static synthetic access$9002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyThreshold_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$9102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthyThreshold_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$9202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->altPort_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$9302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->reuseConnection_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$9402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->noTrafficInterval_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$9602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->noTrafficHealthyInterval_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$9702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyInterval_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$9802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyEdgeInterval_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$9902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthyEdgeInterval_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasTimeout()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasTimeout()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasTimeout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasInterval()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasInterval()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasInterval()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasInitialJitter()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasInitialJitter()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasInitialJitter()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getInitialJitter()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getInitialJitter()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasIntervalJitter()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasIntervalJitter()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasIntervalJitter()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getIntervalJitter()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getIntervalJitter()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getIntervalJitterPercent()I

    move-result v1

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getIntervalJitterPercent()I

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 22
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasUnhealthyThreshold()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasUnhealthyThreshold()Z

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    .line 23
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasUnhealthyThreshold()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 26
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasHealthyThreshold()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasHealthyThreshold()Z

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 27
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasHealthyThreshold()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHealthyThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHealthyThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v3

    .line 30
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasAltPort()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasAltPort()Z

    move-result v2

    if-eq v1, v2, :cond_f

    return v3

    .line 31
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasAltPort()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 32
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getAltPort()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getAltPort()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v3

    .line 34
    :cond_10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasReuseConnection()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasReuseConnection()Z

    move-result v2

    if-eq v1, v2, :cond_11

    return v3

    .line 35
    :cond_11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasReuseConnection()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 36
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getReuseConnection()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getReuseConnection()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v3

    .line 38
    :cond_12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasNoTrafficInterval()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasNoTrafficInterval()Z

    move-result v2

    if-eq v1, v2, :cond_13

    return v3

    .line 39
    :cond_13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasNoTrafficInterval()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 40
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getNoTrafficInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getNoTrafficInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v3

    .line 42
    :cond_14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasNoTrafficHealthyInterval()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasNoTrafficHealthyInterval()Z

    move-result v2

    if-eq v1, v2, :cond_15

    return v3

    .line 43
    :cond_15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasNoTrafficHealthyInterval()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 44
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getNoTrafficHealthyInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getNoTrafficHealthyInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v3

    .line 46
    :cond_16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasUnhealthyInterval()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasUnhealthyInterval()Z

    move-result v2

    if-eq v1, v2, :cond_17

    return v3

    .line 47
    :cond_17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasUnhealthyInterval()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 48
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v3

    .line 50
    :cond_18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasUnhealthyEdgeInterval()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasUnhealthyEdgeInterval()Z

    move-result v2

    if-eq v1, v2, :cond_19

    return v3

    .line 51
    :cond_19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasUnhealthyEdgeInterval()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 52
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyEdgeInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 53
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyEdgeInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v3

    .line 54
    :cond_1a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasHealthyEdgeInterval()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasHealthyEdgeInterval()Z

    move-result v2

    if-eq v1, v2, :cond_1b

    return v3

    .line 55
    :cond_1b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasHealthyEdgeInterval()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 56
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHealthyEdgeInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHealthyEdgeInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v3

    .line 58
    :cond_1c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getEventLogPath()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getEventLogPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v3

    .line 60
    :cond_1d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasEventService()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasEventService()Z

    move-result v2

    if-eq v1, v2, :cond_1e

    return v3

    .line 61
    :cond_1e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasEventService()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 62
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getEventService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    move-result-object v1

    .line 63
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getEventService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v3

    .line 64
    :cond_1f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getAlwaysLogHealthCheckFailures()Z

    move-result v1

    .line 65
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getAlwaysLogHealthCheckFailures()Z

    move-result v2

    if-eq v1, v2, :cond_20

    return v3

    .line 66
    :cond_20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasTlsOptions()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasTlsOptions()Z

    move-result v2

    if-eq v1, v2, :cond_21

    return v3

    .line 67
    :cond_21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasTlsOptions()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 68
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTlsOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    move-result-object v1

    .line 69
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTlsOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v3

    .line 70
    :cond_22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasTransportSocketMatchCriteria()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasTransportSocketMatchCriteria()Z

    move-result v2

    if-eq v1, v2, :cond_23

    return v3

    .line 71
    :cond_23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasTransportSocketMatchCriteria()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 72
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTransportSocketMatchCriteria()Lcom/google/protobuf/Struct;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTransportSocketMatchCriteria()Lcom/google/protobuf/Struct;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Struct;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v3

    .line 74
    :cond_24
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHealthCheckerCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHealthCheckerCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v3

    .line 75
    :cond_25
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_29

    const/16 v2, 0x9

    if-eq v1, v2, :cond_28

    const/16 v2, 0xb

    if-eq v1, v2, :cond_27

    const/16 v2, 0xd

    if-eq v1, v2, :cond_26

    goto :goto_0

    .line 76
    :cond_26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getCustomHealthCheck()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;

    move-result-object v1

    .line 77
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getCustomHealthCheck()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v3

    .line 78
    :cond_27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getGrpcHealthCheck()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;

    move-result-object v1

    .line 79
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getGrpcHealthCheck()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v3

    .line 80
    :cond_28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTcpHealthCheck()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTcpHealthCheck()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v3

    .line 82
    :cond_29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHttpHealthCheck()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    move-result-object v1

    .line 83
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHttpHealthCheck()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    return v3

    .line 84
    :cond_2a
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    return v3

    :cond_2b
    return v0
.end method

.method public getAltPort()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->altPort_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getAltPortOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getAltPort()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getAlwaysLogHealthCheckFailures()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->alwaysLogHealthCheckFailures_:Z

    return v0
.end method

.method public getCustomHealthCheck()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public getCustomHealthCheckOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    return-object v0
.end method

.method public getEventLogPath()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventLogPath_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventLogPath_:Ljava/lang/Object;

    return-object v0
.end method

.method public getEventLogPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventLogPath_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventLogPath_:Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getEventService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEventServiceOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/r;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getEventService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    move-result-object v0

    return-object v0
.end method

.method public getGrpcHealthCheck()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public getGrpcHealthCheckOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public getHealthCheckerCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    move-result-object v0

    return-object v0
.end method

.method public getHealthyEdgeInterval()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthyEdgeInterval_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHealthyEdgeIntervalOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHealthyEdgeInterval()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getHealthyThreshold()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthyThreshold_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHealthyThresholdOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHealthyThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHealthCheck()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHealthCheckOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$f;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public getInitialJitter()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->initialJitter_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInitialJitterOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getInitialJitter()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getInterval()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->interval_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIntervalJitter()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->intervalJitter_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIntervalJitterOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getIntervalJitter()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getIntervalJitterPercent()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->intervalJitterPercent_:I

    return v0
.end method

.method public getIntervalOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getInterval()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getNoTrafficHealthyInterval()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->noTrafficHealthyInterval_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNoTrafficHealthyIntervalOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getNoTrafficHealthyInterval()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getNoTrafficInterval()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->noTrafficInterval_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNoTrafficIntervalOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getNoTrafficInterval()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getReuseConnection()Lcom/google/protobuf/BoolValue;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->reuseConnection_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getReuseConnectionOrBuilder()Lcom/google/protobuf/l;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getReuseConnection()Lcom/google/protobuf/BoolValue;

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
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->timeout_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->interval_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->intervalJitter_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getIntervalJitter()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyThreshold_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthyThreshold_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHealthyThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->altPort_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getAltPort()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->reuseConnection_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getReuseConnection()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_7
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    .line 18
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    .line 20
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;

    .line 21
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_9
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_a

    .line 23
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;

    .line 24
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_a
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->noTrafficInterval_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getNoTrafficInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    :cond_b
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_c

    .line 28
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;

    .line 29
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_c
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyInterval_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_d

    const/16 v1, 0xe

    .line 31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 32
    :cond_d
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyEdgeInterval_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_e

    const/16 v1, 0xf

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyEdgeInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    :cond_e
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthyEdgeInterval_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_f

    const/16 v1, 0x10

    .line 35
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHealthyEdgeInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    :cond_f
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventLogPath_:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0x11

    .line 37
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventLogPath_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 38
    :cond_10
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->intervalJitterPercent_:I

    if-eqz v1, :cond_11

    const/16 v2, 0x12

    .line 39
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 40
    :cond_11
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->alwaysLogHealthCheckFailures_:Z

    if-eqz v1, :cond_12

    const/16 v2, 0x13

    .line 41
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 42
    :cond_12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->initialJitter_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_13

    const/16 v1, 0x14

    .line 43
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getInitialJitter()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    :cond_13
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->tlsOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    if-eqz v1, :cond_14

    const/16 v1, 0x15

    .line 45
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTlsOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    :cond_14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    if-eqz v1, :cond_15

    const/16 v1, 0x16

    .line 47
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getEventService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 48
    :cond_15
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->transportSocketMatchCriteria_:Lcom/google/protobuf/Struct;

    if-eqz v1, :cond_16

    const/16 v1, 0x17

    .line 49
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTransportSocketMatchCriteria()Lcom/google/protobuf/Struct;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 50
    :cond_16
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->noTrafficHealthyInterval_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_17

    const/16 v1, 0x18

    .line 51
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getNoTrafficHealthyInterval()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 52
    :cond_17
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 53
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTcpHealthCheck()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public getTcpHealthCheckOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$h;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->timeout_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimeoutOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getTlsOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->tlsOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTlsOptionsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$i;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTlsOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    move-result-object v0

    return-object v0
.end method

.method public getTransportSocketMatchCriteria()Lcom/google/protobuf/Struct;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->transportSocketMatchCriteria_:Lcom/google/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Struct;->getDefaultInstance()Lcom/google/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTransportSocketMatchCriteriaOrBuilder()Lcom/google/protobuf/u2;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTransportSocketMatchCriteria()Lcom/google/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public getUnhealthyEdgeInterval()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyEdgeInterval_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUnhealthyEdgeIntervalOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyEdgeInterval()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getUnhealthyInterval()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyInterval_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUnhealthyIntervalOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyInterval()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getUnhealthyThreshold()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyThreshold_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUnhealthyThresholdOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasAltPort()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->altPort_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCustomHealthCheck()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEventService()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGrpcHealthCheck()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHealthyEdgeInterval()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthyEdgeInterval_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHealthyThreshold()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthyThreshold_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHttpHealthCheck()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInitialJitter()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->initialJitter_:Lcom/google/protobuf/Duration;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->interval_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIntervalJitter()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->intervalJitter_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNoTrafficHealthyInterval()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->noTrafficHealthyInterval_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNoTrafficInterval()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->noTrafficInterval_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReuseConnection()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->reuseConnection_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTcpHealthCheck()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimeout()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->timeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTlsOptions()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->tlsOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransportSocketMatchCriteria()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->transportSocketMatchCriteria_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnhealthyEdgeInterval()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyEdgeInterval_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnhealthyInterval()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyInterval_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnhealthyThreshold()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyThreshold_:Lcom/google/protobuf/UInt32Value;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasTimeout()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasInterval()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasInitialJitter()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getInitialJitter()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasIntervalJitter()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getIntervalJitter()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x12

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getIntervalJitterPercent()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasUnhealthyThreshold()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasHealthyThreshold()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHealthyThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasAltPort()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getAltPort()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasReuseConnection()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getReuseConnection()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasNoTrafficInterval()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getNoTrafficInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasNoTrafficHealthyInterval()Z

    move-result v1

    if-eqz v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x18

    mul-int/lit8 v0, v0, 0x35

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getNoTrafficHealthyInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasUnhealthyInterval()Z

    move-result v1

    if-eqz v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xe

    mul-int/lit8 v0, v0, 0x35

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasUnhealthyEdgeInterval()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0x35

    .line 27
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyEdgeInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasHealthyEdgeInterval()Z

    move-result v1

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v0, v0, 0x35

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHealthyEdgeInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x11

    mul-int/lit8 v0, v0, 0x35

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getEventLogPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 31
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasEventService()Z

    move-result v1

    if-eqz v1, :cond_e

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x16

    mul-int/lit8 v0, v0, 0x35

    .line 32
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getEventService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x13

    mul-int/lit8 v0, v0, 0x35

    .line 33
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getAlwaysLogHealthCheckFailures()Z

    move-result v1

    .line 34
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 35
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasTlsOptions()Z

    move-result v1

    if-eqz v1, :cond_f

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x15

    mul-int/lit8 v0, v0, 0x35

    .line 36
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTlsOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 37
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->hasTransportSocketMatchCriteria()Z

    move-result v1

    if-eqz v1, :cond_10

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x17

    mul-int/lit8 v0, v0, 0x35

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTransportSocketMatchCriteria()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Struct;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 39
    :cond_10
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_14

    const/16 v2, 0x9

    if-eq v1, v2, :cond_13

    const/16 v2, 0xb

    if-eq v1, v2, :cond_12

    const/16 v2, 0xd

    if-eq v1, v2, :cond_11

    goto :goto_1

    :cond_11
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 40
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getCustomHealthCheck()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_12
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 41
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getGrpcHealthCheck()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_13
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTcpHealthCheck()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_14
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 43
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHttpHealthCheck()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 44
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 45
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/b0;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;->j0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$c;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->timeout_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTimeout()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->interval_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->intervalJitter_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getIntervalJitter()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyThreshold_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthyThreshold_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHealthyThreshold()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->altPort_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getAltPort()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->reuseConnection_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getReuseConnection()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    .line 16
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HttpHealthCheck;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 18
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TcpHealthCheck;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    .line 20
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$GrpcHealthCheck;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 21
    :cond_9
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->noTrafficInterval_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getNoTrafficInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 23
    :cond_a
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthCheckerCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    .line 24
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthChecker_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$CustomHealthCheck;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 25
    :cond_b
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyInterval_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_c

    const/16 v0, 0xe

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 27
    :cond_c
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->unhealthyEdgeInterval_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_d

    const/16 v0, 0xf

    .line 28
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getUnhealthyEdgeInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 29
    :cond_d
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->healthyEdgeInterval_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_e

    const/16 v0, 0x10

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getHealthyEdgeInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 31
    :cond_e
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventLogPath_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x11

    .line 32
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventLogPath_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 33
    :cond_f
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->intervalJitterPercent_:I

    if-eqz v0, :cond_10

    const/16 v1, 0x12

    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 35
    :cond_10
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->alwaysLogHealthCheckFailures_:Z

    if-eqz v0, :cond_11

    const/16 v1, 0x13

    .line 36
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 37
    :cond_11
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->initialJitter_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_12

    const/16 v0, 0x14

    .line 38
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getInitialJitter()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 39
    :cond_12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->tlsOptions_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    if-eqz v0, :cond_13

    const/16 v0, 0x15

    .line 40
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTlsOptions()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$TlsOptions;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 41
    :cond_13
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->eventService_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    if-eqz v0, :cond_14

    const/16 v0, 0x16

    .line 42
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getEventService()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/EventServiceConfig;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 43
    :cond_14
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->transportSocketMatchCriteria_:Lcom/google/protobuf/Struct;

    if-eqz v0, :cond_15

    const/16 v0, 0x17

    .line 44
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getTransportSocketMatchCriteria()Lcom/google/protobuf/Struct;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 45
    :cond_15
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->noTrafficHealthyInterval_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_16

    const/16 v0, 0x18

    .line 46
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;->getNoTrafficHealthyInterval()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 47
    :cond_16
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
