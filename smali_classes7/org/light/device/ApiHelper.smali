.class public Lorg/light/device/ApiHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/light/device/ApiHelper$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

.field public static final CAN_TAKE_VIDEO:Z

.field public static final ENABLE_PHOTO_EDITOR:Z

.field public static final HAS_ACTION_BAR:Z

.field public static final HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

.field public static final HAS_BITMAP_REGION_DECODER:Z

.field public static final HAS_CAMCORDERPROFILE_METHOD:Z

.field public static final HAS_CAMERAINFO:Z

.field public static final HAS_CAMERA_FOCUS_AREA:Z

.field public static final HAS_CAMERA_HDR:Z

.field public static final HAS_CAMERA_HDR_PLUS:Z

.field public static final HAS_CAMERA_METERING_AREA:Z

.field public static final HAS_DISPLAY_LISTENER:Z

.field public static final HAS_EDITOR_APPLY:Z

.field public static final HAS_EFFECTS_RECORDING:Z = false

.field public static final HAS_EFFECTS_RECORDING_CONTEXT_INPUT:Z

.field public static final HAS_FACE_DETECTION:Z

.field public static final HAS_FINE_RESOLUTION_QUALITY_LEVELS:Z

.field public static final HAS_GET_CAMERA_DISABLED:Z

.field public static final HAS_GET_SUPPORTED_VIDEO_SIZE:Z

.field public static final HAS_HARDWARE_ACCELERATION:Z

.field public static final HAS_INTENT_EXTRA_LOCAL_ONLY:Z

.field public static final HAS_MEDIA_ACTION_SOUND:Z

.field public static final HAS_MEDIA_COLUMNS_RESOLUTION:Z = true

.field public static final HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

.field public static final HAS_MEDIA_PROVIDER_FILES_TABLE:Z

.field public static final HAS_MOTION_EVENT_TRANSFORM:Z

.field public static final HAS_MTP:Z

.field public static final HAS_MULTICORE_CHIPS:Z

.field public static final HAS_OLD_PANORAMA:Z

.field public static final HAS_OPTIONS_IN_MUTABLE:Z

.field public static final HAS_POST_ON_ANIMATION:Z

.field public static final HAS_RELEASE_SURFACE_TEXTURE:Z

.field public static final HAS_REMOTE_VIEWS_SERVICE:Z

.field public static final HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

.field public static final HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

.field public static final HAS_SD_CARD:Z

.field public static final HAS_SET_BEAM_PUSH_URIS:Z

.field public static final HAS_SET_DEFALT_BUFFER_SIZE:Z

.field public static final HAS_SET_ICON_ATTRIBUTE:Z

.field public static final HAS_SET_SYSTEM_UI_VISIBILITY:Z

.field public static HAS_SURFACE_TEXTURE:Z

.field public static final HAS_SURFACE_TEXTURE_RECORDING:Z

.field public static final HAS_TIME_LAPSE_RECORDING:Z

.field public static final HAS_VIEW_PROPERTY_ANIMATOR:Z

.field public static final HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION:Z

.field public static final HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

.field public static final HAS_VIEW_TRANSFORM_PROPERTIES:Z

.field public static final HAS_ZOOM_WHEN_RECORDING:Z

.field public static final USE_888_PIXEL_FORMAT:Z

.field public static final USE_COOLPAD8013_PORTING:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    .line 2
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    .line 3
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_CAMERA_FOCUS_AREA:Z

    .line 4
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_CAMERA_METERING_AREA:Z

    .line 5
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_CAMERA_HDR:Z

    .line 6
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_CAMERA_HDR_PLUS:Z

    .line 7
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_DISPLAY_LISTENER:Z

    .line 8
    sput-boolean v0, Lorg/light/device/ApiHelper;->CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

    const/4 v1, 0x0

    .line 9
    sput-boolean v1, Lorg/light/device/ApiHelper;->USE_COOLPAD8013_PORTING:Z

    .line 10
    sput-boolean v0, Lorg/light/device/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    .line 11
    sput-boolean v0, Lorg/light/device/ApiHelper;->ENABLE_PHOTO_EDITOR:Z

    .line 12
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_HARDWARE_ACCELERATION:Z

    .line 13
    const-class v2, Landroid/view/View;

    const-string v3, "SYSTEM_UI_FLAG_LAYOUT_STABLE"

    .line 14
    invoke-static {v2, v3}, Lorg/light/device/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lorg/light/device/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    .line 15
    const-class v2, Landroid/provider/MediaStore$MediaColumns;

    const-string v3, "WIDTH"

    .line 16
    invoke-static {v2, v3}, Lorg/light/device/ApiHelper;->hasField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lorg/light/device/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_HIDE_NAVIGATION:Z

    .line 17
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

    .line 18
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_FACTORY:Z

    .line 19
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    .line 20
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    aput-object v3, v2, v0

    const-string v4, "android.graphics.SurfaceTexture"

    const-string v5, "setDefaultBufferSize"

    .line 21
    invoke-static {v4, v5, v2}, Lorg/light/device/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lorg/light/device/ApiHelper;->HAS_SET_DEFALT_BUFFER_SIZE:Z

    new-array v2, v1, [Ljava/lang/Class;

    const-string v5, "release"

    .line 22
    invoke-static {v4, v5, v2}, Lorg/light/device/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lorg/light/device/ApiHelper;->HAS_RELEASE_SURFACE_TEXTURE:Z

    .line 23
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    .line 24
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_MTP:Z

    .line 25
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_REMOTE_VIEWS_SERVICE:Z

    .line 26
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_INTENT_EXTRA_LOCAL_ONLY:Z

    .line 27
    const-class v2, Landroid/view/View;

    new-array v4, v0, [Ljava/lang/Class;

    aput-object v3, v4, v1

    const-string v3, "setSystemUiVisibility"

    invoke-static {v2, v3, v4}, Lorg/light/device/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lorg/light/device/ApiHelper;->HAS_SET_SYSTEM_UI_VISIBILITY:Z

    .line 28
    const-class v2, Landroid/content/SharedPreferences$Editor;

    const/4 v3, 0x0

    const-string v4, "apply"

    invoke-static {v2, v4, v3}, Lorg/light/device/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lorg/light/device/ApiHelper;->HAS_EDITOR_APPLY:Z

    :try_start_0
    const-string v2, "android.hardware.Camera$FaceDetectionListener"

    .line 29
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 30
    const-class v3, Landroid/hardware/Camera;

    const-string v4, "setFaceDetectionListener"

    new-array v5, v0, [Ljava/lang/Class;

    aput-object v2, v5, v1

    .line 31
    invoke-static {v3, v4, v5}, Lorg/light/device/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Landroid/hardware/Camera;

    const-string v3, "startFaceDetection"

    new-array v4, v1, [Ljava/lang/Class;

    .line 32
    invoke-static {v2, v3, v4}, Lorg/light/device/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Landroid/hardware/Camera;

    const-string v3, "stopFaceDetection"

    new-array v4, v1, [Ljava/lang/Class;

    .line 33
    invoke-static {v2, v3, v4}, Lorg/light/device/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Landroid/hardware/Camera$Parameters;

    const-string v3, "getMaxNumDetectedFaces"

    new-array v4, v1, [Ljava/lang/Class;

    .line 34
    invoke-static {v2, v3, v4}, Lorg/light/device/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v2, 0x0

    .line 35
    :goto_0
    sput-boolean v2, Lorg/light/device/ApiHelper;->HAS_FACE_DETECTION:Z

    :try_start_1
    const-string v2, "android.graphics.BitmapRegionDecoder"

    .line 36
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x1

    goto :goto_1

    :catch_0
    const/4 v2, 0x0

    .line 37
    :goto_1
    sput-boolean v2, Lorg/light/device/ApiHelper;->HAS_BITMAP_REGION_DECODER:Z

    .line 38
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Landroid/content/ComponentName;

    aput-object v4, v3, v1

    const-string v4, "getCameraDisabled"

    .line 39
    invoke-static {v2, v4, v3}, Lorg/light/device/ApiHelper;->hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    sput-boolean v2, Lorg/light/device/ApiHelper;->HAS_GET_CAMERA_DISABLED:Z

    .line 40
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_MEDIA_ACTION_SOUND:Z

    .line 41
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_OLD_PANORAMA:Z

    .line 42
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_TIME_LAPSE_RECORDING:Z

    .line 43
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_ZOOM_WHEN_RECORDING:Z

    .line 44
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_FINE_RESOLUTION_QUALITY_LEVELS:Z

    .line 45
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_MOTION_EVENT_TRANSFORM:Z

    .line 46
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_EFFECTS_RECORDING_CONTEXT_INPUT:Z

    .line 47
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_GET_SUPPORTED_VIDEO_SIZE:Z

    .line 48
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_SET_ICON_ATTRIBUTE:Z

    .line 49
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_MEDIA_PROVIDER_FILES_TABLE:Z

    .line 50
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    .line 51
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_ACTION_BAR:Z

    .line 52
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_VIEW_TRANSFORM_PROPERTIES:Z

    .line 53
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_OPTIONS_IN_MUTABLE:Z

    .line 54
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_VIEW_PROPERTY_ANIMATOR:Z

    .line 55
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_POST_ON_ANIMATION:Z

    .line 56
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_CAMERAINFO:Z

    .line 57
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_SD_CARD:Z

    .line 58
    sput-boolean v0, Lorg/light/device/ApiHelper;->HAS_CAMCORDERPROFILE_METHOD:Z

    .line 59
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    if-le v2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    sput-boolean v1, Lorg/light/device/ApiHelper;->HAS_MULTICORE_CHIPS:Z

    .line 60
    sput-boolean v0, Lorg/light/device/ApiHelper;->CAN_TAKE_VIDEO:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasField(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasGingerbread()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hasHoneycomb()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hasHoneycombMR1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hasIceCreamSandwich()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hasJellyBean()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hasJellyBeanMR1()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hasJellyBeanMR2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hasKitkat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hasLollipop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hasLollipopMR1()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasMarshmallow()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static varargs hasMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static varargs hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasNougat()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAndroid_8_1()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isExactlyKitkat()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
