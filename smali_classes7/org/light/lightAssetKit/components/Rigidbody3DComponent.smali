.class public Lorg/light/lightAssetKit/components/Rigidbody3DComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private angular_damping_:F

.field private ccd_motion_threshold_:F

.field private collision_filter_group_:I

.field private collision_filter_mask_:I

.field private emit_collision_event_:Z

.field private friction_:F

.field private is_dynamic_:Z

.field private linear_damping_:F

.field private mass_:F

.field private restitution_:F

.field private rolling_friction_:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->is_dynamic_:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->mass_:F

    const/4 v2, 0x0

    .line 4
    iput v2, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->friction_:F

    .line 5
    iput v2, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->rolling_friction_:F

    .line 6
    iput v2, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->restitution_:F

    .line 7
    iput v2, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->linear_damping_:F

    .line 8
    iput v2, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->angular_damping_:F

    .line 9
    iput v1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->ccd_motion_threshold_:F

    .line 10
    iput v0, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->collision_filter_group_:I

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->collision_filter_mask_:I

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->emit_collision_event_:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;

    .line 3
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->is_dynamic_:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->is_dynamic_:Z

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->mass_:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->mass_:F

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->friction_:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->friction_:F

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->rolling_friction_:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->rolling_friction_:F

    .line 7
    iget v1, v0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->restitution_:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->restitution_:F

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->linear_damping_:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->linear_damping_:F

    .line 9
    iget v1, v0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->angular_damping_:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->angular_damping_:F

    .line 10
    iget v1, v0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->ccd_motion_threshold_:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->ccd_motion_threshold_:F

    .line 11
    iget v1, v0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->collision_filter_group_:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->collision_filter_group_:I

    .line 12
    iget v1, v0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->collision_filter_mask_:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->collision_filter_mask_:I

    .line 13
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->emit_collision_event_:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->emit_collision_event_:Z

    .line 14
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAngular_damping_()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->angular_damping_:F

    return v0
.end method

.method public getCcd_motion_threshold_()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->ccd_motion_threshold_:F

    return v0
.end method

.method public getCollision_filter_group_()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->collision_filter_group_:I

    return v0
.end method

.method public getCollision_filter_mask_()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->collision_filter_mask_:I

    return v0
.end method

.method public getEmit_collision_event_()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->emit_collision_event_:Z

    return v0
.end method

.method public getFriction_()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->friction_:F

    return v0
.end method

.method public getIs_dynamic_()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->is_dynamic_:Z

    return v0
.end method

.method public getLinear_damping_()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->linear_damping_:F

    return v0
.end method

.method public getMass_()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->mass_:F

    return v0
.end method

.method public getRestitution_()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->restitution_:F

    return v0
.end method

.method public getRolling_friction_()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->rolling_friction_:F

    return v0
.end method

.method public setAngular_damping_(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->angular_damping_:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "angular_damping_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCcd_motion_threshold_(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->ccd_motion_threshold_:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "ccd_motion_threshold_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCollision_filter_group_(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->collision_filter_group_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "collision_filter_group_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCollision_filter_mask_(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->collision_filter_mask_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "collision_filter_mask_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEmit_collision_event_(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->emit_collision_event_:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "emit_collision_event_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFriction_(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->friction_:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "friction_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIs_dynamic_(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->is_dynamic_:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "is_dynamic_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLinear_damping_(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->linear_damping_:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "linear_damping_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMass_(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->mass_:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "mass_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRestitution_(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->restitution_:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "restitution_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRolling_friction_(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->rolling_friction_:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "rolling_friction_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Rigidbody3DComponent"

    return-object v0
.end method
