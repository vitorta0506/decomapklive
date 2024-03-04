.class public Lorg/light/lightAssetKit/components/Particle;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private backgroundPath:Ljava/lang/String;

.field private backgroundTexturePath:Ljava/lang/String;

.field private colorTexturePath:Ljava/lang/String;

.field private inputRenderTarget:Ljava/lang/String;

.field private materialPath:Ljava/lang/String;

.field private sourcePositionPath:Ljava/lang/String;

.field private texturePath:Ljava/lang/String;

.field private triggerJson:Ljava/lang/String;

.field private triggerTime:I

.field private triggerType:Lorg/light/lightAssetKit/enums/ParticleTriggerType;

.field private useColorReference:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->materialPath:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->triggerJson:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->texturePath:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->colorTexturePath:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->backgroundTexturePath:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->backgroundPath:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->sourcePositionPath:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->inputRenderTarget:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Particle;->useColorReference:Z

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lorg/light/lightAssetKit/components/Particle;->triggerTime:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Particle;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Particle;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Particle;->triggerType:Lorg/light/lightAssetKit/enums/ParticleTriggerType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Particle;->triggerType:Lorg/light/lightAssetKit/enums/ParticleTriggerType;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Particle;->materialPath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Particle;->materialPath:Ljava/lang/String;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Particle;->triggerJson:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Particle;->triggerJson:Ljava/lang/String;

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Particle;->texturePath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Particle;->texturePath:Ljava/lang/String;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Particle;->colorTexturePath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Particle;->colorTexturePath:Ljava/lang/String;

    .line 8
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Particle;->backgroundTexturePath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Particle;->backgroundTexturePath:Ljava/lang/String;

    .line 9
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Particle;->backgroundPath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Particle;->backgroundPath:Ljava/lang/String;

    .line 10
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Particle;->sourcePositionPath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Particle;->sourcePositionPath:Ljava/lang/String;

    .line 11
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Particle;->inputRenderTarget:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Particle;->inputRenderTarget:Ljava/lang/String;

    .line 12
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Particle;->useColorReference:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Particle;->useColorReference:Z

    .line 13
    iget v0, v0, Lorg/light/lightAssetKit/components/Particle;->triggerTime:I

    iput v0, p0, Lorg/light/lightAssetKit/components/Particle;->triggerTime:I

    .line 14
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getBackgroundPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->backgroundPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundTexturePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->backgroundTexturePath:Ljava/lang/String;

    return-object v0
.end method

.method public getColorTexturePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->colorTexturePath:Ljava/lang/String;

    return-object v0
.end method

.method public getInputRenderTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->inputRenderTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getMaterialPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->materialPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSourcePositionPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->sourcePositionPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTexturePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->texturePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->triggerJson:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerTime()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Particle;->triggerTime:I

    return v0
.end method

.method public getTriggerType()Lorg/light/lightAssetKit/enums/ParticleTriggerType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Particle;->triggerType:Lorg/light/lightAssetKit/enums/ParticleTriggerType;

    return-object v0
.end method

.method public getUseColorReference()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Particle;->useColorReference:Z

    return v0
.end method

.method public setBackgroundPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Particle;->backgroundPath:Ljava/lang/String;

    const-string v0, "backgroundPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBackgroundTexturePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Particle;->backgroundTexturePath:Ljava/lang/String;

    const-string v0, "backgroundTexturePath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setColorTexturePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Particle;->colorTexturePath:Ljava/lang/String;

    const-string v0, "colorTexturePath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInputRenderTarget(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Particle;->inputRenderTarget:Ljava/lang/String;

    const-string v0, "inputRenderTarget"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaterialPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Particle;->materialPath:Ljava/lang/String;

    const-string v0, "materialPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSourcePositionPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Particle;->sourcePositionPath:Ljava/lang/String;

    const-string v0, "sourcePositionPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTexturePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Particle;->texturePath:Ljava/lang/String;

    const-string v0, "texturePath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTriggerJson(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Particle;->triggerJson:Ljava/lang/String;

    const-string v0, "triggerJson"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTriggerTime(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Particle;->triggerTime:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "triggerTime"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTriggerType(Lorg/light/lightAssetKit/enums/ParticleTriggerType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Particle;->triggerType:Lorg/light/lightAssetKit/enums/ParticleTriggerType;

    const-string v0, "triggerType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUseColorReference(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Particle;->useColorReference:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "useColorReference"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Particle"

    return-object v0
.end method
