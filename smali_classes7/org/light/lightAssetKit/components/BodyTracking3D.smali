.class public Lorg/light/lightAssetKit/components/BodyTracking3D;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private directionalScale:Z

.field private firstKeyPointName:Ljava/lang/String;

.field private followEntityId:I

.field private followSpin:Z

.field private secondKeyPointName:Ljava/lang/String;

.field private smoothLevel:F

.field private syncSpin:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->followEntityId:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->firstKeyPointName:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->secondKeyPointName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;FZZZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 6
    iput p1, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->followEntityId:I

    .line 7
    iput-object p2, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->firstKeyPointName:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->secondKeyPointName:Ljava/lang/String;

    .line 9
    iput p4, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->smoothLevel:F

    .line 10
    iput-boolean p5, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->followSpin:Z

    .line 11
    iput-boolean p6, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->syncSpin:Z

    .line 12
    iput-boolean p7, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->directionalScale:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/BodyTracking3D;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/BodyTracking3D;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/BodyTracking3D;->followEntityId:I

    iput v1, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->followEntityId:I

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BodyTracking3D;->firstKeyPointName:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->firstKeyPointName:Ljava/lang/String;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/BodyTracking3D;->secondKeyPointName:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->secondKeyPointName:Ljava/lang/String;

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/BodyTracking3D;->smoothLevel:F

    iput v1, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->smoothLevel:F

    .line 7
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/BodyTracking3D;->followSpin:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->followSpin:Z

    .line 8
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/BodyTracking3D;->syncSpin:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->syncSpin:Z

    .line 9
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/BodyTracking3D;->directionalScale:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->directionalScale:Z

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getDirectionalScale()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->directionalScale:Z

    return v0
.end method

.method public getFirstKeyPointName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->firstKeyPointName:Ljava/lang/String;

    return-object v0
.end method

.method public getFollowEntityId()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->followEntityId:I

    return v0
.end method

.method public getFollowSpin()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->followSpin:Z

    return v0
.end method

.method public getSecondKeyPointName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->secondKeyPointName:Ljava/lang/String;

    return-object v0
.end method

.method public getSmoothLevel()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->smoothLevel:F

    return v0
.end method

.method public getSyncSpin()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->syncSpin:Z

    return v0
.end method

.method public setDirectionalScale(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->directionalScale:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "directionalScale"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFirstKeyPointName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->firstKeyPointName:Ljava/lang/String;

    const-string v0, "firstKeyPointName"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFollowEntityId(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->followEntityId:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "followEntityId"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFollowSpin(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->followSpin:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "followSpin"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSecondKeyPointName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->secondKeyPointName:Ljava/lang/String;

    const-string v0, "secondKeyPointName"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSmoothLevel(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->smoothLevel:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "smoothLevel"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSyncSpin(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/BodyTracking3D;->syncSpin:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "syncSpin"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "BodyTracking3D"

    return-object v0
.end method
