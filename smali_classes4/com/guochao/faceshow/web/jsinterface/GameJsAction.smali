.class public Lcom/guochao/faceshow/web/jsinterface/GameJsAction;
.super Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mLiveGameBean:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mLiveInfo:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;

.field mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V
    .locals 1
    .param p3    # Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/web/jsinterface/GameJsAction;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/guochao/faceshow/web/jsinterface/GameJsAction;->mLiveInfo:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;

    .line 4
    iput-object p3, p0, Lcom/guochao/faceshow/web/jsinterface/GameJsAction;->mLiveGameBean:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;Landroid/webkit/WebView;)V
    .locals 0
    .param p3    # Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/web/jsinterface/GameJsAction;-><init>(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;)V

    .line 6
    iput-object p4, p0, Lcom/guochao/faceshow/web/jsinterface/GameJsAction;->webView:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public exitGame(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/web/jsinterface/GameJsAction;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/io/Closeable;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    check-cast p1, Ljava/io/Closeable;

    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCurrentGameInfo(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/web/jsinterface/GameJsAction;->mLiveGameBean:Lcom/guochao/faceshow/aaspring/beans/LiveGameBean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentLiveRoomInfo(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/web/jsinterface/GameJsAction;->mLiveInfo:Lcom/guochao/faceshow/aaspring/modulars/game/WebGameFragment$LiveInfo;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public openLiveInfoDialog(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/web/jsinterface/GameJsAction;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LivePeopleInfoCardFragment;->showPeopleInfo(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V
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

.method public playWinAnimation(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->onCallBack:Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction$OnCallBack;->playWinAnimation()V

    :cond_0
    const-string p1, "1"

    return-object p1
.end method

.method public sendGiftToLiveRoom(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "giftNum"

    const-string v1, "1"

    :try_start_0
    const-string v2, "js \u8c03\u7528 \u9001\u793c\u63a5\u53e3"

    .line 1
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/ToastUtils;->debug(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    .line 2
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;

    const-string v3, "giftId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p1, v3, v4}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;-><init>(Ljava/lang/String;Z)V

    const-string v3, "liveId"

    .line 4
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setBusinessId(Ljava/lang/String;)V

    const-string v3, "giftUnitPrice"

    .line 5
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSinglePrice(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSendNumber(I)V

    const-string v3, "0"

    .line 7
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setUseDiamonds(Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/guochao/faceshow/web/jsinterface/GameJsAction;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    .line 9
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->e0()Ld9/g;

    move-result-object v3

    invoke-interface {v3}, Ld9/e;->getCurrentLiveRoom()Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->isMultiLiveRoom()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    .line 10
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSendType(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 11
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSendType(I)V

    :goto_0
    const-string v3, "anchorId"

    .line 12
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 13
    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setToUserIds(Ljava/util/List;)V

    .line 14
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;->setSendNumber(I)V

    .line 15
    new-instance v0, Lcom/guochao/faceshow/web/jsinterface/GameJsAction$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/web/jsinterface/GameJsAction$1;-><init>(Lcom/guochao/faceshow/web/jsinterface/GameJsAction;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/gift/GiftSender;->sendGift(Lcom/guochao/faceshow/aaspring/modulars/gift/SendGiftRequestModel;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method public setFoucesd(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "userId"

    .line 2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    const-string v2, "focused"

    .line 3
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4
    new-instance v1, Ly7/e;

    invoke-direct {v1, p1}, Ly7/e;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v1, p1}, Ly7/e;->h(Z)V

    .line 6
    invoke-virtual {v1, v0}, Ly7/e;->g(Z)V

    .line 7
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
