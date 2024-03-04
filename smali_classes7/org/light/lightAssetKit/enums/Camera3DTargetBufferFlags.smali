.class public final enum Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

.field public static final enum ALL:Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

.field public static final enum COLOR:Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

.field public static final enum DEPTH:Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

.field public static final enum NONE:Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

.field public static final enum STENCIL:Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;


# instance fields
.field public name:Ljava/lang/String;

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "noClear"

    invoke-direct {v0, v1, v2, v2, v3}, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;->NONE:Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    const-string v3, "COLOR"

    const/4 v4, 0x1

    const-string v5, "clearColor"

    invoke-direct {v1, v3, v4, v4, v5}, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;->COLOR:Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    .line 3
    new-instance v3, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    const-string v5, "DEPTH"

    const/4 v6, 0x2

    const-string v7, ""

    invoke-direct {v3, v5, v6, v6, v7}, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;->DEPTH:Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    .line 4
    new-instance v5, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    const-string v8, "STENCIL"

    const/4 v9, 0x3

    const/4 v10, 0x4

    invoke-direct {v5, v8, v9, v10, v7}, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;->STENCIL:Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    .line 5
    new-instance v8, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    const-string v11, "ALL"

    const/4 v12, 0x7

    invoke-direct {v8, v11, v10, v12, v7}, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;->ALL:Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    const/4 v7, 0x5

    new-array v7, v7, [Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v9

    aput-object v8, v7, v10

    .line 6
    sput-object v7, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;->$VALUES:[Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;->value:I

    .line 3
    iput-object p4, p0, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;->$VALUES:[Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/enums/Camera3DTargetBufferFlags;->name:Ljava/lang/String;

    return-object v0
.end method
