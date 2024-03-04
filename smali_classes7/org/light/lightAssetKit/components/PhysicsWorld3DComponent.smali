.class public Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private debug_draw_enabled_:Z

.field private detailed_configuration_enabled_:Z

.field private gravity_:Lorg/light/lightAssetKit/components/Vec3;

.field private internal_sub_step_:I

.field private physics_simulation_speed_:F

.field private physics_world_debug_draw_mode_:I

.field private soft_body_debug_draw_flag_:Lorg/light/lightAssetKit/enums/fDrawFlags;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->gravity_:Lorg/light/lightAssetKit/components/Vec3;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->detailed_configuration_enabled_:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->physics_simulation_speed_:F

    const/16 v1, 0x3c

    .line 5
    iput v1, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->internal_sub_step_:I

    .line 6
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->debug_draw_enabled_:Z

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->physics_world_debug_draw_mode_:I

    .line 8
    sget-object v0, Lorg/light/lightAssetKit/enums/fDrawFlags;->Std:Lorg/light/lightAssetKit/enums/fDrawFlags;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->soft_body_debug_draw_flag_:Lorg/light/lightAssetKit/enums/fDrawFlags;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->gravity_:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->gravity_:Lorg/light/lightAssetKit/components/Vec3;

    .line 4
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->detailed_configuration_enabled_:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->detailed_configuration_enabled_:Z

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->physics_simulation_speed_:F

    iput v1, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->physics_simulation_speed_:F

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->internal_sub_step_:I

    iput v1, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->internal_sub_step_:I

    .line 7
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->debug_draw_enabled_:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->debug_draw_enabled_:Z

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->physics_world_debug_draw_mode_:I

    iput v1, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->physics_world_debug_draw_mode_:I

    .line 9
    iget-object v0, v0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->soft_body_debug_draw_flag_:Lorg/light/lightAssetKit/enums/fDrawFlags;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->soft_body_debug_draw_flag_:Lorg/light/lightAssetKit/enums/fDrawFlags;

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getDebug_draw_enabled_()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->debug_draw_enabled_:Z

    return v0
.end method

.method public getDetailed_configuration_enabled_()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->detailed_configuration_enabled_:Z

    return v0
.end method

.method public getGravity_()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->gravity_:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public getInternal_sub_step_()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->internal_sub_step_:I

    return v0
.end method

.method public getPhysics_simulation_speed_()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->physics_simulation_speed_:F

    return v0
.end method

.method public getPhysics_world_debug_draw_mode_()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->physics_world_debug_draw_mode_:I

    return v0
.end method

.method public getSoft_body_debug_draw_flag_()Lorg/light/lightAssetKit/enums/fDrawFlags;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->soft_body_debug_draw_flag_:Lorg/light/lightAssetKit/enums/fDrawFlags;

    return-object v0
.end method

.method public setDebug_draw_enabled_(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->debug_draw_enabled_:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "debug_draw_enabled_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDetailed_configuration_enabled_(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->detailed_configuration_enabled_:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "detailed_configuration_enabled_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setGravity_(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->gravity_:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "gravity_"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setInternal_sub_step_(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->internal_sub_step_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "internal_sub_step_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPhysics_simulation_speed_(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->physics_simulation_speed_:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "physics_simulation_speed_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPhysics_world_debug_draw_mode_(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->physics_world_debug_draw_mode_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "physics_world_debug_draw_mode_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSoft_body_debug_draw_flag_(Lorg/light/lightAssetKit/enums/fDrawFlags;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/PhysicsWorld3DComponent;->soft_body_debug_draw_flag_:Lorg/light/lightAssetKit/enums/fDrawFlags;

    const-string v0, "soft_body_debug_draw_flag_"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "PhysicsWorld3DComponent"

    return-object v0
.end method
