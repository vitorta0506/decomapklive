.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PerXdsConfigCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

.field public static final enum CLUSTER_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

.field public static final enum ENDPOINT_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

.field public static final enum LISTENER_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

.field public static final enum PERXDSCONFIG_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

.field public static final enum ROUTE_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

.field public static final enum SCOPED_ROUTE_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    const-string v1, "LISTENER_CONFIG"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->LISTENER_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    const-string v4, "CLUSTER_CONFIG"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->CLUSTER_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    const-string v7, "ROUTE_CONFIG"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v3, v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->ROUTE_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    .line 4
    new-instance v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    const-string v9, "SCOPED_ROUTE_CONFIG"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v6, v10}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->SCOPED_ROUTE_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    .line 5
    new-instance v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    const-string v11, "ENDPOINT_CONFIG"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v8, v12}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->ENDPOINT_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    .line 6
    new-instance v11, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    const-string v13, "PERXDSCONFIG_NOT_SET"

    invoke-direct {v11, v13, v10, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->PERXDSCONFIG_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    new-array v12, v12, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    aput-object v0, v12, v2

    aput-object v1, v12, v5

    aput-object v4, v12, v3

    aput-object v7, v12, v6

    aput-object v9, v12, v8

    aput-object v11, v12, v10

    .line 7
    sput-object v12, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->ENDPOINT_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->SCOPED_ROUTE_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->ROUTE_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->CLUSTER_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->LISTENER_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    return-object p0

    .line 6
    :cond_5
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->PERXDSCONFIG_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/service/status/v3/PerXdsConfig$PerXdsConfigCase;->value:I

    return v0
.end method
