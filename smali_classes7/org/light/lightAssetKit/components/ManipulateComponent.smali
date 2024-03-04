.class public Lorg/light/lightAssetKit/components/ManipulateComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private enableDrag:Z

.field private enableRotation:Z

.field private enableScale:Z

.field private maxDistance:F

.field private maxScale:F

.field private minDistance:F

.field private minScale:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/ManipulateComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/ManipulateComponent;

    .line 3
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/ManipulateComponent;->enableScale:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->enableScale:Z

    .line 4
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/ManipulateComponent;->enableRotation:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->enableRotation:Z

    .line 5
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/ManipulateComponent;->enableDrag:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->enableDrag:Z

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/ManipulateComponent;->minDistance:F

    iput v1, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->minDistance:F

    .line 7
    iget v1, v0, Lorg/light/lightAssetKit/components/ManipulateComponent;->maxDistance:F

    iput v1, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->maxDistance:F

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/ManipulateComponent;->minScale:F

    iput v1, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->minScale:F

    .line 9
    iget v0, v0, Lorg/light/lightAssetKit/components/ManipulateComponent;->maxScale:F

    iput v0, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->maxScale:F

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getEnableDrag()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->enableDrag:Z

    return v0
.end method

.method public getEnableRotation()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->enableRotation:Z

    return v0
.end method

.method public getEnableScale()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->enableScale:Z

    return v0
.end method

.method public getMaxDistance()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->maxDistance:F

    return v0
.end method

.method public getMaxScale()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->maxScale:F

    return v0
.end method

.method public getMinDistance()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->minDistance:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->minScale:F

    return v0
.end method

.method public setEnableDrag(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->enableDrag:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableDrag"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableRotation(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->enableRotation:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableRotation"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableScale(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->enableScale:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableScale"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaxDistance(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->maxDistance:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "maxDistance"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaxScale(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->maxScale:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "maxScale"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMinDistance(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->minDistance:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "minDistance"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMinScale(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/ManipulateComponent;->minScale:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "minScale"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "ManipulateComponent"

    return-object v0
.end method
