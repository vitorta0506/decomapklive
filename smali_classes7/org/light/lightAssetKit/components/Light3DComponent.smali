.class public Lorg/light/lightAssetKit/components/Light3DComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private envRotation:F

.field private iblPath:Ljava/lang/String;

.field private innerAngle:F

.field private intensity:F

.field private irradiancePath:Ljava/lang/String;

.field private lightColor:Ljava/lang/String;

.field private lightType:Lorg/light/lightAssetKit/enums/Light3DType;

.field private outerAngle:F

.field private position:Lorg/light/lightAssetKit/components/Vec3;

.field private radius:F

.field private shadowConfig:Lorg/light/lightAssetKit/components/ShadowConfig;

.field private skyBoxConfig:Lorg/light/lightAssetKit/components/SkyBoxConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->lightColor:Ljava/lang/String;

    const/high16 v1, 0x40800000    # 4.0f

    .line 3
    iput v1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->radius:F

    .line 4
    new-instance v1, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v1}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->position:Lorg/light/lightAssetKit/components/Vec3;

    .line 5
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->iblPath:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->irradiancePath:Ljava/lang/String;

    .line 7
    new-instance v0, Lorg/light/lightAssetKit/components/SkyBoxConfig;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/SkyBoxConfig;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->skyBoxConfig:Lorg/light/lightAssetKit/components/SkyBoxConfig;

    .line 8
    new-instance v0, Lorg/light/lightAssetKit/components/ShadowConfig;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/ShadowConfig;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->shadowConfig:Lorg/light/lightAssetKit/components/ShadowConfig;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Light3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Light3DComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Light3DComponent;->lightType:Lorg/light/lightAssetKit/enums/Light3DType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->lightType:Lorg/light/lightAssetKit/enums/Light3DType;

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/Light3DComponent;->intensity:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->intensity:F

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Light3DComponent;->lightColor:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->lightColor:Ljava/lang/String;

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/Light3DComponent;->radius:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->radius:F

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Light3DComponent;->position:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->position:Lorg/light/lightAssetKit/components/Vec3;

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/Light3DComponent;->innerAngle:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->innerAngle:F

    .line 9
    iget v1, v0, Lorg/light/lightAssetKit/components/Light3DComponent;->outerAngle:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->outerAngle:F

    .line 10
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Light3DComponent;->iblPath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->iblPath:Ljava/lang/String;

    .line 11
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Light3DComponent;->irradiancePath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->irradiancePath:Ljava/lang/String;

    .line 12
    iget v1, v0, Lorg/light/lightAssetKit/components/Light3DComponent;->envRotation:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->envRotation:F

    .line 13
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Light3DComponent;->skyBoxConfig:Lorg/light/lightAssetKit/components/SkyBoxConfig;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->skyBoxConfig:Lorg/light/lightAssetKit/components/SkyBoxConfig;

    .line 14
    iget-object v0, v0, Lorg/light/lightAssetKit/components/Light3DComponent;->shadowConfig:Lorg/light/lightAssetKit/components/ShadowConfig;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->shadowConfig:Lorg/light/lightAssetKit/components/ShadowConfig;

    .line 15
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getEnvRotation()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->envRotation:F

    return v0
.end method

.method public getIblPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->iblPath:Ljava/lang/String;

    return-object v0
.end method

.method public getInnerAngle()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->innerAngle:F

    return v0
.end method

.method public getIntensity()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->intensity:F

    return v0
.end method

.method public getIrradiancePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->irradiancePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLightColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->lightColor:Ljava/lang/String;

    return-object v0
.end method

.method public getLightType()Lorg/light/lightAssetKit/enums/Light3DType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->lightType:Lorg/light/lightAssetKit/enums/Light3DType;

    return-object v0
.end method

.method public getOuterAngle()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->outerAngle:F

    return v0
.end method

.method public getPosition()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->position:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->radius:F

    return v0
.end method

.method public getShadowConfig()Lorg/light/lightAssetKit/components/ShadowConfig;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->shadowConfig:Lorg/light/lightAssetKit/components/ShadowConfig;

    return-object v0
.end method

.method public getSkyBoxConfig()Lorg/light/lightAssetKit/components/SkyBoxConfig;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->skyBoxConfig:Lorg/light/lightAssetKit/components/SkyBoxConfig;

    return-object v0
.end method

.method public setEnvRotation(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->envRotation:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "envRotation"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIblPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->iblPath:Ljava/lang/String;

    const-string v0, "iblPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInnerAngle(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->innerAngle:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "innerAngle"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIntensity(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->intensity:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "intensity"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIrradiancePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->irradiancePath:Ljava/lang/String;

    const-string v0, "irradiancePath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLightColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->lightColor:Ljava/lang/String;

    const-string v0, "lightColor"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLightType(Lorg/light/lightAssetKit/enums/Light3DType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->lightType:Lorg/light/lightAssetKit/enums/Light3DType;

    const-string v0, "lightType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOuterAngle(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->outerAngle:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "outerAngle"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPosition(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->position:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "position"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->radius:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "radius"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setShadowConfig(Lorg/light/lightAssetKit/components/ShadowConfig;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->shadowConfig:Lorg/light/lightAssetKit/components/ShadowConfig;

    const-string v0, "shadowConfig"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSkyBoxConfig(Lorg/light/lightAssetKit/components/SkyBoxConfig;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Light3DComponent;->skyBoxConfig:Lorg/light/lightAssetKit/components/SkyBoxConfig;

    const-string v0, "skyBoxConfig"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Light3DComponent"

    return-object v0
.end method
