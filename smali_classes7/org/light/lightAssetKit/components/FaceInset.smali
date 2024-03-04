.class public Lorg/light/lightAssetKit/components/FaceInset;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private Flip:F

.field private cutRange:Lorg/light/lightAssetKit/components/Rect;

.field private maskResource:Ljava/lang/String;

.field private modelVersion:Ljava/lang/String;

.field private renderTarget:Ljava/lang/String;

.field private scale:Lorg/light/lightAssetKit/components/Vec2;

.field private stretchResource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    new-instance v0, Lorg/light/lightAssetKit/components/Rect;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Rect;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/FaceInset;->cutRange:Lorg/light/lightAssetKit/components/Rect;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/FaceInset;->maskResource:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lorg/light/lightAssetKit/components/FaceInset;->Flip:F

    .line 5
    new-instance v1, Lorg/light/lightAssetKit/components/Vec2;

    invoke-direct {v1}, Lorg/light/lightAssetKit/components/Vec2;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/FaceInset;->scale:Lorg/light/lightAssetKit/components/Vec2;

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/FaceInset;->stretchResource:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lorg/light/lightAssetKit/components/FaceInset;->renderTarget:Ljava/lang/String;

    const-string v0, "V5"

    .line 8
    iput-object v0, p0, Lorg/light/lightAssetKit/components/FaceInset;->modelVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/light/lightAssetKit/components/Rect;Ljava/lang/String;FLorg/light/lightAssetKit/components/Vec2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 10
    new-instance v0, Lorg/light/lightAssetKit/components/Rect;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Rect;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/FaceInset;->cutRange:Lorg/light/lightAssetKit/components/Rect;

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lorg/light/lightAssetKit/components/FaceInset;->maskResource:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lorg/light/lightAssetKit/components/FaceInset;->Flip:F

    .line 13
    new-instance v0, Lorg/light/lightAssetKit/components/Vec2;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec2;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/light/lightAssetKit/components/FaceInset;->cutRange:Lorg/light/lightAssetKit/components/Rect;

    .line 15
    iput-object p2, p0, Lorg/light/lightAssetKit/components/FaceInset;->maskResource:Ljava/lang/String;

    .line 16
    iput p3, p0, Lorg/light/lightAssetKit/components/FaceInset;->Flip:F

    .line 17
    iput-object p4, p0, Lorg/light/lightAssetKit/components/FaceInset;->scale:Lorg/light/lightAssetKit/components/Vec2;

    .line 18
    iput-object p5, p0, Lorg/light/lightAssetKit/components/FaceInset;->stretchResource:Ljava/lang/String;

    .line 19
    iput-object p6, p0, Lorg/light/lightAssetKit/components/FaceInset;->renderTarget:Ljava/lang/String;

    .line 20
    iput-object p7, p0, Lorg/light/lightAssetKit/components/FaceInset;->modelVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/FaceInset;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/FaceInset;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/FaceInset;->cutRange:Lorg/light/lightAssetKit/components/Rect;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/FaceInset;->cutRange:Lorg/light/lightAssetKit/components/Rect;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/FaceInset;->maskResource:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/FaceInset;->maskResource:Ljava/lang/String;

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/FaceInset;->Flip:F

    iput v1, p0, Lorg/light/lightAssetKit/components/FaceInset;->Flip:F

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/FaceInset;->scale:Lorg/light/lightAssetKit/components/Vec2;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/FaceInset;->scale:Lorg/light/lightAssetKit/components/Vec2;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/FaceInset;->stretchResource:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/FaceInset;->stretchResource:Ljava/lang/String;

    .line 8
    iget-object v1, v0, Lorg/light/lightAssetKit/components/FaceInset;->renderTarget:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/FaceInset;->renderTarget:Ljava/lang/String;

    .line 9
    iget-object v0, v0, Lorg/light/lightAssetKit/components/FaceInset;->modelVersion:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/FaceInset;->modelVersion:Ljava/lang/String;

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getCutRange()Lorg/light/lightAssetKit/components/Rect;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/FaceInset;->cutRange:Lorg/light/lightAssetKit/components/Rect;

    return-object v0
.end method

.method public getFlip()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FaceInset;->Flip:F

    return v0
.end method

.method public getMaskResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/FaceInset;->maskResource:Ljava/lang/String;

    return-object v0
.end method

.method public getModelVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/FaceInset;->modelVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/FaceInset;->renderTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getScale()Lorg/light/lightAssetKit/components/Vec2;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/FaceInset;->scale:Lorg/light/lightAssetKit/components/Vec2;

    return-object v0
.end method

.method public getStretchResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/FaceInset;->stretchResource:Ljava/lang/String;

    return-object v0
.end method

.method public setCutRange(Lorg/light/lightAssetKit/components/Rect;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/FaceInset;->cutRange:Lorg/light/lightAssetKit/components/Rect;

    const-string v0, "cutRange"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFlip(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FaceInset;->Flip:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "Flip"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaskResource(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/FaceInset;->maskResource:Ljava/lang/String;

    const-string v0, "maskResource"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setModelVersion(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/FaceInset;->modelVersion:Ljava/lang/String;

    const-string v0, "modelVersion"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderTarget(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/FaceInset;->renderTarget:Ljava/lang/String;

    const-string v0, "renderTarget"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setScale(Lorg/light/lightAssetKit/components/Vec2;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/FaceInset;->scale:Lorg/light/lightAssetKit/components/Vec2;

    const-string v0, "scale"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStretchResource(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/FaceInset;->stretchResource:Ljava/lang/String;

    const-string v0, "stretchResource"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "FaceInset"

    return-object v0
.end method
