.class public Lorg/light/lightAssetKit/components/FaceMeshComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private face_index_:I

.field private face_type_:I

.field private mappingPath:Ljava/lang/String;

.field private useMesh:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->face_index_:I

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->face_type_:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->mappingPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/FaceMeshComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/FaceMeshComponent;

    .line 3
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->useMesh:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->useMesh:Z

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->face_index_:I

    iput v1, p0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->face_index_:I

    .line 5
    iget v1, v0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->face_type_:I

    iput v1, p0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->face_type_:I

    .line 6
    iget-object v0, v0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->mappingPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->mappingPath:Ljava/lang/String;

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getFace_index_()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->face_index_:I

    return v0
.end method

.method public getFace_type_()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->face_type_:I

    return v0
.end method

.method public getMappingPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->mappingPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUseMesh()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->useMesh:Z

    return v0
.end method

.method public setFace_index_(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->face_index_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "face_index_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFace_type_(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->face_type_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "face_type_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMappingPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->mappingPath:Ljava/lang/String;

    const-string v0, "mappingPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUseMesh(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/FaceMeshComponent;->useMesh:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "useMesh"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "FaceMeshComponent"

    return-object v0
.end method
