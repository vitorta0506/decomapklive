.class public Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private angular_impulse_:Lorg/light/lightAssetKit/components/Vec3;

.field private force_:Lorg/light/lightAssetKit/components/Vec3;

.field private independent_gravity_:Lorg/light/lightAssetKit/components/Vec3;

.field private independent_gravity_enabled_:Z

.field private linear_impulse_:Lorg/light/lightAssetKit/components/Vec3;

.field private torque_:Lorg/light/lightAssetKit/components/Vec3;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->independent_gravity_:Lorg/light/lightAssetKit/components/Vec3;

    .line 3
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->force_:Lorg/light/lightAssetKit/components/Vec3;

    .line 4
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->torque_:Lorg/light/lightAssetKit/components/Vec3;

    .line 5
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->linear_impulse_:Lorg/light/lightAssetKit/components/Vec3;

    .line 6
    new-instance v0, Lorg/light/lightAssetKit/components/Vec3;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Vec3;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->angular_impulse_:Lorg/light/lightAssetKit/components/Vec3;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;

    .line 3
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->independent_gravity_enabled_:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->independent_gravity_enabled_:Z

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->independent_gravity_:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->independent_gravity_:Lorg/light/lightAssetKit/components/Vec3;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->force_:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->force_:Lorg/light/lightAssetKit/components/Vec3;

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->torque_:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->torque_:Lorg/light/lightAssetKit/components/Vec3;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->linear_impulse_:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->linear_impulse_:Lorg/light/lightAssetKit/components/Vec3;

    .line 8
    iget-object v0, v0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->angular_impulse_:Lorg/light/lightAssetKit/components/Vec3;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->angular_impulse_:Lorg/light/lightAssetKit/components/Vec3;

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAngular_impulse_()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->angular_impulse_:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public getForce_()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->force_:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public getIndependent_gravity_()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->independent_gravity_:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public getIndependent_gravity_enabled_()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->independent_gravity_enabled_:Z

    return v0
.end method

.method public getLinear_impulse_()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->linear_impulse_:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public getTorque_()Lorg/light/lightAssetKit/components/Vec3;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->torque_:Lorg/light/lightAssetKit/components/Vec3;

    return-object v0
.end method

.method public setAngular_impulse_(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->angular_impulse_:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "angular_impulse_"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setForce_(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->force_:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "force_"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIndependent_gravity_(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->independent_gravity_:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "independent_gravity_"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIndependent_gravity_enabled_(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->independent_gravity_enabled_:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "independent_gravity_enabled_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLinear_impulse_(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->linear_impulse_:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "linear_impulse_"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTorque_(Lorg/light/lightAssetKit/components/Vec3;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/RigidDynamicProperty3DComponent;->torque_:Lorg/light/lightAssetKit/components/Vec3;

    const-string v0, "torque_"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "RigidDynamicProperty3DComponent"

    return-object v0
.end method
