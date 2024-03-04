.class public Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private aero_mode_:Lorg/light/lightAssetKit/enums/kSoftbodyAeroMode;

.field private aero_mode_enabled_:Z

.field private anchor_enabled_:Z

.field private anchor_lists_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/SoftAnchorData;",
            ">;"
        }
    .end annotation
.end field

.field private cfg_blend_constraint_strength_:I

.field private cfg_drag_coefficient_:F

.field private cfg_dynamic_friction_:F

.field private cfg_lift_coefficient_:F

.field private cfg_linear_damping_:F

.field private cfg_material_linear_stiffness_:F

.field private cfg_pressure_:F

.field private collision_filter_enabled_:Z

.field private collision_filter_group_:I

.field private collision_filter_mask_:I

.field private collision_margin_:F

.field private collision_mode_:Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

.field private emit_collision_event_:Z

.field private enable_point_fuse_:Z

.field private no_collision_objects_ids_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private position_solver_iterations_:I

.field private total_mass_:F

.field private velocity_solver_iterations_:I

.field private wind_velocity_:Lorg/light/lightAssetKit/components/Vec3;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->total_mass_:F

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_blend_constraint_strength_:I

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_material_linear_stiffness_:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_linear_damping_:F

    const v2, 0x3e4ccccd    # 0.2f

    .line 6
    iput v2, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_dynamic_friction_:F

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_pressure_:F

    .line 8
    iput v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->velocity_solver_iterations_:I

    const/4 v2, 0x1

    .line 9
    iput v2, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->position_solver_iterations_:I

    .line 10
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->aero_mode_enabled_:Z

    .line 11
    sget-object v3, Lorg/light/lightAssetKit/enums/kSoftbodyAeroMode;->FlagMode:Lorg/light/lightAssetKit/enums/kSoftbodyAeroMode;

    iput-object v3, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->aero_mode_:Lorg/light/lightAssetKit/enums/kSoftbodyAeroMode;

    .line 12
    new-instance v3, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v3, v0, v0, v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>(FFF)V

    iput-object v3, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->wind_velocity_:Lorg/light/lightAssetKit/components/Vec3;

    .line 13
    iput v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_drag_coefficient_:F

    .line 14
    iput v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_lift_coefficient_:F

    .line 15
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->anchor_enabled_:Z

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->anchor_lists_:Ljava/util/ArrayList;

    .line 17
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_filter_enabled_:Z

    .line 18
    sget-object v0, Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;->SoftWithRigid:Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_mode_:Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    const v0, 0x3c23d70a    # 0.01f

    .line 19
    iput v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_margin_:F

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->no_collision_objects_ids_:Ljava/util/ArrayList;

    .line 21
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->enable_point_fuse_:Z

    .line 22
    iput v2, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_filter_group_:I

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_filter_mask_:I

    .line 24
    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->emit_collision_event_:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->total_mass_:F

    iput v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->total_mass_:F

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_blend_constraint_strength_:I

    iput v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_blend_constraint_strength_:I

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_material_linear_stiffness_:F

    iput v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_material_linear_stiffness_:F

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_linear_damping_:F

    iput v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_linear_damping_:F

    .line 7
    iget v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_dynamic_friction_:F

    iput v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_dynamic_friction_:F

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_pressure_:F

    iput v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_pressure_:F

    .line 9
    iget v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->velocity_solver_iterations_:I

    iput v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->velocity_solver_iterations_:I

    .line 10
    iget v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->position_solver_iterations_:I

    iput v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->position_solver_iterations_:I

    .line 11
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->aero_mode_enabled_:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->aero_mode_enabled_:Z

    .line 12
    iget-object v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->aero_mode_:Lorg/light/lightAssetKit/enums/kSoftbodyAeroMode;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->aero_mode_:Lorg/light/lightAssetKit/enums/kSoftbodyAeroMode;

    .line 13
    iget-object v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->wind_velocity_:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->wind_velocity_:Lorg/light/lightAssetKit/components/Vec3;

    .line 14
    iget v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_drag_coefficient_:F

    iput v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_drag_coefficient_:F

    .line 15
    iget v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_lift_coefficient_:F

    iput v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_lift_coefficient_:F

    .line 16
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->anchor_enabled_:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->anchor_enabled_:Z

    .line 17
    iget-object v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->anchor_lists_:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->anchor_lists_:Ljava/util/ArrayList;

    .line 18
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_filter_enabled_:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_filter_enabled_:Z

    .line 19
    iget-object v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_mode_:Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_mode_:Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    .line 20
    iget v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_margin_:F

    iput v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_margin_:F

    .line 21
    iget-object v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->no_collision_objects_ids_:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->no_collision_objects_ids_:Ljava/util/ArrayList;

    .line 22
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->enable_point_fuse_:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->enable_point_fuse_:Z

    .line 23
    iget v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_filter_group_:I

    iput v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_filter_group_:I

    .line 24
    iget v1, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_filter_mask_:I

    iput v1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_filter_mask_:I

    .line 25
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->emit_collision_event_:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->emit_collision_event_:Z

    .line 26
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAero_mode_()Lorg/light/lightAssetKit/enums/kSoftbodyAeroMode;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->aero_mode_:Lorg/light/lightAssetKit/enums/kSoftbodyAeroMode;

    return-object v0
.end method

.method public getAero_mode_enabled_()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->aero_mode_enabled_:Z

    return v0
.end method

.method public getAnchor_enabled_()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->anchor_enabled_:Z

    return v0
.end method

.method public getAnchor_lists_()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/SoftAnchorData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->anchor_lists_:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCfg_blend_constraint_strength_()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_blend_constraint_strength_:I

    return v0
.end method

.method public getCfg_drag_coefficient_()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_drag_coefficient_:F

    return v0
.end method

.method public getCfg_dynamic_friction_()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_dynamic_friction_:F

    return v0
.end method

.method public getCfg_lift_coefficient_()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_lift_coefficient_:F

    return v0
.end method

.method public getCfg_linear_damping_()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_linear_damping_:F

    return v0
.end method

.method public getCfg_material_linear_stiffness_()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_material_linear_stiffness_:F

    return v0
.end method

.method public getCfg_pressure_()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_pressure_:F

    return v0
.end method

.method public getCollision_filter_enabled_()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_filter_enabled_:Z

    return v0
.end method

.method public getCollision_filter_group_()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_filter_group_:I

    return v0
.end method

.method public getCollision_filter_mask_()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_filter_mask_:I

    return v0
.end method

.method public getCollision_margin_()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_margin_:F

    return v0
.end method

.method public getCollision_mode_()Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_mode_:Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    return-object v0
.end method

.method public getEmit_collision_event_()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->emit_collision_event_:Z

    return v0
.end method

.method public getEnable_point_fuse_()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->enable_point_fuse_:Z

    return v0
.end method

.method public getNo_collision_objects_ids_()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->no_collision_objects_ids_:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPosition_solver_iterations_()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->position_solver_iterations_:I

    return v0
.end method

.method public getTotal_mass_()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->total_mass_:F

    return v0
.end method

.method public getVelocity_solver_iterations_()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->velocity_solver_iterations_:I

    return v0
.end method

.method public getWind_velocity_()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->wind_velocity_:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public setAero_mode_(Lorg/light/lightAssetKit/enums/kSoftbodyAeroMode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->aero_mode_:Lorg/light/lightAssetKit/enums/kSoftbodyAeroMode;

    const-string v0, "aero_mode_"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAero_mode_enabled_(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->aero_mode_enabled_:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "aero_mode_enabled_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAnchor_enabled_(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->anchor_enabled_:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "anchor_enabled_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setAnchor_lists_(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/SoftAnchorData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->anchor_lists_:Ljava/util/ArrayList;

    const-string v0, "anchor_lists_"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCfg_blend_constraint_strength_(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_blend_constraint_strength_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "cfg_blend_constraint_strength_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCfg_drag_coefficient_(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_drag_coefficient_:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "cfg_drag_coefficient_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCfg_dynamic_friction_(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_dynamic_friction_:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "cfg_dynamic_friction_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCfg_lift_coefficient_(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_lift_coefficient_:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "cfg_lift_coefficient_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCfg_linear_damping_(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_linear_damping_:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "cfg_linear_damping_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCfg_material_linear_stiffness_(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_material_linear_stiffness_:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "cfg_material_linear_stiffness_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCfg_pressure_(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->cfg_pressure_:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "cfg_pressure_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCollision_filter_enabled_(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_filter_enabled_:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "collision_filter_enabled_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCollision_filter_group_(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_filter_group_:I

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
    iput p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_filter_mask_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "collision_filter_mask_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCollision_margin_(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_margin_:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "collision_margin_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCollision_mode_(Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->collision_mode_:Lorg/light/lightAssetKit/enums/kSoftbodyCollisionMode;

    const-string v0, "collision_mode_"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEmit_collision_event_(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->emit_collision_event_:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "emit_collision_event_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnable_point_fuse_(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->enable_point_fuse_:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enable_point_fuse_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setNo_collision_objects_ids_(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->no_collision_objects_ids_:Ljava/util/ArrayList;

    const-string v0, "no_collision_objects_ids_"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPosition_solver_iterations_(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->position_solver_iterations_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "position_solver_iterations_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTotal_mass_(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->total_mass_:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "total_mass_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVelocity_solver_iterations_(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->velocity_solver_iterations_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "velocity_solver_iterations_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWind_velocity_(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/DynamicSoftbody3DComponent;->wind_velocity_:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "wind_velocity_"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "DynamicSoftbody3DComponent"

    return-object v0
.end method
