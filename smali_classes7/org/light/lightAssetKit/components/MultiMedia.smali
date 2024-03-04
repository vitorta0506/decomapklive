.class public Lorg/light/lightAssetKit/components/MultiMedia;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private backgroundColor:Ljava/lang/String;

.field private backgroundFillMode:Lorg/light/lightAssetKit/enums/BackgroundFillMode;

.field private fillScale:F

.field private fixedBackground:Z

.field private imageEffect:I

.field private scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

.field private size:Lorg/light/lightAssetKit/components/Size;

.field private speed:F

.field private src:Ljava/lang/String;

.field private volume:F

.field private volumeEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/VolumeEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->fillScale:F

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->volume:F

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->speed:F

    .line 5
    sget-object v0, Lorg/light/lightAssetKit/enums/BackgroundFillMode;->GaussianBlur:Lorg/light/lightAssetKit/enums/BackgroundFillMode;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->backgroundFillMode:Lorg/light/lightAssetKit/enums/BackgroundFillMode;

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->backgroundColor:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->fixedBackground:Z

    .line 8
    iput v1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->imageEffect:I

    .line 9
    new-instance v1, Lorg/light/lightAssetKit/components/Size;

    invoke-direct {v1}, Lorg/light/lightAssetKit/components/Size;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->size:Lorg/light/lightAssetKit/components/Size;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->volumeEffects:Ljava/util/ArrayList;

    .line 11
    sget-object v1, Lorg/light/lightAssetKit/enums/PAGScaleMode;->LetterBox:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    .line 12
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->src:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/MultiMedia;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/MultiMedia;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/MultiMedia;->fillScale:F

    iput v1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->fillScale:F

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/MultiMedia;->volume:F

    iput v1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->volume:F

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/MultiMedia;->speed:F

    iput v1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->speed:F

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MultiMedia;->backgroundFillMode:Lorg/light/lightAssetKit/enums/BackgroundFillMode;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->backgroundFillMode:Lorg/light/lightAssetKit/enums/BackgroundFillMode;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MultiMedia;->backgroundColor:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->backgroundColor:Ljava/lang/String;

    .line 8
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/MultiMedia;->fixedBackground:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->fixedBackground:Z

    .line 9
    iget v1, v0, Lorg/light/lightAssetKit/components/MultiMedia;->imageEffect:I

    iput v1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->imageEffect:I

    .line 10
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MultiMedia;->size:Lorg/light/lightAssetKit/components/Size;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->size:Lorg/light/lightAssetKit/components/Size;

    .line 11
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MultiMedia;->volumeEffects:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->volumeEffects:Ljava/util/ArrayList;

    .line 12
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MultiMedia;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    .line 13
    iget-object v0, v0, Lorg/light/lightAssetKit/components/MultiMedia;->src:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->src:Ljava/lang/String;

    .line 14
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->backgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBackgroundFillMode()Lorg/light/lightAssetKit/enums/BackgroundFillMode;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->backgroundFillMode:Lorg/light/lightAssetKit/enums/BackgroundFillMode;

    return-object v0
.end method

.method public getFillScale()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->fillScale:F

    return v0
.end method

.method public getFixedBackground()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->fixedBackground:Z

    return v0
.end method

.method public getImageEffect()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->imageEffect:I

    return v0
.end method

.method public getScaleMode()Lorg/light/lightAssetKit/enums/PAGScaleMode;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    return-object v0
.end method

.method public getSize()Lorg/light/lightAssetKit/components/Size;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->size:Lorg/light/lightAssetKit/components/Size;

    return-object v0
.end method

.method public getSpeed()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->speed:F

    return v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->volume:F

    return v0
.end method

.method public getVolumeEffects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/VolumeEffect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MultiMedia;->volumeEffects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->backgroundColor:Ljava/lang/String;

    const-string v0, "backgroundColor"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBackgroundFillMode(Lorg/light/lightAssetKit/enums/BackgroundFillMode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->backgroundFillMode:Lorg/light/lightAssetKit/enums/BackgroundFillMode;

    const-string v0, "backgroundFillMode"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFillScale(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->fillScale:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "fillScale"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFixedBackground(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->fixedBackground:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "fixedBackground"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setImageEffect(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->imageEffect:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "imageEffect"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setScaleMode(Lorg/light/lightAssetKit/enums/PAGScaleMode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    const-string v0, "scaleMode"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSize(Lorg/light/lightAssetKit/components/Size;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->size:Lorg/light/lightAssetKit/components/Size;

    const-string v0, "size"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->speed:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "speed"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->src:Ljava/lang/String;

    const-string v0, "src"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->volume:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "volume"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVolumeEffects(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/VolumeEffect;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MultiMedia;->volumeEffects:Ljava/util/ArrayList;

    const-string v0, "volumeEffects"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "MultiMedia"

    return-object v0
.end method
