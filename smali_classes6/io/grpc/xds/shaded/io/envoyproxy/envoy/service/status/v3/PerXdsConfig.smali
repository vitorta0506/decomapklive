.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;
    }
.end annotation


# static fields
.field public static final CLIENT_STATUS_FIELD_NUMBER:I = 0x7

.field public static final CLUSTER_CONFIG_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

.field public static final ENDPOINT_CONFIG_FIELD_NUMBER:I = 0x6

.field public static final LISTENER_CONFIG_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROUTE_CONFIG_FIELD_NUMBER:I = 0x4

.field public static final SCOPED_ROUTE_CONFIG_FIELD_NUMBER:I = 0x5

.field public static final STATUS_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private clientStatus_:I

.field private memoizedIsInitialized:B

.field private perXdsConfigCase_:I

.field private perXdsConfig_:Ljava/lang/Object;

.field private status_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, -0x1

    .line 8
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->memoizedIsInitialized:B

    .line 9
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->status_:I

    .line 10
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->clientStatus_:I

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;-><init>()V

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_13

    .line 14
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    const/16 v4, 0x8

    if-eq v2, v4, :cond_11

    const/16 v4, 0x12

    const/4 v5, 0x0

    if-eq v2, v4, :cond_e

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_b

    const/16 v4, 0x22

    if-eq v2, v4, :cond_8

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_5

    const/16 v4, 0x32

    if-eq v2, v4, :cond_2

    const/16 v4, 0x38

    if-eq v2, v4, :cond_1

    .line 15
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 17
    iput v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->clientStatus_:I

    goto :goto_0

    .line 18
    :cond_2
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 19
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump$b;

    move-result-object v5

    .line 20
    :cond_3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 21
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump$b;

    .line 22
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    .line 23
    :cond_4
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    goto :goto_0

    .line 24
    :cond_5
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    .line 25
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump$b;

    move-result-object v5

    .line 26
    :cond_6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    if-eqz v5, :cond_7

    .line 27
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump$b;

    .line 28
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    .line 29
    :cond_7
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    goto/16 :goto_0

    .line 30
    :cond_8
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    .line 31
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$b;

    move-result-object v5

    .line 32
    :cond_9
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    if-eqz v5, :cond_a

    .line 33
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$b;

    .line 34
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    .line 35
    :cond_a
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    goto/16 :goto_0

    .line 36
    :cond_b
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    .line 37
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump$b;

    move-result-object v5

    .line 38
    :cond_c
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    if-eqz v5, :cond_d

    .line 39
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump$b;->m0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump$b;

    .line 40
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    .line 41
    :cond_d
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    goto/16 :goto_0

    .line 42
    :cond_e
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_f

    .line 43
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$b;

    move-result-object v5

    .line 44
    :cond_f
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;->parser()Lcom/google/protobuf/e2;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    if-eqz v5, :cond_10

    .line 45
    check-cast v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;

    invoke-virtual {v5, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$b;

    .line 46
    invoke-virtual {v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    .line 47
    :cond_10
    iput v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    goto/16 :goto_0

    .line 48
    :cond_11
    invoke-virtual {p1}, Lcom/google/protobuf/p;->u()I

    move-result v2

    .line 49
    iput v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->status_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_12
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 50
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 51
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 52
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 54
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    .line 55
    :cond_13
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 56
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->status_:I

    return p0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->status_:I

    return p1
.end method

.method static synthetic access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;)I
    .locals 0

    iget p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->clientStatus_:I

    return p0
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->clientStatus_:I

    return p1
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    return p1
.end method

.method static synthetic access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$900()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->c:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->status_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->status_:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->clientStatus_:I

    iget v2, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->clientStatus_:I

    if-eq v1, v2, :cond_3

    return v3

    .line 6
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getPerXdsConfigCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getPerXdsConfigCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v3

    .line 7
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_9

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    const/4 v2, 0x5

    if-eq v1, v2, :cond_6

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getEndpointConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getEndpointConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 10
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getScopedRouteConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getScopedRouteConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 12
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getRouteConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getRouteConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 14
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getClusterConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getClusterConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 16
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getListenerConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getListenerConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 18
    :cond_a
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v3

    :cond_b
    return v0
.end method

.method public getClientStatus()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ClientConfigStatus;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->clientStatus_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ClientConfigStatus;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ClientConfigStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ClientConfigStatus;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ClientConfigStatus;

    :cond_0
    return-object v0
.end method

.method public getClientStatusValue()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->clientStatus_:I

    return v0
.end method

.method public getClusterConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;

    move-result-object v0

    return-object v0
.end method

.method public getClusterConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/a;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    return-object v0
.end method

.method public getEndpointConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;

    move-result-object v0

    return-object v0
.end method

.method public getEndpointConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/c;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;

    move-result-object v0

    return-object v0
.end method

.method public getListenerConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;

    move-result-object v0

    return-object v0
.end method

.method public getListenerConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/d;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getPerXdsConfigCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    move-result-object v0

    return-object v0
.end method

.method public getRouteConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;

    move-result-object v0

    return-object v0
.end method

.method public getRouteConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/e;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;

    move-result-object v0

    return-object v0
.end method

.method public getScopedRouteConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;

    move-result-object v0

    return-object v0
.end method

.method public getScopedRouteConfigOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/f;
    .locals 2

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;

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
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->status_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ConfigStatus;->UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ConfigStatus;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ConfigStatus;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->status_:I

    .line 4
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5
    :cond_1
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;

    .line 7
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;

    .line 10
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11
    :cond_3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 12
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;

    .line 13
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 15
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;

    .line 16
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17
    :cond_5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 18
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;

    .line 19
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    :cond_6
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->clientStatus_:I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ClientConfigStatus;->CLIENT_UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ClientConfigStatus;

    invoke-virtual {v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ClientConfigStatus;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_7

    const/4 v1, 0x7

    .line 21
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->clientStatus_:I

    .line 22
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->l(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 23
    :cond_7
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public getStatus()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ConfigStatus;
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->status_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ConfigStatus;->valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ConfigStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ConfigStatus;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ConfigStatus;

    :cond_0
    return-object v0
.end method

.method public getStatusValue()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->status_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public hasClusterConfig()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEndpointConfig()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasListenerConfig()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRouteConfig()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasScopedRouteConfig()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x5

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->status_:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 4
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->clientStatus_:I

    add-int/2addr v0, v1

    .line 5
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getEndpointConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getScopedRouteConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getRouteConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_4
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getClusterConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_5
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->getListenerConfig()Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    :goto_1
    mul-int/lit8 v0, v0, 0x1d

    .line 11
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/b;->d:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;->i0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$c;

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
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->status_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ConfigStatus;->UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ConfigStatus;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ConfigStatus;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 3
    :cond_0
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ListenersConfigDump;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ClustersConfigDump;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 7
    :cond_2
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/RoutesConfigDump;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 9
    :cond_3
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 10
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/ScopedRoutesConfigDump;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 11
    :cond_4
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfigCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 12
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->perXdsConfig_:Ljava/lang/Object;

    check-cast v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/admin/v3/EndpointsConfigDump;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 13
    :cond_5
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->clientStatus_:I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ClientConfigStatus;->CLIENT_UNKNOWN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ClientConfigStatus;

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/ClientConfigStatus;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_6

    const/4 v0, 0x7

    .line 14
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;->clientStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->v0(II)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
