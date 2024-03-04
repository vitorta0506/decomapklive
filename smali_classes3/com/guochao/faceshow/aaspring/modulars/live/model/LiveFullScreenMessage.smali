.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveFullScreenMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.source "SourceFile"


# instance fields
.field private activityId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveFullScreenMessage;->activityId:I

    return v0
.end method

.method public setActivityId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveFullScreenMessage;->activityId:I

    return-void
.end method
