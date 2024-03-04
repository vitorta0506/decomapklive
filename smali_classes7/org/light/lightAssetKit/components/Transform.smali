.class public Lorg/light/lightAssetKit/components/Transform;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private anchor:Lorg/light/lightAssetKit/components/Position;

.field private position:Lorg/light/lightAssetKit/components/Position;

.field private rotation:F

.field private size:Lorg/light/lightAssetKit/components/Size;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    new-instance v0, Lorg/light/lightAssetKit/components/Position;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Position;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Transform;->anchor:Lorg/light/lightAssetKit/components/Position;

    .line 3
    new-instance v0, Lorg/light/lightAssetKit/components/Position;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Position;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Transform;->position:Lorg/light/lightAssetKit/components/Position;

    .line 4
    new-instance v0, Lorg/light/lightAssetKit/components/Size;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Size;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Transform;->size:Lorg/light/lightAssetKit/components/Size;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/Transform;->rotation:F

    return-void
.end method

.method public constructor <init>(Lorg/light/lightAssetKit/components/Position;Lorg/light/lightAssetKit/components/Position;Lorg/light/lightAssetKit/components/Size;FZ)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 7
    new-instance v0, Lorg/light/lightAssetKit/components/Position;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Position;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Transform;->anchor:Lorg/light/lightAssetKit/components/Position;

    .line 8
    new-instance v0, Lorg/light/lightAssetKit/components/Position;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Position;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Transform;->position:Lorg/light/lightAssetKit/components/Position;

    .line 9
    new-instance v0, Lorg/light/lightAssetKit/components/Size;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Size;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Transform;->anchor:Lorg/light/lightAssetKit/components/Position;

    .line 11
    iput-object p2, p0, Lorg/light/lightAssetKit/components/Transform;->position:Lorg/light/lightAssetKit/components/Position;

    .line 12
    iput-object p3, p0, Lorg/light/lightAssetKit/components/Transform;->size:Lorg/light/lightAssetKit/components/Size;

    .line 13
    iput p4, p0, Lorg/light/lightAssetKit/components/Transform;->rotation:F

    .line 14
    iput-boolean p5, p0, Lorg/light/lightAssetKit/components/Transform;->visible:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Transform;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Transform;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Transform;->anchor:Lorg/light/lightAssetKit/components/Position;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Transform;->anchor:Lorg/light/lightAssetKit/components/Position;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Transform;->position:Lorg/light/lightAssetKit/components/Position;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Transform;->position:Lorg/light/lightAssetKit/components/Position;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Transform;->size:Lorg/light/lightAssetKit/components/Size;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Transform;->size:Lorg/light/lightAssetKit/components/Size;

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/Transform;->rotation:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Transform;->rotation:F

    .line 7
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/Transform;->visible:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Transform;->visible:Z

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAnchor()Lorg/light/lightAssetKit/components/Position;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Transform;->anchor:Lorg/light/lightAssetKit/components/Position;

    return-object v0
.end method

.method public getPosition()Lorg/light/lightAssetKit/components/Position;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Transform;->position:Lorg/light/lightAssetKit/components/Position;

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Transform;->rotation:F

    return v0
.end method

.method public getSize()Lorg/light/lightAssetKit/components/Size;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Transform;->size:Lorg/light/lightAssetKit/components/Size;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Transform;->visible:Z

    return v0
.end method

.method public setAnchor(Lorg/light/lightAssetKit/components/Position;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Transform;->anchor:Lorg/light/lightAssetKit/components/Position;

    const-string v0, "anchor"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPosition(Lorg/light/lightAssetKit/components/Position;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Transform;->position:Lorg/light/lightAssetKit/components/Position;

    const-string v0, "position"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Transform;->rotation:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "rotation"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSize(Lorg/light/lightAssetKit/components/Size;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Transform;->size:Lorg/light/lightAssetKit/components/Size;

    const-string v0, "size"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Transform;->visible:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "visible"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Transform"

    return-object v0
.end method
