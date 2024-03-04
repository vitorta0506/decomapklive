.class synthetic Leh/n0$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I

.field static final synthetic e:[I

.field static final synthetic f:[I

.field static final synthetic g:[I

.field static final synthetic h:[I

.field static final synthetic i:[I

.field static final synthetic j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    invoke-static {}, Leh/a$f;->values()[Leh/a$f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Leh/n0$e;->j:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Leh/a$f;->b:Leh/a$f;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Leh/n0$e;->j:[I

    sget-object v3, Leh/a$f;->c:Leh/a$f;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Leh/n0$e;->j:[I

    sget-object v4, Leh/a$f;->d:Leh/a$f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Leh/n0$e;->j:[I

    sget-object v5, Leh/a$f;->e:Leh/a$f;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Leh/n0$e;->j:[I

    sget-object v6, Leh/a$f;->a:Leh/a$f;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 2
    :catch_4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$ClusterDiscoveryTypeCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$ClusterDiscoveryTypeCase;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Leh/n0$e;->i:[I

    :try_start_5
    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$ClusterDiscoveryTypeCase;->TYPE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$ClusterDiscoveryTypeCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v5, Leh/n0$e;->i:[I

    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$ClusterDiscoveryTypeCase;->CLUSTER_TYPE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$ClusterDiscoveryTypeCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v5, Leh/n0$e;->i:[I

    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$ClusterDiscoveryTypeCase;->CLUSTERDISCOVERYTYPE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/cluster/v3/Cluster$ClusterDiscoveryTypeCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 3
    :catch_7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Leh/n0$e;->h:[I

    :try_start_8
    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;->CLUSTER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v5, Leh/n0$e;->h:[I

    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;->CLUSTER_HEADER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v5, Leh/n0$e;->h:[I

    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;->WEIGHTED_CLUSTERS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v5, Leh/n0$e;->h:[I

    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;->CLUSTER_SPECIFIER_PLUGIN:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v5, Leh/n0$e;->h:[I

    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;->CLUSTERSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$ClusterSpecifierCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 4
    :catch_c
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$PolicySpecifierCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$PolicySpecifierCase;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Leh/n0$e;->g:[I

    :try_start_d
    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$PolicySpecifierCase;->HEADER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$PolicySpecifierCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v5, Leh/n0$e;->g:[I

    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$PolicySpecifierCase;->FILTER_STATE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteAction$HashPolicy$PolicySpecifierCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 5
    :catch_e
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Leh/n0$e;->f:[I

    :try_start_f
    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->EXACT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v5, Leh/n0$e;->f:[I

    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->SAFE_REGEX_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v5, Leh/n0$e;->f:[I

    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->RANGE_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v5, Leh/n0$e;->f:[I

    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->PRESENT_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v5, Leh/n0$e;->f:[I

    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->PREFIX_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    const/4 v5, 0x6

    :try_start_14
    sget-object v6, Leh/n0$e;->f:[I

    sget-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->SUFFIX_MATCH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v6, Leh/n0$e;->f:[I

    sget-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;->HEADERMATCHSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/HeaderMatcher$HeaderMatchSpecifierCase;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v8, 0x7

    aput v8, v6, v7
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    .line 6
    :catch_15
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent$DenominatorType;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent$DenominatorType;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Leh/n0$e;->e:[I

    :try_start_16
    sget-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent$DenominatorType;->HUNDRED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent$DenominatorType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v6, Leh/n0$e;->e:[I

    sget-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent$DenominatorType;->TEN_THOUSAND:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent$DenominatorType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v6, Leh/n0$e;->e:[I

    sget-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent$DenominatorType;->MILLION:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent$DenominatorType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v6, Leh/n0$e;->e:[I

    sget-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent$DenominatorType;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/v3/FractionalPercent$DenominatorType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    .line 7
    :catch_19
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Leh/n0$e;->d:[I

    :try_start_1a
    sget-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->PREFIX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v6, Leh/n0$e;->d:[I

    sget-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->PATH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v6, Leh/n0$e;->d:[I

    sget-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->SAFE_REGEX:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v6, Leh/n0$e;->d:[I

    sget-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;->PATHSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RouteMatch$PathSpecifierCase;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 8
    :catch_1d
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route$ActionCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route$ActionCase;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Leh/n0$e;->c:[I

    :try_start_1e
    sget-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route$ActionCase;->ROUTE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route$ActionCase;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v6, Leh/n0$e;->c:[I

    sget-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route$ActionCase;->NON_FORWARDING_ACTION:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route$ActionCase;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v6, Leh/n0$e;->c:[I

    sget-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route$ActionCase;->REDIRECT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route$ActionCase;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v6, Leh/n0$e;->c:[I

    sget-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route$ActionCase;->DIRECT_RESPONSE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route$ActionCase;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v3, Leh/n0$e;->c:[I

    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route$ActionCase;->FILTER_ACTION:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route$ActionCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v3, v6
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v3, Leh/n0$e;->c:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route$ActionCase;->ACTION_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/Route$ActionCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v5, v3, v4
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    .line 9
    :catch_23
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$ConnectionSourceType;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$ConnectionSourceType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Leh/n0$e;->b:[I

    :try_start_24
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$ConnectionSourceType;->ANY:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$ConnectionSourceType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v3, Leh/n0$e;->b:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$ConnectionSourceType;->EXTERNAL:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$ConnectionSourceType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v3, Leh/n0$e;->b:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$ConnectionSourceType;->SAME_IP_OR_LOOPBACK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/listener/v3/FilterChainMatch$ConnectionSourceType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    .line 10
    :catch_26
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Leh/n0$e;->a:[I

    :try_start_27
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;->NAMED_PORT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v1, Leh/n0$e;->a:[I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;->PORT_VALUE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/SocketAddress$PortSpecifierCase;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
