.class public Lorg/light/lightAssetKit/components/Component;
.super Lorg/light/lightAssetKit/ComponentBase;
.source "SourceFile"


# instance fields
.field private componentID:I

.field private enabled:Z

.field private entityId:I

.field private needReload:Z

.field private paused:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/ComponentBase;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Component;->enabled:Z

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Component;->needReload:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Component;->paused:Z

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/Component;->componentID:I

    .line 6
    iput v0, p0, Lorg/light/lightAssetKit/components/Component;->entityId:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Component;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Component;

    .line 3
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Component;->enabled:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Component;->enabled:Z

    .line 4
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Component;->needReload:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Component;->needReload:Z

    .line 5
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Component;->paused:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Component;->paused:Z

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/Component;->componentID:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Component;->componentID:I

    .line 7
    iget v0, v0, Lorg/light/lightAssetKit/components/Component;->entityId:I

    iput v0, p0, Lorg/light/lightAssetKit/components/Component;->entityId:I

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/ComponentBase;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getComponentID()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Component;->componentID:I

    return v0
.end method

.method public getEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Component;->enabled:Z

    return v0
.end method

.method public getEntityId()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Component;->entityId:I

    return v0
.end method

.method public getNeedReload()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Component;->needReload:Z

    return v0
.end method

.method public getPaused()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Component;->paused:Z

    return v0
.end method

.method public setComponentID(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Component;->componentID:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "componentID"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Component;->enabled:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enabled"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEntityId(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Component;->entityId:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "entityId"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNeedReload(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Component;->needReload:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "needReload"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPaused(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Component;->paused:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "paused"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Component"

    return-object v0
.end method
