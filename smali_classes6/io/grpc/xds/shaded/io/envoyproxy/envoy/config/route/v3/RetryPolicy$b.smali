.class synthetic Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryHostPredicate$ConfigTypeCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryHostPredicate$ConfigTypeCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$b;->b:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryHostPredicate$ConfigTypeCase;->TYPED_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryHostPredicate$ConfigTypeCase;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$b;->b:[I

    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryHostPredicate$ConfigTypeCase;->CONFIGTYPE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryHostPredicate$ConfigTypeCase;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 2
    :catch_1
    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority$ConfigTypeCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority$ConfigTypeCase;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$b;->a:[I

    :try_start_2
    sget-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority$ConfigTypeCase;->TYPED_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority$ConfigTypeCase;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$b;->a:[I

    sget-object v2, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority$ConfigTypeCase;->CONFIGTYPE_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/RetryPolicy$RetryPriority$ConfigTypeCase;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
