.class public Lorg/light/lightAssetKit/components/Stretch;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private basicFace:F

.field private cheekboneThin:F

.field private chin:F

.field private enlargeEye:F

.field private eyeAngle:F

.field private eyeDistance:F

.field private foreHead:F

.field private mouthHeight:F

.field private mouthPosition:F

.field private mouthSize:F

.field private mouthWidth:F

.field private noseHeight:F

.field private noseSize:F

.field private noseWing:F

.field private shortFace:F

.field private thinFace:F

.field private vFace:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->basicFace:F

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->vFace:F

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->chin:F

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->thinFace:F

    .line 6
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->shortFace:F

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->cheekboneThin:F

    .line 8
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->enlargeEye:F

    .line 9
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->noseSize:F

    .line 10
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->foreHead:F

    .line 11
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->eyeDistance:F

    .line 12
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->eyeAngle:F

    .line 13
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->noseWing:F

    .line 14
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->noseHeight:F

    .line 15
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->mouthSize:F

    .line 16
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->mouthWidth:F

    .line 17
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->mouthHeight:F

    .line 18
    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->mouthPosition:F

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Stretch;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Stretch;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/Stretch;->basicFace:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Stretch;->basicFace:F

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/Stretch;->vFace:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Stretch;->vFace:F

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/Stretch;->chin:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Stretch;->chin:F

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/Stretch;->thinFace:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Stretch;->thinFace:F

    .line 7
    iget v1, v0, Lorg/light/lightAssetKit/components/Stretch;->shortFace:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Stretch;->shortFace:F

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/Stretch;->cheekboneThin:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Stretch;->cheekboneThin:F

    .line 9
    iget v1, v0, Lorg/light/lightAssetKit/components/Stretch;->enlargeEye:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Stretch;->enlargeEye:F

    .line 10
    iget v1, v0, Lorg/light/lightAssetKit/components/Stretch;->noseSize:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Stretch;->noseSize:F

    .line 11
    iget v1, v0, Lorg/light/lightAssetKit/components/Stretch;->foreHead:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Stretch;->foreHead:F

    .line 12
    iget v1, v0, Lorg/light/lightAssetKit/components/Stretch;->eyeDistance:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Stretch;->eyeDistance:F

    .line 13
    iget v1, v0, Lorg/light/lightAssetKit/components/Stretch;->eyeAngle:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Stretch;->eyeAngle:F

    .line 14
    iget v1, v0, Lorg/light/lightAssetKit/components/Stretch;->noseWing:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Stretch;->noseWing:F

    .line 15
    iget v1, v0, Lorg/light/lightAssetKit/components/Stretch;->noseHeight:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Stretch;->noseHeight:F

    .line 16
    iget v1, v0, Lorg/light/lightAssetKit/components/Stretch;->mouthSize:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Stretch;->mouthSize:F

    .line 17
    iget v1, v0, Lorg/light/lightAssetKit/components/Stretch;->mouthWidth:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Stretch;->mouthWidth:F

    .line 18
    iget v1, v0, Lorg/light/lightAssetKit/components/Stretch;->mouthHeight:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Stretch;->mouthHeight:F

    .line 19
    iget v0, v0, Lorg/light/lightAssetKit/components/Stretch;->mouthPosition:F

    iput v0, p0, Lorg/light/lightAssetKit/components/Stretch;->mouthPosition:F

    .line 20
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getBasicFace()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->basicFace:F

    return v0
.end method

.method public getCheekboneThin()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->cheekboneThin:F

    return v0
.end method

.method public getChin()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->chin:F

    return v0
.end method

.method public getEnlargeEye()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->enlargeEye:F

    return v0
.end method

.method public getEyeAngle()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->eyeAngle:F

    return v0
.end method

.method public getEyeDistance()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->eyeDistance:F

    return v0
.end method

.method public getForeHead()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->foreHead:F

    return v0
.end method

.method public getMouthHeight()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->mouthHeight:F

    return v0
.end method

.method public getMouthPosition()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->mouthPosition:F

    return v0
.end method

.method public getMouthSize()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->mouthSize:F

    return v0
.end method

.method public getMouthWidth()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->mouthWidth:F

    return v0
.end method

.method public getNoseHeight()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->noseHeight:F

    return v0
.end method

.method public getNoseSize()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->noseSize:F

    return v0
.end method

.method public getNoseWing()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->noseWing:F

    return v0
.end method

.method public getShortFace()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->shortFace:F

    return v0
.end method

.method public getThinFace()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->thinFace:F

    return v0
.end method

.method public getVFace()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Stretch;->vFace:F

    return v0
.end method

.method public setBasicFace(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->basicFace:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "basicFace"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCheekboneThin(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->cheekboneThin:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "cheekboneThin"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setChin(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->chin:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "chin"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnlargeEye(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->enlargeEye:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "enlargeEye"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEyeAngle(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->eyeAngle:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "eyeAngle"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEyeDistance(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->eyeDistance:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "eyeDistance"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setForeHead(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->foreHead:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "foreHead"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMouthHeight(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->mouthHeight:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "mouthHeight"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMouthPosition(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->mouthPosition:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "mouthPosition"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMouthSize(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->mouthSize:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "mouthSize"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMouthWidth(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->mouthWidth:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "mouthWidth"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNoseHeight(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->noseHeight:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "noseHeight"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNoseSize(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->noseSize:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "noseSize"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNoseWing(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->noseWing:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "noseWing"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setShortFace(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->shortFace:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "shortFace"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setThinFace(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->thinFace:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "thinFace"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVFace(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Stretch;->vFace:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "vFace"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Stretch"

    return-object v0
.end method
