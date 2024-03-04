.class public Lorg/light/lightAssetKit/components/AtrributeBufferView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public attributeDataType:Ljava/lang/String;

.field public attributeName:Ljava/lang/String;

.field public bufferLength:I

.field public bufferOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/light/lightAssetKit/components/AtrributeBufferView;->attributeName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/light/lightAssetKit/components/AtrributeBufferView;->attributeDataType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/light/lightAssetKit/components/AtrributeBufferView;->bufferOffset:I

    .line 5
    iput v0, p0, Lorg/light/lightAssetKit/components/AtrributeBufferView;->bufferLength:I

    return-void
.end method
