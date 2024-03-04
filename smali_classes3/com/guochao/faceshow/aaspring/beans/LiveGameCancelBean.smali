.class public Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private backDiamond:I

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackDiamond()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;->backDiamond:I

    return v0
.end method

.method public getUserId()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;->userId:J

    return-wide v0
.end method

.method public setBackDiamond(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;->backDiamond:I

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;->userId:J

    return-void
.end method
