.class public final enum Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

.field public static final enum SoftWithRigid:Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

.field public static final enum SoftWithRigidAndSoft:Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

.field public static final enum SoftWithSoft:Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    const-string v1, "SoftWithRigid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;->SoftWithRigid:Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    const-string v3, "SoftWithSoft"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;->SoftWithSoft:Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    .line 3
    new-instance v3, Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    const-string v5, "SoftWithRigidAndSoft"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;->SoftWithRigidAndSoft:Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;->$VALUES:[Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

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
    iput p3, p0, Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;->$VALUES:[Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    return-object v0
.end method
