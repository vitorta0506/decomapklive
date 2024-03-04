.class public final enum Lorg/light/CameraConfig$ImageOrigin;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/CameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/CameraConfig$ImageOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/CameraConfig$ImageOrigin;

.field public static final enum BottomLeft:Lorg/light/CameraConfig$ImageOrigin;

.field public static final enum TopLeft:Lorg/light/CameraConfig$ImageOrigin;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/light/CameraConfig$ImageOrigin;

    const-string v1, "TopLeft"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/light/CameraConfig$ImageOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/light/CameraConfig$ImageOrigin;->TopLeft:Lorg/light/CameraConfig$ImageOrigin;

    .line 2
    new-instance v1, Lorg/light/CameraConfig$ImageOrigin;

    const-string v3, "BottomLeft"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/light/CameraConfig$ImageOrigin;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/light/CameraConfig$ImageOrigin;->BottomLeft:Lorg/light/CameraConfig$ImageOrigin;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/light/CameraConfig$ImageOrigin;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lorg/light/CameraConfig$ImageOrigin;->$VALUES:[Lorg/light/CameraConfig$ImageOrigin;

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

.method public static valueOf(Ljava/lang/String;)Lorg/light/CameraConfig$ImageOrigin;
    .locals 1

    const-class v0, Lorg/light/CameraConfig$ImageOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/CameraConfig$ImageOrigin;

    return-object p0
.end method

.method public static values()[Lorg/light/CameraConfig$ImageOrigin;
    .locals 1

    sget-object v0, Lorg/light/CameraConfig$ImageOrigin;->$VALUES:[Lorg/light/CameraConfig$ImageOrigin;

    invoke-virtual {v0}, [Lorg/light/CameraConfig$ImageOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/CameraConfig$ImageOrigin;

    return-object v0
.end method
