.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private audienceId:Ljava/lang/String;

.field private fcoin:Ljava/lang/String;

.field private isLockMicrophone:Ljava/lang/String;

.field private likeNum:Ljava/lang/String;

.field private liveId:Ljava/lang/String;

.field private liveType:Ljava/lang/String;

.field private matchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;"
        }
    .end annotation
.end field

.field private microphoneMode:Ljava/lang/String;

.field private onlineNum:Ljava/lang/String;

.field private pushUrl:Ljava/lang/String;

.field private selectTime:Ljava/lang/String;

.field private shareUrl:Ljava/lang/String;

.field private streamId:Ljava/lang/String;

.field private voiceStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->pushUrl:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->audienceId:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->matchList:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->isLockMicrophone:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->streamId:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->onlineNum:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->fcoin:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->microphoneMode:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->likeNum:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->voiceStatus:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->liveType:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->shareUrl:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->liveId:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->selectTime:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAudienceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->audienceId:Ljava/lang/String;

    return-object v0
.end method

.method public getFcoin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->fcoin:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLockMicrophone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->isLockMicrophone:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->likeNum:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->liveType:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->matchList:Ljava/util/List;

    return-object v0
.end method

.method public getMicrophoneMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->microphoneMode:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->onlineNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPushUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->pushUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->selectTime:Ljava/lang/String;

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->voiceStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setAudienceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->audienceId:Ljava/lang/String;

    return-void
.end method

.method public setFcoin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->fcoin:Ljava/lang/String;

    return-void
.end method

.method public setIsLockMicrophone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->isLockMicrophone:Ljava/lang/String;

    return-void
.end method

.method public setLikeNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->likeNum:Ljava/lang/String;

    return-void
.end method

.method public setLiveId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setLiveType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->liveType:Ljava/lang/String;

    return-void
.end method

.method public setMatchList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->matchList:Ljava/util/List;

    return-void
.end method

.method public setMicrophoneMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->microphoneMode:Ljava/lang/String;

    return-void
.end method

.method public setOnlineNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->onlineNum:Ljava/lang/String;

    return-void
.end method

.method public setPushUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->pushUrl:Ljava/lang/String;

    return-void
.end method

.method public setSelectTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->selectTime:Ljava/lang/String;

    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->shareUrl:Ljava/lang/String;

    return-void
.end method

.method public setStreamId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->streamId:Ljava/lang/String;

    return-void
.end method

.method public setVoiceStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->voiceStatus:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->pushUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->audienceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->matchList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->isLockMicrophone:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->streamId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->onlineNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->fcoin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->microphoneMode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->likeNum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->voiceStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->liveType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->shareUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->liveId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->selectTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
