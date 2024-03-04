.class public final enum Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/u0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayerSpecifierCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;",
        ">;",
        "Lcom/google/protobuf/u0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

.field public static final enum ADMIN_LAYER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

.field public static final enum DISK_LAYER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

.field public static final enum LAYERSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

.field public static final enum RTDS_LAYER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

.field public static final enum STATIC_LAYER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    const-string v1, "STATIC_LAYER"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->STATIC_LAYER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    .line 2
    new-instance v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    const-string v4, "DISK_LAYER"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->DISK_LAYER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    .line 3
    new-instance v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    const-string v7, "ADMIN_LAYER"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v3, v8}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->ADMIN_LAYER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    .line 4
    new-instance v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    const-string v9, "RTDS_LAYER"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v6, v10}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->RTDS_LAYER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    .line 5
    new-instance v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    const-string v11, "LAYERSPECIFIER_NOT_SET"

    invoke-direct {v9, v11, v8, v2}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->LAYERSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    new-array v10, v10, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    aput-object v0, v10, v2

    aput-object v1, v10, v5

    aput-object v4, v10, v3

    aput-object v7, v10, v6

    aput-object v9, v10, v8

    .line 6
    sput-object v10, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

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
    iput p3, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->RTDS_LAYER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->ADMIN_LAYER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->DISK_LAYER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->STATIC_LAYER:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->LAYERSPECIFIER_NOT_SET:Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    return-object p0
.end method

.method public static valueOf(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->forNumber(I)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;
    .locals 1

    .line 1
    const-class v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    return-object p0
.end method

.method public static values()[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;
    .locals 1

    sget-object v0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->$VALUES:[Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    invoke-virtual {v0}, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    iget v0, p0, Lio/grpc/xds/shaded/io/envoyproxy/envoy/config/bootstrap/v3/RuntimeLayer$LayerSpecifierCase;->value:I

    return v0
.end method
