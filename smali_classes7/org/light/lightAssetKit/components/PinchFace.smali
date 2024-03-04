.class public Lorg/light/lightAssetKit/components/PinchFace;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private editMode:Z

.field private fixPoints:Z

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

.field private points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/PointItem;",
            ">;"
        }
    .end annotation
.end field

.field private strength:F

.field private symmetry:Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->points:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->lastPoints:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->strength:F

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->symmetry:Z

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->fixPoints:Z

    .line 7
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->editMode:Z

    const/16 v0, 0x2d0

    .line 8
    iput v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->width:I

    const/16 v0, 0x3c0

    .line 9
    iput v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->height:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/PinchFace;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/PinchFace;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/PinchFace;->points:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/PinchFace;->points:Ljava/util/ArrayList;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/PinchFace;->lastPoints:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/PinchFace;->lastPoints:Ljava/util/ArrayList;

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/PinchFace;->strength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/PinchFace;->strength:F

    .line 6
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/PinchFace;->symmetry:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/PinchFace;->symmetry:Z

    .line 7
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/PinchFace;->fixPoints:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/PinchFace;->fixPoints:Z

    .line 8
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/PinchFace;->editMode:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/PinchFace;->editMode:Z

    .line 9
    iget v1, v0, Lorg/light/lightAssetKit/components/PinchFace;->width:I

    iput v1, p0, Lorg/light/lightAssetKit/components/PinchFace;->width:I

    .line 10
    iget v0, v0, Lorg/light/lightAssetKit/components/PinchFace;->height:I

    iput v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->height:I

    .line 11
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getEditMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->editMode:Z

    return v0
.end method

.method public getFixPoints()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->fixPoints:Z

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->height:I

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

    iget-object v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->lastPoints:Ljava/util/ArrayList;

    return-object v0
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

    iget-object v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->points:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->strength:F

    return v0
.end method

.method public getSymmetry()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->symmetry:Z

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/PinchFace;->width:I

    return v0
.end method

.method public setEditMode(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/PinchFace;->editMode:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "editMode"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFixPoints(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/PinchFace;->fixPoints:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "fixPoints"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/PinchFace;->height:I

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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/PinchFace;->lastPoints:Ljava/util/ArrayList;

    const-string v0, "lastPoints"

    .line 2
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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/PinchFace;->points:Ljava/util/ArrayList;

    const-string v0, "points"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/PinchFace;->strength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "strength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSymmetry(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/PinchFace;->symmetry:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "symmetry"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/PinchFace;->width:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "width"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "PinchFace"

    return-object v0
.end method
