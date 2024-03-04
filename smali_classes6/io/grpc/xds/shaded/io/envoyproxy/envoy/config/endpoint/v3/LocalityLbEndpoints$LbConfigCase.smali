.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LbConfigCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

.field public static final enum LBCONFIG_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

.field public static final enum LEDS_CLUSTER_LOCALITY_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

.field public static final enum LOAD_BALANCER_ENDPOINTS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    const-string v1, "LOAD_BALANCER_ENDPOINTS"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;->LOAD_BALANCER_ENDPOINTS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    const-string v3, "LEDS_CLUSTER_LOCALITY_CONFIG"

    const/4 v4, 0x1

    const/16 v5, 0x8

    invoke-direct {v1, v3, v4, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;->LEDS_CLUSTER_LOCALITY_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    .line 3
    new-instance v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    const-string v5, "LBCONFIG_NOT_SET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;->LBCONFIG_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;->LEDS_CLUSTER_LOCALITY_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;->LOAD_BALANCER_ENDPOINTS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;->LBCONFIG_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/endpoint/v3/LocalityLbEndpoints$LbConfigCase;->value:I

    return v0
.end method
