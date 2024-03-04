.class public final enum Lorg/light/lightAssetKit/enums/ChannelTransformType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/light/lightAssetKit/enums/ChannelTransformType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/light/lightAssetKit/enums/ChannelTransformType;

.field public static final enum kRotation:Lorg/light/lightAssetKit/enums/ChannelTransformType;

.field public static final enum kScale:Lorg/light/lightAssetKit/enums/ChannelTransformType;

.field public static final enum kTranslation:Lorg/light/lightAssetKit/enums/ChannelTransformType;

.field public static final enum kUnknown:Lorg/light/lightAssetKit/enums/ChannelTransformType;

.field public static final enum kWeights:Lorg/light/lightAssetKit/enums/ChannelTransformType;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lorg/light/lightAssetKit/enums/ChannelTransformType;

    const-string v1, "kUnknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/light/lightAssetKit/enums/ChannelTransformType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/light/lightAssetKit/enums/ChannelTransformType;->kUnknown:Lorg/light/lightAssetKit/enums/ChannelTransformType;

    .line 2
    new-instance v1, Lorg/light/lightAssetKit/enums/ChannelTransformType;

    const-string v3, "kTranslation"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/light/lightAssetKit/enums/ChannelTransformType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/light/lightAssetKit/enums/ChannelTransformType;->kTranslation:Lorg/light/lightAssetKit/enums/ChannelTransformType;

    .line 3
    new-instance v3, Lorg/light/lightAssetKit/enums/ChannelTransformType;

    const-string v5, "kRotation"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/light/lightAssetKit/enums/ChannelTransformType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/light/lightAssetKit/enums/ChannelTransformType;->kRotation:Lorg/light/lightAssetKit/enums/ChannelTransformType;

    .line 4
    new-instance v5, Lorg/light/lightAssetKit/enums/ChannelTransformType;

    const-string v7, "kScale"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lorg/light/lightAssetKit/enums/ChannelTransformType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/light/lightAssetKit/enums/ChannelTransformType;->kScale:Lorg/light/lightAssetKit/enums/ChannelTransformType;

    .line 5
    new-instance v7, Lorg/light/lightAssetKit/enums/ChannelTransformType;

    const-string v9, "kWeights"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lorg/light/lightAssetKit/enums/ChannelTransformType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/light/lightAssetKit/enums/ChannelTransformType;->kWeights:Lorg/light/lightAssetKit/enums/ChannelTransformType;

    const/4 v9, 0x5

    new-array v9, v9, [Lorg/light/lightAssetKit/enums/ChannelTransformType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lorg/light/lightAssetKit/enums/ChannelTransformType;->$VALUES:[Lorg/light/lightAssetKit/enums/ChannelTransformType;

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
    iput p3, p0, Lorg/light/lightAssetKit/enums/ChannelTransformType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/light/lightAssetKit/enums/ChannelTransformType;
    .locals 1

    const-class v0, Lorg/light/lightAssetKit/enums/ChannelTransformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/light/lightAssetKit/enums/ChannelTransformType;

    return-object p0
.end method

.method public static values()[Lorg/light/lightAssetKit/enums/ChannelTransformType;
    .locals 1

    sget-object v0, Lorg/light/lightAssetKit/enums/ChannelTransformType;->$VALUES:[Lorg/light/lightAssetKit/enums/ChannelTransformType;

    invoke-virtual {v0}, [Lorg/light/lightAssetKit/enums/ChannelTransformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/light/lightAssetKit/enums/ChannelTransformType;

    return-object v0
.end method
