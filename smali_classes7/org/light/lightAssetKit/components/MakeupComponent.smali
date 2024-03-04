.class public Lorg/light/lightAssetKit/components/MakeupComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private extraFlag:Lorg/light/lightAssetKit/enums/MakeupExtraFlag;

.field private faceImage:Ljava/lang/String;

.field private faceMask:Ljava/lang/String;

.field private facePointsFile:Ljava/lang/String;

.field private minVisibility:F

.field private visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->faceImage:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->faceMask:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->facePointsFile:Ljava/lang/String;

    .line 5
    sget-object v0, Lorg/light/lightAssetKit/enums/MakeupVisMethod;->Default:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    const v0, 0x3f4ccccd    # 0.8f

    .line 6
    iput v0, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->minVisibility:F

    .line 7
    sget-object v0, Lorg/light/lightAssetKit/enums/MakeupExtraFlag;->MakeupDefault:Lorg/light/lightAssetKit/enums/MakeupExtraFlag;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->extraFlag:Lorg/light/lightAssetKit/enums/MakeupExtraFlag;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/MakeupComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/MakeupComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupComponent;->faceImage:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->faceImage:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupComponent;->faceMask:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->faceMask:Ljava/lang/String;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupComponent;->facePointsFile:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->facePointsFile:Ljava/lang/String;

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupComponent;->visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    .line 7
    iget v1, v0, Lorg/light/lightAssetKit/components/MakeupComponent;->minVisibility:F

    iput v1, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->minVisibility:F

    .line 8
    iget-object v0, v0, Lorg/light/lightAssetKit/components/MakeupComponent;->extraFlag:Lorg/light/lightAssetKit/enums/MakeupExtraFlag;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->extraFlag:Lorg/light/lightAssetKit/enums/MakeupExtraFlag;

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getExtraFlag()Lorg/light/lightAssetKit/enums/MakeupExtraFlag;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->extraFlag:Lorg/light/lightAssetKit/enums/MakeupExtraFlag;

    return-object v0
.end method

.method public getFaceImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->faceImage:Ljava/lang/String;

    return-object v0
.end method

.method public getFaceMask()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->faceMask:Ljava/lang/String;

    return-object v0
.end method

.method public getFacePointsFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->facePointsFile:Ljava/lang/String;

    return-object v0
.end method

.method public getMinVisibility()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->minVisibility:F

    return v0
.end method

.method public getVisMethod()Lorg/light/lightAssetKit/enums/MakeupVisMethod;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    return-object v0
.end method

.method public setExtraFlag(Lorg/light/lightAssetKit/enums/MakeupExtraFlag;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->extraFlag:Lorg/light/lightAssetKit/enums/MakeupExtraFlag;

    const-string v0, "extraFlag"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFaceImage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->faceImage:Ljava/lang/String;

    const-string v0, "faceImage"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFaceMask(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->faceMask:Ljava/lang/String;

    const-string v0, "faceMask"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFacePointsFile(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->facePointsFile:Ljava/lang/String;

    const-string v0, "facePointsFile"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMinVisibility(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->minVisibility:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "minVisibility"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVisMethod(Lorg/light/lightAssetKit/enums/MakeupVisMethod;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupComponent;->visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    const-string v0, "visMethod"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "MakeupComponent"

    return-object v0
.end method
