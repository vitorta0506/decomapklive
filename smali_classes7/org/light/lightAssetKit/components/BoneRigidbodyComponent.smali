.class public Lorg/light/lightAssetKit/components/BoneRigidbodyComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private enableParentConstraint:Z

.field private priority:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/BoneRigidbodyComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/BoneRigidbodyComponent;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/BoneRigidbodyComponent;->priority:I

    iput v1, p0, Lorg/light/lightAssetKit/components/BoneRigidbodyComponent;->priority:I

    .line 4
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/BoneRigidbodyComponent;->enableParentConstraint:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/BoneRigidbodyComponent;->enableParentConstraint:Z

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getEnableParentConstraint()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/BoneRigidbodyComponent;->enableParentConstraint:Z

    return v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BoneRigidbodyComponent;->priority:I

    return v0
.end method

.method public setEnableParentConstraint(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/BoneRigidbodyComponent;->enableParentConstraint:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableParentConstraint"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPriority(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BoneRigidbodyComponent;->priority:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "priority"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "BoneRigidbodyComponent"

    return-object v0
.end method
