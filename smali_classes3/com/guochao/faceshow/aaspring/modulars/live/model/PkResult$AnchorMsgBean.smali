.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnchorMsgBean"
.end annotation


# instance fields
.field private isWin:Ljava/lang/String;

.field private pkEarnings:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsWin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;->isWin:Ljava/lang/String;

    return-object v0
.end method

.method public getPkEarnings()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;->pkEarnings:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setIsWin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;->isWin:Ljava/lang/String;

    return-void
.end method

.method public setPkEarnings(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;->pkEarnings:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResult$AnchorMsgBean;->userId:Ljava/lang/String;

    return-void
.end method
