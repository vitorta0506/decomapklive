.class public Lorg/light/lightAssetKit/components/LiquefactionV6;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private editMode:Z

.field private enlargeeyeFactor:F

.field private liquefactionParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/LiquefactionParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/LiquefactionV6;->liquefactionParams:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/LiquefactionV6;->editMode:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/LiquefactionV6;->enlargeeyeFactor:F

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/LiquefactionParam;",
            ">;Z)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/LiquefactionV6;->enlargeeyeFactor:F

    .line 8
    iput-object p1, p0, Lorg/light/lightAssetKit/components/LiquefactionV6;->liquefactionParams:Ljava/util/ArrayList;

    .line 9
    iput-boolean p2, p0, Lorg/light/lightAssetKit/components/LiquefactionV6;->editMode:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/LiquefactionV6;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/LiquefactionV6;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/LiquefactionV6;->liquefactionParams:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/LiquefactionV6;->liquefactionParams:Ljava/util/ArrayList;

    .line 4
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/LiquefactionV6;->editMode:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/LiquefactionV6;->editMode:Z

    .line 5
    iget v0, v0, Lorg/light/lightAssetKit/components/LiquefactionV6;->enlargeeyeFactor:F

    iput v0, p0, Lorg/light/lightAssetKit/components/LiquefactionV6;->enlargeeyeFactor:F

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getEditMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/LiquefactionV6;->editMode:Z

    return v0
.end method

.method public getEnlargeeyeFactor()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/LiquefactionV6;->enlargeeyeFactor:F

    return v0
.end method

.method public getLiquefactionParams()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/LiquefactionParam;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/LiquefactionV6;->liquefactionParams:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setEditMode(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/LiquefactionV6;->editMode:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "editMode"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnlargeeyeFactor(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/LiquefactionV6;->enlargeeyeFactor:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "enlargeeyeFactor"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLiquefactionParams(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/LiquefactionParam;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/LiquefactionV6;->liquefactionParams:Ljava/util/ArrayList;

    const-string v0, "liquefactionParams"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "LiquefactionV6"

    return-object v0
.end method
