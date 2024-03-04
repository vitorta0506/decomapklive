.class public Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private id:I

.field private scene:I

.field private signture:Ljava/lang/String;

.field private signtureData:Ljava/lang/String;

.field private timeStamp:J

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->scene:I

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->id:I

    return v0
.end method

.method public getScene()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->scene:I

    return v0
.end method

.method public getSignture()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->signture:Ljava/lang/String;

    return-object v0
.end method

.method public getSigntureData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->signtureData:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->timeStamp:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isTimeout()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->timeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->timeStamp:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x4d903210    # 3.024E8f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lu7/c;->c()Lu7/c;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->signture:Ljava/lang/String;

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->signtureData:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lu7/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->id:I

    return-void
.end method

.method public setScene(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->scene:I

    return-void
.end method

.method public setSignture(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->signture:Ljava/lang/String;

    return-void
.end method

.method public setSigntureData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->signtureData:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->timeStamp:J

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GooglePlayPurchaseResult{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", signtureData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->signtureData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", signture=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->signture:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", scene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->scene:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
