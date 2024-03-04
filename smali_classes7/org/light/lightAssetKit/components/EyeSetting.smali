.class public Lorg/light/lightAssetKit/components/EyeSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public eyeType:Lorg/light/lightAssetKit/enums/EyeType;

.field public innerCanthusTilt:F

.field public leftLimit:F

.field public lookingDownBoost:F

.field public lowerLimit:F

.field public outerCanthusTilt:F

.field public pitchYawRollAxis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public rightLimit:F

.field public upperLimit:F

.field public xSensitivity:F

.field public yOffset:F

.field public ySensitivity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x4147ae14    # -0.36f

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/EyeSetting;->leftLimit:F

    const v0, 0x3eb851ec    # 0.36f

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/EyeSetting;->rightLimit:F

    const v0, -0x40e66666    # -0.6f

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/EyeSetting;->lowerLimit:F

    const v0, 0x3f19999a    # 0.6f

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/EyeSetting;->upperLimit:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    iput v0, p0, Lorg/light/lightAssetKit/components/EyeSetting;->xSensitivity:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 7
    iput v1, p0, Lorg/light/lightAssetKit/components/EyeSetting;->ySensitivity:F

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lorg/light/lightAssetKit/components/EyeSetting;->yOffset:F

    .line 9
    iput v0, p0, Lorg/light/lightAssetKit/components/EyeSetting;->lookingDownBoost:F

    .line 10
    iput v1, p0, Lorg/light/lightAssetKit/components/EyeSetting;->innerCanthusTilt:F

    .line 11
    iput v1, p0, Lorg/light/lightAssetKit/components/EyeSetting;->outerCanthusTilt:F

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/EyeSetting;->pitchYawRollAxis:Ljava/util/ArrayList;

    return-void
.end method
