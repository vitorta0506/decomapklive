.class public Lorg/light/lightAssetKit/components/MakeupFace;
.super Lorg/light/lightAssetKit/components/MakeupComponent;
.source "SourceFile"


# instance fields
.field private faceExchangeImageDisableFaceCrop:Z

.field private faceExchangeImageEnableOpacity:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/MakeupComponent;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/MakeupFace;->faceExchangeImageDisableFaceCrop:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/MakeupFace;->faceExchangeImageEnableOpacity:Z

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/MakeupFace;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/MakeupFace;

    .line 3
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/MakeupFace;->faceExchangeImageDisableFaceCrop:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/MakeupFace;->faceExchangeImageDisableFaceCrop:Z

    .line 4
    iget-boolean v0, v0, Lorg/light/lightAssetKit/components/MakeupFace;->faceExchangeImageEnableOpacity:Z

    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/MakeupFace;->faceExchangeImageEnableOpacity:Z

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/MakeupComponent;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getFaceExchangeImageDisableFaceCrop()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/MakeupFace;->faceExchangeImageDisableFaceCrop:Z

    return v0
.end method

.method public getFaceExchangeImageEnableOpacity()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/MakeupFace;->faceExchangeImageEnableOpacity:Z

    return v0
.end method

.method public setFaceExchangeImageDisableFaceCrop(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/MakeupFace;->faceExchangeImageDisableFaceCrop:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "faceExchangeImageDisableFaceCrop"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFaceExchangeImageEnableOpacity(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/MakeupFace;->faceExchangeImageEnableOpacity:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "faceExchangeImageEnableOpacity"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "MakeupFace"

    return-object v0
.end method
