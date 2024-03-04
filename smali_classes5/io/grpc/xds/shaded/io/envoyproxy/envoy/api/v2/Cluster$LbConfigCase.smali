.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LbConfigCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

.field public static final enum LBCONFIG_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

.field public static final enum LEAST_REQUEST_LB_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

.field public static final enum ORIGINAL_DST_LB_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

.field public static final enum RING_HASH_LB_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    const-string v1, "RING_HASH_LB_CONFIG"

    const/4 v2, 0x0

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->RING_HASH_LB_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    const-string v3, "ORIGINAL_DST_LB_CONFIG"

    const/4 v4, 0x1

    const/16 v5, 0x22

    invoke-direct {v1, v3, v4, v5}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->ORIGINAL_DST_LB_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    .line 3
    new-instance v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    const-string v5, "LEAST_REQUEST_LB_CONFIG"

    const/4 v6, 0x2

    const/16 v7, 0x25

    invoke-direct {v3, v5, v6, v7}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->LEAST_REQUEST_LB_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    .line 4
    new-instance v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    const-string v7, "LBCONFIG_NOT_SET"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->LBCONFIG_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;
    .locals 1

    if-eqz p0, :cond_3

    const/16 v0, 0x17

    if-eq p0, v0, :cond_2

    const/16 v0, 0x22

    if-eq p0, v0, :cond_1

    const/16 v0, 0x25

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->LEAST_REQUEST_LB_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->ORIGINAL_DST_LB_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->RING_HASH_LB_CONFIG:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->LBCONFIG_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/api/v2/Cluster$LbConfigCase;->value:I

    return v0
.end method
