.class public final enum Lorg/light/lightAssetKit/enums/WorkMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/WorkMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/WorkMode;

.field public static final enum kLightSDK:Lorg/light/lightAssetKit/enums/WorkMode;

.field public static final enum kUE4:Lorg/light/lightAssetKit/enums/WorkMode;

.field public static final enum kZPlan:Lorg/light/lightAssetKit/enums/WorkMode;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/WorkMode;

    const-string v1, "kLightSDK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/light/lightAssetKit/enums/WorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/light/lightAssetKit/enums/WorkMode;->kLightSDK:Lorg/light/lightAssetKit/enums/WorkMode;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/WorkMode;

    const-string v3, "kZPlan"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/light/lightAssetKit/enums/WorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/light/lightAssetKit/enums/WorkMode;->kZPlan:Lorg/light/lightAssetKit/enums/WorkMode;

    .line 3
    new-instance v3, Lorg/light/lightAssetKit/enums/WorkMode;

    const-string v5, "kUE4"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/light/lightAssetKit/enums/WorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/light/lightAssetKit/enums/WorkMode;->kUE4:Lorg/light/lightAssetKit/enums/WorkMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/light/lightAssetKit/enums/WorkMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lorg/light/lightAssetKit/enums/WorkMode;->$VALUES:[Lorg/light/lightAssetKit/enums/WorkMode;

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
    iput p3, p0, Lorg/light/lightAssetKit/enums/WorkMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/WorkMode;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/WorkMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/WorkMode;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/WorkMode;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/WorkMode;->$VALUES:[Lorg/light/lightAssetKit/enums/WorkMode;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/WorkMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/WorkMode;

    return-object v0
.end method
