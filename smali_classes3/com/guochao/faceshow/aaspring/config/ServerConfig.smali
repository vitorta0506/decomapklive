.class public Lcom/guochao/faceshow/aaspring/config/ServerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final DEFAULT:Lcom/guochao/faceshow/aaspring/config/ServerConfig;


# instance fields
.field private aliPaySwitch:I

.field private appEvaluateGuidePop:I

.field private appUgcNearbySetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field private appointSwitch:I

.field private audioDiamond:I

.field private autoSyncVideoToDynamic:I

.field private blackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blackShow:I

.field private chat_switch:I

.field private contactsShowcountry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryBean;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SS"
    .end annotation
.end field

.field private fbShare:I

.field private findYouSwitch:I

.field private gameSwitch:I

.field private isActivity:I

.field private isBindMobile:I

.field private isCertication:I

.field private isFriendNew:I

.field private isFringManager:I

.field private isLiveManager:I

.field private keyPadToneSwitch:I

.field private liveOperationVo:Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;

.field private liveSpeechOperationLogVo:Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;

.field private localPhoneConfigTime:J

.field private myNoDisturb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private oneToOneGenderSelectPrice:I

.field private payH5PayFlag:I

.field private payoneerSwitch:I

.field private payoneerSwitchV2:I

.field private paypalSwitch:I

.field private personalInformationScan:Ljava/lang/String;

.field private pkEnableFlag:I

.field private privateLiveSwitch:I

.field private ratioFace2face:I

.field private recommendRechargeActivityImg:Ljava/lang/String;

.field private recommendRechargeActivityLiveIcon:Ljava/lang/String;

.field private selectAdvertisement:I

.field private serverTimeDiff:J

.field private serviceChargeOfERC20:I

.field private serviceChargeOfOMNI:I

.field private serviceChargeOfTRC20:I

.field private shareUrl:Ljava/lang/String;

.field private thisDate:Ljava/lang/String;

.field private timeZone:Ljava/lang/String;

.field private toNoDisturb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transSwitchEnableFlag:I

.field private ugcDefaultDistance:I

.field private ugcMaxDistance:I

.field private usdtSwitch:I

.field private userLiveBanned:I

.field private userSpeech:I

.field private videoBarrageSwitch:I

.field private videoDiamond:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/config/ServerConfig;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->DEFAULT:Lcom/guochao/faceshow/aaspring/config/ServerConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->findYouSwitch:I

    const/16 v1, 0x1f4

    .line 3
    iput v1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->ugcMaxDistance:I

    const/16 v1, 0x258

    .line 4
    iput v1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->ugcDefaultDistance:I

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->autoSyncVideoToDynamic:I

    const/16 v1, 0x32

    .line 6
    iput v1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->audioDiamond:I

    const/16 v1, 0x50

    .line 7
    iput v1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->videoDiamond:I

    .line 8
    iput v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->payH5PayFlag:I

    const/4 v1, 0x1

    .line 9
    iput v1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->privateLiveSwitch:I

    .line 10
    iput v1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->appEvaluateGuidePop:I

    .line 11
    iput v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->blackShow:I

    return-void
.end method


# virtual methods
.method public calServerTimeDiff()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->thisDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-wide v1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->serverTimeDiff:J

    return-void

    .line 3
    :cond_0
    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->serverTimeDiff:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->thisDate:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 6
    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->serverTimeDiff:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getAliPaySwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->aliPaySwitch:I

    return v0
.end method

.method public getAppEvaluateGuidePop()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->appEvaluateGuidePop:I

    return v0
.end method

.method public getAppUgcNearbySetList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->appUgcNearbySetList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->appUgcNearbySetList:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->appUgcNearbySetList:Ljava/util/List;

    return-object v0
.end method

.method public getAppointSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->appointSwitch:I

    return v0
.end method

.method public getAudioDiamond()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->audioDiamond:I

    return v0
.end method

.method public getBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->blackList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->blackList:Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getBlackShow()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->blackShow:I

    return v0
.end method

.method public getChat_switch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->chat_switch:I

    return v0
.end method

.method public getContactsShowcountry()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->contactsShowcountry:Ljava/util/List;

    return-object v0
.end method

.method public getE()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "o4wL3h6uyKGphXLD"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getFbShare()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->fbShare:I

    return v0
.end method

.method public getFindYouSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->findYouSwitch:I

    return v0
.end method

.method public getGameSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->gameSwitch:I

    return v0
.end method

.method public getIsActivity()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->isActivity:I

    return v0
.end method

.method public getIsBindMobile()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->isBindMobile:I

    return v0
.end method

.method public getIsCertication()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->isCertication:I

    return v0
.end method

.method public getIsFriendNew()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->isFriendNew:I

    return v0
.end method

.method public getIsFringManager()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->isFringManager:I

    return v0
.end method

.method public getIsLiveManager()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->isLiveManager:I

    return v0
.end method

.method public getKeyPadToneSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->keyPadToneSwitch:I

    return v0
.end method

.method public getLiveOperationVo()Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->liveOperationVo:Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;

    return-object v0
.end method

.method public getLiveSpeechOperationLogVo()Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->liveSpeechOperationLogVo:Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;

    return-object v0
.end method

.method public getMyNoDisturb()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->myNoDisturb:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->myNoDisturb:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->myNoDisturb:Ljava/util/List;

    return-object v0
.end method

.method public getNetToday()Ljava/lang/String;
    .locals 7

    const-string v0, "EST5EDT"

    const-string v1, "yyyy-MM-dd"

    .line 1
    :try_start_0
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->serverTimeDiff:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 8
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOneToOneGenderSelectPrice()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->oneToOneGenderSelectPrice:I

    return v0
.end method

.method public getPayH5PayFlag()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->payH5PayFlag:I

    return v0
.end method

.method public getPayoneerSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->payoneerSwitch:I

    return v0
.end method

.method public getPayoneerSwitchV2()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->payoneerSwitchV2:I

    return v0
.end method

.method public getPaypalSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->paypalSwitch:I

    return v0
.end method

.method public getPersonalInformationScan()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->personalInformationScan:Ljava/lang/String;

    return-object v0
.end method

.method public getPkEnableFlag()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->pkEnableFlag:I

    return v0
.end method

.method public getPrivateLiveSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->privateLiveSwitch:I

    return v0
.end method

.method public getRatioFace2face()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->ratioFace2face:I

    return v0
.end method

.method public getRecommendRechargeActivityImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->recommendRechargeActivityImg:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendRechargeActivityLiveIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->recommendRechargeActivityLiveIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectAdvertisement()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->selectAdvertisement:I

    return v0
.end method

.method public getServerTimeDiff()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->serverTimeDiff:J

    return-wide v0
.end method

.method public getServiceChargeOfERC20()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->serviceChargeOfERC20:I

    return v0
.end method

.method public getServiceChargeOfOMNI()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->serviceChargeOfOMNI:I

    return v0
.end method

.method public getServiceChargeOfTRC20()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->serviceChargeOfTRC20:I

    return v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->shareUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThisDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->thisDate:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getToNoDisturb()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->toNoDisturb:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->toNoDisturb:Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public getToday()Ljava/lang/String;
    .locals 6

    const-string v0, "yyyy-MM-dd"

    .line 1
    :try_start_0
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->serverTimeDiff:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 6
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransSwitchEnableFlag()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->transSwitchEnableFlag:I

    return v0
.end method

.method public getUgcDefaultDistance()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->ugcDefaultDistance:I

    return v0
.end method

.method public getUgcMaxDistance()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->ugcMaxDistance:I

    return v0
.end method

.method public getUsdtSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->usdtSwitch:I

    return v0
.end method

.method public getUserLiveBanned()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->userLiveBanned:I

    return v0
.end method

.method public getUserSpeech()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->userSpeech:I

    return v0
.end method

.method public getVideoBarrageSwitch()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->videoBarrageSwitch:I

    return v0
.end method

.method public getVideoDiamond()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->videoDiamond:I

    return v0
.end method

.method public isLivePrivateEnable()Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->privateLiveSwitch:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAliPaySwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->aliPaySwitch:I

    return-void
.end method

.method public setAppEvaluateGuidePop(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->appEvaluateGuidePop:I

    return-void
.end method

.method public setAppUgcNearbySetList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/UgcDistanceTypeBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->appUgcNearbySetList:Ljava/util/List;

    return-void
.end method

.method public setAppointSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->appointSwitch:I

    return-void
.end method

.method public setAudioDiamond(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->audioDiamond:I

    return-void
.end method

.method public setBlackList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->blackList:Ljava/util/List;

    return-void
.end method

.method public setBlackShow(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->blackShow:I

    return-void
.end method

.method public setChat_switch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->chat_switch:I

    return-void
.end method

.method public setContactsShowcountry(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/CountryBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->contactsShowcountry:Ljava/util/List;

    return-void
.end method

.method public setE(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->e:Ljava/lang/String;

    return-void
.end method

.method public setFbShare(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->fbShare:I

    return-void
.end method

.method public setFindYouSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->findYouSwitch:I

    return-void
.end method

.method public setGameSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->gameSwitch:I

    return-void
.end method

.method public setIsActivity(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->isActivity:I

    return-void
.end method

.method public setIsBindMobile(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->isBindMobile:I

    return-void
.end method

.method public setIsCertication(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->isCertication:I

    return-void
.end method

.method public setIsFriendNew(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->isFriendNew:I

    return-void
.end method

.method public setIsFringManager(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->isFringManager:I

    return-void
.end method

.method public setIsLiveManager(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->isLiveManager:I

    return-void
.end method

.method public setKeyPadToneSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->keyPadToneSwitch:I

    return-void
.end method

.method public setLiveOperationVo(Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->liveOperationVo:Lcom/guochao/faceshow/aaspring/beans/LiveOperationVo;

    return-void
.end method

.method public setLiveSpeechOperationLogVo(Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->liveSpeechOperationLogVo:Lcom/guochao/faceshow/aaspring/beans/LiveSpeechOperationLogVo;

    return-void
.end method

.method public setMyNoDisturb(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->myNoDisturb:Ljava/util/List;

    return-void
.end method

.method public setOneToOneGenderSelectPrice(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->oneToOneGenderSelectPrice:I

    return-void
.end method

.method public setPayH5PayFlag(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->payH5PayFlag:I

    return-void
.end method

.method public setPayoneerSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->payoneerSwitch:I

    return-void
.end method

.method public setPayoneerSwitchV2(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->payoneerSwitchV2:I

    return-void
.end method

.method public setPaypalSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->paypalSwitch:I

    return-void
.end method

.method public setPersonalInformationScan(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->personalInformationScan:Ljava/lang/String;

    return-void
.end method

.method public setPkEnableFlag(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->pkEnableFlag:I

    return-void
.end method

.method public setPrivateLiveSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->privateLiveSwitch:I

    return-void
.end method

.method public setRatioFace2face(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->ratioFace2face:I

    return-void
.end method

.method public setRecommendRechargeActivityImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->recommendRechargeActivityImg:Ljava/lang/String;

    return-void
.end method

.method public setRecommendRechargeActivityLiveIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->recommendRechargeActivityLiveIcon:Ljava/lang/String;

    return-void
.end method

.method public setSelectAdvertisement(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->selectAdvertisement:I

    return-void
.end method

.method public setServerTimeDiff(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->serverTimeDiff:J

    return-void
.end method

.method public setServiceChargeOfERC20(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->serviceChargeOfERC20:I

    return-void
.end method

.method public setServiceChargeOfOMMI(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->serviceChargeOfOMNI:I

    return-void
.end method

.method public setServiceChargeOfTRC20(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->serviceChargeOfTRC20:I

    return-void
.end method

.method public setShareUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->shareUrl:Ljava/lang/String;

    return-void
.end method

.method public setThisDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->thisDate:Ljava/lang/String;

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->timeZone:Ljava/lang/String;

    return-void
.end method

.method public setToNoDisturb(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->toNoDisturb:Ljava/util/List;

    return-void
.end method

.method public setTransSwitchEnableFlag(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->transSwitchEnableFlag:I

    return-void
.end method

.method public setUgcDefaultDistance(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->ugcDefaultDistance:I

    return-void
.end method

.method public setUgcMaxDistance(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->ugcMaxDistance:I

    return-void
.end method

.method public setUsdtSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->usdtSwitch:I

    return-void
.end method

.method public setUserLiveBanned(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->userLiveBanned:I

    return-void
.end method

.method public setUserSpeech(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->userSpeech:I

    return-void
.end method

.method public setVideoBarrageSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->videoBarrageSwitch:I

    return-void
.end method

.method public setVideoDiamond(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/config/ServerConfig;->videoDiamond:I

    return-void
.end method
