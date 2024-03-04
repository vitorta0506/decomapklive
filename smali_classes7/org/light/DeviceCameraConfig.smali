.class public Lorg/light/DeviceCameraConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cameraHorizontalFov:F

.field public cameraIndex:I

.field public deviceCameraOrientation:Lorg/light/CameraConfig$DeviceCameraOrientation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42700000    # 60.0f

    .line 2
    iput v0, p0, Lorg/light/DeviceCameraConfig;->cameraHorizontalFov:F

    .line 3
    sget-object v0, Lorg/light/CameraConfig$DeviceCameraOrientation;->ROTATION_0:Lorg/light/CameraConfig$DeviceCameraOrientation;

    iput-object v0, p0, Lorg/light/DeviceCameraConfig;->deviceCameraOrientation:Lorg/light/CameraConfig$DeviceCameraOrientation;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/light/DeviceCameraConfig;->cameraIndex:I

    return-void
.end method
