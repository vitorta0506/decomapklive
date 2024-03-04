.class public Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/promotion/data/PromotionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityGiftEntity"
.end annotation


# instance fields
.field private activityId:I

.field private createTime:Ljava/lang/String;

.field private duringNum:I

.field private giftCount:I

.field private giftDarkImg:Ljava/lang/String;

.field private giftId:I

.field private giftLightImg:Ljava/lang/String;

.field private giftUrl:Ljava/lang/String;

.field private id:I

.field private rank:I

.field private sendCount:I

.field private sort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->giftCount:I

    return-void
.end method


# virtual methods
.method public getActivityId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->activityId:I

    return v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDuringNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->duringNum:I

    return v0
.end method

.method public getGiftCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->giftCount:I

    return v0
.end method

.method public getGiftDarkImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->giftDarkImg:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->giftId:I

    return v0
.end method

.method public getGiftLightImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->giftLightImg:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->giftUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->id:I

    return v0
.end method

.method public getRank()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->rank:I

    return v0
.end method

.method public getSendCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->sendCount:I

    return v0
.end method

.method public getSort()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->sort:I

    return v0
.end method

.method public setActivityId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->activityId:I

    return-void
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->createTime:Ljava/lang/String;

    return-void
.end method

.method public setDuringNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->duringNum:I

    return-void
.end method

.method public setGiftCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->giftCount:I

    return-void
.end method

.method public setGiftDarkImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->giftDarkImg:Ljava/lang/String;

    return-void
.end method

.method public setGiftId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->giftId:I

    return-void
.end method

.method public setGiftLightImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->giftLightImg:Ljava/lang/String;

    return-void
.end method

.method public setGiftUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->giftUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->id:I

    return-void
.end method

.method public setRank(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->rank:I

    return-void
.end method

.method public setSendCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->sendCount:I

    return-void
.end method

.method public setSort(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/promotion/data/PromotionData$ActivityGiftEntity;->sort:I

    return-void
.end method
