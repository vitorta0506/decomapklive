.class public Lorg/light/lightAssetKit/components/LightEstimateComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private enableLightColor:Z

.field private enableLightDirection:Z

.field private enableLightIntensity:Z

.field private imagePath:Ljava/lang/String;

.field private lightEstimateType:Lorg/light/lightAssetKit/enums/LightEstimateType;

.field private lightIntensityMax:F

.field private lightIntensityMin:F

.field private renderTargetKey:Ljava/lang/String;

.field private useScriptSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->renderTargetKey:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->imagePath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->enableLightIntensity:Z

    const/high16 v1, 0x42480000    # 50.0f

    .line 5
    iput v1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->lightIntensityMax:F

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->lightIntensityMin:F

    .line 7
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->enableLightColor:Z

    .line 8
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->enableLightDirection:Z

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->useScriptSet:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/LightEstimateComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/LightEstimateComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->lightEstimateType:Lorg/light/lightAssetKit/enums/LightEstimateType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->lightEstimateType:Lorg/light/lightAssetKit/enums/LightEstimateType;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->renderTargetKey:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->renderTargetKey:Ljava/lang/String;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->imagePath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->imagePath:Ljava/lang/String;

    .line 6
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->enableLightIntensity:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->enableLightIntensity:Z

    .line 7
    iget v1, v0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->lightIntensityMax:F

    iput v1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->lightIntensityMax:F

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->lightIntensityMin:F

    iput v1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->lightIntensityMin:F

    .line 9
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->enableLightColor:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->enableLightColor:Z

    .line 10
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->enableLightDirection:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->enableLightDirection:Z

    .line 11
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->useScriptSet:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->useScriptSet:Z

    .line 12
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getEnableLightColor()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->enableLightColor:Z

    return v0
.end method

.method public getEnableLightDirection()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->enableLightDirection:Z

    return v0
.end method

.method public getEnableLightIntensity()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->enableLightIntensity:Z

    return v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLightEstimateType()Lorg/light/lightAssetKit/enums/LightEstimateType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->lightEstimateType:Lorg/light/lightAssetKit/enums/LightEstimateType;

    return-object v0
.end method

.method public getLightIntensityMax()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->lightIntensityMax:F

    return v0
.end method

.method public getLightIntensityMin()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->lightIntensityMin:F

    return v0
.end method

.method public getRenderTargetKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->renderTargetKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUseScriptSet()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->useScriptSet:Z

    return v0
.end method

.method public setEnableLightColor(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->enableLightColor:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableLightColor"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableLightDirection(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->enableLightDirection:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableLightDirection"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableLightIntensity(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->enableLightIntensity:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableLightIntensity"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->imagePath:Ljava/lang/String;

    const-string v0, "imagePath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLightEstimateType(Lorg/light/lightAssetKit/enums/LightEstimateType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->lightEstimateType:Lorg/light/lightAssetKit/enums/LightEstimateType;

    const-string v0, "lightEstimateType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLightIntensityMax(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->lightIntensityMax:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "lightIntensityMax"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLightIntensityMin(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->lightIntensityMin:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "lightIntensityMin"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderTargetKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->renderTargetKey:Ljava/lang/String;

    const-string v0, "renderTargetKey"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUseScriptSet(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/LightEstimateComponent;->useScriptSet:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "useScriptSet"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "LightEstimateComponent"

    return-object v0
.end method
