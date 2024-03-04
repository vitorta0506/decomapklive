.class public Lorg/light/lightAssetKit/components/TextReplaceItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public applyStroke:Z

.field public backgroundAlpha:I

.field public backgroundColor:Ljava/lang/String;

.field public fauxBold:Z

.field public fauxItalic:Z

.field public fontFamily:Ljava/lang/String;

.field public fontStyle:Ljava/lang/String;

.field public justification:I

.field public layerHeight:F

.field public layerWidth:F

.field public leading:F

.field public strokeColor:Ljava/lang/String;

.field public strokeOverFill:Z

.field public strokeWidth:F

.field public textColor:Ljava/lang/String;

.field public tracking:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/TextReplaceItem;->fauxBold:Z

    .line 3
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/TextReplaceItem;->fauxItalic:Z

    const-string v1, ""

    .line 4
    iput-object v1, p0, Lorg/light/lightAssetKit/components/TextReplaceItem;->fontFamily:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lorg/light/lightAssetKit/components/TextReplaceItem;->fontStyle:Ljava/lang/String;

    .line 6
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/TextReplaceItem;->applyStroke:Z

    .line 7
    iput-object v1, p0, Lorg/light/lightAssetKit/components/TextReplaceItem;->strokeColor:Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    iput v2, p0, Lorg/light/lightAssetKit/components/TextReplaceItem;->strokeWidth:F

    const/4 v2, 0x0

    .line 9
    iput v2, p0, Lorg/light/lightAssetKit/components/TextReplaceItem;->leading:F

    .line 10
    iput v2, p0, Lorg/light/lightAssetKit/components/TextReplaceItem;->tracking:F

    .line 11
    iput-object v1, p0, Lorg/light/lightAssetKit/components/TextReplaceItem;->backgroundColor:Ljava/lang/String;

    .line 12
    iput v0, p0, Lorg/light/lightAssetKit/components/TextReplaceItem;->backgroundAlpha:I

    .line 13
    iput-object v1, p0, Lorg/light/lightAssetKit/components/TextReplaceItem;->textColor:Ljava/lang/String;

    .line 14
    iput v0, p0, Lorg/light/lightAssetKit/components/TextReplaceItem;->justification:I

    .line 15
    iput v2, p0, Lorg/light/lightAssetKit/components/TextReplaceItem;->layerWidth:F

    .line 16
    iput v2, p0, Lorg/light/lightAssetKit/components/TextReplaceItem;->layerHeight:F

    .line 17
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/TextReplaceItem;->strokeOverFill:Z

    return-void
.end method
