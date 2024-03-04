.class public Lorg/light/lightAssetKit/components/GAN;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private factor:F

.field private inputMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inputResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private multiFacesOverlapCulling:Z

.field private need_validator:Z

.field private resourcePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/GAN;->resourcePath:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/GAN;->inputResources:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/GAN;->inputMap:Ljava/util/HashMap;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/GAN;->factor:F

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/GAN;->need_validator:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/GAN;->multiFacesOverlapCulling:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lorg/light/lightAssetKit/components/GAN;->resourcePath:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/GAN;->inputResources:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/GAN;->inputMap:Ljava/util/HashMap;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    iput v0, p0, Lorg/light/lightAssetKit/components/GAN;->factor:F

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/GAN;->need_validator:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/GAN;->multiFacesOverlapCulling:Z

    .line 15
    iput-object p1, p0, Lorg/light/lightAssetKit/components/GAN;->resourcePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/GAN;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/GAN;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/GAN;->resourcePath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/GAN;->resourcePath:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/GAN;->inputResources:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/GAN;->inputResources:Ljava/util/ArrayList;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/GAN;->inputMap:Ljava/util/HashMap;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/GAN;->inputMap:Ljava/util/HashMap;

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/GAN;->factor:F

    iput v1, p0, Lorg/light/lightAssetKit/components/GAN;->factor:F

    .line 7
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/GAN;->need_validator:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/GAN;->need_validator:Z

    .line 8
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/GAN;->multiFacesOverlapCulling:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/GAN;->multiFacesOverlapCulling:Z

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getFactor()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/GAN;->factor:F

    return v0
.end method

.method public getInputMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/GAN;->inputMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getInputResources()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/GAN;->inputResources:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMultiFacesOverlapCulling()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/GAN;->multiFacesOverlapCulling:Z

    return v0
.end method

.method public getNeed_validator()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/GAN;->need_validator:Z

    return v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/GAN;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public setFactor(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/GAN;->factor:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "factor"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInputMap(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/GAN;->inputMap:Ljava/util/HashMap;

    const-string v0, "inputMap"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInputResources(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/GAN;->inputResources:Ljava/util/ArrayList;

    const-string v0, "inputResources"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMultiFacesOverlapCulling(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/GAN;->multiFacesOverlapCulling:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "multiFacesOverlapCulling"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNeed_validator(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/GAN;->need_validator:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "need_validator"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/GAN;->resourcePath:Ljava/lang/String;

    const-string v0, "resourcePath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "GAN"

    return-object v0
.end method
