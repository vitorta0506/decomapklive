.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommonLbConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityConfigSpecifierCase;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$d;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$e;
    }
.end annotation


# static fields
.field public static final CLOSE_CONNECTIONS_ON_HOST_SET_CHANGE_FIELD_NUMBER:I = 0x6

.field public static final CONSISTENT_HASHING_LB_CONFIG_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

.field public static final HEALTHY_PANIC_THRESHOLD_FIELD_NUMBER:I = 0x1

.field public static final IGNORE_NEW_HOSTS_UNTIL_FIRST_HC_FIELD_NUMBER:I = 0x5

.field public static final LOCALITY_WEIGHTED_LB_CONFIG_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATE_MERGE_WINDOW_FIELD_NUMBER:I = 0x4

.field public static final ZONE_AWARE_LB_CONFIG_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private closeConnectionsOnHostSetChange_:Z

.field private consistentHashingLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

.field private healthyPanicThreshold_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

.field private ignoreNewHostsUntilFirstHc_:Z

.field private localityConfigSpecifierCase_:I

.field private localityConfigSpecifier_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private updateMergeWindow_:Lcom/google/protobuf/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->memoizedIsInitialized:B

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;-><init>()V

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_10

    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_f

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-eq v2, v4, :cond_d

    const/16 v4, 0x12

    if-eq v2, v4, :cond_a

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_7

    const/16 v4, 0x22

    if-eq v2, v4, :cond_5

    const/16 v4, 0x28

    if-eq v2, v4, :cond_4

    const/16 v4, 0x30

    if-eq v2, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v2, v4, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 14
    :cond_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->consistentHashingLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig$b;

    move-result-object v5

    .line 16
    :cond_2
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->consistentHashingLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    if-eqz v5, :cond_0

    .line 17
    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig$b;

    .line 18
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->consistentHashingLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v2

    iput-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->closeConnectionsOnHostSetChange_:Z

    goto :goto_0

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v2

    iput-boolean v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->ignoreNewHostsUntilFirstHc_:Z

    goto :goto_0

    .line 21
    :cond_5
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->updateMergeWindow_:Lcom/google/protobuf/Duration;

    if-eqz v2, :cond_6

    .line 22
    invoke-virtual {v2}, Lcom/google/protobuf/Duration;->toBuilder()Lcom/google/protobuf/Duration$b;

    move-result-object v5

    .line 23
    :cond_6
    invoke-static {}, Lcom/google/protobuf/Duration;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Duration;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->updateMergeWindow_:Lcom/google/protobuf/Duration;

    if-eqz v5, :cond_0

    .line 24
    invoke-virtual {v5, v2}, Lcom/google/protobuf/Duration$b;->e0(Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration$b;

    .line 25
    invoke-virtual {v5}, Lcom/google/protobuf/Duration$b;->Y()Lcom/google/protobuf/Duration;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->updateMergeWindow_:Lcom/google/protobuf/Duration;

    goto :goto_0

    .line 26
    :cond_7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 27
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig$b;

    move-result-object v5

    .line 28
    :cond_8
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_9

    .line 29
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig$b;

    .line 30
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifier_:Ljava/lang/Object;

    .line 31
    :cond_9
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    goto/16 :goto_0

    .line 32
    :cond_a
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 33
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifier_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig$b;

    move-result-object v5

    .line 34
    :cond_b
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifier_:Ljava/lang/Object;

    if-eqz v5, :cond_c

    .line 35
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig$b;

    .line 36
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifier_:Ljava/lang/Object;

    .line 37
    :cond_c
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    goto/16 :goto_0

    .line 38
    :cond_d
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->healthyPanicThreshold_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v2, :cond_e

    .line 39
    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;

    move-result-object v5

    .line 40
    :cond_e
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->healthyPanicThreshold_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v5, :cond_0

    .line 41
    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;->g0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;

    .line 42
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->healthyPanicThreshold_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;
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

    .line 43
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 44
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 45
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 47
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 48
    :cond_10
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 49
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$11100()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->healthyPanicThreshold_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    return-object p1
.end method

.method static synthetic access$11402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$11502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Lcom/google/protobuf/Duration;)Lcom/google/protobuf/Duration;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->updateMergeWindow_:Lcom/google/protobuf/Duration;

    return-object p1
.end method

.method static synthetic access$11602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->ignoreNewHostsUntilFirstHc_:Z

    return p1
.end method

.method static synthetic access$11702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->closeConnectionsOnHostSetChange_:Z

    return p1
.end method

.method static synthetic access$11802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->consistentHashingLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    return-object p1
.end method

.method static synthetic access$11902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    return p1
.end method

.method static synthetic access$12000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$12100()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->s:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->hasHealthyPanicThreshold()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->hasHealthyPanicThreshold()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->hasHealthyPanicThreshold()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getHealthyPanicThreshold()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getHealthyPanicThreshold()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->hasUpdateMergeWindow()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->hasUpdateMergeWindow()Z

    move-result v2

    if-eq v1, v2, :cond_4

    return v3

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->hasUpdateMergeWindow()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getUpdateMergeWindow()Lcom/google/protobuf/Duration;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getUpdateMergeWindow()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Duration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getIgnoreNewHostsUntilFirstHc()Z

    move-result v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getIgnoreNewHostsUntilFirstHc()Z

    move-result v2

    if-eq v1, v2, :cond_6

    return v3

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getCloseConnectionsOnHostSetChange()Z

    move-result v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getCloseConnectionsOnHostSetChange()Z

    move-result v2

    if-eq v1, v2, :cond_7

    return v3

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->hasConsistentHashingLbConfig()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->hasConsistentHashingLbConfig()Z

    move-result v2

    if-eq v1, v2, :cond_8

    return v3

    .line 17
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->hasConsistentHashingLbConfig()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getConsistentHashingLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getConsistentHashingLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getLocalityConfigSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityConfigSpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getLocalityConfigSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityConfigSpecifierCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 21
    :cond_a
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    goto :goto_0

    .line 22
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getLocalityWeightedLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getLocalityWeightedLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v3

    .line 24
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getZoneAwareLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getZoneAwareLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;->equals(Ljava/lang/Object;)Z

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

.method public getCloseConnectionsOnHostSetChange()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->closeConnectionsOnHostSetChange_:Z

    return v0
.end method

.method public getConsistentHashingLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->consistentHashingLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConsistentHashingLbConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$c;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getConsistentHashingLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    return-object v0
.end method

.method public getHealthyPanicThreshold()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->healthyPanicThreshold_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHealthyPanicThresholdOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/f;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getHealthyPanicThreshold()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoreNewHostsUntilFirstHc()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->ignoreNewHostsUntilFirstHc_:Z

    return v0
.end method

.method public getLocalityConfigSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityConfigSpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityConfigSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityConfigSpecifierCase;

    move-result-object v0

    return-object v0
.end method

.method public getLocalityWeightedLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public getLocalityWeightedLbConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->PARSER:Lcom/google/protobuf/e2;

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
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->healthyPanicThreshold_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getHealthyPanicThreshold()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;

    .line 6
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 8
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifier_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;

    .line 9
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->updateMergeWindow_:Lcom/google/protobuf/Duration;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getUpdateMergeWindow()Lcom/google/protobuf/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->ignoreNewHostsUntilFirstHc_:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 13
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->closeConnectionsOnHostSetChange_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 15
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->consistentHashingLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getConsistentHashingLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 19
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getUpdateMergeWindow()Lcom/google/protobuf/Duration;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->updateMergeWindow_:Lcom/google/protobuf/Duration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Duration;->getDefaultInstance()Lcom/google/protobuf/Duration;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUpdateMergeWindowOrBuilder()Lcom/google/protobuf/v;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getUpdateMergeWindow()Lcom/google/protobuf/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getZoneAwareLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public getZoneAwareLbConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;

    move-result-object v0

    return-object v0
.end method

.method public hasConsistentHashingLbConfig()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->consistentHashingLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHealthyPanicThreshold()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->healthyPanicThreshold_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLocalityWeightedLbConfig()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUpdateMergeWindow()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->updateMergeWindow_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasZoneAwareLbConfig()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->hasHealthyPanicThreshold()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getHealthyPanicThreshold()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->hasUpdateMergeWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getUpdateMergeWindow()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Duration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getIgnoreNewHostsUntilFirstHc()Z

    move-result v1

    .line 8
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getCloseConnectionsOnHostSetChange()Z

    move-result v1

    .line 10
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->hasConsistentHashingLbConfig()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getConsistentHashingLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 13
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    goto :goto_1

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getLocalityWeightedLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_5
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getZoneAwareLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 16
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/c;->t:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$b;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->healthyPanicThreshold_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getHealthyPanicThreshold()Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/Percent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ZoneAwareLbConfig;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifierCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->localityConfigSpecifier_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityWeightedLbConfig;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->updateMergeWindow_:Lcom/google/protobuf/Duration;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getUpdateMergeWindow()Lcom/google/protobuf/Duration;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->ignoreNewHostsUntilFirstHc_:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 11
    :cond_4
    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->closeConnectionsOnHostSetChange_:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 13
    :cond_5
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->consistentHashingLbConfig_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig;->getConsistentHashingLbConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$ConsistentHashingLbConfig;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
