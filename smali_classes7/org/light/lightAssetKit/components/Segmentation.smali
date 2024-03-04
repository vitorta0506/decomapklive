.class public Lorg/light/lightAssetKit/components/Segmentation;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private bgAlpha:F

.field private bgColor:Ljava/lang/String;

.field private cutRange:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isMaskInvert:Z

.field private maskResource:Ljava/lang/String;

.field private renderTarget:Ljava/lang/String;

.field private segmentFollowFace:Z

.field private strokeBorderType:Ljava/lang/String;

.field private strokeColor:Ljava/lang/String;

.field private strokeEnable:Z

.field private strokeGap:F

.field private strokeItemGap:I

.field private strokeItemHeight:I

.field private strokeItemOffset:I

.field private strokeItemWidth:I

.field private strokeSpeedLevel:F

.field private strokeTextureColumn:I

.field private strokeTextureItemNum:I

.field private strokeTextureResource:Ljava/lang/String;

.field private strokeTextureRow:I

.field private strokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->maskResource:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->cutRange:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeEnable:Z

    .line 5
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeColor:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->bgColor:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeBorderType:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->renderTarget:Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 9
    iput v2, p0, Lorg/light/lightAssetKit/components/Segmentation;->bgAlpha:F

    .line 10
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->segmentFollowFace:Z

    .line 11
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureResource:Ljava/lang/String;

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureRow:I

    .line 13
    iput v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureColumn:I

    .line 14
    iput v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureItemNum:I

    const/high16 v0, 0x42480000    # 50.0f

    .line 15
    iput v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeSpeedLevel:F

    .line 16
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->isMaskInvert:Z

    const/16 v0, 0x1e

    .line 17
    iput v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemHeight:I

    .line 18
    iput v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemWidth:I

    .line 19
    iput v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemGap:I

    const/16 v0, 0x14

    .line 20
    iput v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemOffset:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Segmentation;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Segmentation;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->maskResource:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->maskResource:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->cutRange:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->cutRange:Ljava/util/ArrayList;

    .line 5
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->strokeEnable:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeEnable:Z

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->strokeColor:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeColor:Ljava/lang/String;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->bgColor:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->bgColor:Ljava/lang/String;

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->strokeWidth:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeWidth:F

    .line 9
    iget v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->strokeGap:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeGap:F

    .line 10
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->strokeBorderType:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeBorderType:Ljava/lang/String;

    .line 11
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->renderTarget:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->renderTarget:Ljava/lang/String;

    .line 12
    iget v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->bgAlpha:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->bgAlpha:F

    .line 13
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->segmentFollowFace:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->segmentFollowFace:Z

    .line 14
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureResource:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureResource:Ljava/lang/String;

    .line 15
    iget v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureRow:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureRow:I

    .line 16
    iget v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureColumn:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureColumn:I

    .line 17
    iget v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureItemNum:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureItemNum:I

    .line 18
    iget v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->strokeSpeedLevel:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeSpeedLevel:F

    .line 19
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->isMaskInvert:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->isMaskInvert:Z

    .line 20
    iget v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemHeight:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemHeight:I

    .line 21
    iget v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemWidth:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemWidth:I

    .line 22
    iget v1, v0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemGap:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemGap:I

    .line 23
    iget v0, v0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemOffset:I

    iput v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemOffset:I

    .line 24
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getBgAlpha()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->bgAlpha:F

    return v0
.end method

.method public getBgColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->bgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCutRange()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->cutRange:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsMaskInvert()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->isMaskInvert:Z

    return v0
.end method

.method public getMaskResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->maskResource:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->renderTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmentFollowFace()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->segmentFollowFace:Z

    return v0
.end method

.method public getStrokeBorderType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeBorderType:Ljava/lang/String;

    return-object v0
.end method

.method public getStrokeColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeColor:Ljava/lang/String;

    return-object v0
.end method

.method public getStrokeEnable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeEnable:Z

    return v0
.end method

.method public getStrokeGap()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeGap:F

    return v0
.end method

.method public getStrokeItemGap()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemGap:I

    return v0
.end method

.method public getStrokeItemHeight()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemHeight:I

    return v0
.end method

.method public getStrokeItemOffset()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemOffset:I

    return v0
.end method

.method public getStrokeItemWidth()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemWidth:I

    return v0
.end method

.method public getStrokeSpeedLevel()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeSpeedLevel:F

    return v0
.end method

.method public getStrokeTextureColumn()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureColumn:I

    return v0
.end method

.method public getStrokeTextureItemNum()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureItemNum:I

    return v0
.end method

.method public getStrokeTextureResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureResource:Ljava/lang/String;

    return-object v0
.end method

.method public getStrokeTextureRow()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureRow:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeWidth:F

    return v0
.end method

.method public setBgAlpha(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->bgAlpha:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "bgAlpha"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->bgColor:Ljava/lang/String;

    const-string v0, "bgColor"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCutRange(Ljava/util/ArrayList;)V
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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->cutRange:Ljava/util/ArrayList;

    const-string v0, "cutRange"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsMaskInvert(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->isMaskInvert:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isMaskInvert"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaskResource(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->maskResource:Ljava/lang/String;

    const-string v0, "maskResource"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderTarget(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->renderTarget:Ljava/lang/String;

    const-string v0, "renderTarget"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSegmentFollowFace(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->segmentFollowFace:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "segmentFollowFace"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrokeBorderType(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeBorderType:Ljava/lang/String;

    const-string v0, "strokeBorderType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrokeColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeColor:Ljava/lang/String;

    const-string v0, "strokeColor"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrokeEnable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeEnable:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "strokeEnable"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrokeGap(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeGap:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "strokeGap"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrokeItemGap(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemGap:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "strokeItemGap"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrokeItemHeight(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemHeight:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "strokeItemHeight"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrokeItemOffset(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemOffset:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "strokeItemOffset"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrokeItemWidth(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeItemWidth:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "strokeItemWidth"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrokeSpeedLevel(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeSpeedLevel:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "strokeSpeedLevel"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrokeTextureColumn(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureColumn:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "strokeTextureColumn"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrokeTextureItemNum(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureItemNum:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "strokeTextureItemNum"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrokeTextureResource(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureResource:Ljava/lang/String;

    const-string v0, "strokeTextureResource"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrokeTextureRow(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeTextureRow:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "strokeTextureRow"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Segmentation;->strokeWidth:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "strokeWidth"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Segmentation"

    return-object v0
.end method
