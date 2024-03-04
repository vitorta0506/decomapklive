.class public Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;


# instance fields
.field private avatar:Ljava/lang/String;

.field private charmValues:Ljava/lang/String;

.field private disableTime:Ljava/lang/String;

.field private enableTime:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private isAttention:I

.field private transient isOtherFollowedYou:Z

.field private isSelect:Z

.field private isTutual:I

.field private levelId:Ljava/lang/String;

.field private liveState:Ljava/lang/String;

.field private logo:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private userAge:Ljava/lang/String;

.field private userAttentStatus:Ljava/lang/String;

.field private userCountryFlag:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userImg:Ljava/lang/String;

.field private userNickName:Ljava/lang/String;

.field private userSex:Ljava/lang/String;

.field private userSignature:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->isOtherFollowedYou:Z

    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userAge:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userImg:Ljava/lang/String;

    return-object v0
.end method

.method public getCharmValues()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->charmValues:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userCountryFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisableTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->disableTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEnableTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->enableTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userSex:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAttention()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->isAttention:I

    return v0
.end method

.method public getIsTutual()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->isTutual:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->levelId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->liveState:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->signature:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userAge:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAttentStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userAttentStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userCountryFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userImg:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userNickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->nickName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userNickName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getUserNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userSex:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSignature()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userSignature:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

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

.method public isOtherFollowedYou()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->isOtherFollowedYou:Z

    return v0
.end method

.method public isSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->isSelect:Z

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCharmValues(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->charmValues:Ljava/lang/String;

    return-void
.end method

.method public setDisableTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->disableTime:Ljava/lang/String;

    return-void
.end method

.method public setEnableTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->enableTime:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setIsAttention(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->isAttention:I

    return-void
.end method

.method public setIsTutual(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->isTutual:I

    return-void
.end method

.method public setLevelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->levelId:Ljava/lang/String;

    return-void
.end method

.method public setLiveState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->liveState:Ljava/lang/String;

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setOtherFollowedYou(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->isOtherFollowedYou:Z

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->isSelect:Z

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->signature:Ljava/lang/String;

    return-void
.end method

.method public setUserAge(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userAge:Ljava/lang/String;

    return-void
.end method

.method public setUserAttentStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userAttentStatus:Ljava/lang/String;

    return-void
.end method

.method public setUserCountryFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userCountryFlag:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userImg:Ljava/lang/String;

    return-void
.end method

.method public setUserNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userNickName:Ljava/lang/String;

    return-void
.end method

.method public setUserSex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userSex:Ljava/lang/String;

    return-void
.end method

.method public setUserSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userSignature:Ljava/lang/String;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method
