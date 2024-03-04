.class public Lorg/light/lightAssetKit/components/PinToMeshComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private pinDirectionVertexIndex:I

.field private pinPointVertexIndex:I

.field private pinToEntityId:I

.field private pinTriangleVertexIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinToEntityId:I

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinPointVertexIndex:I

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinDirectionVertexIndex:I

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinTriangleVertexIndex:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/PinToMeshComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/PinToMeshComponent;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinToEntityId:I

    iput v1, p0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinToEntityId:I

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinPointVertexIndex:I

    iput v1, p0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinPointVertexIndex:I

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinDirectionVertexIndex:I

    iput v1, p0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinDirectionVertexIndex:I

    .line 6
    iget v0, v0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinTriangleVertexIndex:I

    iput v0, p0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinTriangleVertexIndex:I

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getPinDirectionVertexIndex()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinDirectionVertexIndex:I

    return v0
.end method

.method public getPinPointVertexIndex()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinPointVertexIndex:I

    return v0
.end method

.method public getPinToEntityId()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinToEntityId:I

    return v0
.end method

.method public getPinTriangleVertexIndex()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinTriangleVertexIndex:I

    return v0
.end method

.method public setPinDirectionVertexIndex(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinDirectionVertexIndex:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "pinDirectionVertexIndex"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPinPointVertexIndex(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinPointVertexIndex:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "pinPointVertexIndex"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPinToEntityId(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinToEntityId:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "pinToEntityId"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setPinTriangleVertexIndex(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/PinToMeshComponent;->pinTriangleVertexIndex:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "pinTriangleVertexIndex"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "PinToMeshComponent"

    return-object v0
.end method
