.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$d;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

.field public static final LB_ENDPOINTS_FIELD_NUMBER:I = 0x2

.field public static final LEDS_CLUSTER_LOCALITY_CONFIG_FIELD_NUMBER:I = 0x8

.field public static final LOAD_BALANCER_ENDPOINTS_FIELD_NUMBER:I = 0x7

.field public static final LOAD_BALANCING_WEIGHT_FIELD_NUMBER:I = 0x3

.field public static final LOCALITY_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5

.field public static final PROXIMITY_FIELD_NUMBER:I = 0x6

.field private static final serialVersionUID:J


# instance fields
.field private lbConfigCase_:I

.field private lbConfig_:Ljava/lang/Object;

.field private lbEndpoints_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

.field private locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

.field private memoizedIsInitialized:B

.field private priority_:I

.field private proximity_:Lcom/google/protobuf/UInt32Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->memoizedIsInitialized:B

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;-><init>()V

    .line 11
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_12

    .line 13
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v4

    if-eqz v4, :cond_10

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v4, v5, :cond_e

    const/16 v5, 0x12

    if-eq v4, v5, :cond_c

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_a

    const/16 v5, 0x28

    if-eq v4, v5, :cond_9

    const/16 v5, 0x32

    if-eq v4, v5, :cond_7

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_4

    const/16 v5, 0x42

    if-eq v4, v5, :cond_1

    .line 14
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 15
    :cond_1
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    .line 16
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfig_:Ljava/lang/Object;

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig$b;

    move-result-object v6

    .line 17
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfig_:Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 18
    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;

    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig$b;

    .line 19
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfig_:Ljava/lang/Object;

    .line 20
    :cond_3
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    goto :goto_0

    .line 21
    :cond_4
    iget v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    .line 22
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfig_:Ljava/lang/Object;

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;

    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList$b;

    move-result-object v6

    .line 23
    :cond_5
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfig_:Ljava/lang/Object;

    if-eqz v6, :cond_6

    .line 24
    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;

    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList$b;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList$b;

    .line 25
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfig_:Ljava/lang/Object;

    .line 26
    :cond_6
    iput v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    goto :goto_0

    .line 27
    :cond_7
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->proximity_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_8

    .line 28
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v6

    .line 29
    :cond_8
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/UInt32Value;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->proximity_:Lcom/google/protobuf/UInt32Value;

    if-eqz v6, :cond_0

    .line 30
    invoke-virtual {v6, v4}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 31
    invoke-virtual {v6}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->proximity_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 32
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->M()I

    move-result v4

    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->priority_:I

    goto/16 :goto_0

    .line 33
    :cond_a
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_b

    .line 34
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v6

    .line 35
    :cond_b
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/UInt32Value;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

    if-eqz v6, :cond_0

    .line 36
    invoke-virtual {v6, v4}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 37
    invoke-virtual {v6}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    :cond_c
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_d

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 39
    :cond_d
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    .line 40
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;->parser()Lcom/google/protobuf/e2;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v5

    check-cast v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;

    .line 41
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 42
    :cond_e
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    if-eqz v4, :cond_f

    .line 43
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;

    move-result-object v6

    .line 44
    :cond_f
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    if-eqz v6, :cond_0

    .line 45
    invoke-virtual {v6, v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;

    .line 46
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    move-result-object v4

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_10
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 47
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 48
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 49
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_11

    .line 50
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    .line 51
    :cond_11
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 52
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_12
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_13

    .line 53
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    .line 54
    :cond_13
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 55
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    return-object p1
.end method

.method static synthetic access$1400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfig_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->priority_:I

    return p1
.end method

.method static synthetic access$1802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->proximity_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    return p1
.end method

.method static synthetic access$2000()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$2200()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->i:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->hasLocality()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->hasLocality()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->hasLocality()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLbEndpointsList()Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLbEndpointsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->hasLoadBalancingWeight()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->hasLoadBalancingWeight()Z

    move-result v2

    if-eq v1, v2, :cond_5

    return v3

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->hasLoadBalancingWeight()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getPriority()I

    move-result v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getPriority()I

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->hasProximity()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->hasProximity()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->hasProximity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getProximity()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getProximity()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLbConfigCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLbConfigCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 21
    :cond_a
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_c

    const/16 v2, 0x8

    if-eq v1, v2, :cond_b

    goto :goto_0

    .line 22
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLedsClusterLocalityConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLedsClusterLocalityConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 24
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLoadBalancerEndpoints()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLoadBalancerEndpoints()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 26
    :cond_d
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v3

    :cond_e
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    return-object v0
.end method

.method public getLbConfigCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    move-result-object v0

    return-object v0
.end method

.method public getLbEndpoints(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;

    return-object p1
.end method

.method public getLbEndpointsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLbEndpointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LbEndpoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    return-object v0
.end method

.method public getLbEndpointsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/g;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/g;

    return-object p1
.end method

.method public getLbEndpointsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    return-object v0
.end method

.method public getLedsClusterLocalityConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;

    move-result-object v0

    return-object v0
.end method

.method public getLedsClusterLocalityConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/h;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalancerEndpoints()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalancerEndpointsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;

    move-result-object v0

    return-object v0
.end method

.method public getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLoadBalancingWeightOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLocalityOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/j0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->priority_:I

    return v0
.end method

.method public getProximity()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->proximity_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getProximityOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getProximity()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

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
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x2

    .line 5
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    .line 6
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->priority_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 10
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->Y(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_4
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->proximity_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getProximity()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    .line 14
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfig_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;

    .line 15
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    .line 17
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfig_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;

    .line 18
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasLedsClusterLocalityConfig()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLoadBalancerEndpoints()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLoadBalancingWeight()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLocality()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProximity()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->proximity_:Lcom/google/protobuf/UInt32Value;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->hasLocality()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLbEndpointsCount()I

    move-result v1

    if-lez v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLbEndpointsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->hasLoadBalancingWeight()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getPriority()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->hasProximity()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getProximity()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    const/16 v2, 0x8

    if-eq v1, v2, :cond_5

    goto :goto_1

    :cond_5
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLedsClusterLocalityConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_6
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLoadBalancerEndpoints()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 15
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/c;->j:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->locality_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLocality()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Locality;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbEndpoints_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->loadBalancingWeight_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getLoadBalancingWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->priority_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->c1(II)V

    .line 9
    :cond_3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->proximity_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->getProximity()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbEndpointList;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfigCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;->lbConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LedsClusterLocalityConfig;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
