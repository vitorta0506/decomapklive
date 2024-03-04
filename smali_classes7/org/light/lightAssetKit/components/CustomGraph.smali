.class public Lorg/light/lightAssetKit/components/CustomGraph;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private needOnRender:Z

.field private resourcePath:Ljava/lang/String;

.field private uniformJson:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/CustomGraph;->resourcePath:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/CustomGraph;->uniformJson:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/CustomGraph;->needOnRender:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/CustomGraph;->uniformJson:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/CustomGraph;->needOnRender:Z

    .line 8
    iput-object p1, p0, Lorg/light/lightAssetKit/components/CustomGraph;->resourcePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/CustomGraph;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/CustomGraph;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/CustomGraph;->resourcePath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/CustomGraph;->resourcePath:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/CustomGraph;->uniformJson:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/CustomGraph;->uniformJson:Ljava/lang/String;

    .line 5
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/CustomGraph;->needOnRender:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/CustomGraph;->needOnRender:Z

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getNeedOnRender()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/CustomGraph;->needOnRender:Z

    return v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/CustomGraph;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUniformJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/CustomGraph;->uniformJson:Ljava/lang/String;

    return-object v0
.end method

.method public setNeedOnRender(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/CustomGraph;->needOnRender:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "needOnRender"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/CustomGraph;->resourcePath:Ljava/lang/String;

    const-string v0, "resourcePath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUniformJson(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/CustomGraph;->uniformJson:Ljava/lang/String;

    const-string v0, "uniformJson"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "CustomGraph"

    return-object v0
.end method
