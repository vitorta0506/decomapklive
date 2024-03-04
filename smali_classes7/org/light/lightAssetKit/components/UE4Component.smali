.class public Lorg/light/lightAssetKit/components/UE4Component;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private animojiType:Lorg/light/lightAssetKit/enums/AnimojiType;

.field private configPath:Ljava/lang/String;

.field private delayRenderFrames:I

.field private enableHandMode:Z

.field private exitPakPath:Ljava/lang/String;

.field private forceRender:Z

.field private halfBodyMode:Ljava/lang/String;

.field private headRotationType:Lorg/light/lightAssetKit/enums/HeadRotationType;

.field private horizontalFOV:F

.field private isAbilityBodyDriveNeeded:Z

.field private isAbilityExpressionNeeded:Z

.field private isAbilityFaceTrackNeeded:Z

.field private isAbilitySlamARNeeded:Z

.field private loginTimeOut:I

.field private pakPath:Ljava/lang/String;

.field private visiableWithoutFace:Z

.field private workMode:Lorg/light/lightAssetKit/enums/WorkMode;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->horizontalFOV:F

    .line 3
    sget-object v0, Lorg/light/lightAssetKit/enums/WorkMode;->kZPlan:Lorg/light/lightAssetKit/enums/WorkMode;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->workMode:Lorg/light/lightAssetKit/enums/WorkMode;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->visiableWithoutFace:Z

    .line 5
    sget-object v1, Lorg/light/lightAssetKit/enums/AnimojiType;->kAnimojiTypeBlendShape:Lorg/light/lightAssetKit/enums/AnimojiType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->animojiType:Lorg/light/lightAssetKit/enums/AnimojiType;

    .line 6
    sget-object v1, Lorg/light/lightAssetKit/enums/HeadRotationType;->kHeadRotationType3DMM:Lorg/light/lightAssetKit/enums/HeadRotationType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->headRotationType:Lorg/light/lightAssetKit/enums/HeadRotationType;

    .line 7
    iput v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->delayRenderFrames:I

    .line 8
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->forceRender:Z

    const/16 v1, 0xa

    .line 9
    iput v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->loginTimeOut:I

    const-string v1, ""

    .line 10
    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->configPath:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->pakPath:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->exitPakPath:Ljava/lang/String;

    .line 13
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilitySlamARNeeded:Z

    .line 14
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilityFaceTrackNeeded:Z

    .line 15
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilityExpressionNeeded:Z

    .line 16
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilityBodyDriveNeeded:Z

    const-string v1, "FullBodyMode"

    .line 17
    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->halfBodyMode:Ljava/lang/String;

    .line 18
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->enableHandMode:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/UE4Component;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/UE4Component;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/UE4Component;->horizontalFOV:F

    iput v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->horizontalFOV:F

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/UE4Component;->workMode:Lorg/light/lightAssetKit/enums/WorkMode;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->workMode:Lorg/light/lightAssetKit/enums/WorkMode;

    .line 5
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/UE4Component;->visiableWithoutFace:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->visiableWithoutFace:Z

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/UE4Component;->animojiType:Lorg/light/lightAssetKit/enums/AnimojiType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->animojiType:Lorg/light/lightAssetKit/enums/AnimojiType;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/UE4Component;->headRotationType:Lorg/light/lightAssetKit/enums/HeadRotationType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->headRotationType:Lorg/light/lightAssetKit/enums/HeadRotationType;

    .line 8
    iget v1, v0, Lorg/light/lightAssetKit/components/UE4Component;->delayRenderFrames:I

    iput v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->delayRenderFrames:I

    .line 9
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/UE4Component;->forceRender:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->forceRender:Z

    .line 10
    iget v1, v0, Lorg/light/lightAssetKit/components/UE4Component;->loginTimeOut:I

    iput v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->loginTimeOut:I

    .line 11
    iget-object v1, v0, Lorg/light/lightAssetKit/components/UE4Component;->configPath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->configPath:Ljava/lang/String;

    .line 12
    iget-object v1, v0, Lorg/light/lightAssetKit/components/UE4Component;->pakPath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->pakPath:Ljava/lang/String;

    .line 13
    iget-object v1, v0, Lorg/light/lightAssetKit/components/UE4Component;->exitPakPath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->exitPakPath:Ljava/lang/String;

    .line 14
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilitySlamARNeeded:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilitySlamARNeeded:Z

    .line 15
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilityFaceTrackNeeded:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilityFaceTrackNeeded:Z

    .line 16
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilityExpressionNeeded:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilityExpressionNeeded:Z

    .line 17
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilityBodyDriveNeeded:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilityBodyDriveNeeded:Z

    .line 18
    iget-object v1, v0, Lorg/light/lightAssetKit/components/UE4Component;->halfBodyMode:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4Component;->halfBodyMode:Ljava/lang/String;

    .line 19
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/UE4Component;->enableHandMode:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->enableHandMode:Z

    .line 20
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAnimojiType()Lorg/light/lightAssetKit/enums/AnimojiType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->animojiType:Lorg/light/lightAssetKit/enums/AnimojiType;

    return-object v0
.end method

.method public getConfigPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->configPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDelayRenderFrames()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->delayRenderFrames:I

    return v0
.end method

.method public getEnableHandMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->enableHandMode:Z

    return v0
.end method

.method public getExitPakPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->exitPakPath:Ljava/lang/String;

    return-object v0
.end method

.method public getForceRender()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->forceRender:Z

    return v0
.end method

.method public getHalfBodyMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->halfBodyMode:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadRotationType()Lorg/light/lightAssetKit/enums/HeadRotationType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->headRotationType:Lorg/light/lightAssetKit/enums/HeadRotationType;

    return-object v0
.end method

.method public getHorizontalFOV()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->horizontalFOV:F

    return v0
.end method

.method public getIsAbilityBodyDriveNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilityBodyDriveNeeded:Z

    return v0
.end method

.method public getIsAbilityExpressionNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilityExpressionNeeded:Z

    return v0
.end method

.method public getIsAbilityFaceTrackNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilityFaceTrackNeeded:Z

    return v0
.end method

.method public getIsAbilitySlamARNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilitySlamARNeeded:Z

    return v0
.end method

.method public getLoginTimeOut()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->loginTimeOut:I

    return v0
.end method

.method public getPakPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->pakPath:Ljava/lang/String;

    return-object v0
.end method

.method public getVisiableWithoutFace()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->visiableWithoutFace:Z

    return v0
.end method

.method public getWorkMode()Lorg/light/lightAssetKit/enums/WorkMode;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UE4Component;->workMode:Lorg/light/lightAssetKit/enums/WorkMode;

    return-object v0
.end method

.method public setAnimojiType(Lorg/light/lightAssetKit/enums/AnimojiType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->animojiType:Lorg/light/lightAssetKit/enums/AnimojiType;

    const-string v0, "animojiType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setConfigPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->configPath:Ljava/lang/String;

    const-string v0, "configPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDelayRenderFrames(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->delayRenderFrames:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "delayRenderFrames"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEnableHandMode(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->enableHandMode:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "enableHandMode"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setExitPakPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->exitPakPath:Ljava/lang/String;

    const-string v0, "exitPakPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setForceRender(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->forceRender:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "forceRender"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHalfBodyMode(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->halfBodyMode:Ljava/lang/String;

    const-string v0, "halfBodyMode"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHeadRotationType(Lorg/light/lightAssetKit/enums/HeadRotationType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->headRotationType:Lorg/light/lightAssetKit/enums/HeadRotationType;

    const-string v0, "headRotationType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHorizontalFOV(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->horizontalFOV:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "horizontalFOV"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsAbilityBodyDriveNeeded(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilityBodyDriveNeeded:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isAbilityBodyDriveNeeded"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsAbilityExpressionNeeded(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilityExpressionNeeded:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isAbilityExpressionNeeded"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsAbilityFaceTrackNeeded(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilityFaceTrackNeeded:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isAbilityFaceTrackNeeded"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsAbilitySlamARNeeded(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->isAbilitySlamARNeeded:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isAbilitySlamARNeeded"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLoginTimeOut(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->loginTimeOut:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "loginTimeOut"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPakPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->pakPath:Ljava/lang/String;

    const-string v0, "pakPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVisiableWithoutFace(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->visiableWithoutFace:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "visiableWithoutFace"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWorkMode(Lorg/light/lightAssetKit/enums/WorkMode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UE4Component;->workMode:Lorg/light/lightAssetKit/enums/WorkMode;

    const-string v0, "workMode"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "UE4Component"

    return-object v0
.end method
