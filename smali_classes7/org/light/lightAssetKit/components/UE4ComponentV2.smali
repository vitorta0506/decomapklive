.class public Lorg/light/lightAssetKit/components/UE4ComponentV2;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private animojiType:Lorg/light/lightAssetKit/enums/AnimojiMode;

.field private bodyDriveMode:Lorg/light/lightAssetKit/enums/BodyMode;

.field private checkVersion:Z

.field private delayRenderFrames:I

.field private horizontalFOV:F

.field private isAbilityBodyDriveNeeded:Z

.field private isAbilityExpressionNeeded:Z

.field private isAbilityFaceTrackNeeded:Z

.field private isAbilityHandDriveNeeded:Z

.field private isAbilitySlamARNeeded:Z

.field private loginTimeOut:I

.field private openMapName:Ljava/lang/String;

.field private pakPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->pakPath:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->openMapName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->checkVersion:Z

    const/high16 v1, 0x41200000    # 10.0f

    .line 5
    iput v1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->horizontalFOV:F

    .line 6
    iput v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->delayRenderFrames:I

    .line 7
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilitySlamARNeeded:Z

    .line 8
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityFaceTrackNeeded:Z

    .line 9
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityExpressionNeeded:Z

    .line 10
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityBodyDriveNeeded:Z

    .line 11
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityHandDriveNeeded:Z

    .line 12
    sget-object v0, Lorg/light/lightAssetKit/enums/AnimojiMode;->kBlendShape:Lorg/light/lightAssetKit/enums/AnimojiMode;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->animojiType:Lorg/light/lightAssetKit/enums/AnimojiMode;

    .line 13
    sget-object v0, Lorg/light/lightAssetKit/enums/BodyMode;->kFullBody:Lorg/light/lightAssetKit/enums/BodyMode;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->bodyDriveMode:Lorg/light/lightAssetKit/enums/BodyMode;

    const/16 v0, 0xa

    .line 14
    iput v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->loginTimeOut:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/UE4ComponentV2;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/UE4ComponentV2;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->pakPath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->pakPath:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->openMapName:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->openMapName:Ljava/lang/String;

    .line 5
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->checkVersion:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->checkVersion:Z

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->horizontalFOV:F

    iput v1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->horizontalFOV:F

    .line 7
    iget v1, v0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->delayRenderFrames:I

    iput v1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->delayRenderFrames:I

    .line 8
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilitySlamARNeeded:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilitySlamARNeeded:Z

    .line 9
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityFaceTrackNeeded:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityFaceTrackNeeded:Z

    .line 10
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityExpressionNeeded:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityExpressionNeeded:Z

    .line 11
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityBodyDriveNeeded:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityBodyDriveNeeded:Z

    .line 12
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityHandDriveNeeded:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityHandDriveNeeded:Z

    .line 13
    iget-object v1, v0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->animojiType:Lorg/light/lightAssetKit/enums/AnimojiMode;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->animojiType:Lorg/light/lightAssetKit/enums/AnimojiMode;

    .line 14
    iget-object v1, v0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->bodyDriveMode:Lorg/light/lightAssetKit/enums/BodyMode;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->bodyDriveMode:Lorg/light/lightAssetKit/enums/BodyMode;

    .line 15
    iget v0, v0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->loginTimeOut:I

    iput v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->loginTimeOut:I

    .line 16
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getAnimojiType()Lorg/light/lightAssetKit/enums/AnimojiMode;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->animojiType:Lorg/light/lightAssetKit/enums/AnimojiMode;

    return-object v0
.end method

.method public getBodyDriveMode()Lorg/light/lightAssetKit/enums/BodyMode;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->bodyDriveMode:Lorg/light/lightAssetKit/enums/BodyMode;

    return-object v0
.end method

.method public getCheckVersion()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->checkVersion:Z

    return v0
.end method

.method public getDelayRenderFrames()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->delayRenderFrames:I

    return v0
.end method

.method public getHorizontalFOV()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->horizontalFOV:F

    return v0
.end method

.method public getIsAbilityBodyDriveNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityBodyDriveNeeded:Z

    return v0
.end method

.method public getIsAbilityExpressionNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityExpressionNeeded:Z

    return v0
.end method

.method public getIsAbilityFaceTrackNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityFaceTrackNeeded:Z

    return v0
.end method

.method public getIsAbilityHandDriveNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityHandDriveNeeded:Z

    return v0
.end method

.method public getIsAbilitySlamARNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilitySlamARNeeded:Z

    return v0
.end method

.method public getLoginTimeOut()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->loginTimeOut:I

    return v0
.end method

.method public getOpenMapName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->openMapName:Ljava/lang/String;

    return-object v0
.end method

.method public getPakPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->pakPath:Ljava/lang/String;

    return-object v0
.end method

.method public setAnimojiType(Lorg/light/lightAssetKit/enums/AnimojiMode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->animojiType:Lorg/light/lightAssetKit/enums/AnimojiMode;

    const-string v0, "animojiType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setBodyDriveMode(Lorg/light/lightAssetKit/enums/BodyMode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->bodyDriveMode:Lorg/light/lightAssetKit/enums/BodyMode;

    const-string v0, "bodyDriveMode"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCheckVersion(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->checkVersion:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "checkVersion"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDelayRenderFrames(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->delayRenderFrames:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "delayRenderFrames"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHorizontalFOV(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->horizontalFOV:F

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
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityBodyDriveNeeded:Z

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
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityExpressionNeeded:Z

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
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityFaceTrackNeeded:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isAbilityFaceTrackNeeded"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsAbilityHandDriveNeeded(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilityHandDriveNeeded:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "isAbilityHandDriveNeeded"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIsAbilitySlamARNeeded(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->isAbilitySlamARNeeded:Z

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
    iput p1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->loginTimeOut:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "loginTimeOut"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOpenMapName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->openMapName:Ljava/lang/String;

    const-string v0, "openMapName"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPakPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/UE4ComponentV2;->pakPath:Ljava/lang/String;

    const-string v0, "pakPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "UE4ComponentV2"

    return-object v0
.end method
