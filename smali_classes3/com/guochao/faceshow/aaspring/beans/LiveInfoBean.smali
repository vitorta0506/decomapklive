.class public Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private banTalk:Ljava/lang/Integer;

.field private businessId:Ljava/lang/String;

.field private flvUrl:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private hlsUrl:Ljava/lang/String;

.field private imId:Ljava/lang/String;

.field private infoId:Ljava/lang/Integer;

.field private infoName:Ljava/lang/String;

.field private isAdmin:Ljava/lang/Integer;

.field private isLive:Ljava/lang/Integer;

.field private kink:Ljava/lang/Integer;

.field private liveId:Ljava/lang/Integer;

.field private liveImg:Ljava/lang/String;

.field private liveType:Ljava/lang/Integer;

.field private onLineNum:Ljava/lang/Integer;

.field private rtmpUrl:Ljava/lang/String;

.field private shareUrl:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private userId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBanTalk()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->banTalk:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->businessId:Ljava/lang/String;

    return-object v0
.end method

.method public getFlvUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->flvUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getHlsUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->hlsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->imId:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoId()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->infoId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getInfoName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->infoName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAdmin()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->isAdmin:Ljava/lang/Integer;

    return-object v0
.end method

.method public getIsLive()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->isLive:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getKink()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->kink:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLiveId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->liveId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLiveImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->liveImg:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->liveType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOnLineNum()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->onLineNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRtmpUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->rtmpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->userId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setBanTalk(I)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->banTalk:Ljava/lang/Integer;

    return-void
.end method

.method public setBanTalk(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->banTalk:Ljava/lang/Integer;

    return-void
.end method

.method public setBusinessId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->businessId:Ljava/lang/String;

    return-void
.end method

.method public setFlvUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->flvUrl:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->groupId:Ljava/lang/String;

    return-void
.end method

.method public setHlsUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->hlsUrl:Ljava/lang/String;

    return-void
.end method

.method public setImId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->imId:Ljava/lang/String;

    return-void
.end method

.method public setInfoId(I)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->infoId:Ljava/lang/Integer;

    return-void
.end method

.method public setInfoId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->infoId:Ljava/lang/Integer;

    return-void
.end method

.method public setInfoName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->infoName:Ljava/lang/String;

    return-void
.end method

.method public setIsAdmin(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->isAdmin:Ljava/lang/Integer;

    return-void
.end method

.method public setIsLive(I)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->isLive:Ljava/lang/Integer;

    return-void
.end method

.method public setIsLive(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->isLive:Ljava/lang/Integer;

    return-void
.end method

.method public setKink(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->kink:Ljava/lang/Integer;

    return-void
.end method

.method public setLiveId(I)V
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->liveId:Ljava/lang/Integer;

    return-void
.end method

.method public setLiveId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->liveId:Ljava/lang/Integer;

    return-void
.end method

.method public setLiveImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->liveImg:Ljava/lang/String;

    return-void
.end method

.method public setLiveType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->liveType:Ljava/lang/Integer;

    return-void
.end method

.method public setOnLineNum(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->onLineNum:Ljava/lang/Integer;

    return-void
.end method

.method public setRtmpUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->rtmpUrl:Ljava/lang/String;

    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->shareUrl:Ljava/lang/String;

    return-void
.end method

.method public setStreamId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->streamId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoBean;->userId:Ljava/lang/Integer;

    return-void
.end method
