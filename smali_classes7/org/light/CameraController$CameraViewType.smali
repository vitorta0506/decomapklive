.class public final enum Lorg/light/CameraController$CameraViewType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/CameraController$CameraViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/CameraController$CameraViewType;

.field public static final enum BODY:Lorg/light/CameraController$CameraViewType;

.field public static final enum HEAD:Lorg/light/CameraController$CameraViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/light/CameraController$CameraViewType;

    const-string v1, "BODY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/light/CameraController$CameraViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/light/CameraController$CameraViewType;->BODY:Lorg/light/CameraController$CameraViewType;

    .line 2
    new-instance v1, Lorg/light/CameraController$CameraViewType;

    const-string v3, "HEAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/light/CameraController$CameraViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/light/CameraController$CameraViewType;->HEAD:Lorg/light/CameraController$CameraViewType;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/light/CameraController$CameraViewType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lorg/light/CameraController$CameraViewType;->$VALUES:[Lorg/light/CameraController$CameraViewType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/light/CameraController$CameraViewType;
    .locals 1

    const-class v0, Lorg/light/CameraController$CameraViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/CameraController$CameraViewType;

    return-object p0
.end method

.method public static values()[Lorg/light/CameraController$CameraViewType;
    .locals 1

    sget-object v0, Lorg/light/CameraController$CameraViewType;->$VALUES:[Lorg/light/CameraController$CameraViewType;

    invoke-virtual {v0}, [Lorg/light/CameraController$CameraViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/CameraController$CameraViewType;

    return-object v0
.end method
