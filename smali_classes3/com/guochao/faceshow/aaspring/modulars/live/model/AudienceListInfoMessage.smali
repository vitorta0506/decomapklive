.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;
.super Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.source "SourceFile"


# instance fields
.field protected audienceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;"
        }
    .end annotation
.end field

.field protected fcoin:Ljava/lang/String;

.field protected isLockMicrophone:Ljava/lang/String;

.field protected likeNum:Ljava/lang/String;

.field protected liveId:Ljava/lang/String;

.field protected livePkState:Ljava/lang/String;

.field protected liveType:Ljava/lang/String;

.field protected matchType:Ljava/lang/String;

.field protected microphoneMode:Ljava/lang/String;

.field protected onlineNum:Ljava/lang/String;

.field private screenShotSwitch:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "screenShotSwitch"
        }
        value = "sss"
    .end annotation
.end field

.field protected shareUrl:Ljava/lang/String;

.field private videoOpen:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "videoOpen"
        }
        value = "v"
    .end annotation
.end field

.field private videoSwitch:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "videoSwitch"
        }
        value = "s"
    .end annotation
.end field

.field protected voiceStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->videoSwitch:I

    .line 3
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->videoOpen:I

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->screenShotSwitch:I

    return-void
.end method


# virtual methods
.method public getAudienceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->audienceList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->audienceList:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->audienceList:Ljava/util/List;

    return-object v0
.end method

.method public getFcoin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->fcoin:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLockMicrophone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->isLockMicrophone:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->likeNum:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getLivePkState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->livePkState:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->liveType:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->matchType:Ljava/lang/String;

    return-object v0
.end method

.method public getMicrophoneMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->microphoneMode:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->onlineNum:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenShotSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->screenShotSwitch:I

    return v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoOpen()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->videoOpen:I

    return v0
.end method

.method public getVideoSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->videoSwitch:I

    return v0
.end method

.method public getVoiceStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->voiceStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setAudienceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AudienceInformation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->audienceList:Ljava/util/List;

    return-void
.end method

.method public setFcoin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->fcoin:Ljava/lang/String;

    return-void
.end method

.method public setIsLockMicrophone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->isLockMicrophone:Ljava/lang/String;

    return-void
.end method

.method public setLikeNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->likeNum:Ljava/lang/String;

    return-void
.end method

.method public setLiveId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setLivePkState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->livePkState:Ljava/lang/String;

    return-void
.end method

.method public setLiveType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->liveType:Ljava/lang/String;

    return-void
.end method

.method public setMatchType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->matchType:Ljava/lang/String;

    return-void
.end method

.method public setMicrophoneMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->microphoneMode:Ljava/lang/String;

    return-void
.end method

.method public setOnlineNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->onlineNum:Ljava/lang/String;

    return-void
.end method

.method public setScreenShotSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->screenShotSwitch:I

    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->shareUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoOpen(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->videoOpen:I

    return-void
.end method

.method public setVideoSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->videoSwitch:I

    return-void
.end method

.method public setVoiceStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;->voiceStatus:Ljava/lang/String;

    return-void
.end method
