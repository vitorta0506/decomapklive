.class public Lorg/light/lightAssetKit/components/HeadInset;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private blurRadius:F

.field private isCorrected:Z

.field private renderTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/HeadInset;->renderTarget:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/HeadInset;->isCorrected:Z

    const/high16 v0, 0x40400000    # 3.0f

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/HeadInset;->blurRadius:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZF)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/light/lightAssetKit/components/HeadInset;->renderTarget:Ljava/lang/String;

    .line 7
    iput-boolean p2, p0, Lorg/light/lightAssetKit/components/HeadInset;->isCorrected:Z

    .line 8
    iput p3, p0, Lorg/light/lightAssetKit/components/HeadInset;->blurRadius:F

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/HeadInset;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/HeadInset;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/HeadInset;->renderTarget:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/HeadInset;->renderTarget:Ljava/lang/String;

    .line 4
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/HeadInset;->isCorrected:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/HeadInset;->isCorrected:Z

    .line 5
    iget v0, v0, Lorg/light/lightAssetKit/components/HeadInset;->blurRadius:F

    iput v0, p0, Lorg/light/lightAssetKit/components/HeadInset;->blurRadius:F

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getBlurRadius()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/HeadInset;->blurRadius:F

    return v0
.end method

.method public getIsCorrected()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/HeadInset;->isCorrected:Z

    return v0
.end method

.method public getRenderTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/HeadInset;->renderTarget:Ljava/lang/String;

    return-object v0
.end method

.method public setBlurRadius(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/HeadInset;->blurRadius:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "blurRadius"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsCorrected(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/HeadInset;->isCorrected:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isCorrected"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderTarget(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/HeadInset;->renderTarget:Ljava/lang/String;

    const-string v0, "renderTarget"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "HeadInset"

    return-object v0
.end method
