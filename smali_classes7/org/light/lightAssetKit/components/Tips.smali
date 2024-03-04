.class public Lorg/light/lightAssetKit/components/Tips;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private image:Ljava/lang/String;

.field private tips:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Tips;->tips:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/Tips;->image:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Tips;->tips:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lorg/light/lightAssetKit/components/Tips;->image:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/Tips;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/Tips;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/Tips;->tips:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/Tips;->tips:Ljava/lang/String;

    .line 4
    iget-object v0, v0, Lorg/light/lightAssetKit/components/Tips;->image:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/Tips;->image:Ljava/lang/String;

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Tips;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getTips()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/Tips;->tips:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Tips;->image:Ljava/lang/String;

    const-string v0, "image"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/Tips;->tips:Ljava/lang/String;

    const-string v0, "tips"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "Tips"

    return-object v0
.end method
