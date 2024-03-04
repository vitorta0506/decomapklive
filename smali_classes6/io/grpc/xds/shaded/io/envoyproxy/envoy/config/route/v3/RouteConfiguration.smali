.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;
    }
.end annotation


# static fields
.field public static final CLUSTER_SPECIFIER_PLUGINS_FIELD_NUMBER:I = 0xc

.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

.field public static final INTERNAL_ONLY_HEADERS_FIELD_NUMBER:I = 0x3

.field public static final MAX_DIRECT_RESPONSE_BODY_SIZE_BYTES_FIELD_NUMBER:I = 0xb

.field public static final MOST_SPECIFIC_HEADER_MUTATIONS_WINS_FIELD_NUMBER:I = 0xa

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_HEADERS_TO_ADD_FIELD_NUMBER:I = 0x6

.field public static final REQUEST_HEADERS_TO_REMOVE_FIELD_NUMBER:I = 0x8

.field public static final RESPONSE_HEADERS_TO_ADD_FIELD_NUMBER:I = 0x4

.field public static final RESPONSE_HEADERS_TO_REMOVE_FIELD_NUMBER:I = 0x5

.field public static final VALIDATE_CLUSTERS_FIELD_NUMBER:I = 0x7

.field public static final VHDS_FIELD_NUMBER:I = 0x9

.field public static final VIRTUAL_HOSTS_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private clusterSpecifierPlugins_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/ClusterSpecifierPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private internalOnlyHeaders_:Lcom/google/protobuf/z0;

.field private maxDirectResponseBodySizeBytes_:Lcom/google/protobuf/UInt32Value;

.field private memoizedIsInitialized:B

.field private mostSpecificHeaderMutationsWins_:Z

.field private volatile name_:Ljava/lang/Object;

.field private requestHeadersToAdd_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;",
            ">;"
        }
    .end annotation
.end field

.field private requestHeadersToRemove_:Lcom/google/protobuf/z0;

.field private responseHeadersToAdd_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeadersToRemove_:Lcom/google/protobuf/z0;

.field private validateClusters_:Lcom/google/protobuf/BoolValue;

.field private vhds_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

.field private virtualHosts_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->name_:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    .line 9
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    .line 11
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

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
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;-><init>()V

    .line 16
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_12

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 19
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    goto/16 :goto_2

    :sswitch_0
    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_1

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x40

    .line 21
    :cond_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    .line 22
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/ClusterSpecifierPlugin;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/ClusterSpecifierPlugin;

    .line 23
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :sswitch_1
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->maxDirectResponseBodySizeBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v3, :cond_2

    .line 25
    invoke-virtual {v3}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v4

    .line 26
    :cond_2
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/UInt32Value;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->maxDirectResponseBodySizeBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v4, :cond_0

    .line 27
    invoke-virtual {v4, v3}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 28
    invoke-virtual {v4}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->maxDirectResponseBodySizeBytes_:Lcom/google/protobuf/UInt32Value;

    goto :goto_0

    .line 29
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/p;->r()Z

    move-result v3

    iput-boolean v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->mostSpecificHeaderMutationsWins_:Z

    goto :goto_0

    .line 30
    :sswitch_3
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->vhds_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

    if-eqz v3, :cond_3

    .line 31
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds$b;

    move-result-object v4

    .line 32
    :cond_3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->vhds_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

    if-eqz v4, :cond_0

    .line 33
    invoke-virtual {v4, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds$b;->h0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds$b;

    .line 34
    invoke-virtual {v4}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->vhds_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

    goto :goto_0

    .line 35
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x20

    if-nez v4, :cond_4

    .line 36
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x20

    .line 37
    :cond_4
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 38
    :sswitch_5
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->validateClusters_:Lcom/google/protobuf/BoolValue;

    if-eqz v3, :cond_5

    .line 39
    invoke-virtual {v3}, Lcom/google/protobuf/BoolValue;->toBuilder()Lcom/google/protobuf/BoolValue$b;

    move-result-object v4

    .line 40
    :cond_5
    invoke-static {}, Lcom/google/protobuf/BoolValue;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/BoolValue;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->validateClusters_:Lcom/google/protobuf/BoolValue;

    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {v4, v3}, Lcom/google/protobuf/BoolValue$b;->d0(Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue$b;

    .line 42
    invoke-virtual {v4}, Lcom/google/protobuf/BoolValue$b;->Y()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->validateClusters_:Lcom/google/protobuf/BoolValue;

    goto/16 :goto_0

    :sswitch_6
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_6

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    .line 44
    :cond_6
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    .line 45
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;

    .line 46
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 47
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_7

    .line 48
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x8

    .line 49
    :cond_7
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_8
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_8

    .line 50
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 51
    :cond_8
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    .line 52
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;

    .line 53
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 54
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_9

    .line 55
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x2

    .line 56
    :cond_9
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_a
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_a

    .line 57
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 58
    :cond_a
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    .line 59
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;

    .line 60
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 61
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 62
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_c
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

    .line 63
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 64
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 65
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_b

    .line 66
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    :cond_b
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_c

    .line 67
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    :cond_c
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_d

    .line 68
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    :cond_d
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_e

    .line 69
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    :cond_e
    and-int/lit8 p2, v2, 0x10

    if-eqz p2, :cond_f

    .line 70
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    :cond_f
    and-int/lit8 p2, v2, 0x20

    if-eqz p2, :cond_10

    .line 71
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    :cond_10
    and-int/lit8 p2, v2, 0x40

    if-eqz p2, :cond_11

    .line 72
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    .line 73
    :cond_11
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 74
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_12
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_13

    .line 75
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    :cond_13
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_14

    .line 76
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    :cond_14
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_15

    .line 77
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    :cond_15
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_16

    .line 78
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    :cond_16
    and-int/lit8 p1, v2, 0x10

    if-eqz p1, :cond_17

    .line 79
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    :cond_17
    and-int/lit8 p1, v2, 0x20

    if-eqz p1, :cond_18

    .line 80
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    :cond_18
    and-int/lit8 p1, v2, 0x40

    if-eqz p1, :cond_19

    .line 81
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    .line 82
    :cond_19
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 83
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0xa -> :sswitch_b
        0x12 -> :sswitch_a
        0x1a -> :sswitch_9
        0x22 -> :sswitch_8
        0x2a -> :sswitch_7
        0x32 -> :sswitch_6
        0x3a -> :sswitch_5
        0x42 -> :sswitch_4
        0x4a -> :sswitch_3
        0x50 -> :sswitch_2
        0x5a -> :sswitch_1
        0x62 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->mostSpecificHeaderMutationsWins_:Z

    return p1
.end method

.method static synthetic access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Lcom/google/protobuf/BoolValue;)Lcom/google/protobuf/BoolValue;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->validateClusters_:Lcom/google/protobuf/BoolValue;

    return-object p1
.end method

.method static synthetic access$1402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->maxDirectResponseBodySizeBytes_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$1500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
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

.method static synthetic access$2000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->PARSER:Lcom/google/protobuf/e2;

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

.method static synthetic access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->vhds_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

    return-object p1
.end method

.method static synthetic access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/s;->a:Lcom/google/protobuf/Descriptors$b;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;->s0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->PARSER:Lcom/google/protobuf/e2;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getVirtualHostsList()Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getVirtualHostsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 8
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->hasVhds()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->hasVhds()Z

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    .line 9
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->hasVhds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getVhds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getVhds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 12
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getInternalOnlyHeadersList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getInternalOnlyHeadersList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getResponseHeadersToAddList()Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getResponseHeadersToAddList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 18
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getRequestHeadersToAddList()Ljava/util/List;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getRequestHeadersToAddList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 22
    :cond_a
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getMostSpecificHeaderMutationsWins()Z

    move-result v1

    .line 23
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getMostSpecificHeaderMutationsWins()Z

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    .line 24
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->hasValidateClusters()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->hasValidateClusters()Z

    move-result v3

    if-eq v1, v3, :cond_c

    return v2

    .line 25
    :cond_c
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->hasValidateClusters()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 26
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getValidateClusters()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getValidateClusters()Lcom/google/protobuf/BoolValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/BoolValue;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 28
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->hasMaxDirectResponseBodySizeBytes()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->hasMaxDirectResponseBodySizeBytes()Z

    move-result v3

    if-eq v1, v3, :cond_e

    return v2

    .line 29
    :cond_e
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->hasMaxDirectResponseBodySizeBytes()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 30
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getMaxDirectResponseBodySizeBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getMaxDirectResponseBodySizeBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 32
    :cond_f
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getClusterSpecifierPluginsList()Ljava/util/List;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getClusterSpecifierPluginsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 34
    :cond_10
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public getClusterSpecifierPlugins(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/ClusterSpecifierPlugin;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/ClusterSpecifierPlugin;

    return-object p1
.end method

.method public getClusterSpecifierPluginsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getClusterSpecifierPluginsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/ClusterSpecifierPlugin;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    return-object v0
.end method

.method public getClusterSpecifierPluginsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/a;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/a;

    return-object p1
.end method

.method public getClusterSpecifierPluginsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    return-object v0
.end method

.method public getInternalOnlyHeaders(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getInternalOnlyHeadersBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getInternalOnlyHeadersCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInternalOnlyHeadersList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getInternalOnlyHeadersList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getInternalOnlyHeadersList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDirectResponseBodySizeBytes()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->maxDirectResponseBodySizeBytes_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMaxDirectResponseBodySizeBytesOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getMaxDirectResponseBodySizeBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public getMostSpecificHeaderMutationsWins()Z
    .locals 1

    iget-boolean v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->mostSpecificHeaderMutationsWins_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->name_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->name_:Ljava/lang/Object;

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
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRequestHeadersToAdd(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;

    return-object p1
.end method

.method public getRequestHeadersToAddCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

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
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestHeadersToAddOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/y;

    return-object p1
.end method

.method public getRequestHeadersToAddOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestHeadersToRemove(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRequestHeadersToRemoveBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRequestHeadersToRemoveCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getRequestHeadersToRemoveList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeadersToAdd(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;

    return-object p1
.end method

.method public getResponseHeadersToAddCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

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
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getResponseHeadersToAddOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/y;

    return-object p1
.end method

.method public getResponseHeadersToAddOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getResponseHeadersToRemove(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getResponseHeadersToRemoveBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getResponseHeadersToRemoveCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getResponseHeadersToRemoveList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v0

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->name_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    .line 4
    :goto_1
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v4, 0x2

    .line 5
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    .line 6
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    :goto_2
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 8
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v3}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v4

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getInternalOnlyHeadersList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 10
    :goto_3
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v4, 0x4

    .line 11
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    .line 12
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 13
    :goto_4
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 14
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v3}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/2addr v0, v4

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 16
    :goto_5
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    const/4 v4, 0x6

    .line 17
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    .line 18
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 19
    :cond_6
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->validateClusters_:Lcom/google/protobuf/BoolValue;

    if-eqz v3, :cond_7

    const/4 v3, 0x7

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getValidateClusters()Lcom/google/protobuf/BoolValue;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 21
    :goto_6
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 22
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v3}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    add-int/2addr v0, v4

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 24
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->vhds_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getVhds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    :cond_9
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->mostSpecificHeaderMutationsWins_:Z

    if-eqz v1, :cond_a

    const/16 v3, 0xa

    .line 27
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->e(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_a
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->maxDirectResponseBodySizeBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_b

    const/16 v1, 0xb

    .line 29
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getMaxDirectResponseBodySizeBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    :cond_b
    :goto_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_c

    const/16 v1, 0xc

    .line 31
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    .line 32
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 33
    :cond_c
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 34
    iput v0, p0, Lcom/google/protobuf/a;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/h3;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object v0
.end method

.method public getValidateClusters()Lcom/google/protobuf/BoolValue;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->validateClusters_:Lcom/google/protobuf/BoolValue;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/BoolValue;->getDefaultInstance()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getValidateClustersOrBuilder()Lcom/google/protobuf/l;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getValidateClusters()Lcom/google/protobuf/BoolValue;

    move-result-object v0

    return-object v0
.end method

.method public getVhds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->vhds_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVhdsOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/w;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getVhds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

    move-result-object v0

    return-object v0
.end method

.method public getVirtualHosts(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;

    return-object p1
.end method

.method public getVirtualHostsCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVirtualHostsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/VirtualHost;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    return-object v0
.end method

.method public getVirtualHostsOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/y;

    return-object p1
.end method

.method public getVirtualHostsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    return-object v0
.end method

.method public hasMaxDirectResponseBodySizeBytes()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->maxDirectResponseBodySizeBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValidateClusters()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->validateClusters_:Lcom/google/protobuf/BoolValue;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVhds()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->vhds_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getVirtualHostsCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getVirtualHostsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->hasVhds()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getVhds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getInternalOnlyHeadersCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getInternalOnlyHeadersList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getResponseHeadersToAddCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getResponseHeadersToAddList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getResponseHeadersToRemoveCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getRequestHeadersToAddCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getRequestHeadersToAddList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getRequestHeadersToRemoveCount()I

    move-result v1

    if-lez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getMostSpecificHeaderMutationsWins()Z

    move-result v1

    .line 19
    invoke-static {v1}, Lcom/google/protobuf/u0;->d(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 20
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->hasValidateClusters()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 21
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getValidateClusters()Lcom/google/protobuf/BoolValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/BoolValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 22
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->hasMaxDirectResponseBodySizeBytes()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    .line 23
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getMaxDirectResponseBodySizeBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 24
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getClusterSpecifierPluginsCount()I

    move-result v1

    if-lez v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    .line 25
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getClusterSpecifierPluginsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    mul-int/lit8 v0, v0, 0x1d

    .line 26
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 27
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/s;->b:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;->s0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration$b;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->virtualHosts_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 6
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->internalOnlyHeaders_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 8
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 9
    :goto_3
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 10
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 11
    :goto_4
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 12
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 13
    :cond_5
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->validateClusters_:Lcom/google/protobuf/BoolValue;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 14
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getValidateClusters()Lcom/google/protobuf/BoolValue;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_6
    const/4 v1, 0x0

    .line 15
    :goto_5
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    const/16 v2, 0x8

    .line 16
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 17
    :cond_7
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->vhds_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 18
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getVhds()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Vhds;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 19
    :cond_8
    iget-boolean v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->mostSpecificHeaderMutationsWins_:Z

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 20
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->n0(IZ)V

    .line 21
    :cond_9
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->maxDirectResponseBodySizeBytes_:Lcom/google/protobuf/UInt32Value;

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    .line 22
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->getMaxDirectResponseBodySizeBytes()Lcom/google/protobuf/UInt32Value;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 23
    :cond_a
    :goto_6
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    const/16 v1, 0xc

    .line 24
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteConfiguration;->clusterSpecifierPlugins_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 25
    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
