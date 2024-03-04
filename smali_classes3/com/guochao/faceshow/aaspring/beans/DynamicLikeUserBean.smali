.class public Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/h;


# instance fields
.field private avatar:Ljava/lang/String;

.field private liveState:I

.field private userAttentStatus:I

.field private userCountryFlag:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userImg:Ljava/lang/String;

.field private userNickName:Ljava/lang/String;

.field private userSex:I

.field private userSignature:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAge()I
    .locals 1

    invoke-static {p0}, Lp7/a;->a(Lp7/b;)I

    move-result v0

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->getUserImg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->getUserCountryFlag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->getUserSex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLevel()I
    .locals 1

    invoke-static {p0}, Lp7/d;->a(Lp7/e;)I

    move-result v0

    return v0
.end method

.method public getLiveState()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->liveState:I

    return v0
.end method

.method public bridge synthetic getMVPUrl()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->a(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->getAvatar()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAttentStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userAttentStatus:I

    return v0
.end method

.method public getUserCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userCountryFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userImg:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getUserName()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp7/g;->b(Lp7/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userSex:I

    return v0
.end method

.method public getUserSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userSignature:Ljava/lang/String;

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

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

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setLiveState(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->liveState:I

    return-void
.end method

.method public setUserAttentStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userAttentStatus:I

    return-void
.end method

.method public setUserCountryFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userCountryFlag:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userImg:Ljava/lang/String;

    return-void
.end method

.method public setUserNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userNickName:Ljava/lang/String;

    return-void
.end method

.method public setUserSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userSex:I

    return-void
.end method

.method public setUserSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userSignature:Ljava/lang/String;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/DynamicLikeUserBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method
