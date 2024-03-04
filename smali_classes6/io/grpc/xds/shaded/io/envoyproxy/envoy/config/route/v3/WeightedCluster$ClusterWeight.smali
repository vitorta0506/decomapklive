.class public final Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SourceFile"

# interfaces
.implements Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClusterWeight"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$c;,
        Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$HostRewriteSpecifierCase;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

.field public static final HOST_REWRITE_LITERAL_FIELD_NUMBER:I = 0xb

.field public static final METADATA_MATCH_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/e2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_HEADERS_TO_ADD_FIELD_NUMBER:I = 0x4

.field public static final REQUEST_HEADERS_TO_REMOVE_FIELD_NUMBER:I = 0x9

.field public static final RESPONSE_HEADERS_TO_ADD_FIELD_NUMBER:I = 0x5

.field public static final RESPONSE_HEADERS_TO_REMOVE_FIELD_NUMBER:I = 0x6

.field public static final TYPED_PER_FILTER_CONFIG_FIELD_NUMBER:I = 0xa

.field public static final WEIGHT_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private hostRewriteSpecifierCase_:I

.field private hostRewriteSpecifier_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

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

.field private weight_:Lcom/google/protobuf/UInt32Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    .line 2
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$a;

    invoke-direct {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$a;-><init>()V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->PARSER:Lcom/google/protobuf/e2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifierCase_:I

    const/4 v0, -0x1

    .line 8
    iput-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->memoizedIsInitialized:B

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->name_:Ljava/lang/Object;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

    .line 11
    sget-object v0, Lcom/google/protobuf/y0;->d:Lcom/google/protobuf/z0;

    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

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
    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifierCase_:I

    const/4 p1, -0x1

    .line 5
    iput-byte p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$b;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;-><init>(Lcom/google/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;-><init>()V

    .line 15
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {}, Lcom/google/protobuf/h3;->h()Lcom/google/protobuf/h3$b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_16

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/p;->L()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_11

    const/16 v5, 0xa

    if-eq v3, v5, :cond_10

    const/16 v5, 0x12

    const/4 v6, 0x0

    if-eq v3, v5, :cond_e

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_c

    const/16 v5, 0x22

    if-eq v3, v5, :cond_a

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_8

    const/16 v5, 0x32

    if-eq v3, v5, :cond_6

    const/16 v5, 0x4a

    if-eq v3, v5, :cond_4

    const/16 v5, 0x52

    if-eq v3, v5, :cond_2

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_1

    .line 18
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/p;Lcom/google/protobuf/h3$b;Lcom/google/protobuf/f0;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    .line 20
    iput v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifierCase_:I

    .line 21
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    and-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_3

    .line 22
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v3}, Lcom/google/protobuf/g1;->p(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->typedPerFilterConfig_:Lcom/google/protobuf/g1;

    or-int/lit8 v2, v2, 0x10

    .line 23
    :cond_3
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$c;->a:Lcom/google/protobuf/e1;

    .line 24
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->getParserForType()Lcom/google/protobuf/e2;

    move-result-object v3

    .line 25
    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/e1;

    .line 26
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->typedPerFilterConfig_:Lcom/google/protobuf/g1;

    invoke-virtual {v4}, Lcom/google/protobuf/g1;->l()Ljava/util/Map;

    move-result-object v4

    .line 27
    invoke-virtual {v3}, Lcom/google/protobuf/e1;->f()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Any;

    .line 28
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_5

    .line 30
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x2

    .line 31
    :cond_5
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 32
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    and-int/lit8 v4, v2, 0x8

    if-nez v4, :cond_7

    .line 33
    new-instance v4, Lcom/google/protobuf/y0;

    invoke-direct {v4}, Lcom/google/protobuf/y0;-><init>()V

    iput-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    or-int/lit8 v2, v2, 0x8

    .line 34
    :cond_7
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    and-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_9

    .line 35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 36
    :cond_9
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

    .line 37
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;

    .line 38
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_b

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 40
    :cond_b
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

    .line 41
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;->parser()Lcom/google/protobuf/e2;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v4

    check-cast v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;

    .line 42
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 43
    :cond_c
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    if-eqz v3, :cond_d

    .line 44
    invoke-virtual {v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata$b;

    move-result-object v6

    .line 45
    :cond_d
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    if-eqz v6, :cond_0

    .line 46
    invoke-virtual {v6, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata$b;->k0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata$b;

    .line 47
    invoke-virtual {v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata$b;->Y()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    goto/16 :goto_0

    .line 48
    :cond_e
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->weight_:Lcom/google/protobuf/UInt32Value;

    if-eqz v3, :cond_f

    .line 49
    invoke-virtual {v3}, Lcom/google/protobuf/UInt32Value;->toBuilder()Lcom/google/protobuf/UInt32Value$b;

    move-result-object v6

    .line 50
    :cond_f
    invoke-static {}, Lcom/google/protobuf/UInt32Value;->parser()Lcom/google/protobuf/e2;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/p;->B(Lcom/google/protobuf/e2;Lcom/google/protobuf/f0;)Lcom/google/protobuf/o1;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/UInt32Value;

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->weight_:Lcom/google/protobuf/UInt32Value;

    if-eqz v6, :cond_0

    .line 51
    invoke-virtual {v6, v3}, Lcom/google/protobuf/UInt32Value$b;->g0(Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value$b;

    .line 52
    invoke-virtual {v6}, Lcom/google/protobuf/UInt32Value$b;->Y()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->weight_:Lcom/google/protobuf/UInt32Value;

    goto/16 :goto_0

    .line 53
    :cond_10
    invoke-virtual {p1}, Lcom/google/protobuf/p;->K()Ljava/lang/String;

    move-result-object v3

    .line 54
    iput-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->name_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_11
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 55
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 56
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 57
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/o1;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_12

    .line 58
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

    :cond_12
    and-int/lit8 p2, v2, 0x4

    if-eqz p2, :cond_13

    .line 59
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

    :cond_13
    and-int/lit8 p2, v2, 0x8

    if-eqz p2, :cond_14

    .line 60
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    :cond_14
    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_15

    .line 61
    iget-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p2}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    .line 62
    :cond_15
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 63
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_16
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_17

    .line 64
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

    :cond_17
    and-int/lit8 p1, v2, 0x4

    if-eqz p1, :cond_18

    .line 65
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

    :cond_18
    and-int/lit8 p1, v2, 0x8

    if-eqz p1, :cond_19

    .line 66
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    :cond_19
    and-int/lit8 p1, v2, 0x2

    if-eqz p1, :cond_1a

    .line 67
    iget-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {p1}, Lcom/google/protobuf/z0;->V0()Lcom/google/protobuf/z0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    .line 68
    :cond_1a
    invoke-virtual {v0}, Lcom/google/protobuf/h3$b;->d()Lcom/google/protobuf/h3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    .line 69
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;-><init>(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)V

    return-void
.end method

.method static synthetic access$1000(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$1002(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$1100(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lcom/google/protobuf/g1;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->typedPerFilterConfig_:Lcom/google/protobuf/g1;

    return-object p0
.end method

.method static synthetic access$1102(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Lcom/google/protobuf/g1;)Lcom/google/protobuf/g1;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->typedPerFilterConfig_:Lcom/google/protobuf/g1;

    return-object p1
.end method

.method static synthetic access$1200(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifier_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1202(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;I)I
    .locals 0

    iput p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifierCase_:I

    return p1
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1600(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lcom/google/protobuf/g1;
    .locals 0

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lcom/google/protobuf/h3;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    return-object p0
.end method

.method static synthetic access$1800()Lcom/google/protobuf/e2;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/b;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
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

.method static synthetic access$400(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->name_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$402(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$502(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Lcom/google/protobuf/UInt32Value;)Lcom/google/protobuf/UInt32Value;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->weight_:Lcom/google/protobuf/UInt32Value;

    return-object p1
.end method

.method static synthetic access$602(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    return-object p1
.end method

.method static synthetic access$700(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lcom/google/protobuf/z0;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p0
.end method

.method static synthetic access$802(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Lcom/google/protobuf/z0;)Lcom/google/protobuf/z0;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object p1
.end method

.method static synthetic access$900(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$902(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$b;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->m:Lcom/google/protobuf/Descriptors$b;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->typedPerFilterConfig_:Lcom/google/protobuf/g1;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$c;->a:Lcom/google/protobuf/e1;

    invoke-static {v0}, Lcom/google/protobuf/g1;->g(Lcom/google/protobuf/e1;)Lcom/google/protobuf/g1;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;
    .locals 1

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    invoke-virtual {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->PARSER:Lcom/google/protobuf/e2;

    .line 2
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->PARSER:Lcom/google/protobuf/e2;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->c(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->b(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->PARSER:Lcom/google/protobuf/e2;

    .line 12
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->PARSER:Lcom/google/protobuf/e2;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Lcom/google/protobuf/p;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->PARSER:Lcom/google/protobuf/e2;

    .line 8
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->PARSER:Lcom/google/protobuf/e2;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/e2;Ljava/io/InputStream;Lcom/google/protobuf/f0;)Lcom/google/protobuf/l1;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->l(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->f(Ljava/nio/ByteBuffer;Lcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    return-object p0
.end method

.method public static parseFrom([B)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0}, Lcom/google/protobuf/e2;->a([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/f0;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->PARSER:Lcom/google/protobuf/e2;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/e2;->g([BLcom/google/protobuf/f0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/e2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e2<",
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method


# virtual methods
.method public containsTypedPerFilterConfig(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "map key"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

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
    instance-of v1, p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    if-nez v1, :cond_1

    .line 2
    invoke-super {p0, p1}, Lcom/google/protobuf/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getName()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hasWeight()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hasWeight()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 7
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hasWeight()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/UInt32Value;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 10
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hasMetadataMatch()Z

    move-result v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hasMetadataMatch()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 11
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hasMetadataMatch()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 14
    :cond_6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getRequestHeadersToAddList()Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getRequestHeadersToAddList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 16
    :cond_7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 18
    :cond_8
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getResponseHeadersToAddList()Ljava/util/List;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getResponseHeadersToAddList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 20
    :cond_9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    .line 21
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 22
    :cond_a
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    .line 23
    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v3

    .line 24
    invoke-virtual {v1, v3}, Lcom/google/protobuf/g1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 25
    :cond_b
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getHostRewriteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$HostRewriteSpecifierCase;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getHostRewriteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$HostRewriteSpecifierCase;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 26
    :cond_c
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifierCase_:I

    const/16 v3, 0xb

    if-eq v1, v3, :cond_d

    goto :goto_0

    .line 27
    :cond_d
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getHostRewriteLiteral()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getHostRewriteLiteral()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 29
    :cond_e
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/h3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/l1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/o1;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;
    .locals 1

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    return-object v0
.end method

.method public getHostRewriteLiteral()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifierCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifierCase_:I

    if-ne v2, v1, :cond_2

    .line 8
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifier_:Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public getHostRewriteLiteralBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 1
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifierCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifier_:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 4
    check-cast v0, Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6
    iget v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifierCase_:I

    if-ne v2, v1, :cond_1

    .line 7
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifier_:Ljava/lang/Object;

    :cond_1
    return-object v0

    .line 8
    :cond_2
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHostRewriteSpecifierCase()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$HostRewriteSpecifierCase;
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifierCase_:I

    invoke-static {v0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$HostRewriteSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$HostRewriteSpecifierCase;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;->getDefaultInstance()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMetadataMatchOrBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/k0;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->name_:Ljava/lang/Object;

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
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->name_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->name_:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->name_:Ljava/lang/Object;

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
            "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;",
            ">;"
        }
    .end annotation

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->PARSER:Lcom/google/protobuf/e2;

    return-object v0
.end method

.method public getRequestHeadersToAdd(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;

    return-object p1
.end method

.method public getRequestHeadersToAddCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestHeadersToAddOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getRequestHeadersToRemove(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRequestHeadersToRemoveBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getRequestHeadersToRemoveCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getRequestHeadersToRemoveList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHeadersToAdd(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HeaderValueOption;

    return-object p1
.end method

.method public getResponseHeadersToAddCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getResponseHeadersToAddOrBuilder(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/y;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

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

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

    return-object v0
.end method

.method public getResponseHeadersToRemove(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getResponseHeadersToRemoveBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/z0;->j0(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getResponseHeadersToRemoveCount()I
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method public bridge synthetic getResponseHeadersToRemoveList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->name_:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->weight_:Lcom/google/protobuf/UInt32Value;

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    .line 6
    :cond_2
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    const/4 v3, 0x0

    .line 8
    :goto_1
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v4, 0x4

    .line 9
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

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
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    const/4 v4, 0x5

    .line 12
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

    .line 13
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/o1;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 14
    :goto_3
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 15
    iget-object v5, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v5, v3}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    add-int/2addr v0, v4

    .line 16
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    .line 17
    :goto_4
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 18
    iget-object v4, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v4, v2}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    add-int/2addr v0, v3

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 20
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 21
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$c;->a:Lcom/google/protobuf/e1;

    invoke-virtual {v3}, Lcom/google/protobuf/e1;->j()Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 22
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/protobuf/e1$b;->N(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v3

    .line 23
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Any;

    invoke-virtual {v3, v2}, Lcom/google/protobuf/e1$b;->P(Ljava/lang/Object;)Lcom/google/protobuf/e1$b;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Lcom/google/protobuf/e1$b;->C()Lcom/google/protobuf/e1;

    move-result-object v2

    const/16 v3, 0xa

    .line 25
    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->G(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_5

    .line 26
    :cond_8
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifierCase_:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_9

    .line 27
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifier_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    :cond_9
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 29
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

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getTypedPerFilterConfigMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTypedPerFilterConfigCount()I
    .locals 1

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

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

    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

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
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

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

.method public getWeight()Lcom/google/protobuf/UInt32Value;
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->weight_:Lcom/google/protobuf/UInt32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/UInt32Value;->getDefaultInstance()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWeightOrBuilder()Lcom/google/protobuf/e3;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v0

    return-object v0
.end method

.method public hasHostRewriteLiteral()Z
    .locals 2

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifierCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMetadataMatch()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWeight()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->weight_:Lcom/google/protobuf/UInt32Value;

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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hasWeight()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UInt32Value;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hasMetadataMatch()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getRequestHeadersToAddCount()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 9
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getRequestHeadersToAddList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getRequestHeadersToRemoveCount()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    .line 11
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getRequestHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    :cond_4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getResponseHeadersToAddCount()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 13
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getResponseHeadersToAddList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 14
    :cond_5
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getResponseHeadersToRemoveCount()I

    move-result v1

    if-lez v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 15
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getResponseHeadersToRemoveList()Lcom/google/protobuf/i2;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 16
    :cond_6
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->i()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    .line 17
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/g1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 18
    :cond_7
    iget v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifierCase_:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_8

    goto :goto_0

    :cond_8
    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x35

    .line 19
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getHostRewriteLiteral()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1d

    .line 20
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v1}, Lcom/google/protobuf/h3;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 21
    iput v0, p0, Lcom/google/protobuf/b;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/o;->n:Lcom/google/protobuf/GeneratedMessageV3$e;

    const-class v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    const-class v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetMapField(I)Lcom/google/protobuf/g1;
    .locals 3

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

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
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    iput-byte v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lcom/google/protobuf/l1$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;
    .locals 1

    .line 4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->newBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$c;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;
    .locals 2

    .line 5
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;-><init>(Lcom/google/protobuf/GeneratedMessageV3$c;Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$a;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    invoke-direct {p1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/l1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/o1$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;
    .locals 2

    .line 3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->DEFAULT_INSTANCE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

    invoke-direct {v0, v1}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;-><init>(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$a;)V

    invoke-virtual {v0, p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;->o0(Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$b;

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
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->name_:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageV3;->isStringEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->name_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->weight_:Lcom/google/protobuf/UInt32Value;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getWeight()Lcom/google/protobuf/UInt32Value;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->metadataMatch_:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->getMetadataMatch()Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/Metadata;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 8
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToAdd_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 9
    :goto_1
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 10
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToAdd_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o1;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->L0(ILcom/google/protobuf/o1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 11
    :goto_2
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 12
    iget-object v3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->responseHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v3, v1}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 13
    :cond_5
    :goto_3
    iget-object v1, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/16 v1, 0x9

    .line 14
    iget-object v2, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->requestHeadersToRemove_:Lcom/google/protobuf/z0;

    invoke-interface {v2, v0}, Lcom/google/protobuf/z0;->c1(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 15
    :cond_6
    invoke-direct {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->internalGetTypedPerFilterConfig()Lcom/google/protobuf/g1;

    move-result-object v0

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight$c;->a:Lcom/google/protobuf/e1;

    const/16 v2, 0xa

    .line 16
    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->serializeStringMapTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/g1;Lcom/google/protobuf/e1;I)V

    .line 17
    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifierCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_7

    .line 18
    iget-object v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/WeightedCluster$ClusterWeight;->hostRewriteSpecifier_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/h3;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/h3;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
