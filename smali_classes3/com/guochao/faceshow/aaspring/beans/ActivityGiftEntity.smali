.class public Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private duringNum:I

.field private giftId:I

.field private giftUrl:Ljava/lang/String;

.field private nowNum:I

.field private rank:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuringNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->duringNum:I

    return v0
.end method

.method public getGiftId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->giftId:I

    return v0
.end method

.method public getGiftUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->giftUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->rank:I

    return v0
.end method

.method public getSendCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->nowNum:I

    return v0
.end method

.method public setDuringNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->duringNum:I

    return-void
.end method

.method public setGiftId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->giftId:I

    return-void
.end method

.method public setGiftUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->giftUrl:Ljava/lang/String;

    return-void
.end method

.method public setRank(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->rank:I

    return-void
.end method

.method public setSendCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ActivityGiftEntity;->nowNum:I

    return-void
.end method
