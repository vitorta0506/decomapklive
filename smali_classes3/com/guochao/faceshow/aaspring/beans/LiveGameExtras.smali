.class public Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private currentCount:I

.field private isStarted:Z

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;->currentCount:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;->totalCount:I

    return v0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;->isStarted:Z

    return v0
.end method

.method public setCurrentCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;->currentCount:I

    return-void
.end method

.method public setStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;->isStarted:Z

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameExtras;->totalCount:I

    return-void
.end method
