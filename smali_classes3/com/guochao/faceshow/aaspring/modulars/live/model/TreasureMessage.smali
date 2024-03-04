.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;
    }
.end annotation


# instance fields
.field private mBigGiftBoxes:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "manyStrips"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getBigGiftBoxes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage;->mBigGiftBoxes:Ljava/util/List;

    return-object v0
.end method

.method public setBigGiftBoxes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage$BigGiftBox;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage;->mBigGiftBoxes:Ljava/util/List;

    return-void
.end method
