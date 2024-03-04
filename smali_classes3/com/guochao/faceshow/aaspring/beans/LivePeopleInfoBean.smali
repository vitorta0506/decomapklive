.class public Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/h;
.implements Lp7/i;


# instance fields
.field private admin:I

.field private age:I

.field private attention_num:I

.field private avatar:Ljava/lang/String;

.field private banTalk:I

.field private country:Ljava/lang/String;

.field private countryLog:Ljava/lang/String;

.field private fensiNum:Ljava/lang/String;

.field private fensi_num:I

.field private giftDiamondNum:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private isLive:I

.field private is_tutual:I

.field private kink:I

.field private levelId:I

.field private liveId:Ljava/lang/String;

.field private liveManager:I

.field private live_img:Ljava/lang/String;

.field private mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

.field private nick_name:Ljava/lang/String;

.field private sendGiftNum:Ljava/lang/String;

.field private sex:I

.field private signature:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field private videoNum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdmin()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->admin:I

    return v0
.end method

.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->age:I

    return v0
.end method

.method public getAttention_num()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->attention_num:I

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getImg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBanTalk()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->banTalk:I

    return v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getCountryLog()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryLog()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->countryLog:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFensiNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->fensiNum:Ljava/lang/String;

    return-object v0
.end method

.method public getFensi_num()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->fensi_num:I

    return v0
.end method

.method public getGender()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getSex()I

    move-result v0

    return v0
.end method

.method public getGiftDiamondNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->giftDiamondNum:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLive()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->isLive:I

    return v0
.end method

.method public getIs_tutual()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->is_tutual:I

    return v0
.end method

.method public getKink()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->kink:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getLevelId()I

    move-result v0

    return v0
.end method

.method public getLevelId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->levelId:I

    return v0
.end method

.method public getLiveCoverImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->live_img:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->liveId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveManager()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->liveManager:I

    return v0
.end method

.method public getMVPUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;->mvpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMvpUserInfoResult()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    return-object v0
.end method

.method public getNick_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->getAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSendGiftNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->sendGiftNum:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->sex:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->signature:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f1209bc

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getUserName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->b(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public getVideoNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->videoNum:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getVipInfo()Lb8/g;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lp7/g;->c(Lp7/h;)Lb8/g;

    move-result-object v0

    return-object v0
.end method

.method public setAdmin(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->admin:I

    return-void
.end method

.method public setAge(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->age:I

    return-void
.end method

.method public setAttention_num(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->attention_num:I

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setBanTalk(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->banTalk:I

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->country:Ljava/lang/String;

    return-void
.end method

.method public setCountryLog(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->countryLog:Ljava/lang/String;

    return-void
.end method

.method public setFensiNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->fensiNum:Ljava/lang/String;

    return-void
.end method

.method public setFensi_num(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->fensi_num:I

    return-void
.end method

.method public setGiftDiamondNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->giftDiamondNum:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setIsLive(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->isLive:I

    return-void
.end method

.method public setIs_tutual(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->is_tutual:I

    return-void
.end method

.method public setKink(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->kink:I

    return-void
.end method

.method public setLevelId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->levelId:I

    return-void
.end method

.method public setLiveCoverImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->live_img:Ljava/lang/String;

    return-void
.end method

.method public setLiveId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->liveId:Ljava/lang/String;

    return-void
.end method

.method public setLiveManager(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->liveManager:I

    return-void
.end method

.method public setMvpUserInfoResult(Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    return-void
.end method

.method public setNick_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->nick_name:Ljava/lang/String;

    return-void
.end method

.method public setSendGiftNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->sendGiftNum:Ljava/lang/String;

    return-void
.end method

.method public setSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->sex:I

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->signature:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public setVideoNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LivePeopleInfoBean;->videoNum:Ljava/lang/String;

    return-void
.end method
