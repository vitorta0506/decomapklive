.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/PkFCoinMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.source "SourceFile"


# instance fields
.field private mFCoin:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fcoin"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getFCoin()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkFCoinMessage;->mFCoin:J

    return-wide v0
.end method

.method public setFCoin(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkFCoinMessage;->mFCoin:J

    return-void
.end method
