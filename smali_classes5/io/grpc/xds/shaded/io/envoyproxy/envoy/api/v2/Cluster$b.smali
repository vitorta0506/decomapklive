.class synthetic Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$b;->c:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->RING_HASH_LB_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$b;->c:[I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->ORIGINAL_DST_LB_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$b;->c:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->LEAST_REQUEST_LB_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$b;->c:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->LBCONFIG_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 2
    :catch_3
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterDiscoveryTypeCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterDiscoveryTypeCase;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$b;->b:[I

    :try_start_4
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterDiscoveryTypeCase;->TYPE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterDiscoveryTypeCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$b;->b:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterDiscoveryTypeCase;->CLUSTER_TYPE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterDiscoveryTypeCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$b;->b:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterDiscoveryTypeCase;->CLUSTERDISCOVERYTYPE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$ClusterDiscoveryTypeCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 3
    :catch_6
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityConfigSpecifierCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityConfigSpecifierCase;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$b;->a:[I

    :try_start_7
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityConfigSpecifierCase;->ZONE_AWARE_LB_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityConfigSpecifierCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$b;->a:[I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityConfigSpecifierCase;->LOCALITY_WEIGHTED_LB_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityConfigSpecifierCase;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$b;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityConfigSpecifierCase;->LOCALITYCONFIGSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$CommonLbConfig$LocalityConfigSpecifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
