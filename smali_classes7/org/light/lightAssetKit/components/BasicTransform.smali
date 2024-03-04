.class public Lorg/light/lightAssetKit/components/BasicTransform;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private objectEnabled:Z

.field private position:Lorg/light/lightAssetKit/components/Vec3;

.field private rotation:Lorg/light/lightAssetKit/components/Quat;

.field private scale:Lorg/light/lightAssetKit/components/Vec3;

.field private skipUpdate:Z

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lorg/light/lightAssetKit/components/Vec3;-><init>(FFF)V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/BasicTransform;->position:Lorg/light/lightAssetKit/components/Vec3;

    .line 3
    new-instance v0, Lorg/light/lightAssetKit/components/Quat;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v1, v1}, Lorg/light/lightAssetKit/components/Quat;-><init>(FFFF)V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/BasicTransform;->rotation:Lorg/light/lightAssetKit/components/Quat;

    .line 4
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0, v2, v2, v2}, Lorg/light/lightAssetKit/components/Vec3;-><init>(FFF)V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/BasicTransform;->scale:Lorg/light/lightAssetKit/components/Vec3;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/BasicTransform;->objectEnabled:Z

    .line 6
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/BasicTransform;->visible:Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/BasicTransform;->skipUpdate:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/BasicTransform;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/BasicTransform;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BasicTransform;->position:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BasicTransform;->position:Lorg/light/lightAssetKit/components/Vec3;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BasicTransform;->rotation:Lorg/light/lightAssetKit/components/Quat;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BasicTransform;->rotation:Lorg/light/lightAssetKit/components/Quat;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BasicTransform;->scale:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BasicTransform;->scale:Lorg/light/lightAssetKit/components/Vec3;

    .line 6
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/BasicTransform;->objectEnabled:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/BasicTransform;->objectEnabled:Z

    .line 7
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/BasicTransform;->visible:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/BasicTransform;->visible:Z

    .line 8
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/BasicTransform;->skipUpdate:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/BasicTransform;->skipUpdate:Z

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getObjectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/BasicTransform;->objectEnabled:Z

    return v0
.end method

.method public getPosition()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BasicTransform;->position:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public getRotation()Lorg/light/lightAssetKit/components/Quat;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BasicTransform;->rotation:Lorg/light/lightAssetKit/components/Quat;

    return-object v0
.end method

.method public getScale()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BasicTransform;->scale:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public getSkipUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/BasicTransform;->skipUpdate:Z

    return v0
.end method

.method public getVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/BasicTransform;->visible:Z

    return v0
.end method

.method public setObjectEnabled(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/BasicTransform;->objectEnabled:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "objectEnabled"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPosition(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BasicTransform;->position:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "position"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRotation(Lorg/light/lightAssetKit/components/Quat;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BasicTransform;->rotation:Lorg/light/lightAssetKit/components/Quat;

    const-string v0, "rotation"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setScale(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BasicTransform;->scale:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "scale"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSkipUpdate(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/BasicTransform;->skipUpdate:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "skipUpdate"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/BasicTransform;->visible:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "visible"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "BasicTransform"

    return-object v0
.end method
