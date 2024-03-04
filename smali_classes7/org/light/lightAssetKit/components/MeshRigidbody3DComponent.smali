.class public Lorg/light/lightAssetKit/components/MeshRigidbody3DComponent;
.super Lorg/light/lightAssetKit/components/Rigidbody3DComponent;
.source "SourceFile"


# instance fields
.field private triangle_file_path_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/MeshRigidbody3DComponent;->triangle_file_path_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/MeshRigidbody3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/MeshRigidbody3DComponent;

    .line 3
    iget-object v0, v0, Lorg/light/lightAssetKit/components/MeshRigidbody3DComponent;->triangle_file_path_:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/MeshRigidbody3DComponent;->triangle_file_path_:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getTriangle_file_path_()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/MeshRigidbody3DComponent;->triangle_file_path_:Ljava/lang/String;

    return-object v0
.end method

.method public setTriangle_file_path_(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/MeshRigidbody3DComponent;->triangle_file_path_:Ljava/lang/String;

    const-string v0, "triangle_file_path_"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "MeshRigidbody3DComponent"

    return-object v0
.end method
