.class public Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 5

    const-string v0, "userId"

    .line 1
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const-string v3, "0"

    .line 3
    invoke-static {v3, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/push/ThirdPushHelper;->setThirdPushToken(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v3, "userVipInfo"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    const-string v3, "userMVPpInfo"

    invoke-static {v1, v3, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-static {v1, v0, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "txSig"

    invoke-static {v0, v1, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "userToken"

    invoke-static {v0, v1, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "is_login"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    const-string v1, "channel"

    invoke-static {v0, v1, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "last_page"

    .line 11
    invoke-static {p0, v0, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v0, "last_page_home"

    .line 12
    invoke-static {p0, v0, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 13
    invoke-static {}, Lba/a;->r()Lba/a;

    move-result-object p0

    invoke-virtual {p0}, Lba/a;->y()V

    .line 14
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/i;->u()Lcom/guochao/faceshow/aaspring/manager/i;

    move-result-object p0

    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/manager/i;->d:Z

    .line 15
    invoke-static {}, Lcom/guochao/faceshow/utils/PushUtils;->removeAliasRunnable()V

    .line 16
    sput-object v4, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->w:Ljava/lang/String;

    .line 17
    sput-object v4, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->x:Ljava/lang/String;

    .line 18
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    const-string v0, "KEY_LICENCE_DIALOG_HAS_SHOWED"

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 19
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p0

    if-nez p0, :cond_2

    .line 20
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/TXIMUtils;->logoutTIM()V

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p0

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e$a;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object p0

    .line 22
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p0

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p0

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/SimpleObserver;-><init>()V

    invoke-virtual {p0, v0}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    .line 23
    invoke-static {}, Lcom/guochao/faceshow/push/CustomPushReceiver;->a()V

    .line 24
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/manager/a;->g()Lcom/guochao/faceshow/aaspring/manager/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/manager/a;->e()V

    .line 25
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    iput-boolean v3, p0, Lcom/guochao/faceshow/BaseAppContext;->normalLogined:Z

    .line 26
    sget-object p0, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/signin/SigninManager;->resetCount(Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/guochao/faceshow/bean/UserBean;
    .locals 4

    .line 1
    new-instance v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {v0}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    const-string v1, "userToken"

    .line 2
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->token:Ljava/lang/String;

    .line 3
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    const-string v2, "userId"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 4
    iget v1, v0, Lcom/guochao/faceshow/bean/UserBean;->levelId:I

    const-string v2, "levelId"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/bean/UserBean;->levelId:I

    .line 5
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->mobile:Ljava/lang/String;

    const-string v2, "phone"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->mobile:Ljava/lang/String;

    .line 6
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->pwd:Ljava/lang/String;

    const-string v2, "userPwd"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->pwd:Ljava/lang/String;

    .line 7
    iget v1, v0, Lcom/guochao/faceshow/bean/UserBean;->statues:I

    const-string v2, "statues"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/bean/UserBean;->statues:I

    .line 8
    iget v1, v0, Lcom/guochao/faceshow/bean/UserBean;->balance:F

    const-string v2, "balance"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getFloat(Landroid/content/Context;Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/bean/UserBean;->balance:F

    .line 9
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    const-string v2, "nickname"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    .line 10
    iget v1, v0, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    const-string v2, "userSex"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    .line 11
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    const-string v2, "userHeadimg"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 12
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->email:Ljava/lang/String;

    const-string v2, "email"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->email:Ljava/lang/String;

    .line 13
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->intro:Ljava/lang/String;

    const-string v2, "intro"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->intro:Ljava/lang/String;

    .line 14
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->signature:Ljava/lang/String;

    const-string v2, "signature"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->signature:Ljava/lang/String;

    .line 15
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getBirthdayStr()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_birthday"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/bean/UserBean;->setBirthdayStr(Ljava/lang/String;)V

    .line 16
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->job:Ljava/lang/String;

    const-string v2, "job"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->job:Ljava/lang/String;

    .line 17
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->stature:Ljava/lang/String;

    const-string v2, "height"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->stature:Ljava/lang/String;

    .line 18
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->weight:Ljava/lang/String;

    const-string v2, "weight"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->weight:Ljava/lang/String;

    .line 19
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->hobbys:Ljava/lang/String;

    const-string v2, "hobby"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->hobbys:Ljava/lang/String;

    .line 20
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->tencentSignature:Ljava/lang/String;

    const-string v2, "txSig"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->tencentSignature:Ljava/lang/String;

    .line 21
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->payPassword:Ljava/lang/String;

    const-string v2, "payPassword"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->payPassword:Ljava/lang/String;

    .line 22
    new-instance v1, Lcom/guochao/faceshow/bean/UserBean$UserSet;

    invoke-direct {v1}, Lcom/guochao/faceshow/bean/UserBean$UserSet;-><init>()V

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    .line 23
    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->DISTANCE:Ljava/lang/String;

    iget v3, v1, Lcom/guochao/faceshow/bean/UserBean$UserSet;->distance:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/guochao/faceshow/bean/UserBean$UserSet;->distance:I

    .line 24
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->CLOSEDISTANCE:Ljava/lang/String;

    iget v3, v1, Lcom/guochao/faceshow/bean/UserBean$UserSet;->closeDistance:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/guochao/faceshow/bean/UserBean$UserSet;->closeDistance:I

    .line 25
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->FRIENDS:Ljava/lang/String;

    iget v3, v1, Lcom/guochao/faceshow/bean/UserBean$UserSet;->friends:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/guochao/faceshow/bean/UserBean$UserSet;->friends:I

    .line 26
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->NEARBY:Ljava/lang/String;

    iget v3, v1, Lcom/guochao/faceshow/bean/UserBean$UserSet;->nearby:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/guochao/faceshow/bean/UserBean$UserSet;->nearby:I

    .line 27
    new-instance v1, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    invoke-direct {v1}, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;-><init>()V

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    .line 28
    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->DIAMOND:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->diamond:I

    .line 29
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->GAME_COIN:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->tokenNum:I

    .line 30
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->REG_TYPE:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->regType:I

    .line 31
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    iget-object v2, v0, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    iget v2, v2, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->diamond:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lp9/a;->C(IZ)V

    .line 32
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v1

    invoke-virtual {v1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v1

    iget-object v2, v0, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    iget v2, v2, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->tokenNum:I

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setTokenNum(I)V

    .line 33
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->country:Ljava/lang/String;

    const-string v2, "coding"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->country:Ljava/lang/String;

    .line 34
    iget-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    const-string v2, "flag"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    .line 35
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUpdateCopywriting()Ljava/lang/String;

    move-result-object v1

    const-string v2, "updateCopywriting"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/bean/UserBean;->setUpdateCopywriting(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getIsUpdate()I

    move-result v1

    const-string v2, "isUpdate"

    invoke-static {p0, v2, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/bean/UserBean;->setIsUpdate(I)V

    const-string v1, "danmu_switch"

    .line 37
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/bean/UserBean;->setVideoBarrageSwitch(I)V

    const-string v1, "appointState"

    .line 38
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/bean/UserBean;->setAppointState(I)V

    const-string v1, "channel"

    .line 39
    invoke-static {p0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/bean/UserBean;->setChannel(Ljava/lang/String;)V

    const-string v1, "recharged"

    .line 40
    invoke-static {p0, v1, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/guochao/faceshow/bean/UserBean;->setRecharged(I)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/guochao/faceshow/bean/UserBean;
    .locals 5

    const-string v0, "0"

    .line 1
    new-instance v1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    const-string v2, "userToken"

    .line 2
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->token:Ljava/lang/String;

    const-string v2, "userId"

    .line 3
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    const-string v2, "levelId"

    .line 4
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/guochao/faceshow/bean/UserBean;->levelId:I

    const-string v2, "phone"

    .line 5
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->mobile:Ljava/lang/String;

    const-string v2, "userPwd"

    .line 6
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->pwd:Ljava/lang/String;

    const-string v2, "statues"

    .line 7
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/guochao/faceshow/bean/UserBean;->statues:I

    const-string v2, "balance"

    .line 8
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getFloat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/guochao/faceshow/bean/UserBean;->balance:F

    const-string v2, "nickname"

    .line 9
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    const-string v2, "userSex"

    .line 10
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    const-string v2, "userHeadimg"

    .line 11
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    const-string v2, "email"

    .line 12
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->email:Ljava/lang/String;

    const-string v2, "intro"

    .line 13
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->intro:Ljava/lang/String;

    const-string v2, "signature"

    .line 14
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->signature:Ljava/lang/String;

    const-string v2, "user_birthday"

    .line 15
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/bean/UserBean;->setBirthdayStr(Ljava/lang/String;)V

    const-string v2, "job"

    .line 16
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->job:Ljava/lang/String;

    const-string v2, "height"

    .line 17
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->stature:Ljava/lang/String;

    const-string v2, "weight"

    .line 18
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->weight:Ljava/lang/String;

    const-string v2, "hobby"

    .line 19
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->hobbys:Ljava/lang/String;

    const-string v2, "txSig"

    .line 20
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->tencentSignature:Ljava/lang/String;

    const-string v2, "payPassword"

    .line 21
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->payPassword:Ljava/lang/String;

    .line 22
    new-instance v2, Lcom/guochao/faceshow/bean/UserBean$UserSet;

    invoke-direct {v2}, Lcom/guochao/faceshow/bean/UserBean$UserSet;-><init>()V

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    const-string v2, "USER_AVATAR"

    .line 23
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->avatar:Ljava/lang/String;

    const-string v2, "userAge"

    .line 24
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/bean/UserBean;->setUserAge(I)V

    const-string v2, "appointState"

    .line 25
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/bean/UserBean;->setAppointState(I)V

    const-string v2, "riskLevel"

    .line 26
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/bean/UserBean;->setRiskLevel(I)V

    const-string v2, "channel"

    .line 27
    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/bean/UserBean;->setChannel(Ljava/lang/String;)V

    const-string v2, "recharged"

    const/4 v3, 0x0

    .line 28
    invoke-static {p0, v2, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/bean/UserBean;->setRecharged(I)V

    .line 29
    :try_start_0
    iget-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    sget-object v4, Lcom/guochao/faceshow/utils/Contants;->DISTANCE:Ljava/lang/String;

    invoke-static {p0, v4, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/guochao/faceshow/bean/UserBean$UserSet;->distance:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :catch_0
    :try_start_1
    iget-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    sget-object v4, Lcom/guochao/faceshow/utils/Contants;->CLOSEDISTANCE:Ljava/lang/String;

    invoke-static {p0, v4, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/guochao/faceshow/bean/UserBean$UserSet;->closeDistance:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    :catch_1
    :try_start_2
    iget-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    sget-object v4, Lcom/guochao/faceshow/utils/Contants;->FRIENDS:Ljava/lang/String;

    invoke-static {p0, v4, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/guochao/faceshow/bean/UserBean$UserSet;->friends:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 32
    :catch_2
    :try_start_3
    iget-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    sget-object v4, Lcom/guochao/faceshow/utils/Contants;->NEARBY:Ljava/lang/String;

    invoke-static {p0, v4, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/guochao/faceshow/bean/UserBean$UserSet;->nearby:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    nop

    .line 33
    :goto_0
    iget-object v0, v1, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    invoke-direct {v0}, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;-><init>()V

    iput-object v0, v1, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    .line 35
    :cond_0
    iget-object v0, v1, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->DIAMOND:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->diamond:I

    .line 36
    iget-object v0, v1, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->GAME_COIN:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->tokenNum:I

    .line 37
    iget-object v0, v1, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->REG_TYPE:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->regType:I

    .line 38
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    iget-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    iget v2, v2, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->diamond:I

    invoke-virtual {v0, v2, v3}, Lp9/a;->C(IZ)V

    .line 39
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    iget-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    iget v2, v2, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->tokenNum:I

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setTokenNum(I)V

    const-string v0, "CURRENT_COUNTRY"

    .line 40
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 42
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/guochao/faceshow/aaspring/beans/CountryBean;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/CountryBean;

    .line 43
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->getCname()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->country:Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->getLogo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->getLogo()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v1, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    .line 45
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/CountryBean;->getCountry_id()I

    move-result v0

    iput v0, v1, Lcom/guochao/faceshow/bean/UserBean;->countryId:I

    :cond_2
    const-string v0, "userVipInfo"

    .line 46
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 48
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/bean/UserBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    :cond_3
    const-string v0, "userMVPpInfo"

    .line 49
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 51
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    invoke-virtual {v1, p0}, Lcom/guochao/faceshow/bean/UserBean;->setUserMvpInfo(Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;)V

    .line 52
    :cond_4
    invoke-static {}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->instance()Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;

    move-result-object p0

    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/manager/user/UserModelUtils;->convert(Lcom/guochao/faceshow/bean/UserBean;)Lcom/guochao/faceshow/session/model/UserSessionModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/session/viewmodel/UserSessionViewModel;->updateUserSession(Lcom/guochao/faceshow/session/model/UserSessionModel;)V

    return-object v1
.end method

.method public static d(Landroid/content/Context;Lg7/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lg7/a<",
            "Lcom/guochao/faceshow/bean/UserBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x9c43

    if-ne v0, v1, :cond_0

    const v0, 0x7f120207

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 3
    :cond_0
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result v0

    const v1, 0x9c47

    if-ne v0, v1, :cond_2

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->e()Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->m()Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/j;->m()Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/bean/ThirdPartyLoginPlatform;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f120020

    .line 7
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_0

    :cond_1
    const v0, 0x7f12001f

    .line 8
    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lg7/a;->a()I

    move-result p0

    const p1, 0x9c4a

    if-ne p0, p1, :cond_3

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p0

    const p1, 0x7f12067d

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->showToast(Landroid/content/Context;I)Landroid/widget/Toast;

    :cond_3
    return-void
.end method

.method public static e(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Lcom/guochao/faceshow/bean/UserBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/e;->f(Landroid/content/Context;Lcom/guochao/faceshow/bean/UserBean;)V

    return-void
.end method

.method public static f(Landroid/content/Context;Lcom/guochao/faceshow/bean/UserBean;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceCast:LoginHelperhandleSuccess263"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, v1, v1}, Lb8/d;->d(Lb8/a;ZZZ)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/guochao/faceshow/activity/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "with_token"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    const p1, 0x10008000

    .line 6
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 8
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 9
    check-cast p0, Landroid/app/Activity;

    const p1, 0x7f010025

    const v0, 0x7f010026

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 10
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->getInstance()Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveAreaCacheManager;->refreshLiveAreaHistory()V

    .line 11
    sget-object p0, Lcom/guochao/faceshow/signin/SigninManager;->INSTANCE:Lcom/guochao/faceshow/signin/SigninManager;

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/signin/SigninManager;->resetCount(Z)V

    return-void
.end method

.method public static g(Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;Lcom/guochao/faceshow/bean/UserBean;ILcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/LoginCancelAccountDialog$b;)Z
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/LoginCancelAccountDialog;->U1(Landroidx/fragment/app/FragmentManager;Lcom/guochao/faceshow/bean/UserBean;)Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/LoginCancelAccountDialog;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/LoginCancelAccountDialog;->setOnConfirmListener(Lcom/guochao/faceshow/aaspring/modulars/cancelaccount/warndialog/LoginCancelAccountDialog$b;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static h(Landroid/content/Context;Lcom/guochao/faceshow/bean/UserBean;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "is_login"

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setBool(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "FaceCast:LoginHelpertoken"

    .line 2
    invoke-static {v0, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "userToken"

    .line 3
    invoke-static {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/guochao/faceshow/utils/PushUtils;->setJPushAlias(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    const-string p3, "userId"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    sput-object p2, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->w:Ljava/lang/String;

    .line 7
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->token:Ljava/lang/String;

    sput-object p2, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->x:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserAge()I

    move-result p2

    const-string p3, "userAge"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 9
    iget p2, p1, Lcom/guochao/faceshow/bean/UserBean;->levelId:I

    const-string p3, "levelId"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 10
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->mobile:Ljava/lang/String;

    const-string p3, "phone"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->pwd:Ljava/lang/String;

    const-string p3, "userPwd"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget p2, p1, Lcom/guochao/faceshow/bean/UserBean;->statues:I

    const-string p3, "statues"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 13
    iget p2, p1, Lcom/guochao/faceshow/bean/UserBean;->balance:F

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string p3, "balance"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Float;)V

    .line 14
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->nickName:Ljava/lang/String;

    const-string p3, "nickname"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget p2, p1, Lcom/guochao/faceshow/bean/UserBean;->sex:I

    const-string p3, "userSex"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 16
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    const-string p3, "userHeadimg"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->email:Ljava/lang/String;

    const-string p3, "email"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->intro:Ljava/lang/String;

    const-string p3, "intro"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->signature:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    const p3, 0x7f1209bc

    invoke-virtual {p2, p3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->signature:Ljava/lang/String;

    :goto_0
    const-string p3, "signature"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getBirthdayStr()Ljava/lang/String;

    move-result-object p2

    const-string p3, "user_birthday"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->job:Ljava/lang/String;

    const-string p3, "job"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->stature:Ljava/lang/String;

    const-string p3, "height"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->weight:Ljava/lang/String;

    const-string p3, "weight"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->hobbys:Ljava/lang/String;

    const-string p3, "hobby"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->tencentSignature:Ljava/lang/String;

    const-string p3, "txSig"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->payPassword:Ljava/lang/String;

    const-string p3, "payPassword"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getRecharged()I

    move-result p2

    const-string p3, "recharged"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 28
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    if-eqz p2, :cond_2

    .line 29
    sget-object p3, Lcom/guochao/faceshow/utils/Contants;->DISTANCE:Ljava/lang/String;

    iget p2, p2, Lcom/guochao/faceshow/bean/UserBean$UserSet;->distance:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object p2, Lcom/guochao/faceshow/utils/Contants;->CLOSEDISTANCE:Ljava/lang/String;

    iget-object p3, p1, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    iget p3, p3, Lcom/guochao/faceshow/bean/UserBean$UserSet;->closeDistance:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object p2, Lcom/guochao/faceshow/utils/Contants;->FRIENDS:Ljava/lang/String;

    iget-object p3, p1, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    iget p3, p3, Lcom/guochao/faceshow/bean/UserBean$UserSet;->friends:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object p2, Lcom/guochao/faceshow/utils/Contants;->NEARBY:Ljava/lang/String;

    iget-object p3, p1, Lcom/guochao/faceshow/bean/UserBean;->userSet:Lcom/guochao/faceshow/bean/UserBean$UserSet;

    iget p3, p3, Lcom/guochao/faceshow/bean/UserBean$UserSet;->nearby:I

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_2
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    if-eqz p2, :cond_3

    .line 34
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    sget-object p3, Lcom/guochao/faceshow/utils/Contants;->DIAMOND:Ljava/lang/String;

    iget-object v0, p1, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    iget v0, v0, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->diamond:I

    invoke-static {p2, p3, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 35
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    sget-object p3, Lcom/guochao/faceshow/utils/Contants;->GAME_COIN:Ljava/lang/String;

    iget-object v0, p1, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    iget v0, v0, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->tokenNum:I

    invoke-static {p2, p3, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 36
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p2

    sget-object p3, Lcom/guochao/faceshow/utils/Contants;->REG_TYPE:Ljava/lang/String;

    iget-object v0, p1, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    iget v0, v0, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->regType:I

    invoke-static {p2, p3, v0}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 37
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p2

    iget-object p3, p1, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    iget p3, p3, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->diamond:I

    invoke-virtual {p2, p3}, Lp9/a;->B(I)V

    .line 38
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p2

    invoke-virtual {p2}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object p2

    iget-object p3, p1, Lcom/guochao/faceshow/bean/UserBean;->userInfoDetail:Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;

    iget p3, p3, Lcom/guochao/faceshow/bean/UserBean$UserInfoDetail;->tokenNum:I

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setTokenNum(I)V

    .line 39
    :cond_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getIsVip()I

    move-result p2

    if-eqz p2, :cond_4

    .line 40
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getVipInfo()Lb8/g;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "userVipInfo"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_4
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserMvpInfo()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 42
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserMvpInfo()Lcom/guochao/faceshow/bean/UserBean$UserMvpInfo;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "userMVPpInfo"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_5
    new-instance p2, Lcom/guochao/faceshow/aaspring/beans/CountryBean;

    iget-object p3, p1, Lcom/guochao/faceshow/bean/UserBean;->country:Ljava/lang/String;

    iget v0, p1, Lcom/guochao/faceshow/bean/UserBean;->countryId:I

    const-string v1, ""

    invoke-direct {p2, p3, v1, v0}, Lcom/guochao/faceshow/aaspring/beans/CountryBean;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "CURRENT_COUNTRY"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->country:Ljava/lang/String;

    const-string p3, "coding"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    const-string p3, "flag"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUpdateCopywriting()Ljava/lang/String;

    move-result-object p2

    const-string p3, "updateCopywriting"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getIsUpdate()I

    move-result p2

    const-string p3, "isUpdate"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 49
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getVideoBarrageSwitch()I

    move-result p2

    const-string p3, "danmu_switch"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 50
    iget-object p2, p1, Lcom/guochao/faceshow/bean/UserBean;->avatar:Ljava/lang/String;

    const-string p3, "USER_AVATAR"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getAppointState()I

    move-result p2

    const-string p3, "appointState"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 52
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getRiskLevel()I

    move-result p2

    const-string p3, "riskLevel"

    invoke-static {p0, p3, p2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 53
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getChannel()Ljava/lang/String;

    move-result-object p1

    const-string p2, "channel"

    invoke-static {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
