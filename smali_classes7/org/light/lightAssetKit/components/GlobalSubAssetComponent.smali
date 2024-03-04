.class public Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private globalSubAssetSizeType:Lorg/light/lightAssetKit/enums/GlobalSubAssetSizeType;

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->width:I

    .line 3
    iput v0, p0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->height:I

    return-void
.end method

.method public constructor <init>(Lorg/light/lightAssetKit/enums/GlobalSubAssetSizeType;II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->globalSubAssetSizeType:Lorg/light/lightAssetKit/enums/GlobalSubAssetSizeType;

    .line 6
    iput p2, p0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->width:I

    .line 7
    iput p3, p0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->height:I

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->globalSubAssetSizeType:Lorg/light/lightAssetKit/enums/GlobalSubAssetSizeType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->globalSubAssetSizeType:Lorg/light/lightAssetKit/enums/GlobalSubAssetSizeType;

    .line 4
    iget v1, v0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->width:I

    iput v1, p0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->width:I

    .line 5
    iget v0, v0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->height:I

    iput v0, p0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->height:I

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getGlobalSubAssetSizeType()Lorg/light/lightAssetKit/enums/GlobalSubAssetSizeType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->globalSubAssetSizeType:Lorg/light/lightAssetKit/enums/GlobalSubAssetSizeType;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->width:I

    return v0
.end method

.method public setGlobalSubAssetSizeType(Lorg/light/lightAssetKit/enums/GlobalSubAssetSizeType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->globalSubAssetSizeType:Lorg/light/lightAssetKit/enums/GlobalSubAssetSizeType;

    const-string v0, "globalSubAssetSizeType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->height:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "height"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWidth(I)V
    .locals 1

    .line 1
    iput p1, p0, Lorg/light/lightAssetKit/components/GlobalSubAssetComponent;->width:I

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "width"

    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "GlobalSubAssetComponent"

    return-object v0
.end method
