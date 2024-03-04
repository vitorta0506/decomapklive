.class public Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private config_file:Ljava/lang/String;

.field private enable_cut_body_index:Z

.field private fireRenderTarget:Ljava/lang/String;

.field private long_leg:F

.field private long_leg_mesh:F

.field private maskResource:Ljava/lang/String;

.field private queue_size:I

.field private renderTarget:Ljava/lang/String;

.field private render_type:F

.field private slim_arm:F

.field private slim_arm_mesh:F

.field private slim_leg:F

.field private slim_leg_mesh:F

.field private slim_waist:F

.field private slim_waist_mesh:F

.field private smpl_model_file:Ljava/lang/String;

.field private use_gpu_inpainting:Z

.field private use_head_alg:Z

.field private x_offset_scale:F

.field private y_offset_scale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, "KEY_0.config.pr"

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->config_file:Ljava/lang/String;

    const-string v0, "spider_n_qs.bin"

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->smpl_model_file:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_waist_mesh:F

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->long_leg_mesh:F

    .line 6
    iput v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_arm_mesh:F

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_leg_mesh:F

    .line 8
    iput v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_waist:F

    .line 9
    iput v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->long_leg:F

    .line 10
    iput v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_arm:F

    .line 11
    iput v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_leg:F

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->maskResource:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->renderTarget:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->fireRenderTarget:Ljava/lang/String;

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->enable_cut_body_index:Z

    const/high16 v1, 0x41a00000    # 20.0f

    .line 16
    iput v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->x_offset_scale:F

    .line 17
    iput v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->y_offset_scale:F

    .line 18
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->use_gpu_inpainting:Z

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->render_type:F

    .line 20
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->use_head_alg:Z

    .line 21
    iput v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->queue_size:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->config_file:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->config_file:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->smpl_model_file:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->smpl_model_file:Ljava/lang/String;

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_waist_mesh:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_waist_mesh:F

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->long_leg_mesh:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->long_leg_mesh:F

    .line 7
    iget v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_arm_mesh:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_arm_mesh:F

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_leg_mesh:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_leg_mesh:F

    .line 9
    iget v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_waist:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_waist:F

    .line 10
    iget v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->long_leg:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->long_leg:F

    .line 11
    iget v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_arm:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_arm:F

    .line 12
    iget v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_leg:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_leg:F

    .line 13
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->maskResource:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->maskResource:Ljava/lang/String;

    .line 14
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->renderTarget:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->renderTarget:Ljava/lang/String;

    .line 15
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->fireRenderTarget:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->fireRenderTarget:Ljava/lang/String;

    .line 16
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->enable_cut_body_index:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->enable_cut_body_index:Z

    .line 17
    iget v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->x_offset_scale:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->x_offset_scale:F

    .line 18
    iget v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->y_offset_scale:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->y_offset_scale:F

    .line 19
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->use_gpu_inpainting:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->use_gpu_inpainting:Z

    .line 20
    iget v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->render_type:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->render_type:F

    .line 21
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->use_head_alg:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->use_head_alg:Z

    .line 22
    iget v0, v0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->queue_size:I

    iput v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->queue_size:I

    .line 23
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getConfig_file()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->config_file:Ljava/lang/String;

    return-object v0
.end method

.method public getEnable_cut_body_index()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->enable_cut_body_index:Z

    return v0
.end method

.method public getFireRenderTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->fireRenderTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getLong_leg()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->long_leg:F

    return v0
.end method

.method public getLong_leg_mesh()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->long_leg_mesh:F

    return v0
.end method

.method public getMaskResource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->maskResource:Ljava/lang/String;

    return-object v0
.end method

.method public getQueue_size()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->queue_size:I

    return v0
.end method

.method public getRenderTarget()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->renderTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getRender_type()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->render_type:F

    return v0
.end method

.method public getSlim_arm()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_arm:F

    return v0
.end method

.method public getSlim_arm_mesh()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_arm_mesh:F

    return v0
.end method

.method public getSlim_leg()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_leg:F

    return v0
.end method

.method public getSlim_leg_mesh()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_leg_mesh:F

    return v0
.end method

.method public getSlim_waist()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_waist:F

    return v0
.end method

.method public getSlim_waist_mesh()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_waist_mesh:F

    return v0
.end method

.method public getSmpl_model_file()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->smpl_model_file:Ljava/lang/String;

    return-object v0
.end method

.method public getUse_gpu_inpainting()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->use_gpu_inpainting:Z

    return v0
.end method

.method public getUse_head_alg()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->use_head_alg:Z

    return v0
.end method

.method public getX_offset_scale()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->x_offset_scale:F

    return v0
.end method

.method public getY_offset_scale()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->y_offset_scale:F

    return v0
.end method

.method public setConfig_file(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->config_file:Ljava/lang/String;

    const-string v0, "config_file"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnable_cut_body_index(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->enable_cut_body_index:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enable_cut_body_index"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFireRenderTarget(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->fireRenderTarget:Ljava/lang/String;

    const-string v0, "fireRenderTarget"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLong_leg(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->long_leg:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "long_leg"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLong_leg_mesh(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->long_leg_mesh:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "long_leg_mesh"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMaskResource(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->maskResource:Ljava/lang/String;

    const-string v0, "maskResource"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setQueue_size(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->queue_size:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "queue_size"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRenderTarget(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->renderTarget:Ljava/lang/String;

    const-string v0, "renderTarget"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRender_type(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->render_type:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "render_type"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSlim_arm(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_arm:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "slim_arm"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSlim_arm_mesh(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_arm_mesh:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "slim_arm_mesh"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSlim_leg(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_leg:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "slim_leg"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSlim_leg_mesh(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_leg_mesh:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "slim_leg_mesh"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSlim_waist(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_waist:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "slim_waist"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSlim_waist_mesh(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->slim_waist_mesh:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "slim_waist_mesh"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSmpl_model_file(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->smpl_model_file:Ljava/lang/String;

    const-string v0, "smpl_model_file"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUse_gpu_inpainting(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->use_gpu_inpainting:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "use_gpu_inpainting"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUse_head_alg(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->use_head_alg:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "use_head_alg"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setX_offset_scale(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->x_offset_scale:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "x_offset_scale"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setY_offset_scale(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BodySkeletonTrackingComponent;->y_offset_scale:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "y_offset_scale"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "BodySkeletonTrackingComponent"

    return-object v0
.end method
