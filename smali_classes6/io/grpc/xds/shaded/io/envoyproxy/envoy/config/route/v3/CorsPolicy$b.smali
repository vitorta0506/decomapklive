.class synthetic Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy;
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

    invoke-static {}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$EnabledSpecifierCase;->values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$EnabledSpecifierCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$b;->a:[I

    :try_start_0
    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$EnabledSpecifierCase;->FILTER_ENABLED:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$EnabledSpecifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$b;->a:[I

    sget-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$EnabledSpecifierCase;->ENABLEDSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/route/v3/CorsPolicy$EnabledSpecifierCase;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
