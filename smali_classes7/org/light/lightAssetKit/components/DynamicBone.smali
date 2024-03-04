.class public Lorg/light/lightAssetKit/components/DynamicBone;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private disableAnimationReset:Z

.field private gravity:Lorg/light/lightAssetKit/components/Position;

.field private noRotationUpdate:Z

.field private resetType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    new-instance v0, Lorg/light/lightAssetKit/components/Position;

    const/4 v1, 0x0

    const v2, -0x41b33333    # -0.2f

    invoke-direct {v0, v1, v2, v1}, Lorg/light/lightAssetKit/components/Position;-><init>(FFF)V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/DynamicBone;->gravity:Lorg/light/lightAssetKit/components/Position;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/DynamicBone;->resetType:I

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/DynamicBone;->noRotationUpdate:Z

    .line 5
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/DynamicBone;->disableAnimationReset:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/DynamicBone;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/DynamicBone;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/DynamicBone;->gravity:Lorg/light/lightAssetKit/components/Position;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/DynamicBone;->gravity:Lorg/light/lightAssetKit/components/Position;

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/DynamicBone;->resetType:I

    iput v1, p0, Lorg/light/lightAssetKit/components/DynamicBone;->resetType:I

    .line 5
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/DynamicBone;->noRotationUpdate:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/DynamicBone;->noRotationUpdate:Z

    .line 6
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/DynamicBone;->disableAnimationReset:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/DynamicBone;->disableAnimationReset:Z

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getDisableAnimationReset()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/DynamicBone;->disableAnimationReset:Z

    return v0
.end method

.method public getGravity()Lorg/light/lightAssetKit/components/Position;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/DynamicBone;->gravity:Lorg/light/lightAssetKit/components/Position;

    return-object v0
.end method

.method public getNoRotationUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/DynamicBone;->noRotationUpdate:Z

    return v0
.end method

.method public getResetType()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/DynamicBone;->resetType:I

    return v0
.end method

.method public setDisableAnimationReset(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/DynamicBone;->disableAnimationReset:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "disableAnimationReset"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setGravity(Lorg/light/lightAssetKit/components/Position;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/DynamicBone;->gravity:Lorg/light/lightAssetKit/components/Position;

    const-string v0, "gravity"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNoRotationUpdate(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/DynamicBone;->noRotationUpdate:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "noRotationUpdate"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setResetType(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/DynamicBone;->resetType:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "resetType"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "DynamicBone"

    return-object v0
.end method
