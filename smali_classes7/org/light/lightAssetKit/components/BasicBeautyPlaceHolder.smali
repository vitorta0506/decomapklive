.class public Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private beautyStatus:I

.field private makeupStatus:I

.field private smoothStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;->smoothStatus:I

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;->beautyStatus:I

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;->makeupStatus:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;

    .line 3
    iget v1, v0, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;->smoothStatus:I

    iput v1, p0, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;->smoothStatus:I

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;->beautyStatus:I

    iput v1, p0, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;->beautyStatus:I

    .line 5
    iget v0, v0, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;->makeupStatus:I

    iput v0, p0, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;->makeupStatus:I

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getBeautyStatus()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;->beautyStatus:I

    return v0
.end method

.method public getMakeupStatus()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;->makeupStatus:I

    return v0
.end method

.method public getSmoothStatus()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;->smoothStatus:I

    return v0
.end method

.method public setBeautyStatus(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;->beautyStatus:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "beautyStatus"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMakeupStatus(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;->makeupStatus:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "makeupStatus"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSmoothStatus(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/BasicBeautyPlaceHolder;->smoothStatus:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "smoothStatus"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "BasicBeautyPlaceHolder"

    return-object v0
.end method
