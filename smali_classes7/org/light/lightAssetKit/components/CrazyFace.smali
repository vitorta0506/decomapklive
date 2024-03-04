.class public Lorg/light/lightAssetKit/components/CrazyFace;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private faceMaskImage:Ljava/lang/String;

.field private imageFaceJson:Ljava/lang/String;

.field private method:Lorg/light/lightAssetKit/enums/FaceMorphingMethodType;

.field private modelImage:Ljava/lang/String;

.field private modelIndex:I

.field private models:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/CrazyFaceModel;",
            ">;"
        }
    .end annotation
.end field

.field private needCache:Z

.field private progress:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->modelIndex:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->models:Ljava/util/ArrayList;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->modelImage:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->faceMaskImage:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->imageFaceJson:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->progress:F

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->needCache:Z

    .line 9
    sget-object v0, Lorg/light/lightAssetKit/enums/FaceMorphingMethodType;->RefineMorphing:Lorg/light/lightAssetKit/enums/FaceMorphingMethodType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->method:Lorg/light/lightAssetKit/enums/FaceMorphingMethodType;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLorg/light/lightAssetKit/enums/FaceMorphingMethodType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/CrazyFaceModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F",
            "Lorg/light/lightAssetKit/enums/FaceMorphingMethodType;",
            "Z)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->modelIndex:I

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->models:Ljava/util/ArrayList;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->modelImage:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->faceMaskImage:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->imageFaceJson:Ljava/lang/String;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->progress:F

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->needCache:Z

    .line 18
    sget-object v0, Lorg/light/lightAssetKit/enums/FaceMorphingMethodType;->RefineMorphing:Lorg/light/lightAssetKit/enums/FaceMorphingMethodType;

    .line 19
    iput p1, p0, Lorg/light/lightAssetKit/components/CrazyFace;->modelIndex:I

    .line 20
    iput-object p2, p0, Lorg/light/lightAssetKit/components/CrazyFace;->models:Ljava/util/ArrayList;

    .line 21
    iput-object p3, p0, Lorg/light/lightAssetKit/components/CrazyFace;->modelImage:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lorg/light/lightAssetKit/components/CrazyFace;->faceMaskImage:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lorg/light/lightAssetKit/components/CrazyFace;->imageFaceJson:Ljava/lang/String;

    .line 24
    iput p6, p0, Lorg/light/lightAssetKit/components/CrazyFace;->progress:F

    .line 25
    iput-object p7, p0, Lorg/light/lightAssetKit/components/CrazyFace;->method:Lorg/light/lightAssetKit/enums/FaceMorphingMethodType;

    .line 26
    iput-boolean p8, p0, Lorg/light/lightAssetKit/components/CrazyFace;->needCache:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/CrazyFace;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/CrazyFace;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/CrazyFace;->modelIndex:I

    iput v1, p0, Lorg/light/lightAssetKit/components/CrazyFace;->modelIndex:I

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/CrazyFace;->models:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/CrazyFace;->models:Ljava/util/ArrayList;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/CrazyFace;->modelImage:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/CrazyFace;->modelImage:Ljava/lang/String;

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/CrazyFace;->faceMaskImage:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/CrazyFace;->faceMaskImage:Ljava/lang/String;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/CrazyFace;->imageFaceJson:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/CrazyFace;->imageFaceJson:Ljava/lang/String;

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/CrazyFace;->progress:F

    iput v1, p0, Lorg/light/lightAssetKit/components/CrazyFace;->progress:F

    .line 9
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/CrazyFace;->needCache:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/CrazyFace;->needCache:Z

    .line 10
    iget-object v0, v0, Lorg/light/lightAssetKit/components/CrazyFace;->method:Lorg/light/lightAssetKit/enums/FaceMorphingMethodType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->method:Lorg/light/lightAssetKit/enums/FaceMorphingMethodType;

    .line 11
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getFaceMaskImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->faceMaskImage:Ljava/lang/String;

    return-object v0
.end method

.method public getImageFaceJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->imageFaceJson:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lorg/light/lightAssetKit/enums/FaceMorphingMethodType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->method:Lorg/light/lightAssetKit/enums/FaceMorphingMethodType;

    return-object v0
.end method

.method public getModelImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->modelImage:Ljava/lang/String;

    return-object v0
.end method

.method public getModelIndex()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->modelIndex:I

    return v0
.end method

.method public getModels()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/CrazyFaceModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->models:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNeedCache()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->needCache:Z

    return v0
.end method

.method public getProgress()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/CrazyFace;->progress:F

    return v0
.end method

.method public setFaceMaskImage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/CrazyFace;->faceMaskImage:Ljava/lang/String;

    const-string v0, "faceMaskImage"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageFaceJson(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/CrazyFace;->imageFaceJson:Ljava/lang/String;

    const-string v0, "imageFaceJson"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMethod(Lorg/light/lightAssetKit/enums/FaceMorphingMethodType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/CrazyFace;->method:Lorg/light/lightAssetKit/enums/FaceMorphingMethodType;

    const-string v0, "method"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setModelImage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/CrazyFace;->modelImage:Ljava/lang/String;

    const-string v0, "modelImage"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setModelIndex(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/CrazyFace;->modelIndex:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "modelIndex"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setModels(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/CrazyFaceModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/CrazyFace;->models:Ljava/util/ArrayList;

    const-string v0, "models"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNeedCache(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/CrazyFace;->needCache:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "needCache"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/CrazyFace;->progress:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "progress"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "CrazyFace"

    return-object v0
.end method
