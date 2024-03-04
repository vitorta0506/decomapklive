.class public Lorg/light/lightAssetKit/components/RandomGroup;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private randomType:Lorg/light/lightAssetKit/enums/RandomType;

.field private selections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private weights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    sget-object v0, Lorg/light/lightAssetKit/enums/RandomType;->Random:Lorg/light/lightAssetKit/enums/RandomType;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/RandomGroup;->randomType:Lorg/light/lightAssetKit/enums/RandomType;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/RandomGroup;->weights:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/RandomGroup;->selections:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/RandomGroup;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/RandomGroup;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/RandomGroup;->randomType:Lorg/light/lightAssetKit/enums/RandomType;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/RandomGroup;->randomType:Lorg/light/lightAssetKit/enums/RandomType;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/RandomGroup;->weights:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/RandomGroup;->weights:Ljava/util/ArrayList;

    .line 5
    iget-object v0, v0, Lorg/light/lightAssetKit/components/RandomGroup;->selections:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/RandomGroup;->selections:Ljava/util/ArrayList;

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getRandomType()Lorg/light/lightAssetKit/enums/RandomType;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/RandomGroup;->randomType:Lorg/light/lightAssetKit/enums/RandomType;

    return-object v0
.end method

.method public getSelections()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/RandomGroup;->selections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWeights()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/RandomGroup;->weights:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setRandomType(Lorg/light/lightAssetKit/enums/RandomType;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/RandomGroup;->randomType:Lorg/light/lightAssetKit/enums/RandomType;

    const-string v0, "randomType"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSelections(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/RandomGroup;->selections:Ljava/util/ArrayList;

    const-string v0, "selections"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setWeights(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/RandomGroup;->weights:Ljava/util/ArrayList;

    const-string v0, "weights"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "RandomGroup"

    return-object v0
.end method
