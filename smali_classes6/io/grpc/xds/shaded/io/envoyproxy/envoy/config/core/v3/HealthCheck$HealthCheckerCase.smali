.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HealthCheckerCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

.field public static final enum CUSTOM_HEALTH_CHECK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

.field public static final enum GRPC_HEALTH_CHECK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

.field public static final enum HEALTHCHECKER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

.field public static final enum HTTP_HEALTH_CHECK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

.field public static final enum TCP_HEALTH_CHECK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    const-string v1, "HTTP_HEALTH_CHECK"

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->HTTP_HEALTH_CHECK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    const-string v3, "TCP_HEALTH_CHECK"

    const/4 v4, 0x1

    const/16 v5, 0x9

    invoke-direct {v1, v3, v4, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->TCP_HEALTH_CHECK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    .line 3
    new-instance v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    const-string v5, "GRPC_HEALTH_CHECK"

    const/4 v6, 0x2

    const/16 v7, 0xb

    invoke-direct {v3, v5, v6, v7}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->GRPC_HEALTH_CHECK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    .line 4
    new-instance v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    const-string v7, "CUSTOM_HEALTH_CHECK"

    const/4 v8, 0x3

    const/16 v9, 0xd

    invoke-direct {v5, v7, v8, v9}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->CUSTOM_HEALTH_CHECK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    .line 5
    new-instance v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    const-string v9, "HEALTHCHECKER_NOT_SET"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->HEALTHCHECKER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;
    .locals 1

    if-eqz p0, :cond_4

    const/16 v0, 0xb

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->TCP_HEALTH_CHECK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->HTTP_HEALTH_CHECK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->CUSTOM_HEALTH_CHECK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->GRPC_HEALTH_CHECK:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->HEALTHCHECKER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/core/v3/HealthCheck$HealthCheckerCase;->value:I

    return v0
.end method