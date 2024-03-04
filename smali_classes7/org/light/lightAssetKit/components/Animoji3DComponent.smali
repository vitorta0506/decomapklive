.class public Lorg/light/lightAssetKit/components/Animoji3DComponent;
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

.field private eyeBoneId:I

.field private eyeSetting:Lorg/light/lightAssetKit/components/EyeSetting;

.field private morphName:Ljava/lang/String;

.field private trackEyeRoll:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->morphName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->trackEyeRoll:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->eyeBoneId:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->animojiConfig:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Lorg/light/lightAssetKit/components/EyeSetting;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/EyeSetting;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->eyeSetting:Lorg/light/lightAssetKit/components/EyeSetting;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Animoji3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Animoji3DComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->morphName:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->morphName:Ljava/lang/String;

    .line 4
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->trackEyeRoll:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->trackEyeRoll:Z

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->eyeBoneId:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->eyeBoneId:I

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->animojiConfig:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->animojiConfig:Ljava/util/ArrayList;

    .line 7
    iget-object v0, v0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->eyeSetting:Lorg/light/lightAssetKit/components/EyeSetting;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->eyeSetting:Lorg/light/lightAssetKit/components/EyeSetting;

    .line 8
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

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->animojiConfig:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEyeBoneId()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->eyeBoneId:I

    return v0
.end method

.method public getEyeSetting()Lorg/light/lightAssetKit/components/EyeSetting;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->eyeSetting:Lorg/light/lightAssetKit/components/EyeSetting;

    return-object v0
.end method

.method public getMorphName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->morphName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackEyeRoll()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->trackEyeRoll:Z

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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->animojiConfig:Ljava/util/ArrayList;

    const-string v0, "animojiConfig"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEyeBoneId(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->eyeBoneId:I

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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->eyeSetting:Lorg/light/lightAssetKit/components/EyeSetting;

    const-string v0, "eyeSetting"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMorphName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->morphName:Ljava/lang/String;

    const-string v0, "morphName"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTrackEyeRoll(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Animoji3DComponent;->trackEyeRoll:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "trackEyeRoll"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Animoji3DComponent"

    return-object v0
.end method