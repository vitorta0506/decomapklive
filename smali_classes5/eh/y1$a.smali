.class synthetic Leh/y1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/y1;
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


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher$RuleCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher$RuleCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Leh/y1$a;->d:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher$RuleCase;->PATH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher$RuleCase;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Leh/y1$a;->d:[I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher$RuleCase;->RULE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/type/matcher/v3/PathMatcher$RuleCase;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 2
    :catch_1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Leh/y1$a;->c:[I

    :try_start_2
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->OR_IDS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Leh/y1$a;->c:[I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->AND_IDS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Leh/y1$a;->c:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->ANY:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v3, 0x4

    :try_start_5
    sget-object v4, Leh/y1$a;->c:[I

    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->AUTHENTICATED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v4, 0x5

    :try_start_6
    sget-object v5, Leh/y1$a;->c:[I

    sget-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->DIRECT_REMOTE_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/4 v5, 0x6

    :try_start_7
    sget-object v6, Leh/y1$a;->c:[I

    sget-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->REMOTE_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v6, 0x7

    :try_start_8
    sget-object v7, Leh/y1$a;->c:[I

    sget-object v8, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->SOURCE_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v7, 0x8

    :try_start_9
    sget-object v8, Leh/y1$a;->c:[I

    sget-object v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->HEADER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v8, 0x9

    :try_start_a
    sget-object v9, Leh/y1$a;->c:[I

    sget-object v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->NOT_ID:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/16 v9, 0xa

    :try_start_b
    sget-object v10, Leh/y1$a;->c:[I

    sget-object v11, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->URL_PATH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/16 v10, 0xb

    :try_start_c
    sget-object v11, Leh/y1$a;->c:[I

    sget-object v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->METADATA:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/16 v11, 0xc

    :try_start_d
    sget-object v12, Leh/y1$a;->c:[I

    sget-object v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;->IDENTIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Principal$IdentifierCase;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 3
    :catch_d
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    move-result-object v12

    array-length v12, v12

    new-array v12, v12, [I

    sput-object v12, Leh/y1$a;->b:[I

    :try_start_e
    sget-object v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->AND_RULES:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v1, v12, v13
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v12, Leh/y1$a;->b:[I

    sget-object v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->OR_RULES:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v0, v12, v13
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v12, Leh/y1$a;->b:[I

    sget-object v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->ANY:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v2, v12, v13
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v12, Leh/y1$a;->b:[I

    sget-object v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->HEADER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v3, v12, v13
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v12, Leh/y1$a;->b:[I

    sget-object v13, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->URL_PATH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aput v4, v12, v13
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v4, Leh/y1$a;->b:[I

    sget-object v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->DESTINATION_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v5, v4, v12
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v4, Leh/y1$a;->b:[I

    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->DESTINATION_PORT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v6, v4, v5
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v4, Leh/y1$a;->b:[I

    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->DESTINATION_PORT_RANGE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v7, v4, v5
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v4, Leh/y1$a;->b:[I

    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->NOT_RULE:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v8, v4, v5
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v4, Leh/y1$a;->b:[I

    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->METADATA:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v9, v4, v5
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v4, Leh/y1$a;->b:[I

    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->REQUESTED_SERVER_NAME:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v10, v4, v5
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v4, Leh/y1$a;->b:[I

    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;->RULE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/Permission$RuleCase;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v11, v4, v5
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    .line 4
    :catch_19
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/RBAC$Action;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/RBAC$Action;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Leh/y1$a;->a:[I

    :try_start_1a
    sget-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/RBAC$Action;->ALLOW:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/RBAC$Action;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v1, Leh/y1$a;->a:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/RBAC$Action;->DENY:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/RBAC$Action;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Leh/y1$a;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/RBAC$Action;->LOG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/RBAC$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Leh/y1$a;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/RBAC$Action;->UNRECOGNIZED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v3/RBAC$Action;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
