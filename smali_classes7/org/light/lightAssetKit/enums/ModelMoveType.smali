.class public final enum Lorg/light/lightAssetKit/enums/ModelMoveType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/ModelMoveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/ModelMoveType;

.field public static final enum FollowModel:Lorg/light/lightAssetKit/enums/ModelMoveType;

.field public static final enum FollowUser:Lorg/light/lightAssetKit/enums/ModelMoveType;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/ModelMoveType;

    const-string v1, "FollowUser"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/light/lightAssetKit/enums/ModelMoveType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/light/lightAssetKit/enums/ModelMoveType;->FollowUser:Lorg/light/lightAssetKit/enums/ModelMoveType;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/ModelMoveType;

    const-string v3, "FollowModel"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/light/lightAssetKit/enums/ModelMoveType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/light/lightAssetKit/enums/ModelMoveType;->FollowModel:Lorg/light/lightAssetKit/enums/ModelMoveType;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/light/lightAssetKit/enums/ModelMoveType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lorg/light/lightAssetKit/enums/ModelMoveType;->$VALUES:[Lorg/light/lightAssetKit/enums/ModelMoveType;

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
    iput p3, p0, Lorg/light/lightAssetKit/enums/ModelMoveType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/ModelMoveType;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/ModelMoveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/ModelMoveType;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/ModelMoveType;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/ModelMoveType;->$VALUES:[Lorg/light/lightAssetKit/enums/ModelMoveType;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/ModelMoveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/ModelMoveType;

    return-object v0
.end method
