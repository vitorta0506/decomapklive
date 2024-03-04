.class public Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LIVE_HELLO_JOIN_GROUP:Ljava/lang/String; = "LIVE_HELLO_JOIN_GROUP"

.field public static final MSG_VERSION_CODE:I = 0x2

.field public static MVP_DANMU_ON:I = 0x1

.field public static final MVP_RECOMMEND_IM_LOCK_SUCCESS:Ljava/lang/String; = "MVP_RECOMMEND_IM_LOCK_SUCCESS"

.field public static final RECOMMEND_LOCK_SUCCESS:Ljava/lang/String; = "RECOMMEND_LOCK_SUCCESS"

.field public static final TYPE_ADD_GROUP:Ljava/lang/String; = "TYPE_ADD_GROUP"

.field public static final TYPE_ADMIN_USER:Ljava/lang/String; = "TYPE_ADMIN_USER"

.field public static final TYPE_BAN_TALK_USER:Ljava/lang/String; = "TYPE_BAN_TALK_USER"

.field public static final TYPE_CUSTOM_MSG:Ljava/lang/String; = "TYPE_CUSTOM_MSG"

.field public static final TYPE_FOLLOW_ANCHOR:Ljava/lang/String; = "TYPE_FOLLOW_ANCHOR"

.field public static final TYPE_MEMBER_USER:Ljava/lang/String; = "TYPE_MEMBER_USER"

.field public static final TYPE_MICROPHON:Ljava/lang/String; = "TYPE_MICROPHON"

.field public static final TYPE_MICROPHON_MODE:Ljava/lang/String; = "TYPE_MICROPHON_MODE"

.field public static final TYPE_PUBLIC_NOTICE:Ljava/lang/String; = "TYPE_PUBLIC_NOTICE"

.field public static final TYPE_PUSH_CHECH:Ljava/lang/String; = "TYPE_PUSH_CHECH"

.field public static final TYPE_REMOVE_USER:Ljava/lang/String; = "TYPE_REMOVE_USER"

.field public static final TYPE_SCREEN_SHOT:Ljava/lang/String; = "TYPE_SCREEN_SHOT"

.field public static final TYPE_SEND_GIFT:Ljava/lang/String; = "TYPE_SEND_GIFT"

.field public static final TYPE_SHARE:Ljava/lang/String; = "TYPE_SHARE"

.field public static final TYPE_UPDATE_LIVEINFO:Ljava/lang/String; = "TYPE_UPDATE_LIVEINFO"


# instance fields
.field public action:Z

.field private chatDate:Ljava/lang/Long;

.field private content:Ljava/lang/String;

.field private displayFromNickName:Ljava/lang/String;

.field private transient drawable:Landroid/graphics/drawable/Drawable;

.field public transient finalResultSpannableString:Landroid/text/SpannableStringBuilder;

.field private fromUserAvatar:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userHead"
    .end annotation
.end field

.field private fromUserId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userId"
    .end annotation
.end field

.field private fromUserNickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nickName"
    .end annotation
.end field

.field public giftImg:Ljava/lang/String;

.field public giftNum:Ljava/lang/String;

.field public transient isAppendGiftSpan:Z

.field private isAttention:Ljava/lang/String;

.field private isNewer:I

.field private isOneHello:I

.field private isThankHelloGift:Z

.field private levelId:I

.field private mFromUserCountryFlag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "countryFlag"
    .end annotation
.end field

.field private mFromUserPendant:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "avatar"
    .end annotation
.end field

.field private mGiftId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "giftId"
    .end annotation
.end field

.field private mGiftName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "giftName"
    .end annotation
.end field

.field private mGiftPrice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "giftPrice"
    .end annotation
.end field

.field private mGiftTypeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "giftTypeId"
    .end annotation
.end field

.field private mGiftUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "svga_url"
    .end annotation
.end field

.field public mvpDanmu:I

.field private mvpLevel:I

.field private mvpUrl:Ljava/lang/String;

.field private transient numberSpannable:Landroid/text/SpannableString;

.field private operatedUserImg:Ljava/lang/String;

.field private pkResultsType:I

.field private preferentialLang:Ljava/lang/String;

.field private refusePkInvite:Z

.field private richContent:Ljava/lang/CharSequence;

.field private roomId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "roomId"
        }
        value = "roomID"
    .end annotation
.end field

.field private sendTime:J

.field private serverTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "selectTime"
    .end annotation
.end field

.field private showDanmu:I

.field private showFromUserNickName:Ljava/lang/String;

.field public showMVPDanmu:I

.field private showtranslateContent:Z

.field private toUserAvatar:Ljava/lang/String;

.field public toUserId:Ljava/lang/String;

.field private toUserNickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "toUserNickName"
        }
        value = "toUserName"
    .end annotation
.end field

.field private toUserVipMsgr:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field private translateContent:Ljava/lang/String;

.field private translateing:Z

.field private type:Ljava/lang/String;

.field private userType:I

.field private userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->translateing:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->showtranslateContent:Z

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mvpLevel:I

    const-string v1, ""

    .line 5
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mvpUrl:Ljava/lang/String;

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mvpDanmu:I

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isOneHello:I

    return-void
.end method

.method public static getTypeCustomMsg()Ljava/lang/String;
    .locals 1

    const-string v0, "TYPE_CUSTOM_MSG"

    return-object v0
.end method


# virtual methods
.method public getChatDate()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->chatDate:Ljava/lang/Long;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayFromNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->displayFromNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFinalResultSpannableString()Landroid/text/SpannableStringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->finalResultSpannableString:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public getFromUserAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->fromUserAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUserCountryFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mFromUserCountryFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->fromUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUserNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->fromUserNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUserPendant()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mFromUserPendant:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mGiftId:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->giftImg:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mGiftName:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->giftNum:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mGiftPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftTypeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mGiftTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mGiftUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAttention()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAttention:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNewer()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isNewer:I

    return v0
.end method

.method public getIsOneHello()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isOneHello:I

    return v0
.end method

.method public getLevelId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->levelId:I

    return v0
.end method

.method public getMvpLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mvpLevel:I

    return v0
.end method

.method public getMvpUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mvpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberSpannable()Landroid/text/SpannableString;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->numberSpannable:Landroid/text/SpannableString;

    return-object v0
.end method

.method public getOperatedUserImg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->operatedUserImg:Ljava/lang/String;

    return-object v0
.end method

.method public getPkResultsType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->pkResultsType:I

    return v0
.end method

.method public getRichContent()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->richContent:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getSendTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->sendTime:J

    return-wide v0
.end method

.method public getServerTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->serverTime:J

    return-wide v0
.end method

.method public getShowDanmu()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->showDanmu:I

    return v0
.end method

.method public getShowFromUserNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->showFromUserNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->preferentialLang:Ljava/lang/String;

    return-object v0
.end method

.method public getToUserAvatar()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getToUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getToUserNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getToUserVipMsgr()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserVipMsgr:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserVipMsgr:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserVipMsgr:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public getTranslateContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->translateContent:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->userType:I

    return v0
.end method

.method public getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->version:I

    return v0
.end method

.method public isAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    return v0
.end method

.method public isAppendGiftSpan()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAppendGiftSpan:Z

    return v0
.end method

.method public isOldMessage()Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->version:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRefusePkInvite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->refusePkInvite:Z

    return v0
.end method

.method public isShowtranslateContent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->showtranslateContent:Z

    return v0
.end method

.method public isThankHelloGift()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isThankHelloGift:Z

    return v0
.end method

.method public isTranslateing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->translateing:Z

    return v0
.end method

.method public setAction(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    return-void
.end method

.method public setAppendGiftSpan(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAppendGiftSpan:Z

    return-void
.end method

.method public setChatDate(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->chatDate:Ljava/lang/Long;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->content:Ljava/lang/String;

    return-void
.end method

.method public setDisplayFromNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->displayFromNickName:Ljava/lang/String;

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setFinalResultSpannableString(Landroid/text/SpannableStringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->finalResultSpannableString:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public setFromUserAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->fromUserAvatar:Ljava/lang/String;

    return-void
.end method

.method public setFromUserCountryFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mFromUserCountryFlag:Ljava/lang/String;

    return-void
.end method

.method public setFromUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->fromUserId:Ljava/lang/String;

    return-void
.end method

.method public setFromUserNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->fromUserNickName:Ljava/lang/String;

    return-void
.end method

.method public setFromUserPendant(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mFromUserPendant:Ljava/lang/String;

    return-void
.end method

.method public setGiftId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mGiftId:Ljava/lang/String;

    return-void
.end method

.method public setGiftImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->giftImg:Ljava/lang/String;

    return-void
.end method

.method public setGiftName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mGiftName:Ljava/lang/String;

    return-void
.end method

.method public setGiftNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->giftNum:Ljava/lang/String;

    return-void
.end method

.method public setGiftPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mGiftPrice:Ljava/lang/String;

    return-void
.end method

.method public setGiftTypeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mGiftTypeId:Ljava/lang/String;

    return-void
.end method

.method public setGiftUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mGiftUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsAttention(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isAttention:Ljava/lang/String;

    return-void
.end method

.method public setIsNewer(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isNewer:I

    return-void
.end method

.method public setIsOneHello(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isOneHello:I

    return-void
.end method

.method public setLevelId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->levelId:I

    return-void
.end method

.method public setMvpLevel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mvpLevel:I

    return-void
.end method

.method public setMvpUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mvpUrl:Ljava/lang/String;

    return-void
.end method

.method public setNumberSpannable(Landroid/text/SpannableString;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->numberSpannable:Landroid/text/SpannableString;

    return-void
.end method

.method public setOperatedUserImg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->operatedUserImg:Ljava/lang/String;

    return-void
.end method

.method public setPkResultsType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->pkResultsType:I

    return-void
.end method

.method public setRefusePkInvite(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->refusePkInvite:Z

    return-void
.end method

.method public setRichContent(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->richContent:Ljava/lang/CharSequence;

    return-void
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->roomId:Ljava/lang/String;

    return-void
.end method

.method public setSendTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->sendTime:J

    return-void
.end method

.method public setServerTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->serverTime:J

    return-void
.end method

.method public setShowDanmu(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->showDanmu:I

    return-void
.end method

.method public setShowFromUserNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->showFromUserNickName:Ljava/lang/String;

    return-void
.end method

.method public setShowtranslateContent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->showtranslateContent:Z

    return-void
.end method

.method public setTargetLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->preferentialLang:Ljava/lang/String;

    return-void
.end method

.method public setThankHelloGift(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->isThankHelloGift:Z

    return-void
.end method

.method public setToUserAvatar(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserAvatar:Ljava/lang/String;

    return-void
.end method

.method public setToUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserId:Ljava/lang/String;

    return-void
.end method

.method public setToUserNickName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserNickName:Ljava/lang/String;

    return-void
.end method

.method public setToUserVipMsgr(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->toUserVipMsgr:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public setTranslateContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->translateContent:Ljava/lang/String;

    return-void
.end method

.method public setTranslateing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->translateing:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->type:Ljava/lang/String;

    return-void
.end method

.method public setUserType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->userType:I

    return-void
.end method

.method public setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->userVipMsg:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->version:I

    return-void
.end method
