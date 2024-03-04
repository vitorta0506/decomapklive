.class public Lorg/light/lightAssetKit/components/PAGAsset;
.super Lorg/light/lightAssetKit/components/Component;
.source "SourceFile"


# instance fields
.field private layerScaleModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/LayerScaleMode;",
            ">;"
        }
    .end annotation
.end field

.field private musicID:Ljava/lang/String;

.field private replacement:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/ReplaceItem;",
            ">;"
        }
    .end annotation
.end field

.field private scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

.field private src:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/light/lightAssetKit/components/Component;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/PAGAsset;->replacement:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/PAGAsset;->layerScaleModes:Ljava/util/ArrayList;

    .line 4
    sget-object v0, Lorg/light/lightAssetKit/enums/PAGScaleMode;->LetterBox:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/PAGAsset;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lorg/light/lightAssetKit/components/PAGAsset;->musicID:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lorg/light/lightAssetKit/components/PAGAsset;->src:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/light/lightAssetKit/components/PAGAsset;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lorg/light/lightAssetKit/components/PAGAsset;

    .line 3
    iget-object v1, v0, Lorg/light/lightAssetKit/components/PAGAsset;->replacement:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/PAGAsset;->replacement:Ljava/util/ArrayList;

    .line 4
    iget-object v1, v0, Lorg/light/lightAssetKit/components/PAGAsset;->layerScaleModes:Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/PAGAsset;->layerScaleModes:Ljava/util/ArrayList;

    .line 5
    iget-object v1, v0, Lorg/light/lightAssetKit/components/PAGAsset;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/PAGAsset;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    .line 6
    iget-object v1, v0, Lorg/light/lightAssetKit/components/PAGAsset;->musicID:Ljava/lang/String;

    iput-object v1, p0, Lorg/light/lightAssetKit/components/PAGAsset;->musicID:Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lorg/light/lightAssetKit/components/PAGAsset;->src:Ljava/lang/String;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/PAGAsset;->src:Ljava/lang/String;

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lorg/light/lightAssetKit/components/Component;->doUpdate(Lorg/light/lightAssetKit/ComponentBase;)V

    return-void
.end method

.method public getLayerScaleModes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/LayerScaleMode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/PAGAsset;->layerScaleModes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMusicID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/PAGAsset;->musicID:Ljava/lang/String;

    return-object v0
.end method

.method public getReplacement()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/ReplaceItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/light/lightAssetKit/components/PAGAsset;->replacement:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getScaleMode()Lorg/light/lightAssetKit/enums/PAGScaleMode;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/PAGAsset;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/light/lightAssetKit/components/PAGAsset;->src:Ljava/lang/String;

    return-object v0
.end method

.method public setLayerScaleModes(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/LayerScaleMode;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/PAGAsset;->layerScaleModes:Ljava/util/ArrayList;

    const-string v0, "layerScaleModes"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setMusicID(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/PAGAsset;->musicID:Ljava/lang/String;

    const-string v0, "musicID"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setReplacement(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/light/lightAssetKit/components/ReplaceItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/PAGAsset;->replacement:Ljava/util/ArrayList;

    const-string v0, "replacement"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setScaleMode(Lorg/light/lightAssetKit/enums/PAGScaleMode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/PAGAsset;->scaleMode:Lorg/light/lightAssetKit/enums/PAGScaleMode;

    const-string v0, "scaleMode"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/light/lightAssetKit/components/PAGAsset;->src:Ljava/lang/String;

    const-string v0, "src"

    .line 2
    invoke-virtual {p0, v0, p1}, Lorg/light/lightAssetKit/ComponentBase;->reportPropertyChange(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1

    const-string v0, "PAGAsset"

    return-object v0
.end method
