.class public Lorg/light/lightAssetKit/components/ScreenTransform;
.super Lorg/light/lightAssetKit/components/BasicTransform;
.source "SourceFile"


# instance fields
.field private anchor:Lorg/light/lightAssetKit/components/Rect;

.field private interactive:Z

.field private offset:Lorg/light/lightAssetKit/components/Rect;

.field private pivot:Lorg/light/lightAssetKit/components/Vec2;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/BasicTransform;-><init>()V

    .line 2
    new-instance v0, Lorg/light/lightAssetKit/components/Rect;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Lorg/light/lightAssetKit/components/Rect;-><init>(FFFF)V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/ScreenTransform;->anchor:Lorg/light/lightAssetKit/components/Rect;

    .line 3
    new-instance v0, Lorg/light/lightAssetKit/components/Rect;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Rect;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/ScreenTransform;->offset:Lorg/light/lightAssetKit/components/Rect;

    .line 4
    new-instance v0, Lorg/light/lightAssetKit/components/Vec2;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec2;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/ScreenTransform;->pivot:Lorg/light/lightAssetKit/components/Vec2;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/ScreenTransform;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/ScreenTransform;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/ScreenTransform;->anchor:Lorg/light/lightAssetKit/components/Rect;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/ScreenTransform;->anchor:Lorg/light/lightAssetKit/components/Rect;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/ScreenTransform;->offset:Lorg/light/lightAssetKit/components/Rect;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/ScreenTransform;->offset:Lorg/light/lightAssetKit/components/Rect;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/ScreenTransform;->pivot:Lorg/light/lightAssetKit/components/Vec2;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/ScreenTransform;->pivot:Lorg/light/lightAssetKit/components/Vec2;

    .line 6
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/ScreenTransform;->interactive:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ScreenTransform;->interactive:Z

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/BasicTransform;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAnchor()Lorg/light/lightAssetKit/components/Rect;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/ScreenTransform;->anchor:Lorg/light/lightAssetKit/components/Rect;

    return-object v0
.end method

.method public getInteractive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/ScreenTransform;->interactive:Z

    return v0
.end method

.method public getOffset()Lorg/light/lightAssetKit/components/Rect;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/ScreenTransform;->offset:Lorg/light/lightAssetKit/components/Rect;

    return-object v0
.end method

.method public getPivot()Lorg/light/lightAssetKit/components/Vec2;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/ScreenTransform;->pivot:Lorg/light/lightAssetKit/components/Vec2;

    return-object v0
.end method

.method public setAnchor(Lorg/light/lightAssetKit/components/Rect;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/ScreenTransform;->anchor:Lorg/light/lightAssetKit/components/Rect;

    const-string v0, "anchor"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInteractive(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/ScreenTransform;->interactive:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "interactive"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOffset(Lorg/light/lightAssetKit/components/Rect;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/ScreenTransform;->offset:Lorg/light/lightAssetKit/components/Rect;

    const-string v0, "offset"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPivot(Lorg/light/lightAssetKit/components/Vec2;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/ScreenTransform;->pivot:Lorg/light/lightAssetKit/components/Vec2;

    const-string v0, "pivot"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "ScreenTransform"

    return-object v0
.end method
