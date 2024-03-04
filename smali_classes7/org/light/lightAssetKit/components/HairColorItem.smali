.class public Lorg/light/lightAssetKit/components/HairColorItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public effectType:Lorg/light/lightAssetKit/enums/HairEffectType;

.field public imageBlendMode:Lorg/light/lightAssetKit/enums/BlendModeType;

.field public imageFillMode:I

.field public imagePath:Ljava/lang/String;

.field public lutPath:Ljava/lang/String;

.field public maskType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/light/lightAssetKit/enums/HairEffectType;->Image:Lorg/light/lightAssetKit/enums/HairEffectType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/HairColorItem;->effectType:Lorg/light/lightAssetKit/enums/HairEffectType;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/HairColorItem;->imagePath:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/light/lightAssetKit/components/HairColorItem;->lutPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/HairColorItem;->imageFillMode:I

    .line 6
    sget-object v1, Lorg/light/lightAssetKit/enums/BlendModeType;->Normal:Lorg/light/lightAssetKit/enums/BlendModeType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/HairColorItem;->imageBlendMode:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/HairColorItem;->maskType:I

    return-void
.end method

.method public constructor <init>(Lorg/light/lightAssetKit/enums/HairEffectType;Ljava/lang/String;Ljava/lang/String;ILorg/light/lightAssetKit/enums/BlendModeType;I)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lorg/light/lightAssetKit/enums/HairEffectType;->Image:Lorg/light/lightAssetKit/enums/HairEffectType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/HairColorItem;->effectType:Lorg/light/lightAssetKit/enums/HairEffectType;

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lorg/light/lightAssetKit/components/HairColorItem;->imagePath:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lorg/light/lightAssetKit/components/HairColorItem;->lutPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lorg/light/lightAssetKit/components/HairColorItem;->imageFillMode:I

    .line 13
    sget-object v0, Lorg/light/lightAssetKit/enums/BlendModeType;->Normal:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 14
    iput-object p1, p0, Lorg/light/lightAssetKit/components/HairColorItem;->effectType:Lorg/light/lightAssetKit/enums/HairEffectType;

    .line 15
    iput-object p2, p0, Lorg/light/lightAssetKit/components/HairColorItem;->imagePath:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lorg/light/lightAssetKit/components/HairColorItem;->lutPath:Ljava/lang/String;

    .line 17
    iput p4, p0, Lorg/light/lightAssetKit/components/HairColorItem;->imageFillMode:I

    .line 18
    iput-object p5, p0, Lorg/light/lightAssetKit/components/HairColorItem;->imageBlendMode:Lorg/light/lightAssetKit/enums/BlendModeType;

    .line 19
    iput p6, p0, Lorg/light/lightAssetKit/components/HairColorItem;->maskType:I

    return-void
.end method
