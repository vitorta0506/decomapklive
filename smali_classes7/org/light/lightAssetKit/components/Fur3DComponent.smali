.class public Lorg/light/lightAssetKit/components/Fur3DComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private furAutoScaling:Z

.field private furFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Fur3DComponent;->furFile:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Fur3DComponent;->furAutoScaling:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Fur3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Fur3DComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Fur3DComponent;->furFile:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Fur3DComponent;->furFile:Ljava/lang/String;

    .line 4
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/Fur3DComponent;->furAutoScaling:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Fur3DComponent;->furAutoScaling:Z

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getFurAutoScaling()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Fur3DComponent;->furAutoScaling:Z

    return v0
.end method

.method public getFurFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Fur3DComponent;->furFile:Ljava/lang/String;

    return-object v0
.end method

.method public setFurAutoScaling(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Fur3DComponent;->furAutoScaling:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "furAutoScaling"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFurFile(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Fur3DComponent;->furFile:Ljava/lang/String;

    const-string v0, "furFile"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Fur3DComponent"

    return-object v0
.end method
