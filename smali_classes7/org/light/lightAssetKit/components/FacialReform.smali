.class public Lorg/light/lightAssetKit/components/FacialReform;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private basicFace:F

.field private basicFaceEyelarge:F

.field private cheekboneThin:F

.field private chin:F

.field private editMode:Z

.field private enlargeEye:F

.field private eyeAngle:F

.field private eyeDistance:F

.field private facejaw:F

.field private fixPoints:Z

.field private foreHead:F

.field private height:I

.field private lastPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/PointItem;",
            ">;"
        }
    .end annotation
.end field

.field private longNose:F

.field private mouthHeight:F

.field private mouthPosition:F

.field private mouthSize:F

.field private mouthWidth:F

.field private noseHeight:F

.field private noseSize:F

.field private noseWing:F

.field private overallFactor:F

.field private pinchFaceEnabled:Z

.field private points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/PointItem;",
            ">;"
        }
    .end annotation
.end field

.field private reformSubType:Ljava/lang/String;

.field private shortFace:F

.field private strength:F

.field private stretchEnabled:Z

.field private symmetry:Z

.field private thinFace:F

.field private vFace:F

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->stretchEnabled:Z

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->pinchFaceEnabled:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->overallFactor:F

    .line 5
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->basicFace:F

    .line 6
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->vFace:F

    .line 7
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->chin:F

    .line 8
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->thinFace:F

    .line 9
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->cheekboneThin:F

    .line 10
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->enlargeEye:F

    .line 11
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->noseSize:F

    .line 12
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->foreHead:F

    .line 13
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->eyeDistance:F

    .line 14
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->eyeAngle:F

    .line 15
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->noseWing:F

    .line 16
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->noseHeight:F

    .line 17
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->mouthSize:F

    .line 18
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->mouthWidth:F

    .line 19
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->mouthHeight:F

    .line 20
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->mouthPosition:F

    .line 21
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->facejaw:F

    .line 22
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->shortFace:F

    .line 23
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->longNose:F

    .line 24
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->basicFaceEyelarge:F

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->points:Ljava/util/ArrayList;

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->lastPoints:Ljava/util/ArrayList;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->strength:F

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->symmetry:Z

    .line 29
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->fixPoints:Z

    .line 30
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->editMode:Z

    const/16 v0, 0x2d0

    .line 31
    iput v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->width:I

    const/16 v0, 0x3c0

    .line 32
    iput v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->height:I

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->reformSubType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/FacialReform;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/FacialReform;

    .line 3
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->stretchEnabled:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->stretchEnabled:Z

    .line 4
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->pinchFaceEnabled:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->pinchFaceEnabled:Z

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->overallFactor:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->overallFactor:F

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->basicFace:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->basicFace:F

    .line 7
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->vFace:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->vFace:F

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->chin:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->chin:F

    .line 9
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->thinFace:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->thinFace:F

    .line 10
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->cheekboneThin:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->cheekboneThin:F

    .line 11
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->enlargeEye:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->enlargeEye:F

    .line 12
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->noseSize:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->noseSize:F

    .line 13
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->foreHead:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->foreHead:F

    .line 14
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->eyeDistance:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->eyeDistance:F

    .line 15
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->eyeAngle:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->eyeAngle:F

    .line 16
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->noseWing:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->noseWing:F

    .line 17
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->noseHeight:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->noseHeight:F

    .line 18
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->mouthSize:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->mouthSize:F

    .line 19
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->mouthWidth:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->mouthWidth:F

    .line 20
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->mouthHeight:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->mouthHeight:F

    .line 21
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->mouthPosition:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->mouthPosition:F

    .line 22
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->facejaw:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->facejaw:F

    .line 23
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->shortFace:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->shortFace:F

    .line 24
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->longNose:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->longNose:F

    .line 25
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->basicFaceEyelarge:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->basicFaceEyelarge:F

    .line 26
    iget-object v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->points:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->points:Ljava/util/ArrayList;

    .line 27
    iget-object v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->lastPoints:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->lastPoints:Ljava/util/ArrayList;

    .line 28
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->strength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->strength:F

    .line 29
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->symmetry:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->symmetry:Z

    .line 30
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->fixPoints:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->fixPoints:Z

    .line 31
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->editMode:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->editMode:Z

    .line 32
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->width:I

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->width:I

    .line 33
    iget v1, v0, Lorg/light/lightAssetKit/components/FacialReform;->height:I

    iput v1, p0, Lorg/light/lightAssetKit/components/FacialReform;->height:I

    .line 34
    iget-object v0, v0, Lorg/light/lightAssetKit/components/FacialReform;->reformSubType:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->reformSubType:Ljava/lang/String;

    .line 35
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getBasicFace()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->basicFace:F

    return v0
.end method

.method public getBasicFaceEyelarge()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->basicFaceEyelarge:F

    return v0
.end method

.method public getCheekboneThin()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->cheekboneThin:F

    return v0
.end method

.method public getChin()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->chin:F

    return v0
.end method

.method public getEditMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->editMode:Z

    return v0
.end method

.method public getEnlargeEye()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->enlargeEye:F

    return v0
.end method

.method public getEyeAngle()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->eyeAngle:F

    return v0
.end method

.method public getEyeDistance()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->eyeDistance:F

    return v0
.end method

.method public getFacejaw()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->facejaw:F

    return v0
.end method

.method public getFixPoints()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->fixPoints:Z

    return v0
.end method

.method public getForeHead()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->foreHead:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->height:I

    return v0
.end method

.method public getLastPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/PointItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->lastPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLongNose()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->longNose:F

    return v0
.end method

.method public getMouthHeight()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->mouthHeight:F

    return v0
.end method

.method public getMouthPosition()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->mouthPosition:F

    return v0
.end method

.method public getMouthSize()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->mouthSize:F

    return v0
.end method

.method public getMouthWidth()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->mouthWidth:F

    return v0
.end method

.method public getNoseHeight()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->noseHeight:F

    return v0
.end method

.method public getNoseSize()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->noseSize:F

    return v0
.end method

.method public getNoseWing()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->noseWing:F

    return v0
.end method

.method public getOverallFactor()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->overallFactor:F

    return v0
.end method

.method public getPinchFaceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->pinchFaceEnabled:Z

    return v0
.end method

.method public getPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/PointItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->points:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getReformSubType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->reformSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getShortFace()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->shortFace:F

    return v0
.end method

.method public getStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->strength:F

    return v0
.end method

.method public getStretchEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->stretchEnabled:Z

    return v0
.end method

.method public getSymmetry()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->symmetry:Z

    return v0
.end method

.method public getThinFace()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->thinFace:F

    return v0
.end method

.method public getVFace()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->vFace:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FacialReform;->width:I

    return v0
.end method

.method public setBasicFace(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->basicFace:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "basicFace"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBasicFaceEyelarge(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->basicFaceEyelarge:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "basicFaceEyelarge"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCheekboneThin(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->cheekboneThin:F

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
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->chin:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "chin"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEditMode(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->editMode:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "editMode"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnlargeEye(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->enlargeEye:F

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
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->eyeAngle:F

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
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->eyeDistance:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "eyeDistance"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFacejaw(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->facejaw:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "facejaw"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFixPoints(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->fixPoints:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "fixPoints"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setForeHead(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->foreHead:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "foreHead"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->height:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "height"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLastPoints(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/PointItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->lastPoints:Ljava/util/ArrayList;

    const-string v0, "lastPoints"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLongNose(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->longNose:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "longNose"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMouthHeight(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->mouthHeight:F

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
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->mouthPosition:F

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
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->mouthSize:F

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
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->mouthWidth:F

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
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->noseHeight:F

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
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->noseSize:F

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
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->noseWing:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "noseWing"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOverallFactor(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->overallFactor:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "overallFactor"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPinchFaceEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->pinchFaceEnabled:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "pinchFaceEnabled"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPoints(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/PointItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->points:Ljava/util/ArrayList;

    const-string v0, "points"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setReformSubType(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->reformSubType:Ljava/lang/String;

    const-string v0, "reformSubType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setShortFace(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->shortFace:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "shortFace"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->strength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "strength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStretchEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->stretchEnabled:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "stretchEnabled"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSymmetry(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->symmetry:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "symmetry"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setThinFace(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->thinFace:F

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
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->vFace:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "vFace"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FacialReform;->width:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "width"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "FacialReform"

    return-object v0
.end method
