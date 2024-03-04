.class public Lorg/light/lightAssetKit/components/ReplaceItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public index:I

.field public interactive:Z

.field public layerName:Ljava/lang/String;

.field public replaceType:Lorg/light/lightAssetKit/enums/ReplaceType;

.field public scaleMode:Lorg/light/lightAssetKit/enums/ScaleMode;

.field public sourceIndex:I

.field public src:Ljava/lang/String;

.field public textMaxLength:I

.field public textReplaceItem:Lorg/light/lightAssetKit/components/TextReplaceItem;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lorg/light/lightAssetKit/components/ReplaceItem;->index:I

    const-string v1, ""

    .line 3
    iput-object v1, p0, Lorg/light/lightAssetKit/components/ReplaceItem;->src:Ljava/lang/String;

    .line 4
    sget-object v2, Lorg/light/lightAssetKit/enums/ReplaceType;->None:Lorg/light/lightAssetKit/enums/ReplaceType;

    iput-object v2, p0, Lorg/light/lightAssetKit/components/ReplaceItem;->replaceType:Lorg/light/lightAssetKit/enums/ReplaceType;

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/ReplaceItem;->sourceIndex:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lorg/light/lightAssetKit/components/ReplaceItem;->textMaxLength:I

    .line 7
    sget-object v2, Lorg/light/lightAssetKit/enums/ScaleMode;->LetterBox:Lorg/light/lightAssetKit/enums/ScaleMode;

    iput-object v2, p0, Lorg/light/lightAssetKit/components/ReplaceItem;->scaleMode:Lorg/light/lightAssetKit/enums/ScaleMode;

    .line 8
    iput-boolean v0, p0, Lorg/light/lightAssetKit/components/ReplaceItem;->interactive:Z

    .line 9
    new-instance v0, Lorg/light/lightAssetKit/components/TextReplaceItem;

    invoke-direct {v0}, Lorg/light/lightAssetKit/components/TextReplaceItem;-><init>()V

    iput-object v0, p0, Lorg/light/lightAssetKit/components/ReplaceItem;->textReplaceItem:Lorg/light/lightAssetKit/components/TextReplaceItem;

    .line 10
    iput-object v1, p0, Lorg/light/lightAssetKit/components/ReplaceItem;->layerName:Ljava/lang/String;

    return-void
.end method
