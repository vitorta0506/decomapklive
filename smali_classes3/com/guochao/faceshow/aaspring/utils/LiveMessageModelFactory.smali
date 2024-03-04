.class public Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CLAZZ_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_TYPE:Ljava/lang/reflect/Type;

.field static final LOG_TAG:Ljava/lang/String; = "LiveMessageModelFactory"


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameUpdateMessage;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameLuckyResultMessage;

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameSwitchSeatMessage;

    const-class v3, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;

    const-class v4, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;

    const-class v5, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;

    const-class v6, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;

    const-class v7, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;

    const-class v8, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;

    const-class v9, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyRunwayMessage;

    const-class v10, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    const-class v11, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    const-class v12, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sput-object v13, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->CLAZZ_MAP:Ljava/util/HashMap;

    .line 2
    const-class v14, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/reflect/Type;

    const/16 v16, 0x0

    const-class v17, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    aput-object v17, v15, v16

    move-object/from16 v16, v0

    const/4 v0, 0x0

    invoke-static {v0, v14, v15}, Lcom/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    const-string v0, "LIVE_UPDATE_LIVEINFO"

    .line 3
    invoke-virtual {v13, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_UPDATE_PK_INFO"

    .line 4
    invoke-virtual {v13, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_PK_MERGE_SUCCESS"

    .line 5
    invoke-virtual {v13, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LINK_MIC"

    .line 6
    invoke-virtual {v13, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LINKMIC_RESPONSE"

    .line 7
    invoke-virtual {v13, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LINKMIC_APPLY"

    .line 8
    invoke-virtual {v13, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LINKMIC_CANCEL"

    .line 9
    invoke-virtual {v13, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LINKMIC_PLAYSUCCESS"

    .line 10
    invoke-virtual {v13, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LINKMIC_PUSHSUCCESS"

    .line 11
    invoke-virtual {v13, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_UPDATE_LINKMIC_INFO"

    .line 12
    invoke-virtual {v13, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LINKMIC_MIXED"

    .line 13
    invoke-virtual {v13, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;

    const-string v8, "LIVE_UPDATE_LIVEINFO_V2"

    invoke-virtual {v13, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_UPDATE_ACTIVITY"

    .line 15
    invoke-virtual {v13, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_UPDATE_ACTIVITY_V2"

    .line 16
    invoke-virtual {v13, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/TreasureMessage;

    const-string v7, "LIVE_TREASURE_MSG"

    invoke-virtual {v13, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    const-string v7, "LIVE_VOICE_RUNWAY_MSG"

    invoke-virtual {v13, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    const-string v7, "LIVE_VOICE_RUNWAY_LUCKY_MSG"

    invoke-virtual {v13, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage;

    const-string v7, "LIVE_RUNWAY_MSG"

    invoke-virtual {v13, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    const-string v7, "LIVE_RUNWAY_MSG_V2"

    invoke-virtual {v13, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftDiamondsMessage;

    const-string v7, "LIVE_RUNWAY_LUCKY_MSG"

    invoke-virtual {v13, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    const-string v7, "LIVE_RUNWAY_LUCKY_MSG_V2"

    invoke-virtual {v13, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$LuckyGiftRunwayMessage;

    const-string v7, "LIVE_RUNWAY_MULTIPLE_LUCKY_MSG"

    invoke-virtual {v13, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    const-string v7, "LIVE_HAPPY_RUNWAY"

    invoke-virtual {v13, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/RunwayMessage$BigGiftBean;

    const-string v7, "LIVE_VOICE_HAPPY_RUNWAY"

    invoke-virtual {v13, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;

    const-string v7, "LIVE_VOLUME"

    invoke-virtual {v13, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkFCoinMessage;

    const-string v7, "LIVE_UPDATE_PK_COINS"

    invoke-virtual {v13, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkChangeUiMessage;

    const-string v7, "LIVE_CHANGE_PK"

    invoke-virtual {v13, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_PK_RESULT"

    .line 30
    invoke-virtual {v13, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LEAVE_PK"

    .line 31
    invoke-virtual {v13, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/SwitchUrlMessage;

    const-string v6, "LIVE_GET_URL"

    invoke-virtual {v13, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveFullScreenMessage;

    const-string v6, "LIVE_EVENT_ANIM"

    invoke-virtual {v13, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GroupDismissMessage;

    const-string v6, "LOCAL_GROUP_DISSMISS"

    invoke-virtual {v13, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    const-string v6, "LIVE_SEND_GIFT"

    invoke-virtual {v13, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_REMOTE_READY"

    .line 36
    invoke-virtual {v13, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_REMOTE_START"

    .line 37
    invoke-virtual {v13, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_REMOTE_UPDATE"

    .line 38
    invoke-virtual {v13, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_REMOTE_REMOVE"

    .line 39
    invoke-virtual {v13, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_REMOTE_CANCEL"

    .line 40
    invoke-virtual {v13, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_REMOTE_ROUND"

    .line 41
    invoke-virtual {v13, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GAME_DION"

    .line 42
    invoke-virtual {v13, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GAME_GUESS"

    .line 43
    invoke-virtual {v13, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_REMOTE_WIN"

    .line 44
    invoke-virtual {v13, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_REMOTE_READY_V_COIN"

    .line 45
    invoke-virtual {v13, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_REMOTE_START_V_COIN"

    .line 46
    invoke-virtual {v13, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_REMOTE_UPDATE_V_COIN"

    .line 47
    invoke-virtual {v13, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_REMOTE_REMOVE_V_COIN"

    .line 48
    invoke-virtual {v13, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_REMOTE_ROUND_V_COIN"

    .line 49
    invoke-virtual {v13, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_REMOTE_WIN_V_COIN"

    .line 50
    invoke-virtual {v13, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_GAME_PREPARE"

    .line 51
    invoke-virtual {v13, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_GAME_PREPARE_V_COIN"

    .line 52
    invoke-virtual {v13, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_GAME_JOIN"

    .line 53
    invoke-virtual {v13, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_GAME_JOIN_V_COIN"

    .line 54
    invoke-virtual {v13, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_GAME_SWITCH_SEAT"

    .line 55
    invoke-virtual {v13, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_GAME_SWITCH_SEAT_V_COIN"

    .line 56
    invoke-virtual {v13, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_NUMBER_RESULT"

    .line 57
    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_NUMBER_RESULT_V_COIN"

    .line 58
    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_REMOTE_UPDATE_V2"

    move-object/from16 v1, v16

    .line 59
    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_LUCKY_REMOTE_UPDATE_V2_COIN"

    .line 60
    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LIVE_HOUR_RANK"

    .line 61
    invoke-virtual {v13, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAcceptLinkMicModel(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    .line 3
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p0

    invoke-interface {p0}, Lb8/d;->c()Lb8/a;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/bean/UserBean;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/bean/UserBean;->getAge()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->setAge(Ljava/lang/String;)V

    .line 6
    iget p0, p0, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->setSex(Ljava/lang/String;)V

    .line 7
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_LINKMIC_RESPONSE"

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createAdminModel(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    iput-boolean p2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setOperatedUserImg(Ljava/lang/String;)V

    const-string p0, "TYPE_ADMIN_USER"

    .line 6
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 7
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_ADMIN_USER"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createApplyLinkMicModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;-><init>()V

    const-string v1, "apply"

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getAge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->setAge(Ljava/lang/String;)V

    .line 5
    iget v1, v1, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->setSex(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->getStreamId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->setStreamId(Ljava/lang/String;)V

    .line 7
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_LINKMIC_APPLY"

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createAudienceListInfoModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/AudienceListInfoMessage;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_UPDATE_LIVEINFO_V2"

    invoke-direct {v0, v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object v0
.end method

.method public static createAudioStatusChangeModel(ZLjava/lang/String;Ljava/lang/String;J)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;-><init>()V

    .line 2
    iput-boolean p0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    .line 3
    invoke-virtual {v0, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    const-string p0, "audio"

    .line 6
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 7
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_LINKMIC_VOICE"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createBanSomebodyTalkModel(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    const-string v1, "TYPE_BAN_TALK_USER"

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setAction(Z)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setOperatedUserImg(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 7
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_BAN_TALK_USER"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createBroadCastThankMessageModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserAvatar(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getToUserNickName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    const-string p0, "LIVE_BROADCAST_THANK_HELLO_GIFT"

    .line 5
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 6
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object v1
.end method

.method public static createCallingBtnOpenMessage(Z)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    iput-boolean p0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    .line 3
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_CALLING_BTN_SWITCH"

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createCancelApplyLinkMicModel(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;-><init>()V

    const-string v1, "cancel"

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_LINKMIC_CANCEL"

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createCancelPkMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    const-string v1, "LIVE_CANCEL_PK_INVITE"

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setRoomId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 8
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createChatMessage(Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Lcom/guochao/faceshow/bean/UserBean;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            "Lcom/guochao/faceshow/bean/UserBean;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setGiftId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setGiftImg(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setGiftName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getSizeType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setGiftTypeId(Ljava/lang/String;)V

    .line 6
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, p6}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setGiftNum(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getFprice()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object p6

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getFprice()Ljava/lang/String;

    move-result-object p6

    :goto_0
    invoke-virtual {v0, p6}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setGiftPrice(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setGiftUrl(Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 9
    invoke-virtual {p3}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p3}, Lcom/guochao/faceshow/bean/UserBean;->getLevel()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setLevelId(I)V

    .line 11
    invoke-virtual {p3}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p3}, Lcom/guochao/faceshow/bean/UserBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserAvatar(Ljava/lang/String;)V

    .line 13
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 14
    invoke-virtual {v0, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setContent(Ljava/lang/String;)V

    .line 15
    :cond_3
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 16
    invoke-virtual {v0, p7}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 17
    :cond_4
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 18
    invoke-virtual {v0, p8}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 19
    :cond_5
    invoke-virtual {v0, p5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setUserType(I)V

    .line 20
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setChatDate(Ljava/lang/Long;)V

    .line 23
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p1
.end method

.method public static createFocusBroadCasterModel(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    iput-boolean p3, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setLevelId(I)V

    const-string p0, "TYPE_FOLLOW_ANCHOR"

    .line 6
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 7
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_FOLLOW_ANCHOR"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createGiftMessageModel(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;Ljava/util/List;Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;ZI)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;",
            "ZI)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setGiftId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setGiftImg(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setGiftName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getSizeType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setGiftTypeId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->getSendNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setGiftNum(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getFprice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getPrice()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getFprice()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setGiftPrice(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setGiftUrl(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->getToUserIds()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserAvatar(Ljava/lang/String;)V

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->d:Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserVipMsgr(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 13
    :cond_1
    invoke-virtual {v0, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setIsHelloGift(I)V

    if-eqz p3, :cond_2

    .line 14
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setGiftSendList(Ljava/util/List;)V

    .line 15
    :cond_2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setItemBean(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x0

    .line 17
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x1

    if-ge p2, p3, :cond_4

    .line 18
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;

    iget-object p3, p3, Lcom/guochao/faceshow/aaspring/modulars/gift/fragment/GiftFragment$r;->b:Ljava/lang/String;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, p4

    if-eq p2, p3, :cond_3

    const-string p3, " , "

    .line 20
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 21
    :cond_4
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p2

    invoke-interface {p2}, Lb8/d;->c()Lb8/a;

    move-result-object p2

    check-cast p2, Lp7/h;

    .line 22
    invoke-interface {p2}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserAvatar(Ljava/lang/String;)V

    .line 23
    invoke-interface {p2}, Lp7/h;->getCurrentUserId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 24
    invoke-interface {p2}, Lp7/h;->getUserName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, p4, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;->setIsGiftAllSend(I)V

    .line 27
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_SEND_GIFT"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createHangupModel(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_LINKMIC_HANGUP"

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createHelloUserJoinModel(I)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setIsOneHello(I)V

    const-string p0, "LIVE_HELLO_JOIN_GROUP"

    .line 3
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object v1
.end method

.method public static createHourRankMessage(Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourRank()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->setNowHourRank(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getNowHourCountryRank()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->setNowHourCountryRank(I)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourRank()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->setPreHourRank(Ljava/lang/Integer;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->getPreHourCountryRank()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->setPreHourCountryRank(Ljava/lang/Integer;)V

    .line 6
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_HOUR_RANK"

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createInvitedPlaySuccessMessageModel()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_PK_INVITED_PLAY_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object v0
.end method

.method public static createInviterPlaySuccessMessageModel()Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_PK_INVITER_PLAY_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object v0
.end method

.method public static createLeavePkMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 6
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->setResult(I)V

    const-string p0, "LIVE_LEAVE_PK"

    .line 7
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->setPunishment(Z)V

    .line 9
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p1
.end method

.method public static createLinkMicInfoModel(JLjava/util/List;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->setMatchList(Ljava/util/List;)V

    .line 4
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_UPDATE_LINKMIC_INFO"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LiveMessageModelFactory"

    invoke-static {p2, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static createLinkMicStatusChangeModel(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Z)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;",
            "Z)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;-><init>()V

    xor-int/lit8 p1, p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v0, "LIVE_LINKMIC_MICLOCK"

    invoke-direct {p1, v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p1
.end method

.method public static createLiveActivityModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_UPDATE_ACTIVITY"

    invoke-direct {v0, v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object v0
.end method

.method public static createLiveFullScreenActivityModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;->getOtherAppActivityGiftList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveActivityMessage;->setOtherAppActivityGiftList(Ljava/util/List;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_UPDATE_ACTIVITY_V2"

    invoke-direct {v0, v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object v0
.end method

.method public static createLiveGameJoinMessage(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;ILcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;J)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            "I",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;",
            "J)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;-><init>(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;->setPosition(I)V

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->setRoundId(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;->self()Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;->setLiveGameUserInfo(Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;)V

    .line 5
    invoke-virtual {v0, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 6
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    const-string p0, "LIVE_GAME_JOIN_V_COIN"

    goto :goto_0

    :cond_0
    const-string p0, "LIVE_GAME_JOIN"

    :goto_0
    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p1
.end method

.method public static createLiveGamePrepareMessage(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;-><init>(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;->setLiveGameConfig(Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;)V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->setRoundId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/LiveGameConfig;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;->self()Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGamePrepareMessage;->setLiveGameUserInfo(Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;)V

    .line 6
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const-string p0, "LIVE_GAME_PREPARE_V_COIN"

    goto :goto_0

    :cond_1
    const-string p0, "LIVE_GAME_PREPARE"

    :goto_0
    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p1
.end method

.method public static createLiveGameSwitchSeatMessage(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;IILjava/lang/String;J)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            "II",
            "Ljava/lang/String;",
            "J)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameSwitchSeatMessage;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameSwitchSeatMessage;-><init>(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;->setPosition(I)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameSwitchSeatMessage;->setFromPosition(I)V

    .line 4
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveGameMessage;->setRoundId(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;->self()Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameJoinMessage;->setLiveGameUserInfo(Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;)V

    .line 6
    invoke-virtual {v0, p4, p5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 7
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    const-string p0, "LIVE_GAME_SWITCH_SEAT_V_COIN"

    goto :goto_0

    :cond_0
    const-string p0, "LIVE_GAME_SWITCH_SEAT"

    :goto_0
    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p1
.end method

.method public static createLiveGameUpdateMessage(Ljava/util/List;J)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;",
            ">;J)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameUpdateMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameUpdateMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameUpdateMessage;-><init>(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameUpdateMessage;->setGameInfoList(Ljava/util/List;)V

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveGamePollDetail;->getFlag()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    const-string p0, "LIVE_LUCKY_REMOTE_UPDATE_V2_COIN"

    goto :goto_0

    :cond_0
    const-string p0, "LIVE_LUCKY_REMOTE_UPDATE_V2"

    .line 5
    :goto_0
    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p1
.end method

.method public static createLuckyCancelMessage(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameCancelBean;",
            ">;J",
            "Ljava/lang/String;",
            "I)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->from(Lcom/guochao/faceshow/bean/UserBean;Ljava/util/List;JLjava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p2
.end method

.method public static createLuckyNumberResultMessage(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;J)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;",
            "Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;",
            "Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;",
            "J)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameLuckyResultMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameLuckyResultMessage;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameLuckyResultMessage;-><init>(Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameLuckyResultMessage;->setLuckyNumberStartGameBean(Lcom/guochao/faceshow/aaspring/beans/LuckyNumberStartGameBean;)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/model/LiveGameLuckyResultMessage;->setWinner(Lcom/guochao/faceshow/aaspring/beans/LiveGameUserInfo;)V

    .line 4
    invoke-virtual {v0, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;->getFlag()I

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    const-string p0, "LIVE_LUCKY_NUMBER_RESULT_V_COIN"

    goto :goto_0

    :cond_0
    const-string p0, "LIVE_LUCKY_NUMBER_RESULT"

    :goto_0
    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p1
.end method

.method public static createLuckyReadyMessageModel(Ljava/lang/String;Lcom/guochao/faceshow/bean/UserBean;ILjava/util/List;JLjava/lang/String;II)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/bean/UserBean;",
            "I",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;J",
            "Ljava/lang/String;",
            "II)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v1, p3

    move v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    .line 1
    invoke-static/range {v0 .. v9}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->from(Lcom/guochao/faceshow/bean/UserBean;Ljava/util/List;IIJLjava/lang/String;III)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-object v2, p0

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object v1
.end method

.method public static createLuckyStartMessageModel(Ljava/lang/String;Lcom/guochao/faceshow/bean/UserBean;Ljava/util/List;IIJLjava/lang/String;III)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/bean/UserBean;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;IIJ",
            "Ljava/lang/String;",
            "III)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static/range {p1 .. p10}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->from(Lcom/guochao/faceshow/bean/UserBean;Ljava/util/List;IIJLjava/lang/String;III)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p2
.end method

.method public static createLuckyUserRemoveMessage(Ljava/lang/String;Lcom/guochao/faceshow/bean/UserBean;Ljava/util/List;IIJLjava/lang/String;IIII)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/bean/UserBean;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;IIJ",
            "Ljava/lang/String;",
            "IIII)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 1
    invoke-static/range {v0 .. v11}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->from(Lcom/guochao/faceshow/bean/UserBean;Ljava/util/List;IIJLjava/lang/String;ILjava/util/List;III)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    move-object v2, p0

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object v1
.end method

.method public static createLuckyUserUpdateMessage(Ljava/lang/String;Lcom/guochao/faceshow/bean/UserBean;Ljava/util/List;IIJLjava/lang/String;III)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/bean/UserBean;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/JoinGameUser;",
            ">;IIJ",
            "Ljava/lang/String;",
            "III)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static/range {p1 .. p10}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;->from(Lcom/guochao/faceshow/bean/UserBean;Ljava/util/List;IIJLjava/lang/String;III)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyUserUpdateMessage;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p2
.end method

.method public static createLuckyWinMessage(Ljava/lang/String;Lcom/guochao/faceshow/bean/UserBean;ILjava/lang/String;Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/guochao/faceshow/bean/UserBean;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;->from(Lcom/guochao/faceshow/bean/UserBean;ILjava/lang/String;Ljava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveLuckyWinMessage;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p2
.end method

.method public static createMemberModel(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    iput-boolean p2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setOperatedUserImg(Ljava/lang/String;)V

    const-string p0, "TYPE_MEMBER_USER"

    .line 6
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 7
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_MEMBER_USER"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createMixedFlowModel(JLjava/util/List;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 3
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicInfoMessage;->setMatchList(Ljava/util/List;)V

    .line 4
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_LINKMIC_MIXED"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createNatureChangeModel(Z)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    iput-boolean p0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    .line 3
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_ROOM_NATURE"

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createNoticModel(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setContent(Ljava/lang/String;)V

    .line 3
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LOCAL_LIVE_NOTICE"

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createPkChangeUiModel(Lcom/guochao/faceshow/aaspring/beans/PkRound;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/PkRound;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkChangeUiMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkChangeUiMessage;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkChangeUiMessage;->setPkRound(Lcom/guochao/faceshow/aaspring/beans/PkRound;)V

    .line 3
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_CHANGE_PK"

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createPkFCoinMessageModel(J)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/PkFCoinMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkFCoinMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkFCoinMessage;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkFCoinMessage;->setFCoin(J)V

    .line 3
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_UPDATE_PK_COINS"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createPkMergeStreamSuccessModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;J)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;",
            "J)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->setPk(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;)V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->setJsUrl(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->setJsUrl(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 8
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_PK_MERGE_SUCCESS"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createPkMessageModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    const-string p0, "LIVE_BEGIN_PK"

    .line 6
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p1
.end method

.method public static createPkPollMessageModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;J)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;",
            "J)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoResult;->setPk(Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;)V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getLeftAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->setJsUrl(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser;->getRightAnchorMsg()Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkUser$PkUserInfo;->setJsUrl(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 8
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_UPDATE_PK_INFO"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createPkReplyMessageModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    invoke-virtual {v0, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setAction(Z)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p5}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setRefusePkInvite(Z)V

    const-string p0, "LIVE_REPLY_PK_INVITE"

    .line 8
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 9
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p1
.end method

.method public static createPkResultMessageModel(ILjava/lang/String;Ljava/lang/String;Z)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->setResult(I)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->setFcoin(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->setOtherFcoin(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/PkResultMessage;->setPunishment(Z)V

    const-string p0, "LIVE_PK_RESULT"

    .line 6
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {p1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p1
.end method

.method public static createPlaySuccessModel(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;-><init>()V

    const-string v1, "apply"

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->setLiveInfoMatchBean(Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;)V

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getStreamId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->setStreamId(Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_LINKMIC_PLAYSUCCESS"

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createPushSuccessModel(Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;-><init>()V

    const-string v1, "apply"

    .line 2
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    .line 4
    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getAge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->setAge(Ljava/lang/String;)V

    .line 5
    iget v1, v1, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->setSex(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMicApplyResult;->getStreamId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->setStreamId(Ljava/lang/String;)V

    .line 7
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_LINKMIC_PUSHSUCCESS"

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createReceiveHelloGift(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getLevelId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setLevelId(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserAvatar(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    const-string p0, "LIVE_RECEIVE_HELLO_GIFT"

    .line 7
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object v1
.end method

.method public static createReceiveHelloGiftThank(Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/GiftLiveMessage;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getLevelId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setLevelId(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserAvatar(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getFromUserNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    const-string p0, "LIVE_RECEIVE_HELLO_GIFT_THANK"

    .line 7
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    invoke-direct {v1, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object v1
.end method

.method public static createRejectLinkMicModel(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    .line 3
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_LINKMIC_RESPONSE"

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createScreenShotBtnOpenMessage(Z)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    iput-boolean p0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    .line 3
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_SCREENSHOT_BTN_SWITCH"

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createStartMergeModel(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    .line 3
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;->setStreamId(Ljava/lang/String;)V

    .line 5
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_LINKMIC_START_MERGE_STREAM"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createTakeSeatModel(Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;->getSmallImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserAvatar(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;->getSmallImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setOperatedUserImg(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomCMDMessageModel$VoiceRoomCMDUserOnSeatMessageModel;->getLevelId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setLevelId(I)V

    const-string p0, "TYPE_CUSTOM_MSG"

    .line 10
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 11
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string v1, "LIVE_TAKE_SEAT"

    invoke-direct {p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createTextModel(Ljava/lang/String;ZZ)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setContent(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setShowDanmu(I)V

    .line 4
    iput p2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->mvpDanmu:I

    if-eqz p2, :cond_0

    .line 5
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_bullet_chat:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 6
    :cond_0
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_CUSTOM_MSG"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createTobeMemberModel(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "I)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;-><init>()V

    .line 2
    iput-boolean p2, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserNickName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserAvatar(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setOperatedUserImg(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setLevelId(I)V

    const-string p0, "TYPE_CUSTOM_MSG"

    .line 10
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 11
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_TOBE_MEMBER_USER"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createVideoStatusChangeModel(ZLjava/lang/String;Ljava/lang/String;J)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LinkMicMessage;-><init>()V

    .line 2
    iput-boolean p0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->action:Z

    .line 3
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setServerTime(J)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setToUserNickName(Ljava/lang/String;)V

    const-string p0, "video"

    .line 6
    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setType(Ljava/lang/String;)V

    .line 7
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_LINKMIC_VIDEO"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createVolumeModel(D)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;-><init>()V

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;->setAverageVolume(D)V

    .line 3
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_VOLUME"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static createVolumeModel(DLjava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;-><init>()V

    .line 5
    invoke-virtual {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;->setAverageVolume(D)V

    .line 6
    invoke-virtual {v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->setFromUserId(Ljava/lang/String;)V

    .line 7
    new-instance p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const-string p1, "LIVE_VOLUME"

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;-><init>(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;)V

    return-object p0
.end method

.method public static parseModel(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "cmd"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "c2c_gift"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "c2c_fsx1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->CLAZZ_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/LiveMessageModelFactory;->DEFAULT_TYPE:Ljava/lang/reflect/Type;

    goto :goto_0

    .line 7
    :cond_0
    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 8
    :goto_0
    sget-object v2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->K5:Lcom/google/gson/Gson;

    invoke-virtual {v2, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/aaspring/modulars/live/model/LiveMessageModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    const-string v0, "LiveMessageModelFactory"

    const-string v2, "parseModel json error: "

    .line 9
    invoke-static {v0, v2, p0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v1
.end method
