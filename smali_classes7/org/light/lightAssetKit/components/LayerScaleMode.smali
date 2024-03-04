.class public Lorg/light/lightAssetKit/components/LayerScaleMode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public scaleLayerIndex:I

.field public scaleMode:Lorg/light/lightAssetKit/enums/ScaleMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/LayerScaleMode;->scaleLayerIndex:I

    .line 3
    sget-object v0, Lorg/light/lightAssetKit/enums/ScaleMode;->LetterBox:Lorg/light/lightAssetKit/enums/ScaleMode;

    iput-object v0, p0, Lorg/light/lightAssetKit/components/LayerScaleMode;->scaleMode:Lorg/light/lightAssetKit/enums/ScaleMode;

    return-void
.end method
