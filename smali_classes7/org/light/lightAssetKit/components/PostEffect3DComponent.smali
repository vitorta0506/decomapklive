.class public Lorg/light/lightAssetKit/components/PostEffect3DComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private bloom:Lorg/light/lightAssetKit/components/BloomConfig;

.field private colorGrading:Lorg/light/lightAssetKit/components/ColorGradingConfig;

.field private enable:Z

.field private enableDithering:Z

.field private enableFXAA:Z

.field private enableMSAA:Z

.field private ssao:Lorg/light/lightAssetKit/components/SSAOConfig;

.field private vignette:Lorg/light/lightAssetKit/components/VignetteConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enable:Z

    .line 3
    new-instance v1, Lorg/light/lightAssetKit/components/BloomConfig;

    invoke-direct {v1}, Lorg/light/lightAssetKit/components/BloomConfig;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->bloom:Lorg/light/lightAssetKit/components/BloomConfig;

    .line 4
    new-instance v1, Lorg/light/lightAssetKit/components/ColorGradingConfig;

    invoke-direct {v1}, Lorg/light/lightAssetKit/components/ColorGradingConfig;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->colorGrading:Lorg/light/lightAssetKit/components/ColorGradingConfig;

    .line 5
    new-instance v1, Lorg/light/lightAssetKit/components/VignetteConfig;

    invoke-direct {v1}, Lorg/light/lightAssetKit/components/VignetteConfig;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->vignette:Lorg/light/lightAssetKit/components/VignetteConfig;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enableDithering:Z

    .line 7
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enableMSAA:Z

    .line 8
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enableFXAA:Z

    .line 9
    new-instance v0, Lorg/light/lightAssetKit/components/SSAOConfig;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/SSAOConfig;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->ssao:Lorg/light/lightAssetKit/components/SSAOConfig;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/PostEffect3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;

    .line 3
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enable:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enable:Z

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->bloom:Lorg/light/lightAssetKit/components/BloomConfig;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->bloom:Lorg/light/lightAssetKit/components/BloomConfig;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->colorGrading:Lorg/light/lightAssetKit/components/ColorGradingConfig;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->colorGrading:Lorg/light/lightAssetKit/components/ColorGradingConfig;

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->vignette:Lorg/light/lightAssetKit/components/VignetteConfig;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->vignette:Lorg/light/lightAssetKit/components/VignetteConfig;

    .line 7
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enableDithering:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enableDithering:Z

    .line 8
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enableMSAA:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enableMSAA:Z

    .line 9
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enableFXAA:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enableFXAA:Z

    .line 10
    iget-object v0, v0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->ssao:Lorg/light/lightAssetKit/components/SSAOConfig;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->ssao:Lorg/light/lightAssetKit/components/SSAOConfig;

    .line 11
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getBloom()Lorg/light/lightAssetKit/components/BloomConfig;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->bloom:Lorg/light/lightAssetKit/components/BloomConfig;

    return-object v0
.end method

.method public getColorGrading()Lorg/light/lightAssetKit/components/ColorGradingConfig;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->colorGrading:Lorg/light/lightAssetKit/components/ColorGradingConfig;

    return-object v0
.end method

.method public getEnable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enable:Z

    return v0
.end method

.method public getEnableDithering()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enableDithering:Z

    return v0
.end method

.method public getEnableFXAA()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enableFXAA:Z

    return v0
.end method

.method public getEnableMSAA()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enableMSAA:Z

    return v0
.end method

.method public getSsao()Lorg/light/lightAssetKit/components/SSAOConfig;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->ssao:Lorg/light/lightAssetKit/components/SSAOConfig;

    return-object v0
.end method

.method public getVignette()Lorg/light/lightAssetKit/components/VignetteConfig;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->vignette:Lorg/light/lightAssetKit/components/VignetteConfig;

    return-object v0
.end method

.method public setBloom(Lorg/light/lightAssetKit/components/BloomConfig;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->bloom:Lorg/light/lightAssetKit/components/BloomConfig;

    const-string v0, "bloom"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setColorGrading(Lorg/light/lightAssetKit/components/ColorGradingConfig;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->colorGrading:Lorg/light/lightAssetKit/components/ColorGradingConfig;

    const-string v0, "colorGrading"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enable:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enable"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableDithering(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enableDithering:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableDithering"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableFXAA(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enableFXAA:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableFXAA"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableMSAA(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->enableMSAA:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableMSAA"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSsao(Lorg/light/lightAssetKit/components/SSAOConfig;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->ssao:Lorg/light/lightAssetKit/components/SSAOConfig;

    const-string v0, "ssao"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVignette(Lorg/light/lightAssetKit/components/VignetteConfig;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/PostEffect3DComponent;->vignette:Lorg/light/lightAssetKit/components/VignetteConfig;

    const-string v0, "vignette"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "PostEffect3DComponent"

    return-object v0
.end method
