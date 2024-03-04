.class public Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$TotalBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TotalBean"
.end annotation


# instance fields
.field private amount:I

.field private amount_type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$TotalBean;->amount:I

    return v0
.end method

.method public getAmount_type()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$TotalBean;->amount_type:I

    return v0
.end method

.method public setAmount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$TotalBean;->amount:I

    return-void
.end method

.method public setAmount_type(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/WithDrawalRecordData$TotalBean;->amount_type:I

    return-void
.end method
