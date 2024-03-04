.class public Lorg/light/lightAssetKit/components/Stylized;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private isDenoise:Z

.field private lutPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private materialPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stylizedType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, "OldComicFilter"

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Stylized;->stylizedType:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Stylized;->lutPaths:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Stylized;->materialPaths:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Stylized;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Stylized;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Stylized;->stylizedType:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Stylized;->stylizedType:Ljava/lang/String;

    .line 4
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Stylized;->isDenoise:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Stylized;->isDenoise:Z

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Stylized;->lutPaths:Ljava/util/HashMap;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Stylized;->lutPaths:Ljava/util/HashMap;

    .line 6
    iget-object v0, v0, Lorg/light/lightAssetKit/components/Stylized;->materialPaths:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Stylized;->materialPaths:Ljava/util/HashMap;

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getIsDenoise()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Stylized;->isDenoise:Z

    return v0
.end method

.method public getLutPaths()Ljava/util/HashMap;
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

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Stylized;->lutPaths:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMaterialPaths()Ljava/util/HashMap;
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

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Stylized;->materialPaths:Ljava/util/HashMap;

    return-object v0
.end method

.method public getStylizedType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Stylized;->stylizedType:Ljava/lang/String;

    return-object v0
.end method

.method public setIsDenoise(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Stylized;->isDenoise:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isDenoise"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLutPaths(Ljava/util/HashMap;)V
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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Stylized;->lutPaths:Ljava/util/HashMap;

    const-string v0, "lutPaths"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaterialPaths(Ljava/util/HashMap;)V
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
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Stylized;->materialPaths:Ljava/util/HashMap;

    const-string v0, "materialPaths"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStylizedType(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Stylized;->stylizedType:Ljava/lang/String;

    const-string v0, "stylizedType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Stylized"

    return-object v0
.end method
