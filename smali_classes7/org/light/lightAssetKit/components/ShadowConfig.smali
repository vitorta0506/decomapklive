.class public Lorg/light/lightAssetKit/components/ShadowConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public castShadows:Z

.field public constantBias:F

.field public normalBias:F

.field public polygonOffsetConstant:F

.field public polygonOffsetSlope:F

.field public shadowCascades:I

.field public shadowMapSize:I

.field public stable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ShadowConfig;->castShadows:Z

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/ShadowConfig;->stable:Z

    const v1, 0x3a83126f    # 0.001f

    .line 4
    iput v1, p0, Lorg/light/lightAssetKit/components/ShadowConfig;->constantBias:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    iput v1, p0, Lorg/light/lightAssetKit/components/ShadowConfig;->normalBias:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 6
    iput v1, p0, Lorg/light/lightAssetKit/components/ShadowConfig;->polygonOffsetConstant:F

    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    iput v1, p0, Lorg/light/lightAssetKit/components/ShadowConfig;->polygonOffsetSlope:F

    .line 8
    iput v0, p0, Lorg/light/lightAssetKit/components/ShadowConfig;->shadowCascades:I

    return-void
.end method
