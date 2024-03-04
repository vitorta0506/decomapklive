.class public final enum Lorg/light/CameraConfig$DeviceCameraOrientation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/CameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceCameraOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/CameraConfig$DeviceCameraOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/CameraConfig$DeviceCameraOrientation;

.field public static final enum ROTATION_0:Lorg/light/CameraConfig$DeviceCameraOrientation;

.field public static final enum ROTATION_180:Lorg/light/CameraConfig$DeviceCameraOrientation;

.field public static final enum ROTATION_270:Lorg/light/CameraConfig$DeviceCameraOrientation;

.field public static final enum ROTATION_90:Lorg/light/CameraConfig$DeviceCameraOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/light/CameraConfig$DeviceCameraOrientation;

    const-string v1, "ROTATION_0"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/light/CameraConfig$DeviceCameraOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/light/CameraConfig$DeviceCameraOrientation;->ROTATION_0:Lorg/light/CameraConfig$DeviceCameraOrientation;

    .line 2
    new-instance v1, Lorg/light/CameraConfig$DeviceCameraOrientation;

    const-string v3, "ROTATION_90"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/light/CameraConfig$DeviceCameraOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/light/CameraConfig$DeviceCameraOrientation;->ROTATION_90:Lorg/light/CameraConfig$DeviceCameraOrientation;

    .line 3
    new-instance v3, Lorg/light/CameraConfig$DeviceCameraOrientation;

    const-string v5, "ROTATION_180"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/light/CameraConfig$DeviceCameraOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/light/CameraConfig$DeviceCameraOrientation;->ROTATION_180:Lorg/light/CameraConfig$DeviceCameraOrientation;

    .line 4
    new-instance v5, Lorg/light/CameraConfig$DeviceCameraOrientation;

    const-string v7, "ROTATION_270"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/light/CameraConfig$DeviceCameraOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/light/CameraConfig$DeviceCameraOrientation;->ROTATION_270:Lorg/light/CameraConfig$DeviceCameraOrientation;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/light/CameraConfig$DeviceCameraOrientation;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lorg/light/CameraConfig$DeviceCameraOrientation;->$VALUES:[Lorg/light/CameraConfig$DeviceCameraOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/CameraConfig$DeviceCameraOrientation;
    .locals 1

    const-class v0, Lorg/light/CameraConfig$DeviceCameraOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/CameraConfig$DeviceCameraOrientation;

    return-object p0
.end method

.method public static values()[Lorg/light/CameraConfig$DeviceCameraOrientation;
    .locals 1

    sget-object v0, Lorg/light/CameraConfig$DeviceCameraOrientation;->$VALUES:[Lorg/light/CameraConfig$DeviceCameraOrientation;

    invoke-virtual {v0}, [Lorg/light/CameraConfig$DeviceCameraOrientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/CameraConfig$DeviceCameraOrientation;

    return-object v0
.end method
