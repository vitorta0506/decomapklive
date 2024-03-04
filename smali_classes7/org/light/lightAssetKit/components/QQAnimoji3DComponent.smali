.class public Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private animojiConfig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/AnimojiConfig;",
            ">;"
        }
    .end annotation
.end field

.field private enableProMode:Z

.field private eyeBoneId:I

.field private eyeSetting:Lorg/light/lightAssetKit/components/EyeSetting;

.field private morphName:Ljava/lang/String;

.field private smoothStrength:F

.field private trackEyeRoll:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->enableProMode:Z

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->smoothStrength:F

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->animojiConfig:Ljava/util/ArrayList;

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->morphName:Ljava/lang/String;

    .line 6
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->trackEyeRoll:Z

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->eyeBoneId:I

    .line 8
    new-instance v0, Lorg/light/lightAssetKit/components/EyeSetting;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/EyeSetting;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->eyeSetting:Lorg/light/lightAssetKit/components/EyeSetting;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;

    .line 3
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->enableProMode:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->enableProMode:Z

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->smoothStrength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->smoothStrength:F

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->animojiConfig:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->animojiConfig:Ljava/util/ArrayList;

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->morphName:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->morphName:Ljava/lang/String;

    .line 7
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->trackEyeRoll:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->trackEyeRoll:Z

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->eyeBoneId:I

    iput v1, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->eyeBoneId:I

    .line 9
    iget-object v0, v0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->eyeSetting:Lorg/light/lightAssetKit/components/EyeSetting;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->eyeSetting:Lorg/light/lightAssetKit/components/EyeSetting;

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAnimojiConfig()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/AnimojiConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->animojiConfig:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEnableProMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->enableProMode:Z

    return v0
.end method

.method public getEyeBoneId()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->eyeBoneId:I

    return v0
.end method

.method public getEyeSetting()Lorg/light/lightAssetKit/components/EyeSetting;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->eyeSetting:Lorg/light/lightAssetKit/components/EyeSetting;

    return-object v0
.end method

.method public getMorphName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->morphName:Ljava/lang/String;

    return-object v0
.end method

.method public getSmoothStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->smoothStrength:F

    return v0
.end method

.method public getTrackEyeRoll()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->trackEyeRoll:Z

    return v0
.end method

.method public setAnimojiConfig(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/AnimojiConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->animojiConfig:Ljava/util/ArrayList;

    const-string v0, "animojiConfig"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableProMode(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->enableProMode:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableProMode"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEyeBoneId(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->eyeBoneId:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "eyeBoneId"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEyeSetting(Lorg/light/lightAssetKit/components/EyeSetting;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->eyeSetting:Lorg/light/lightAssetKit/components/EyeSetting;

    const-string v0, "eyeSetting"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMorphName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->morphName:Ljava/lang/String;

    const-string v0, "morphName"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSmoothStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->smoothStrength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "smoothStrength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrackEyeRoll(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/QQAnimoji3DComponent;->trackEyeRoll:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "trackEyeRoll"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "QQAnimoji3DComponent"

    return-object v0
.end method
