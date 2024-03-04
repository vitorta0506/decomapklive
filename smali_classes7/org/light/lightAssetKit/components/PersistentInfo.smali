.class public Lorg/light/lightAssetKit/components/PersistentInfo;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private render_size_height_:I

.field private render_size_width_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/PersistentInfo;->render_size_width_:I

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/PersistentInfo;->render_size_height_:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/PersistentInfo;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/PersistentInfo;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/PersistentInfo;->render_size_width_:I

    iput v1, p0, Lorg/light/lightAssetKit/components/PersistentInfo;->render_size_width_:I

    .line 4
    iget v0, v0, Lorg/light/lightAssetKit/components/PersistentInfo;->render_size_height_:I

    iput v0, p0, Lorg/light/lightAssetKit/components/PersistentInfo;->render_size_height_:I

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getRender_size_height_()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/PersistentInfo;->render_size_height_:I

    return v0
.end method

.method public getRender_size_width_()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/PersistentInfo;->render_size_width_:I

    return v0
.end method

.method public setRender_size_height_(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/PersistentInfo;->render_size_height_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "render_size_height_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setRender_size_width_(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/PersistentInfo;->render_size_width_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "render_size_width_"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "PersistentInfo"

    return-object v0
.end method
