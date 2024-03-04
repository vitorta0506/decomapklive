.class public Lcom/guochao/faceshow/aaspring/beans/Progress;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private downColor:I

.field private speed:I

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownColor()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Progress;->downColor:I

    return v0
.end method

.method public getSpeed()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/Progress;->speed:I

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/Progress;->time:J

    return-wide v0
.end method

.method public setDownColor(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/Progress;->downColor:I

    return-void
.end method

.method public setSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/Progress;->speed:I

    return-void
.end method

.method public setTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/Progress;->time:J

    return-void
.end method
