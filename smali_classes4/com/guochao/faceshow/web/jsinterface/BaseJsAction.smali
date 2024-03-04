.class public Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/web/jsinterface/IJSInterface;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseJsAction"


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->handler:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public closeCurrentPage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    const-string p1, "1"

    return-object p1
.end method

.method protected covertArgsToJson(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method public getApiCommon(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;->makeCommon()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/base/httpclient/GCCommonRequestHandler;->makeBase64Common(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAppVersionCode(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/16 p1, 0xb0c

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDiamonds(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getDiamond()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentGameCoin(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->getTokenNum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentLanguage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->c()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "en"

    return-object p1

    :cond_0
    const-string v0, "in"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "id"

    :cond_1
    return-object p1
.end method

.method public getCurrentUserId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->c()Lb8/a;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentUserInfo(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 2
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {p1, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nickName"

    invoke-virtual {p1, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "headImgUrl"

    invoke-virtual {p1, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "token"

    invoke-virtual {p1, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {p1, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getGender()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gender"

    invoke-virtual {p1, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 9
    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getVipLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "vipLevel"

    invoke-virtual {p1, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentUserToken(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->c()Lb8/a;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getToken()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStatusBarHeight(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/StatusBarHelper;->getStatusbarHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p1

    float-to-int p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public goBack(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    const-string p1, "1"

    return-object p1
.end method

.method public goCharge(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "1"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    .line 2
    instance-of v3, v0, Lcom/guochao/faceshow/web/WebViewActivity;

    if-eqz v3, :cond_1

    .line 3
    move-object v3, v0

    check-cast v3, Lcom/guochao/faceshow/web/WebViewActivity;

    .line 4
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, -0x1

    const-string v5, "from"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    const/4 v2, 0x0

    .line 5
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "type"

    .line 6
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v1

    .line 8
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 9
    :cond_2
    instance-of v3, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v3, :cond_3

    .line 10
    move-object v3, v0

    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v3

    .line 12
    instance-of v5, v3, Landroidx/fragment/app/FragmentActivity;

    if-eqz v5, :cond_4

    .line 13
    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    goto :goto_1

    :cond_4
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_5

    .line 14
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v1

    .line 15
    :cond_5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v3

    const-class v5, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {v3, v5}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v3, :cond_6

    .line 16
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->e0()Ld9/g;

    move-result-object v3

    invoke-interface {v3}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    :cond_6
    invoke-static {v0, v2, v4}, Lcom/guochao/faceshow/mine/view/MyWalletActivity;->e0(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "2"

    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move-object p1, v1

    goto :goto_2

    :cond_7
    const-string p1, "0"

    :goto_2
    const-string v3, "isToken"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x20000

    .line 19
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    instance-of p1, v0, Landroid/app/Activity;

    if-nez p1, :cond_8

    const/high16 p1, 0x10000000

    .line 21
    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    :cond_8
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v1
.end method

.method public goFeedbackHistory(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackHistoryActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->checkIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "1"

    return-object p1
.end method

.method public goLive(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction$1;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction$1;-><init>(Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p1, "1"

    return-object p1
.end method

.method public goLiveRanking(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/rank/activity/RankListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->checkIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "1"

    return-object p1
.end method

.method public goToAppMall(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/DressUpMarketActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->checkIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "1"

    return-object p1
.end method

.method public goToFeedback(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackQuestionTypeListActivity;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/customerservice/activity/FeedbackQuestionTypeListActivity;-><init>()V

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v1, "feedback"

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    const-string p1, "1"

    return-object p1
.end method

.method public goToIMChat(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string/jumbo v0, "userId"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v2

    invoke-interface {v2}, Lb8/d;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "0"

    return-object p1

    :cond_0
    const-string/jumbo v2, "userName"

    .line 4
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 6
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/ChatActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "name"

    .line 8
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->checkIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 10
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p1, "1"

    return-object p1
.end method

.method public goToTaskCenterPage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "type"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "activity_task"

    invoke-static {p1, v0}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->start(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string p1, "1"

    return-object p1
.end method

.method public goUgcTopicHomePage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/TopicHomePageActivity;->r0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8df3\u8f6c\u8bdd\u9898\u51fa\u73b0\u9519\u8bef\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debugToast(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :goto_0
    const-string p1, "1"

    return-object p1
.end method

.method public goWithdrawalSpecificationActivity(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "1"

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/H5WithdrawalMoneyWebActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x20000

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_1

    const/high16 v2, 0x10000000

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v0
.end method

.method public openLiveInfoDialog(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string p1, "1"

    return-object p1
.end method

.method public pageLoadSuccess(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "1"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "activityId"

    .line 2
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 3
    sget-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v1, "activity_load_success_3000"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public publishUgc(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/EmptyUtils;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->start(Landroid/content/Context;)V

    return-object v1

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->q0(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/UgcTopicBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/PublishUgcActivity;->start(Landroid/content/Context;)V

    :goto_0
    return-object v1
.end method

.method public setCurrentDiamonds(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "currentDiamonds"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 4
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lp9/a;->C(IZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p1, "1"

    return-object p1
.end method

.method public setCurrentGameCoin(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "currentGameCoin"

    .line 3
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 4
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object v0

    invoke-virtual {v0}, Lp9/a;->e()Lcom/guochao/faceshow/mine/model/MyWalletBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/mine/model/MyWalletBean;->setTokenNum(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p1, "1"

    return-object p1
.end method

.method public shareUrl(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->covertArgsToJson(Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public showDiamondsNotEnoughDialog(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "1"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "type"

    .line 2
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 5
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 6
    move-object v3, v1

    check-cast v3, Landroid/app/Activity;

    goto :goto_1

    .line 7
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_1

    return-object v0

    .line 8
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getInstance()Lcom/guochao/faceshow/aaspring/utils/AppManager;

    move-result-object v4

    const-class v5, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    invoke-virtual {v4, v5}, Lcom/guochao/faceshow/aaspring/utils/AppManager;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->e0()Ld9/g;

    move-result-object v4

    invoke-interface {v4}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v4

    invoke-interface {v4}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getBroadCasterUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string v4, "2"

    .line 10
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    new-instance p1, Lcom/guochao/faceshow/views/e;

    new-instance v1, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction$2;

    invoke-direct {v1, p0, v5}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction$2;-><init>(Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;Ljava/lang/String;)V

    invoke-direct {p1, v3, v1}, Lcom/guochao/faceshow/views/e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/views/e$a;)V

    const v1, 0x7f120828

    .line 12
    invoke-virtual {v3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/views/e;->b(Ljava/lang/CharSequence;)Lcom/guochao/faceshow/views/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/views/e;->show()V

    .line 13
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->o()V

    return-object v0

    .line 14
    :cond_3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object p1

    .line 15
    instance-of v3, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v3, :cond_4

    .line 16
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/firstrecharge/RechargeDialog;->showDialog(Landroidx/fragment/app/FragmentManager;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0

    :cond_4
    if-eqz v2, :cond_5

    .line 17
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1, v1, v5}, Lp9/a;->z(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2

    .line 18
    :cond_5
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1, v5}, Lp9/a;->z(Landroid/app/Activity;Ljava/lang/String;)V

    .line 19
    :goto_2
    invoke-static {}, Lp9/a;->g()Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->o()V

    return-object v0
.end method

.method public showHellStarDialog(Ljava/lang/Object;)Ljava/lang/String;
    .locals 18
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "&name="

    const-string v1, "1"

    const-string/jumbo v2, "userToken"

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/guochao/faceshow/web/jsinterface/BaseJsAction;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2
    new-instance v4, Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "activityId"

    .line 3
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 4
    invoke-static {}, Lc8/b;->k()Lc8/b;

    move-result-object v5

    invoke-virtual {v5}, Lc8/b;->j()Lcom/guochao/faceshow/promotion/data/PromotionData;

    move-result-object v5

    iget-object v5, v5, Lcom/guochao/faceshow/promotion/data/PromotionData;->result:Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;

    invoke-virtual {v5}, Lcom/guochao/faceshow/promotion/data/PromotionData$PromotionResult;->getNormalLive()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;

    .line 5
    iget v6, v15, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    if-ne v4, v6, :cond_0

    .line 6
    iget-object v6, v15, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->shareImgUrl:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/LanguageGetUtils;->isLanguageChinese()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8
    iget-object v7, v15, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->shareTextCn:Ljava/lang/String;

    goto :goto_1

    .line 9
    :cond_1
    iget-object v7, v15, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->shareTextEn:Ljava/lang/String;

    .line 10
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v15, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->webPageUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->getUrlFromType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v9

    invoke-static {v9, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v15, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->webPageUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->getUrlFromType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v10

    invoke-static {v10, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v15, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-static {}, Leb/b;->y()Ljava/lang/String;

    move-result-object v10

    .line 13
    iget v11, v15, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->id:I

    const/4 v12, 0x0

    .line 14
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v15, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appScheme:Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;->getSchemeData()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 15
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, v15, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->appScheme:Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;

    invoke-virtual {v7}, Lcom/guochao/faceshow/promotion/data/ShortVideoActivityScheme;->getSchemeData()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "h5Url"

    .line 16
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "isNeedToken"

    .line 17
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    const-string v8, "shareTitle"

    .line 18
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "shareText"

    .line 19
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "shareImg"

    .line 20
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "h5Type"

    .line 21
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v12, "isShare"

    .line 22
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->getUrlFromType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v15, Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;->name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    move-object v13, v10

    move-object v10, v8

    move-object v6, v9

    move-object v9, v14

    goto :goto_2

    :cond_2
    move-object v13, v6

    move-object v6, v7

    move-object v14, v9

    move-object v9, v8

    .line 25
    :goto_2
    new-instance v7, Lcom/guochao/faceshow/promotion/view/WebViewDialog;

    invoke-direct {v7}, Lcom/guochao/faceshow/promotion/view/WebViewDialog;-><init>()V

    .line 26
    instance-of v8, v3, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    if-eqz v8, :cond_0

    .line 27
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v16, 0x1

    if-nez v8, :cond_4

    .line 28
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    const/16 v16, 0x0

    .line 29
    :cond_4
    :goto_3
    move-object v8, v3

    check-cast v8, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v11, v6

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v17

    invoke-virtual/range {v7 .. v16}, Lcom/guochao/faceshow/promotion/view/WebViewDialog;->R1(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/guochao/faceshow/promotion/data/PromotionData$ResultItem;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    return-object v1
.end method
