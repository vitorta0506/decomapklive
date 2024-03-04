.class public Lorg/light/lightAssetKit/components/CompoundRigidbody3DComponent;
.super Lorg/light/lightAssetKit/components/Rigidbody3DComponent;
.source "SourceFile"


# instance fields
.field private shape_data_array_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/CollisionShapeData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/CompoundRigidbody3DComponent;->shape_data_array_:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/CompoundRigidbody3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/CompoundRigidbody3DComponent;

    .line 3
    iget-object v0, v0, Lorg/light/lightAssetKit/components/CompoundRigidbody3DComponent;->shape_data_array_:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/CompoundRigidbody3DComponent;->shape_data_array_:Ljava/util/ArrayList;

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Rigidbody3DComponent;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getShape_data_array_()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/CollisionShapeData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/CompoundRigidbody3DComponent;->shape_data_array_:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setShape_data_array_(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/CollisionShapeData;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/CompoundRigidbody3DComponent;->shape_data_array_:Ljava/util/ArrayList;

    const-string v0, "shape_data_array_"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "CompoundRigidbody3DComponent"

    return-object v0
.end method
