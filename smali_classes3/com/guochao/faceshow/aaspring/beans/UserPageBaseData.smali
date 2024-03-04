.class public Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;,
        Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$LiveData;,
        Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;,
        Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$UserDetail;
    }
.end annotation


# instance fields
.field public animal:Ljava/lang/String;

.field public attentionNum:I

.field public avatar:Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public constellation:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public countryLog:Ljava/lang/String;

.field public covers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$CoverData;",
            ">;"
        }
    .end annotation
.end field

.field public detail:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$UserDetail;

.field public emotionLable:Ljava/lang/String;

.field public fensiNum:I

.field public friendLables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public friendRings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;"
        }
    .end annotation
.end field

.field public giftDiamondNum:I

.field public height:Ljava/lang/String;

.field private hobbyInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;"
        }
    .end annotation
.end field

.field public hobbyLables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public img:Ljava/lang/String;

.field private isApprove:I

.field private isExposure:I

.field public isInRoom:I

.field public isLike:I

.field public isLive:I

.field public isToBlackList:I

.field public isTutual:I

.field public job:Ljava/lang/String;

.field public languageLable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public levelId:I

.field public liveData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$LiveData;

.field public matchScore:Ljava/lang/String;

.field private mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

.field public nickName:Ljava/lang/String;

.field private onlineData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;

.field public sendGiftDiamondNum:I

.field public sex:I

.field public shortVideos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/VideoBean;",
            ">;"
        }
    .end annotation
.end field

.field public signature:Ljava/lang/String;

.field public smallImg:Ljava/lang/String;

.field public statuesV2:I

.field public superLikeToday:I

.field public unfreezeTime:Ljava/lang/String;

.field public userId:Ljava/lang/String;

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field public videoNum:I

.field public weight:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->birthday:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->birthday:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    :cond_1
    return v1

    :catch_0
    nop

    .line 3
    :cond_2
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->birthday:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-string v0, "EST5EDT"

    .line 6
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 8
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v2

    const/4 v6, 0x5

    .line 9
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 10
    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object v11

    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/manager/i;->s()Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->getServerTimeDiff()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 11
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 13
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 14
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ge v4, v5, :cond_3

    :goto_0
    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    return v0

    :cond_3
    if-ne v4, v5, :cond_4

    if-ge v1, v7, :cond_4

    goto :goto_0

    :cond_4
    sub-int/2addr v0, v3

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->countryLog:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentBirthday()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->birthday:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->birthday:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 3
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "EST5EDT"

    .line 4
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 5
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public getCurrentUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->sex:I

    return v0
.end method

.method public getHobbyInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->hobbyInfos:Ljava/util/List;

    return-object v0
.end method

.method public getImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getIsApprove()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->isApprove:I

    return v0
.end method

.method public getIsExposure()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->isExposure:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->levelId:I

    return v0
.end method

.method public getMVPUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

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

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    return-object v0
.end method

.method public getOnlineData()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->onlineData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;

    return-object v0
.end method

.method public getPendantUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic getPreferentialLang()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/beans/b;->d(Lcom/guochao/faceshow/aaspring/beans/TrtcFaceCastUser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserBaseInfo()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->onlineData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->access$000(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->onlineData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->access$000(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;)Ljava/lang/String;

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->onlineData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->access$100(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->onlineData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->access$100(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;)Ljava/lang/String;

    .line 4
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/utils/LanguageGetUtils;->isLanguageChinese()Z

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->getGender()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f120af5

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const v1, 0x7f12056e

    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->onlineData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->access$200(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

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

.method public setHobbyInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/mine/model/HobbyBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->hobbyInfos:Ljava/util/List;

    return-void
.end method

.method public setImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->img:Ljava/lang/String;

    return-void
.end method

.method public setIsApprove(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->isApprove:I

    return-void
.end method

.method public setIsExposure(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->isExposure:I

    return-void
.end method

.method public setMvpUserInfoResult(Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->mvpUserInfoResult:Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    return-void
.end method

.method public setOnlineData(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->onlineData:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method
