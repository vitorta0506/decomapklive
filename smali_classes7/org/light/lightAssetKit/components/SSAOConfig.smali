.class public Lorg/light/lightAssetKit/components/SSAOConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bias:F

.field public enable:Z

.field public intensity:F

.field public power:F

.field public radius:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/SSAOConfig;->enable:Z

    const v0, 0x3e99999a    # 0.3f

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/SSAOConfig;->radius:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/SSAOConfig;->intensity:F

    const v1, 0x3a03126f    # 5.0E-4f

    .line 5
    iput v1, p0, Lorg/light/lightAssetKit/components/SSAOConfig;->bias:F

    .line 6
    iput v0, p0, Lorg/light/lightAssetKit/components/SSAOConfig;->power:F

    return-void
.end method
