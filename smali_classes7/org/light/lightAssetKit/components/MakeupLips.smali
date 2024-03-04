.class public Lorg/light/lightAssetKit/components/MakeupLips;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private lipsColor:Ljava/lang/String;

.field private lipsImage:Ljava/lang/String;

.field private lipsLut:Ljava/lang/String;

.field private lipsMask:Ljava/lang/String;

.field private lipsType:Lorg/light/lightAssetKit/enums/LipsType;

.field private minVisibility:F

.field private visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsMask:Ljava/lang/String;

    .line 3
    sget-object v1, Lorg/light/lightAssetKit/enums/LipsType;->Color:Lorg/light/lightAssetKit/enums/LipsType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsType:Lorg/light/lightAssetKit/enums/LipsType;

    .line 4
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsLut:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsColor:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsImage:Ljava/lang/String;

    .line 7
    sget-object v0, Lorg/light/lightAssetKit/enums/MakeupVisMethod;->Default:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLips;->visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    const v0, 0x3f4ccccd    # 0.8f

    .line 8
    iput v0, p0, Lorg/light/lightAssetKit/components/MakeupLips;->minVisibility:F

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/MakeupLips;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/MakeupLips;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsMask:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsMask:Ljava/lang/String;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsType:Lorg/light/lightAssetKit/enums/LipsType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsType:Lorg/light/lightAssetKit/enums/LipsType;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsLut:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsLut:Ljava/lang/String;

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsColor:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsColor:Ljava/lang/String;

    .line 7
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsImage:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsImage:Ljava/lang/String;

    .line 8
    iget-object v1, v0, Lorg/light/lightAssetKit/components/MakeupLips;->visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/MakeupLips;->visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    .line 9
    iget v0, v0, Lorg/light/lightAssetKit/components/MakeupLips;->minVisibility:F

    iput v0, p0, Lorg/light/lightAssetKit/components/MakeupLips;->minVisibility:F

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getLipsColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsColor:Ljava/lang/String;

    return-object v0
.end method

.method public getLipsImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsImage:Ljava/lang/String;

    return-object v0
.end method

.method public getLipsLut()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsLut:Ljava/lang/String;

    return-object v0
.end method

.method public getLipsMask()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsMask:Ljava/lang/String;

    return-object v0
.end method

.method public getLipsType()Lorg/light/lightAssetKit/enums/LipsType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsType:Lorg/light/lightAssetKit/enums/LipsType;

    return-object v0
.end method

.method public getMinVisibility()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/MakeupLips;->minVisibility:F

    return v0
.end method

.method public getVisMethod()Lorg/light/lightAssetKit/enums/MakeupVisMethod;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MakeupLips;->visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    return-object v0
.end method

.method public setLipsColor(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsColor:Ljava/lang/String;

    const-string v0, "lipsColor"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsImage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsImage:Ljava/lang/String;

    const-string v0, "lipsImage"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsLut(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsLut:Ljava/lang/String;

    const-string v0, "lipsLut"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsMask(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsMask:Ljava/lang/String;

    const-string v0, "lipsMask"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setLipsType(Lorg/light/lightAssetKit/enums/LipsType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLips;->lipsType:Lorg/light/lightAssetKit/enums/LipsType;

    const-string v0, "lipsType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMinVisibility(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/MakeupLips;->minVisibility:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "minVisibility"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setVisMethod(Lorg/light/lightAssetKit/enums/MakeupVisMethod;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MakeupLips;->visMethod:Lorg/light/lightAssetKit/enums/MakeupVisMethod;

    const-string v0, "visMethod"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "MakeupLips"

    return-object v0
.end method
