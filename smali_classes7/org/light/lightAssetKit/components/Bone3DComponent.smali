.class public Lorg/light/lightAssetKit/components/Bone3DComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private bone_uuid_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/Bone3DComponent;->bone_uuid_:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Bone3DComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Bone3DComponent;

    .line 3
    iget v0, v0, Lorg/light/lightAssetKit/components/Bone3DComponent;->bone_uuid_:I

    iput v0, p0, Lorg/light/lightAssetKit/components/Bone3DComponent;->bone_uuid_:I

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getBone_uuid_()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/Bone3DComponent;->bone_uuid_:I

    return v0
.end method

.method public setBone_uuid_(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/Bone3DComponent;->bone_uuid_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "bone_uuid_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Bone3DComponent"

    return-object v0
.end method
