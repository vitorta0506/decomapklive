.class synthetic Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck;
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
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HealthCheckerCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HealthCheckerCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$b;->c:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HealthCheckerCase;->HTTP_HEALTH_CHECK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HealthCheckerCase;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$b;->c:[I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HealthCheckerCase;->TCP_HEALTH_CHECK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HealthCheckerCase;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$b;->c:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HealthCheckerCase;->GRPC_HEALTH_CHECK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HealthCheckerCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$b;->c:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HealthCheckerCase;->CUSTOM_HEALTH_CHECK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HealthCheckerCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$b;->c:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HealthCheckerCase;->HEALTHCHECKER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$HealthCheckerCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 2
    :catch_4
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$CustomHealthCheck$ConfigTypeCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$CustomHealthCheck$ConfigTypeCase;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$b;->b:[I

    :try_start_5
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$CustomHealthCheck$ConfigTypeCase;->CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$CustomHealthCheck$ConfigTypeCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$b;->b:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$CustomHealthCheck$ConfigTypeCase;->TYPED_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$CustomHealthCheck$ConfigTypeCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$b;->b:[I

    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$CustomHealthCheck$ConfigTypeCase;->CONFIGTYPE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$CustomHealthCheck$ConfigTypeCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 3
    :catch_7
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$PayloadCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$PayloadCase;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$b;->a:[I

    :try_start_8
    sget-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$PayloadCase;->TEXT:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$PayloadCase;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$b;->a:[I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$PayloadCase;->BINARY:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$PayloadCase;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$b;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$PayloadCase;->PAYLOAD_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/core/HealthCheck$Payload$PayloadCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
