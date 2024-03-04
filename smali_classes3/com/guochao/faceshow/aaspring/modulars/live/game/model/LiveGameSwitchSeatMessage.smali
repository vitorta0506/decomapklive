.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameSwitchSeatMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;
.source "SourceFile"


# instance fields
.field private fromPosition:I


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;-><init>(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    return-void
.end method


# virtual methods
.method public getFromPosition()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameSwitchSeatMessage;->fromPosition:I

    return v0
.end method

.method public setFromPosition(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameSwitchSeatMessage;->fromPosition:I

    return-void
.end method
