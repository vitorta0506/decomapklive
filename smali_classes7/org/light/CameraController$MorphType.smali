.class public final enum Lorg/light/CameraController$MorphType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MorphType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/CameraController$MorphType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/CameraController$MorphType;

.field public static final enum ALL:Lorg/light/CameraController$MorphType;

.field public static final enum BASIC:Lorg/light/CameraController$MorphType;

.field public static final enum MIDDLE:Lorg/light/CameraController$MorphType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/light/CameraController$MorphType;

    const-string v1, "BASIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/light/CameraController$MorphType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/light/CameraController$MorphType;->BASIC:Lorg/light/CameraController$MorphType;

    .line 2
    new-instance v1, Lorg/light/CameraController$MorphType;

    const-string v3, "MIDDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/light/CameraController$MorphType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/light/CameraController$MorphType;->MIDDLE:Lorg/light/CameraController$MorphType;

    .line 3
    new-instance v3, Lorg/light/CameraController$MorphType;

    const-string v5, "ALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/light/CameraController$MorphType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/light/CameraController$MorphType;->ALL:Lorg/light/CameraController$MorphType;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/light/CameraController$MorphType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lorg/light/CameraController$MorphType;->$VALUES:[Lorg/light/CameraController$MorphType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/light/CameraController$MorphType;
    .locals 1

    const-class v0, Lorg/light/CameraController$MorphType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/CameraController$MorphType;

    return-object p0
.end method

.method public static values()[Lorg/light/CameraController$MorphType;
    .locals 1

    sget-object v0, Lorg/light/CameraController$MorphType;->$VALUES:[Lorg/light/CameraController$MorphType;

    invoke-virtual {v0}, [Lorg/light/CameraController$MorphType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/CameraController$MorphType;

    return-object v0
.end method
