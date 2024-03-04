.class public Lorg/light/lightAssetKit/components/SubAssetComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private cacheRenderResult:Z

.field private indexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isUsingPropertiesSize:Z

.field private renderAfterTransform:Z

.field private subAssetApplyType:Lorg/light/lightAssetKit/enums/SubAssetApplyType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->indexes:Ljava/util/ArrayList;

    .line 3
    sget-object v0, Lorg/light/lightAssetKit/enums/SubAssetApplyType;->All:Lorg/light/lightAssetKit/enums/SubAssetApplyType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->subAssetApplyType:Lorg/light/lightAssetKit/enums/SubAssetApplyType;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->renderAfterTransform:Z

    .line 5
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->isUsingPropertiesSize:Z

    .line 6
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->cacheRenderResult:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lorg/light/lightAssetKit/enums/SubAssetApplyType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/light/lightAssetKit/enums/SubAssetApplyType;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->indexes:Ljava/util/ArrayList;

    .line 9
    sget-object v0, Lorg/light/lightAssetKit/enums/SubAssetApplyType;->All:Lorg/light/lightAssetKit/enums/SubAssetApplyType;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->renderAfterTransform:Z

    .line 11
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->isUsingPropertiesSize:Z

    .line 12
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->cacheRenderResult:Z

    .line 13
    iput-object p1, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->indexes:Ljava/util/ArrayList;

    .line 14
    iput-object p2, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->subAssetApplyType:Lorg/light/lightAssetKit/enums/SubAssetApplyType;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/SubAssetComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/SubAssetComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/SubAssetComponent;->indexes:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->indexes:Ljava/util/ArrayList;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/SubAssetComponent;->subAssetApplyType:Lorg/light/lightAssetKit/enums/SubAssetApplyType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->subAssetApplyType:Lorg/light/lightAssetKit/enums/SubAssetApplyType;

    .line 5
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/SubAssetComponent;->renderAfterTransform:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->renderAfterTransform:Z

    .line 6
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/SubAssetComponent;->isUsingPropertiesSize:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->isUsingPropertiesSize:Z

    .line 7
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/SubAssetComponent;->cacheRenderResult:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->cacheRenderResult:Z

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getCacheRenderResult()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->cacheRenderResult:Z

    return v0
.end method

.method public getIndexes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->indexes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsUsingPropertiesSize()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->isUsingPropertiesSize:Z

    return v0
.end method

.method public getRenderAfterTransform()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->renderAfterTransform:Z

    return v0
.end method

.method public getSubAssetApplyType()Lorg/light/lightAssetKit/enums/SubAssetApplyType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->subAssetApplyType:Lorg/light/lightAssetKit/enums/SubAssetApplyType;

    return-object v0
.end method

.method public setCacheRenderResult(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->cacheRenderResult:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "cacheRenderResult"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIndexes(Ljava/util/ArrayList;)V
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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->indexes:Ljava/util/ArrayList;

    const-string v0, "indexes"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsUsingPropertiesSize(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->isUsingPropertiesSize:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isUsingPropertiesSize"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderAfterTransform(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->renderAfterTransform:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "renderAfterTransform"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSubAssetApplyType(Lorg/light/lightAssetKit/enums/SubAssetApplyType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/SubAssetComponent;->subAssetApplyType:Lorg/light/lightAssetKit/enums/SubAssetApplyType;

    const-string v0, "subAssetApplyType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "SubAssetComponent"

    return-object v0
.end method
