.class public Lorg/light/lightAssetKit/components/MakeupEyebrowV6;
.super Lorg/light/lightAssetKit/components/MakeupComponent;
.source "SourceFile"


# instance fields
.field private cropRect:Lorg/light/lightAssetKit/components/Rect;

.field private eyebrowCropImageName:Ljava/lang/String;

.field private eyebrowImageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/MakeupComponent;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;->eyebrowImageName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;->eyebrowCropImageName:Ljava/lang/String;

    .line 4
    new-instance v0, Lorg/light/lightAssetKit/components/Rect;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Rect;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;->cropRect:Lorg/light/lightAssetKit/components/Rect;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;->eyebrowImageName:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;->eyebrowImageName:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;->eyebrowCropImageName:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;->eyebrowCropImageName:Ljava/lang/String;

    .line 5
    iget-object v0, v0, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;->cropRect:Lorg/light/lightAssetKit/components/Rect;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;->cropRect:Lorg/light/lightAssetKit/components/Rect;

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/MakeupComponent;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getCropRect()Lorg/light/lightAssetKit/components/Rect;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;->cropRect:Lorg/light/lightAssetKit/components/Rect;

    return-object v0
.end method

.method public getEyebrowCropImageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;->eyebrowCropImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getEyebrowImageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;->eyebrowImageName:Ljava/lang/String;

    return-object v0
.end method

.method public setCropRect(Lorg/light/lightAssetKit/components/Rect;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;->cropRect:Lorg/light/lightAssetKit/components/Rect;

    const-string v0, "cropRect"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEyebrowCropImageName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;->eyebrowCropImageName:Ljava/lang/String;

    const-string v0, "eyebrowCropImageName"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setEyebrowImageName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupEyebrowV6;->eyebrowImageName:Ljava/lang/String;

    const-string v0, "eyebrowImageName"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "MakeupEyebrowV6"

    return-object v0
.end method
