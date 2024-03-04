.class public Lorg/light/lightAssetKit/components/MakeupLipsV6;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private glossColor:Ljava/lang/String;

.field private glossStrength:F

.field private lipsColor:Ljava/lang/String;

.field private lipsDetailType:Lorg/light/lightAssetKit/enums/LipsDetailType;

.field private lipsImage:Ljava/lang/String;

.field private lipsImageCrop:Ljava/lang/String;

.field private lipsImageCropRect:Lorg/light/lightAssetKit/components/Rect;

.field private lipsLut:Ljava/lang/String;

.field private lipsMask:Ljava/lang/String;

.field private lipsMaskCrop:Ljava/lang/String;

.field private lipsMaskCropRect:Lorg/light/lightAssetKit/components/Rect;

.field private lipsTextureType:Lorg/light/lightAssetKit/enums/LipsTextureType;

.field private lipsType:Lorg/light/lightAssetKit/enums/LipsType;

.field private minVisibility:F

.field private shimmerColor:Ljava/lang/String;

.field private shimmerStrength:F

.field private shimmerTextureDefault:Ljava/lang/String;

.field private shimmerTextureUser:Ljava/lang/String;

.field private visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsMask:Ljava/lang/String;

    .line 3
    sget-object v1, Lorg/light/lightAssetKit/enums/LipsType;->Color:Lorg/light/lightAssetKit/enums/LipsType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsType:Lorg/light/lightAssetKit/enums/LipsType;

    .line 4
    sget-object v1, Lorg/light/lightAssetKit/enums/LipsDetailType;->Default:Lorg/light/lightAssetKit/enums/LipsDetailType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsDetailType:Lorg/light/lightAssetKit/enums/LipsDetailType;

    .line 5
    sget-object v1, Lorg/light/lightAssetKit/enums/LipsTextureType;->Default:Lorg/light/lightAssetKit/enums/LipsTextureType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsTextureType:Lorg/light/lightAssetKit/enums/LipsTextureType;

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerColor:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->glossColor:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsLut:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsColor:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsImage:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsImageCrop:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsMaskCrop:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerTextureDefault:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerTextureUser:Ljava/lang/String;

    .line 15
    new-instance v0, Lorg/light/lightAssetKit/components/Rect;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Rect;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsImageCropRect:Lorg/light/lightAssetKit/components/Rect;

    .line 16
    new-instance v0, Lorg/light/lightAssetKit/components/Rect;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/Rect;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsMaskCropRect:Lorg/light/lightAssetKit/components/Rect;

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->glossStrength:F

    .line 18
    iput v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerStrength:F

    .line 19
    sget-object v0, Lorg/light/lightAssetKit/enums/MakeupVisMethod;->Default:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    const v0, 0x3f4ccccd    # 0.8f

    .line 20
    iput v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->minVisibility:F

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/MakeupLipsV6;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsMask:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsMask:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsType:Lorg/light/lightAssetKit/enums/LipsType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsType:Lorg/light/lightAssetKit/enums/LipsType;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsDetailType:Lorg/light/lightAssetKit/enums/LipsDetailType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsDetailType:Lorg/light/lightAssetKit/enums/LipsDetailType;

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsTextureType:Lorg/light/lightAssetKit/enums/LipsTextureType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsTextureType:Lorg/light/lightAssetKit/enums/LipsTextureType;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerColor:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerColor:Ljava/lang/String;

    .line 8
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->glossColor:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->glossColor:Ljava/lang/String;

    .line 9
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsLut:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsLut:Ljava/lang/String;

    .line 10
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsColor:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsColor:Ljava/lang/String;

    .line 11
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsImage:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsImage:Ljava/lang/String;

    .line 12
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsImageCrop:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsImageCrop:Ljava/lang/String;

    .line 13
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsMaskCrop:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsMaskCrop:Ljava/lang/String;

    .line 14
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerTextureDefault:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerTextureDefault:Ljava/lang/String;

    .line 15
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerTextureUser:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerTextureUser:Ljava/lang/String;

    .line 16
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsImageCropRect:Lorg/light/lightAssetKit/components/Rect;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsImageCropRect:Lorg/light/lightAssetKit/components/Rect;

    .line 17
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsMaskCropRect:Lorg/light/lightAssetKit/components/Rect;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsMaskCropRect:Lorg/light/lightAssetKit/components/Rect;

    .line 18
    iget v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->glossStrength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->glossStrength:F

    .line 19
    iget v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerStrength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerStrength:F

    .line 20
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    .line 21
    iget v0, v0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->minVisibility:F

    iput v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->minVisibility:F

    .line 22
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getGlossColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->glossColor:Ljava/lang/String;

    return-object v0
.end method

.method public getGlossStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->glossStrength:F

    return v0
.end method

.method public getLipsColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsColor:Ljava/lang/String;

    return-object v0
.end method

.method public getLipsDetailType()Lorg/light/lightAssetKit/enums/LipsDetailType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsDetailType:Lorg/light/lightAssetKit/enums/LipsDetailType;

    return-object v0
.end method

.method public getLipsImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsImage:Ljava/lang/String;

    return-object v0
.end method

.method public getLipsImageCrop()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsImageCrop:Ljava/lang/String;

    return-object v0
.end method

.method public getLipsImageCropRect()Lorg/light/lightAssetKit/components/Rect;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsImageCropRect:Lorg/light/lightAssetKit/components/Rect;

    return-object v0
.end method

.method public getLipsLut()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsLut:Ljava/lang/String;

    return-object v0
.end method

.method public getLipsMask()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsMask:Ljava/lang/String;

    return-object v0
.end method

.method public getLipsMaskCrop()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsMaskCrop:Ljava/lang/String;

    return-object v0
.end method

.method public getLipsMaskCropRect()Lorg/light/lightAssetKit/components/Rect;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsMaskCropRect:Lorg/light/lightAssetKit/components/Rect;

    return-object v0
.end method

.method public getLipsTextureType()Lorg/light/lightAssetKit/enums/LipsTextureType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsTextureType:Lorg/light/lightAssetKit/enums/LipsTextureType;

    return-object v0
.end method

.method public getLipsType()Lorg/light/lightAssetKit/enums/LipsType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsType:Lorg/light/lightAssetKit/enums/LipsType;

    return-object v0
.end method

.method public getMinVisibility()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->minVisibility:F

    return v0
.end method

.method public getShimmerColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerColor:Ljava/lang/String;

    return-object v0
.end method

.method public getShimmerStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerStrength:F

    return v0
.end method

.method public getShimmerTextureDefault()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerTextureDefault:Ljava/lang/String;

    return-object v0
.end method

.method public getShimmerTextureUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerTextureUser:Ljava/lang/String;

    return-object v0
.end method

.method public getVisMethod()Lorg/light/lightAssetKit/enums/MakeupVisMethod;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    return-object v0
.end method

.method public setGlossColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->glossColor:Ljava/lang/String;

    const-string v0, "glossColor"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setGlossStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->glossStrength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "glossStrength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsColor:Ljava/lang/String;

    const-string v0, "lipsColor"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsDetailType(Lorg/light/lightAssetKit/enums/LipsDetailType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsDetailType:Lorg/light/lightAssetKit/enums/LipsDetailType;

    const-string v0, "lipsDetailType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsImage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsImage:Ljava/lang/String;

    const-string v0, "lipsImage"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsImageCrop(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsImageCrop:Ljava/lang/String;

    const-string v0, "lipsImageCrop"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsImageCropRect(Lorg/light/lightAssetKit/components/Rect;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsImageCropRect:Lorg/light/lightAssetKit/components/Rect;

    const-string v0, "lipsImageCropRect"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsLut(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsLut:Ljava/lang/String;

    const-string v0, "lipsLut"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsMask(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsMask:Ljava/lang/String;

    const-string v0, "lipsMask"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsMaskCrop(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsMaskCrop:Ljava/lang/String;

    const-string v0, "lipsMaskCrop"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsMaskCropRect(Lorg/light/lightAssetKit/components/Rect;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsMaskCropRect:Lorg/light/lightAssetKit/components/Rect;

    const-string v0, "lipsMaskCropRect"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsTextureType(Lorg/light/lightAssetKit/enums/LipsTextureType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsTextureType:Lorg/light/lightAssetKit/enums/LipsTextureType;

    const-string v0, "lipsTextureType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsType(Lorg/light/lightAssetKit/enums/LipsType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->lipsType:Lorg/light/lightAssetKit/enums/LipsType;

    const-string v0, "lipsType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMinVisibility(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->minVisibility:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "minVisibility"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setShimmerColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerColor:Ljava/lang/String;

    const-string v0, "shimmerColor"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setShimmerStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerStrength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "shimmerStrength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setShimmerTextureDefault(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerTextureDefault:Ljava/lang/String;

    const-string v0, "shimmerTextureDefault"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setShimmerTextureUser(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->shimmerTextureUser:Ljava/lang/String;

    const-string v0, "shimmerTextureUser"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVisMethod(Lorg/light/lightAssetKit/enums/MakeupVisMethod;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLipsV6;->visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    const-string v0, "visMethod"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "MakeupLipsV6"

    return-object v0
.end method
