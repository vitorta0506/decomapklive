.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

.field public static final LOAD_METRIC_STATS_FIELD_NUMBER:I = 0x5

.field public static final LOCALITY_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_FIELD_NUMBER:I = 0x6

.field public static final TOTAL_ERROR_REQUESTS_FIELD_NUMBER:I = 0x4

.field public static final TOTAL_ISSUED_REQUESTS_FIELD_NUMBER:I = 0x8

.field public static final TOTAL_REQUESTS_IN_PROGRESS_FIELD_NUMBER:I = 0x3

.field public static final TOTAL_SUCCESSFUL_REQUESTS_FIELD_NUMBER:I = 0x2

.field public static final UPSTREAM_ENDPOINT_STATS_FIELD_NUMBER:I = 0x7

.field private static final serialVersionUID:J


# instance fields
.field private loadMetricStats_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/EndpointLoadMetricStats;",
            ">;"
        }
    .end annotation
.end field

.field private locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

.field private memoizedIsInitialized:B

.field private priority_:I

.field private totalErrorRequests_:J

.field private totalIssuedRequests_:J

.field private totalRequestsInProgress_:J

.field private totalSuccessfulRequests_:J

.field private upstreamEndpointStats_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->memoizedIsInitialized:B

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_f

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c

    const/16 v5, 0xa

    if-eq v3, v5, :cond_a

    const/16 v5, 0x10

    if-eq v3, v5, :cond_9

    const/16 v5, 0x18

    if-eq v3, v5, :cond_8

    const/16 v5, 0x20

    if-eq v3, v5, :cond_7

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_5

    const/16 v5, 0x30

    if-eq v3, v5, :cond_4

    const/16 v5, 0x3a

    if-eq v3, v5, :cond_2

    const/16 v5, 0x40

    if-eq v3, v5, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v3

    iput-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalIssuedRequests_:J

    goto :goto_0

    :cond_2
    and-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_3

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 16
    :cond_3
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    .line 17
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;

    .line 18
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v3

    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->priority_:I

    goto :goto_0

    :cond_5
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_6

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 21
    :cond_6
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/EndpointLoadMetricStats;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/EndpointLoadMetricStats;

    .line 23
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v3

    iput-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalErrorRequests_:J

    goto :goto_0

    .line 25
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v3

    iput-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalRequestsInProgress_:J

    goto/16 :goto_0

    .line 26
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->N()J

    move-result-wide v3

    iput-wide v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalSuccessfulRequests_:J

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x0

    .line 27
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    if-eqz v4, :cond_b

    .line 28
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;

    move-result-object v3

    .line 29
    :cond_b
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {v3, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;

    .line 31
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_c
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 32
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 33
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 34
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_d

    .line 35
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    :cond_d
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_e

    .line 36
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    .line 37
    :cond_e
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 38
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_f
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_10

    .line 39
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    :cond_10
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_11

    .line 40
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    .line 41
    :cond_11
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->priority_:I

    return p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1500()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    return-object p1
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalSuccessfulRequests_:J

    return-wide p1
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalRequestsInProgress_:J

    return-wide p1
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalErrorRequests_:J

    return-wide p1
.end method

.method static synthetic access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;J)J
    .locals 0

    iput-wide p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalIssuedRequests_:J

    return-wide p1
.end method

.method static synthetic access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/f;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->hasLocality()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->hasLocality()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->hasLocality()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getTotalSuccessfulRequests()J

    move-result-wide v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getTotalSuccessfulRequests()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_4

    return v3

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getTotalRequestsInProgress()J

    move-result-wide v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getTotalRequestsInProgress()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getTotalErrorRequests()J

    move-result-wide v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getTotalErrorRequests()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getTotalIssuedRequests()J

    move-result-wide v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getTotalIssuedRequests()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-eqz v6, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getLoadMetricStatsList()Ljava/util/List;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getLoadMetricStatsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v3

    .line 18
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getUpstreamEndpointStatsList()Ljava/util/List;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getUpstreamEndpointStatsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getPriority()I

    move-result v1

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getPriority()I

    move-result v2

    if-eq v1, v2, :cond_a

    return v3

    .line 22
    :cond_a
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    return-object v0
.end method

.method public getLoadMetricStats(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/EndpointLoadMetricStats;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/EndpointLoadMetricStats;

    return-object p1
.end method

.method public getLoadMetricStatsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLoadMetricStatsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/EndpointLoadMetricStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    return-object v0
.end method

.method public getLoadMetricStatsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/c;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/c;

    return-object p1
.end method

.method public getLoadMetricStatsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    return-object v0
.end method

.method public getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLocalityOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/c0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->priority_:I

    return v0
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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

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
    iget-wide v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalSuccessfulRequests_:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    .line 5
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 6
    :cond_2
    iget-wide v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalRequestsInProgress_:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const/4 v6, 0x3

    .line 7
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 8
    :cond_3
    iget-wide v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalErrorRequests_:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    const/4 v6, 0x4

    .line 9
    invoke-static {v6, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    const/4 v2, 0x0

    .line 10
    :goto_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    const/4 v3, 0x5

    .line 11
    iget-object v6, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    .line 12
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/o1;

    invoke-static {v3, v6}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 13
    :cond_5
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->priority_:I

    if-eqz v2, :cond_6

    const/4 v3, 0x6

    .line 14
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 15
    :cond_6
    :goto_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/4 v2, 0x7

    .line 16
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    .line 17
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 18
    :cond_7
    iget-wide v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalIssuedRequests_:J

    cmp-long v3, v1, v4

    if-eqz v3, :cond_8

    const/16 v3, 0x8

    .line 19
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_8
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getTotalErrorRequests()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalErrorRequests_:J

    return-wide v0
.end method

.method public getTotalIssuedRequests()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalIssuedRequests_:J

    return-wide v0
.end method

.method public getTotalRequestsInProgress()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalRequestsInProgress_:J

    return-wide v0
.end method

.method public getTotalSuccessfulRequests()J
    .locals 2

    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalSuccessfulRequests_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getUpstreamEndpointStats(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;

    return-object p1
.end method

.method public getUpstreamEndpointStatsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUpstreamEndpointStatsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamEndpointStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    return-object v0
.end method

.method public getUpstreamEndpointStatsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/h;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/h;

    return-object p1
.end method

.method public getUpstreamEndpointStatsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    return-object v0
.end method

.method public hasLocality()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->hasLocality()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getTotalSuccessfulRequests()J

    move-result-wide v1

    .line 6
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getTotalRequestsInProgress()J

    move-result-wide v1

    .line 8
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getTotalErrorRequests()J

    move-result-wide v1

    .line 10
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getTotalIssuedRequests()J

    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Lcom/google/protobuf/u0;->i(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getLoadMetricStatsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getLoadMetricStatsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 15
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getUpstreamEndpointStatsCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getUpstreamEndpointStatsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getPriority()I

    move-result v1

    add-int/2addr v0, v1

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
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/f;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/Locality;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalSuccessfulRequests_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 4
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 5
    :cond_1
    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalRequestsInProgress_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    .line 6
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 7
    :cond_2
    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalErrorRequests_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    .line 8
    invoke-virtual {p1, v4, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    const/4 v4, 0x5

    .line 10
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->loadMetricStats_:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->priority_:I

    if-eqz v1, :cond_5

    const/4 v4, 0x6

    .line 12
    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 13
    :cond_5
    :goto_1
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x7

    .line 14
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->upstreamEndpointStats_:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v4}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15
    :cond_6
    iget-wide v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/endpoint/UpstreamLocalityStats;->totalIssuedRequests_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    const/16 v2, 0x8

    .line 16
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
