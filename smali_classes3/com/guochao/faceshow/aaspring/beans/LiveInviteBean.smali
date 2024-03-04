.class public Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/live/share/InviteBean;


# instance fields
.field private age:Ljava/lang/String;

.field private attentStatus:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private countryFlag:Ljava/lang/String;

.field private img:Ljava/lang/String;

.field private isSelect:Z

.field private levelId:Ljava/lang/String;

.field private liveState:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private sex:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userType:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->age:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAttentStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->attentStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->countryFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->sex:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLevelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->levelId:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->liveState:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->sex:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->signature:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->userType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

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

.method public isSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->isSelect:Z

    return v0
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->age:Ljava/lang/String;

    return-void
.end method

.method public setAttentStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->attentStatus:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCountryFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->countryFlag:Ljava/lang/String;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setLevelId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->levelId:Ljava/lang/String;

    return-void
.end method

.method public setLiveState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->liveState:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->isSelect:Z

    return-void
.end method

.method public setSex(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->sex:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->signature:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->userType:Ljava/lang/String;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/LiveInviteBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method
