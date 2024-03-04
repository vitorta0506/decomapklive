.class public Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp7/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/beans/RecommendUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecommendListBean"
.end annotation


# instance fields
.field private avatar:Ljava/lang/String;

.field private charmValues:I

.field private chat_switch:I

.field private disableTime:J

.field private enableTime:J

.field private img:Ljava/lang/String;

.field private isCheck:Z

.field private isTutual:I

.field private logo:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private preferentialLang:Ljava/lang/String;

.field private sex:I

.field private signature:Ljava/lang/String;

.field private sysRecommend:I

.field private userId:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->isCheck:Z

    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getCharmValues()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->charmValues:I

    return v0
.end method

.method public getChat_switch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->chat_switch:I

    return v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisableTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->disableTime:J

    return-wide v0
.end method

.method public getEnableTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->enableTime:J

    return-wide v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->sex:I

    return v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTutual()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->isTutual:I

    return v0
.end method

.method public bridge synthetic getLevel()I
    .locals 1

    invoke-static {p0}, Lp7/d;->a(Lp7/e;)I

    move-result v0

    return v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->logo:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferentialLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->preferentialLang:Ljava/lang/String;

    return-object v0
.end method

.method public getSex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->sex:I

    return v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->signature:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSysRecommend()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->sysRecommend:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

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

.method public isCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->isCheck:Z

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCharmValues(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->charmValues:I

    return-void
.end method

.method public setChat_switch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->chat_switch:I

    return-void
.end method

.method public setCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->isCheck:Z

    return-void
.end method

.method public setDisableTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->disableTime:J

    return-void
.end method

.method public setEnableTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->enableTime:J

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->img:Ljava/lang/String;

    return-void
.end method

.method public setIsTutual(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->isTutual:I

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->logo:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setPreferentialLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->preferentialLang:Ljava/lang/String;

    return-void
.end method

.method public setSex(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->sex:I

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->signature:Ljava/lang/String;

    return-void
.end method

.method public setSysRecommend(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->sysRecommend:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/RecommendUser$RecommendListBean;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method
