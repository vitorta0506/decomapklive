.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RouteSpecifierCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

.field public static final enum RDS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

.field public static final enum ROUTESPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

.field public static final enum ROUTE_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

.field public static final enum SCOPED_ROUTES:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    const-string v1, "RDS"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;->RDS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    const-string v4, "ROUTE_CONFIG"

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v1, v4, v5, v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;->ROUTE_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    const-string v7, "SCOPED_ROUTES"

    const/4 v8, 0x2

    const/16 v9, 0x1f

    invoke-direct {v4, v7, v8, v9}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;->SCOPED_ROUTES:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    .line 4
    new-instance v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    const-string v9, "ROUTESPECIFIER_NOT_SET"

    invoke-direct {v7, v9, v3, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;->ROUTESPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    new-array v6, v6, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v8

    aput-object v7, v6, v3

    .line 5
    sput-object v6, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;
    .locals 1

    if-eqz p0, :cond_3

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;->ROUTE_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;->RDS:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;->SCOPED_ROUTES:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;->ROUTESPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/extensions/filters/network/http_connection_manager/v3/HttpConnectionManager$RouteSpecifierCase;->value:I

    return v0
.end method
