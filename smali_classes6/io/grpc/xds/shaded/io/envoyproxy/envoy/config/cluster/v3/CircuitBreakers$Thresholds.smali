.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Thresholds"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$c;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

.field public static final MAX_CONNECTIONS_FIELD_NUMBER:I = 0x2

.field public static final MAX_CONNECTION_POOLS_FIELD_NUMBER:I = 0x7

.field public static final MAX_PENDING_REQUESTS_FIELD_NUMBER:I = 0x3

.field public static final MAX_REQUESTS_FIELD_NUMBER:I = 0x4

.field public static final MAX_RETRIES_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_FIELD_NUMBER:I = 0x1

.field public static final RETRY_BUDGET_FIELD_NUMBER:I = 0x8

.field public static final TRACK_REMAINING_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private maxConnectionPools_:Lcom/google/protobuf/UInt32Value;

.field private maxConnections_:Lcom/google/protobuf/UInt32Value;

.field private maxPendingRequests_:Lcom/google/protobuf/UInt32Value;

.field private maxRequests_:Lcom/google/protobuf/UInt32Value;

.field private maxRetries_:Lcom/google/protobuf/UInt32Value;

.field private memoizedIsInitialized:B

.field private priority_:I

.field private retryBudget_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

.field private trackRemaining_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->priority_:I

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;-><init>()V

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_10

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_f

    const/16 v4, 0x8

    if-eq v2, v4, :cond_e

    const/16 v4, 0x12

    const/4 v5, 0x0

    if-eq v2, v4, :cond_c

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_a

    const/16 v4, 0x22

    if-eq v2, v4, :cond_8

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_6

    const/16 v4, 0x30

    if-eq v2, v4, :cond_5

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x42

    if-eq v2, v4, :cond_1

    .line 12
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 13
    :cond_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->retryBudget_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget$b;

    move-result-object v5

    .line 15
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->retryBudget_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

    if-eqz v5, :cond_0

    .line 16
    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget$b;

    .line 17
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->retryBudget_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

    goto :goto_0

    .line 18
    :cond_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxConnectionPools_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_4

    .line 19
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v5

    .line 20
    :cond_4
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxConnectionPools_:Lcom/google/protobuf/UInt32Value;

    if-eqz v5, :cond_0

    .line 21
    invoke-virtual {v5, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 22
    invoke-virtual {v5}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxConnectionPools_:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 23
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v2

    iput-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->trackRemaining_:Z

    goto :goto_0

    .line 24
    :cond_6
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxRetries_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_7

    .line 25
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v5

    .line 26
    :cond_7
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxRetries_:Lcom/google/protobuf/UInt32Value;

    if-eqz v5, :cond_0

    .line 27
    invoke-virtual {v5, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 28
    invoke-virtual {v5}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxRetries_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 29
    :cond_8
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxRequests_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_9

    .line 30
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v5

    .line 31
    :cond_9
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxRequests_:Lcom/google/protobuf/UInt32Value;

    if-eqz v5, :cond_0

    .line 32
    invoke-virtual {v5, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 33
    invoke-virtual {v5}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxRequests_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 34
    :cond_a
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxPendingRequests_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_b

    .line 35
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v5

    .line 36
    :cond_b
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxPendingRequests_:Lcom/google/protobuf/UInt32Value;

    if-eqz v5, :cond_0

    .line 37
    invoke-virtual {v5, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 38
    invoke-virtual {v5}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxPendingRequests_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 39
    :cond_c
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxConnections_:Lcom/google/protobuf/UInt32Value;

    if-eqz v2, :cond_d

    .line 40
    invoke-virtual {v2}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v5

    .line 41
    :cond_d
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UInt32Value;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxConnections_:Lcom/google/protobuf/UInt32Value;

    if-eqz v5, :cond_0

    .line 42
    invoke-virtual {v5, v2}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 43
    invoke-virtual {v5}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxConnections_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 44
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 45
    iput v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->priority_:I
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

    .line 46
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 47
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 48
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 50
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 51
    :cond_10
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 52
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1300(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->priority_:I

    return p0
.end method

.method static synthetic access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->priority_:I

    return p1
.end method

.method static synthetic access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxConnections_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxPendingRequests_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxRequests_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxRetries_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->retryBudget_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

    return-object p1
.end method

.method static synthetic access$1902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->trackRemaining_:Z

    return p1
.end method

.method static synthetic access$2002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxConnectionPools_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$2100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$2200()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/a;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->priority_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->priority_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxConnections()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxConnections()Z

    move-result v2

    if-eq v1, v2, :cond_3

    return v3

    .line 6
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxConnections()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxConnections()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxConnections()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxPendingRequests()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxPendingRequests()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 10
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxPendingRequests()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxPendingRequests()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxPendingRequests()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 13
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxRequests()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxRequests()Z

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 14
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxRequests()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxRequests()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxRequests()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxRetries()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxRetries()Z

    move-result v2

    if-eq v1, v2, :cond_9

    return v3

    .line 18
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxRetries()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxRetries()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxRetries()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 21
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasRetryBudget()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasRetryBudget()Z

    move-result v2

    if-eq v1, v2, :cond_b

    return v3

    .line 22
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasRetryBudget()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getRetryBudget()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getRetryBudget()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v3

    .line 25
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getTrackRemaining()Z

    move-result v1

    .line 26
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getTrackRemaining()Z

    move-result v2

    if-eq v1, v2, :cond_d

    return v3

    .line 27
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxConnectionPools()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxConnectionPools()Z

    move-result v2

    if-eq v1, v2, :cond_e

    return v3

    .line 28
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxConnectionPools()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxConnectionPools()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 30
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxConnectionPools()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v3

    .line 31
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    return-object v0
.end method

.method public getMaxConnectionPools()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxConnectionPools_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxConnectionPoolsOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxConnectionPools()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getMaxConnections()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxConnections_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxConnectionsOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxConnections()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPendingRequests()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxPendingRequests_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxPendingRequestsOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxPendingRequests()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getMaxRequests()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxRequests_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxRequestsOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxRequests()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getMaxRetries()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxRetries_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxRetriesOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxRetries()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPriority()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->priority_:I

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

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->priority_:I

    return v0
.end method

.method public getRetryBudget()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->retryBudget_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRetryBudgetOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$c;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getRetryBudget()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

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
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->priority_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;->DEFAULT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->priority_:I

    .line 4
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxConnections_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxConnections()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxPendingRequests_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxPendingRequests()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxRequests_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxRequests()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxRetries_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxRetries()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->trackRemaining_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 14
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxConnectionPools_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxConnectionPools()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->retryBudget_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getRetryBudget()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTrackRemaining()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->trackRemaining_:Z

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasMaxConnectionPools()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxConnectionPools_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxConnections()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxConnections_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxPendingRequests()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxPendingRequests_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxRequests()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxRequests_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMaxRetries()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxRetries_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRetryBudget()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->retryBudget_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->priority_:I

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxConnections()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxConnections()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxPendingRequests()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxPendingRequests()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxRequests()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxRequests()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxRetries()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxRetries()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasRetryBudget()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getRetryBudget()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getTrackRemaining()Z

    move-result v1

    .line 15
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->hasMaxConnectionPools()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxConnectionPools()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x1d

    .line 18
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/a;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$b;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->priority_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;->DEFAULT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/RoutingPriority;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->priority_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxConnections_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxConnections()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxPendingRequests_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxPendingRequests()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxRequests_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxRequests()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxRetries_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxRetries()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->trackRemaining_:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 13
    :cond_5
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->maxConnectionPools_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getMaxConnectionPools()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->retryBudget_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds;->getRetryBudget()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/CircuitBreakers$Thresholds$RetryBudget;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
