.class public Lorg/light/lightAssetKit/components/Face3DMeshComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private faceIndex:I

.field private faceType:Lorg/light/lightAssetKit/enums/Face3DMeshType;

.field private indexPath:Ljava/lang/String;

.field private updateNormal:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->faceIndex:I

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->updateNormal:Z

    .line 4
    sget-object v0, Lorg/light/lightAssetKit/enums/Face3DMeshType;->HEAD:Lorg/light/lightAssetKit/enums/Face3DMeshType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->faceType:Lorg/light/lightAssetKit/enums/Face3DMeshType;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->indexPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Face3DMeshComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->faceIndex:I

    iput v1, p0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->faceIndex:I

    .line 4
    iget-boolean v1, v0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->updateNormal:Z

    iput-boolean v1, p0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->updateNormal:Z

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->faceType:Lorg/light/lightAssetKit/enums/Face3DMeshType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->faceType:Lorg/light/lightAssetKit/enums/Face3DMeshType;

    .line 6
    iget-object v0, v0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->indexPath:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->indexPath:Ljava/lang/String;

    .line 7
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getFaceIndex()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->faceIndex:I

    return v0
.end method

.method public getFaceType()Lorg/light/lightAssetKit/enums/Face3DMeshType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->faceType:Lorg/light/lightAssetKit/enums/Face3DMeshType;

    return-object v0
.end method

.method public getIndexPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->indexPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateNormal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->updateNormal:Z

    return v0
.end method

.method public setFaceIndex(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->faceIndex:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "faceIndex"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFaceType(Lorg/light/lightAssetKit/enums/Face3DMeshType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->faceType:Lorg/light/lightAssetKit/enums/Face3DMeshType;

    const-string v0, "faceType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setIndexPath(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->indexPath:Ljava/lang/String;

    const-string v0, "indexPath"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setUpdateNormal(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lorg/light/lightAssetKit/components/Face3DMeshComponent;->updateNormal:Z

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "updateNormal"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Face3DMeshComponent"

    return-object v0
.end method
