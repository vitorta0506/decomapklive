.class public Lorg/light/lightAssetKit/components/BGMHiddenComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private hidden:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/BGMHiddenComponent;->hidden:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/BGMHiddenComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/BGMHiddenComponent;

    .line 3
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/BGMHiddenComponent;->hidden:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/BGMHiddenComponent;->hidden:Z

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getHidden()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/BGMHiddenComponent;->hidden:Z

    return v0
.end method

.method public setHidden(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/BGMHiddenComponent;->hidden:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "hidden"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "BGMHiddenComponent"

    return-object v0
.end method
