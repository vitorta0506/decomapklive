.class public Lorg/light/lightAssetKit/components/SnapOneShot;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private last_dt:I

.field private outTextureId:Ljava/lang/String;

.field private triggered:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/SnapOneShot;->outTextureId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/SnapOneShot;->triggered:Z

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/SnapOneShot;->last_dt:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/light/lightAssetKit/components/SnapOneShot;->outTextureId:Ljava/lang/String;

    .line 7
    iput-boolean p2, p0, Lorg/light/lightAssetKit/components/SnapOneShot;->triggered:Z

    .line 8
    iput p3, p0, Lorg/light/lightAssetKit/components/SnapOneShot;->last_dt:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/SnapOneShot;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/SnapOneShot;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/SnapOneShot;->outTextureId:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/SnapOneShot;->outTextureId:Ljava/lang/String;

    .line 4
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/SnapOneShot;->triggered:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/SnapOneShot;->triggered:Z

    .line 5
    iget v0, v0, Lorg/light/lightAssetKit/components/SnapOneShot;->last_dt:I

    iput v0, p0, Lorg/light/lightAssetKit/components/SnapOneShot;->last_dt:I

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getLast_dt()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/SnapOneShot;->last_dt:I

    return v0
.end method

.method public getOutTextureId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/SnapOneShot;->outTextureId:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggered()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/SnapOneShot;->triggered:Z

    return v0
.end method

.method public setLast_dt(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/SnapOneShot;->last_dt:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "last_dt"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setOutTextureId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/SnapOneShot;->outTextureId:Ljava/lang/String;

    const-string v0, "outTextureId"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTriggered(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/SnapOneShot;->triggered:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "triggered"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "SnapOneShot"

    return-object v0
.end method
