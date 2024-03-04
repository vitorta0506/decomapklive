.class final enum Lorg/light/device/DeviceInstance$DEVICE_MEM;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/device/DeviceInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DEVICE_MEM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/device/DeviceInstance$DEVICE_MEM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/device/DeviceInstance$DEVICE_MEM;

.field public static final enum GN9010:Lorg/light/device/DeviceInstance$DEVICE_MEM;

.field public static final enum HUAWEI_PLK:Lorg/light/device/DeviceInstance$DEVICE_MEM;

.field public static final enum vivo_Y23L:Lorg/light/device/DeviceInstance$DEVICE_MEM;

.field public static final enum vivo_Y27:Lorg/light/device/DeviceInstance$DEVICE_MEM;


# instance fields
.field private final device:Ljava/lang/String;

.field private final sizeInKB:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lorg/light/device/DeviceInstance$DEVICE_MEM;

    const-string v1, "GN9010"

    const/4 v2, 0x0

    const v3, 0x14000

    invoke-direct {v0, v1, v2, v1, v3}, Lorg/light/device/DeviceInstance$DEVICE_MEM;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/light/device/DeviceInstance$DEVICE_MEM;->GN9010:Lorg/light/device/DeviceInstance$DEVICE_MEM;

    .line 2
    new-instance v1, Lorg/light/device/DeviceInstance$DEVICE_MEM;

    const-string v4, "vivo_Y23L"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v4, v3}, Lorg/light/device/DeviceInstance$DEVICE_MEM;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lorg/light/device/DeviceInstance$DEVICE_MEM;->vivo_Y23L:Lorg/light/device/DeviceInstance$DEVICE_MEM;

    .line 3
    new-instance v4, Lorg/light/device/DeviceInstance$DEVICE_MEM;

    const-string v6, "vivo_Y27"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v6, v3}, Lorg/light/device/DeviceInstance$DEVICE_MEM;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v4, Lorg/light/device/DeviceInstance$DEVICE_MEM;->vivo_Y27:Lorg/light/device/DeviceInstance$DEVICE_MEM;

    .line 4
    new-instance v6, Lorg/light/device/DeviceInstance$DEVICE_MEM;

    const-string v8, "HUAWEI_PLK"

    const/4 v9, 0x3

    const-string v10, "HUAWEI_PLK-AL10"

    invoke-direct {v6, v8, v9, v10, v3}, Lorg/light/device/DeviceInstance$DEVICE_MEM;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lorg/light/device/DeviceInstance$DEVICE_MEM;->HUAWEI_PLK:Lorg/light/device/DeviceInstance$DEVICE_MEM;

    const/4 v3, 0x4

    new-array v3, v3, [Lorg/light/device/DeviceInstance$DEVICE_MEM;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    aput-object v6, v3, v9

    .line 5
    sput-object v3, Lorg/light/device/DeviceInstance$DEVICE_MEM;->$VALUES:[Lorg/light/device/DeviceInstance$DEVICE_MEM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lorg/light/device/DeviceInstance$DEVICE_MEM;->device:Ljava/lang/String;

    .line 3
    iput p4, p0, Lorg/light/device/DeviceInstance$DEVICE_MEM;->sizeInKB:I

    return-void
.end method

.method static synthetic access$200(Lorg/light/device/DeviceInstance$DEVICE_MEM;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/light/device/DeviceInstance$DEVICE_MEM;->device:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lorg/light/device/DeviceInstance$DEVICE_MEM;)I
    .locals 0

    iget p0, p0, Lorg/light/device/DeviceInstance$DEVICE_MEM;->sizeInKB:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/device/DeviceInstance$DEVICE_MEM;
    .locals 1

    const-class v0, Lorg/light/device/DeviceInstance$DEVICE_MEM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/device/DeviceInstance$DEVICE_MEM;

    return-object p0
.end method

.method public static values()[Lorg/light/device/DeviceInstance$DEVICE_MEM;
    .locals 1

    sget-object v0, Lorg/light/device/DeviceInstance$DEVICE_MEM;->$VALUES:[Lorg/light/device/DeviceInstance$DEVICE_MEM;

    invoke-virtual {v0}, [Lorg/light/device/DeviceInstance$DEVICE_MEM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/device/DeviceInstance$DEVICE_MEM;

    return-object v0
.end method
