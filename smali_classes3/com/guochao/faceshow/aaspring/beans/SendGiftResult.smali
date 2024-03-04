.class public Lcom/guochao/faceshow/aaspring/beans/SendGiftResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private balance:I

.field private end_time:I

.field private md5:Ljava/lang/String;

.field private selectTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBalance()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SendGiftResult;->balance:I

    return v0
.end method

.method public getEnd_time()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SendGiftResult;->end_time:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SendGiftResult;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/SendGiftResult;->selectTime:J

    return-wide v0
.end method

.method public setBalance(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SendGiftResult;->balance:I

    return-void
.end method

.method public setEnd_time(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SendGiftResult;->end_time:I

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SendGiftResult;->md5:Ljava/lang/String;

    return-void
.end method

.method public setSelectTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/SendGiftResult;->selectTime:J

    return-void
.end method
