.class public Lorg/light/lightAssetKit/components/Liquefaction;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private boundaryFixMode:I

.field private resourcePath:Ljava/lang/String;

.field private shortFaceResourcePath:Ljava/lang/String;

.field private shortFaceStrength:F

.field private strength:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Liquefaction;->resourcePath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lorg/light/lightAssetKit/components/Liquefaction;->strength:F

    .line 4
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Liquefaction;->shortFaceResourcePath:Ljava/lang/String;

    .line 5
    iput v1, p0, Lorg/light/lightAssetKit/components/Liquefaction;->shortFaceStrength:F

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lorg/light/lightAssetKit/components/Liquefaction;->boundaryFixMode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FILjava/lang/String;F)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Liquefaction;->resourcePath:Ljava/lang/String;

    .line 9
    iput p2, p0, Lorg/light/lightAssetKit/components/Liquefaction;->strength:F

    .line 10
    iput p3, p0, Lorg/light/lightAssetKit/components/Liquefaction;->boundaryFixMode:I

    .line 11
    iput-object p4, p0, Lorg/light/lightAssetKit/components/Liquefaction;->shortFaceResourcePath:Ljava/lang/String;

    .line 12
    iput p5, p0, Lorg/light/lightAssetKit/components/Liquefaction;->shortFaceStrength:F

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Liquefaction;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Liquefaction;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Liquefaction;->resourcePath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Liquefaction;->resourcePath:Ljava/lang/String;

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/Liquefaction;->strength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Liquefaction;->strength:F

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Liquefaction;->shortFaceResourcePath:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Liquefaction;->shortFaceResourcePath:Ljava/lang/String;

    .line 6
    iget v1, v0, Lorg/light/lightAssetKit/components/Liquefaction;->shortFaceStrength:F

    iput v1, p0, Lorg/light/lightAssetKit/components/Liquefaction;->shortFaceStrength:F

    .line 7
    iget v0, v0, Lorg/light/lightAssetKit/components/Liquefaction;->boundaryFixMode:I

    iput v0, p0, Lorg/light/lightAssetKit/components/Liquefaction;->boundaryFixMode:I

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getBoundaryFixMode()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Liquefaction;->boundaryFixMode:I

    return v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Liquefaction;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getShortFaceResourcePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Liquefaction;->shortFaceResourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getShortFaceStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Liquefaction;->shortFaceStrength:F

    return v0
.end method

.method public getStrength()F
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Liquefaction;->strength:F

    return v0
.end method

.method public setBoundaryFixMode(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Liquefaction;->boundaryFixMode:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "boundaryFixMode"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setResourcePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Liquefaction;->resourcePath:Ljava/lang/String;

    const-string v0, "resourcePath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setShortFaceResourcePath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Liquefaction;->shortFaceResourcePath:Ljava/lang/String;

    const-string v0, "shortFaceResourcePath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setShortFaceStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Liquefaction;->shortFaceStrength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "shortFaceStrength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setStrength(F)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Liquefaction;->strength:F

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "strength"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Liquefaction"

    return-object v0
.end method
