.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;
    }
.end annotation


# instance fields
.field private leftAnchorMsg:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;

.field private remainTime:J

.field private rightAnchorMsg:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->remainTime:J

    return-void
.end method


# virtual methods
.method public getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->leftAnchorMsg:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;

    return-object v0
.end method

.method public getRemainTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->remainTime:J

    return-wide v0
.end method

.method public getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->rightAnchorMsg:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;

    return-object v0
.end method

.method public setLeftAnchorMsg(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->leftAnchorMsg:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;

    return-void
.end method

.method public setRemainTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->remainTime:J

    return-void
.end method

.method public setRightAnchorMsg(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;->rightAnchorMsg:Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;

    return-void
.end method
