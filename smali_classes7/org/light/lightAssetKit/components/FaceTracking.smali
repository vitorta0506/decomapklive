.class public Lorg/light/lightAssetKit/components/FaceTracking;
.super Lorg/light/lightAssetKit/components/TrackingComponent;
.source "SourceFile"


# instance fields
.field private faceIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private genderBinding:Ljava/lang/String;

.field private isAllFrameDetect:Z

.field private isRefine:Z

.field private isWaitFirstFrameDetect:Z

.field private maxTrackingNum:I

.field private zOffset:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/TrackingComponent;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/FaceTracking;->isWaitFirstFrameDetect:Z

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/FaceTracking;->isAllFrameDetect:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/FaceTracking;->isRefine:Z

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lorg/light/lightAssetKit/components/FaceTracking;->zOffset:F

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lorg/light/lightAssetKit/components/FaceTracking;->faceIndex:Ljava/util/ArrayList;

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lorg/light/lightAssetKit/components/FaceTracking;->genderBinding:Ljava/lang/String;

    const/4 v0, 0x5

    .line 8
    iput v0, p0, Lorg/light/lightAssetKit/components/FaceTracking;->maxTrackingNum:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/FaceTracking;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/FaceTracking;

    .line 3
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/FaceTracking;->isWaitFirstFrameDetect:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/FaceTracking;->isWaitFirstFrameDetect:Z

    .line 4
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/FaceTracking;->isAllFrameDetect:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/FaceTracking;->isAllFrameDetect:Z

    .line 5
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/FaceTracking;->isRefine:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/FaceTracking;->isRefine:Z

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/FaceTracking;->zOffset:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FaceTracking;->zOffset:F

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/FaceTracking;->faceIndex:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/FaceTracking;->faceIndex:Ljava/util/ArrayList;

    .line 8
    iget-object v1, v0, Lorg/light/lightAssetKit/components/FaceTracking;->genderBinding:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/FaceTracking;->genderBinding:Ljava/lang/String;

    .line 9
    iget v0, v0, Lorg/light/lightAssetKit/components/FaceTracking;->maxTrackingNum:I

    iput v0, p0, Lorg/light/lightAssetKit/components/FaceTracking;->maxTrackingNum:I

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/TrackingComponent;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getFaceIndex()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/FaceTracking;->faceIndex:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGenderBinding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/FaceTracking;->genderBinding:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAllFrameDetect()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/FaceTracking;->isAllFrameDetect:Z

    return v0
.end method

.method public getIsRefine()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/FaceTracking;->isRefine:Z

    return v0
.end method

.method public getIsWaitFirstFrameDetect()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/FaceTracking;->isWaitFirstFrameDetect:Z

    return v0
.end method

.method public getMaxTrackingNum()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FaceTracking;->maxTrackingNum:I

    return v0
.end method

.method public getZOffset()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FaceTracking;->zOffset:F

    return v0
.end method

.method public setFaceIndex(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/FaceTracking;->faceIndex:Ljava/util/ArrayList;

    const-string v0, "faceIndex"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setGenderBinding(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/FaceTracking;->genderBinding:Ljava/lang/String;

    const-string v0, "genderBinding"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsAllFrameDetect(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/FaceTracking;->isAllFrameDetect:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isAllFrameDetect"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsRefine(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/FaceTracking;->isRefine:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isRefine"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsWaitFirstFrameDetect(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/FaceTracking;->isWaitFirstFrameDetect:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isWaitFirstFrameDetect"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaxTrackingNum(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FaceTracking;->maxTrackingNum:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "maxTrackingNum"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setZOffset(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FaceTracking;->zOffset:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "zOffset"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "FaceTracking"

    return-object v0
.end method
