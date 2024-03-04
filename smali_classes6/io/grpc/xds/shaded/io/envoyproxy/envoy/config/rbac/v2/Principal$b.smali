.class synthetic Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$b;->a:[I

    :try_start_0
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;->AND_IDS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$b;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;->OR_IDS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$b;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;->ANY:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$b;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;->AUTHENTICATED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$b;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;->SOURCE_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$b;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;->DIRECT_REMOTE_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$b;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;->REMOTE_IP:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$b;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;->HEADER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$b;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;->URL_PATH:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$b;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;->METADATA:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$b;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;->NOT_ID:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$b;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;->IDENTIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/rbac/v2/Principal$IdentifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
