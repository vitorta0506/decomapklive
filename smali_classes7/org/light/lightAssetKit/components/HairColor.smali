.class public Lorg/light/lightAssetKit/components/HairColor;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private effectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/HairColorItem;",
            ">;"
        }
    .end annotation
.end field

.field private hairMask:Ljava/lang/String;

.field private yyMaskImage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/HairColor;->effectList:Ljava/util/ArrayList;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/HairColor;->hairMask:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lorg/light/lightAssetKit/components/HairColor;->yyMaskImage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/HairColorItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/light/lightAssetKit/components/HairColor;->effectList:Ljava/util/ArrayList;

    .line 8
    iput-object p2, p0, Lorg/light/lightAssetKit/components/HairColor;->hairMask:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lorg/light/lightAssetKit/components/HairColor;->yyMaskImage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/HairColor;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/HairColor;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/HairColor;->effectList:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/HairColor;->effectList:Ljava/util/ArrayList;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/HairColor;->hairMask:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/HairColor;->hairMask:Ljava/lang/String;

    .line 5
    iget-object v0, v0, Lorg/light/lightAssetKit/components/HairColor;->yyMaskImage:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/HairColor;->yyMaskImage:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getEffectList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/HairColorItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/HairColor;->effectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHairMask()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/HairColor;->hairMask:Ljava/lang/String;

    return-object v0
.end method

.method public getYyMaskImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/HairColor;->yyMaskImage:Ljava/lang/String;

    return-object v0
.end method

.method public setEffectList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/HairColorItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/HairColor;->effectList:Ljava/util/ArrayList;

    const-string v0, "effectList"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHairMask(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/HairColor;->hairMask:Ljava/lang/String;

    const-string v0, "hairMask"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setYyMaskImage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/HairColor;->yyMaskImage:Ljava/lang/String;

    const-string v0, "yyMaskImage"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "HairColor"

    return-object v0
.end method
