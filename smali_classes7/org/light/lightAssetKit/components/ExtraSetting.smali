.class public Lorg/light/lightAssetKit/components/ExtraSetting;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private defaultCameraPosition:I

.field private enableDowngradeAsset:Z

.field private enableRotation:Z

.field private needAutoBeauty:Z

.field private needVoiceDecibel:Z

.field private resetWhenStartRecord:Z

.field private supportCameraPosition:I

.field private sync3dRenderEnable:Z

.field private useMetal:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->enableRotation:Z

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->resetWhenStartRecord:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->useMetal:Z

    .line 5
    iput v1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->supportCameraPosition:I

    .line 6
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->sync3dRenderEnable:Z

    .line 7
    iput v1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->defaultCameraPosition:I

    .line 8
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->needVoiceDecibel:Z

    .line 9
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->needAutoBeauty:Z

    .line 10
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->enableDowngradeAsset:Z

    return-void
.end method

.method public constructor <init>(ZZZIIZZZZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 12
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->enableRotation:Z

    .line 13
    iput-boolean p2, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->resetWhenStartRecord:Z

    .line 14
    iput-boolean p3, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->sync3dRenderEnable:Z

    .line 15
    iput p4, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->defaultCameraPosition:I

    .line 16
    iput p5, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->supportCameraPosition:I

    .line 17
    iput-boolean p6, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->needVoiceDecibel:Z

    .line 18
    iput-boolean p7, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->needAutoBeauty:Z

    .line 19
    iput-boolean p8, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->enableDowngradeAsset:Z

    .line 20
    iput-boolean p9, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->useMetal:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/ExtraSetting;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/ExtraSetting;

    .line 3
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/ExtraSetting;->enableRotation:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->enableRotation:Z

    .line 4
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/ExtraSetting;->resetWhenStartRecord:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->resetWhenStartRecord:Z

    .line 5
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/ExtraSetting;->useMetal:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->useMetal:Z

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/ExtraSetting;->supportCameraPosition:I

    iput v1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->supportCameraPosition:I

    .line 7
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/ExtraSetting;->sync3dRenderEnable:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->sync3dRenderEnable:Z

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/ExtraSetting;->defaultCameraPosition:I

    iput v1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->defaultCameraPosition:I

    .line 9
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/ExtraSetting;->needVoiceDecibel:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->needVoiceDecibel:Z

    .line 10
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/ExtraSetting;->needAutoBeauty:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->needAutoBeauty:Z

    .line 11
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/ExtraSetting;->enableDowngradeAsset:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->enableDowngradeAsset:Z

    .line 12
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getDefaultCameraPosition()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->defaultCameraPosition:I

    return v0
.end method

.method public getEnableDowngradeAsset()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->enableDowngradeAsset:Z

    return v0
.end method

.method public getEnableRotation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->enableRotation:Z

    return v0
.end method

.method public getNeedAutoBeauty()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->needAutoBeauty:Z

    return v0
.end method

.method public getNeedVoiceDecibel()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->needVoiceDecibel:Z

    return v0
.end method

.method public getResetWhenStartRecord()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->resetWhenStartRecord:Z

    return v0
.end method

.method public getSupportCameraPosition()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->supportCameraPosition:I

    return v0
.end method

.method public getSync3dRenderEnable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->sync3dRenderEnable:Z

    return v0
.end method

.method public getUseMetal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->useMetal:Z

    return v0
.end method

.method public setDefaultCameraPosition(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->defaultCameraPosition:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "defaultCameraPosition"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableDowngradeAsset(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->enableDowngradeAsset:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableDowngradeAsset"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableRotation(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->enableRotation:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableRotation"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNeedAutoBeauty(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->needAutoBeauty:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "needAutoBeauty"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNeedVoiceDecibel(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->needVoiceDecibel:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "needVoiceDecibel"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setResetWhenStartRecord(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->resetWhenStartRecord:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "resetWhenStartRecord"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSupportCameraPosition(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->supportCameraPosition:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "supportCameraPosition"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSync3dRenderEnable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->sync3dRenderEnable:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "sync3dRenderEnable"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUseMetal(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ExtraSetting;->useMetal:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "useMetal"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "ExtraSetting"

    return-object v0
.end method
