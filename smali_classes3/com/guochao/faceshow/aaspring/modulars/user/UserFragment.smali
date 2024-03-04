.class public Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;
.source "SourceFile"


# instance fields
.field private d:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;->e:Z

    return-void
.end method

.method static synthetic d2(Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;->e:Z

    return p1
.end method

.method private e2()V
    .locals 4

    .line 1
    invoke-static {}, Lu7/c;->c()Lu7/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu7/c;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zune user: "

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;

    .line 5
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->isTimeout()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;->f2(Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public f2(Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->e()Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSignture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->e()Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSignture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/i;->i(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->g_pay_before_server:Ljava/lang/String;

    const-string v2, "\u8fdb\u5165\u4e2a\u4eba\u4e2d\u5fc3\u91cd\u8bd5\u672a\u5b8c\u6210\u7684\u8ba2\u5355"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-virtual {v2, v1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSignture()Ljava/lang/String;

    move-result-object v1

    const-string v2, "signture"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getSigntureData()Ljava/lang/String;

    move-result-object v1

    const-string v2, "signtureData"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;->getScene()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sceneType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;->e:Z

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->getHttpClient()Lcom/guochao/faceshow/aaspring/base/http/client/a;

    move-result-object v1

    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->GOOGLE_PAY_WAY:Ljava/lang/String;

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment$a;

    invoke-direct {v3, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;Lcom/guochao/faceshow/aaspring/beans/GooglePlayPurchaseResult;)V

    invoke-interface {v1, p0, v2, v0, v3}, Lcom/guochao/faceshow/aaspring/base/http/client/a;->b(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/String;Ljava/util/Map;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/utils/a;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/BaseUserFragment;->onResume()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayPauseUtils;->startVideoPlayPause()V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;->e2()V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->Z()Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/d;->O()V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Ld7/e;->a()Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/user/UserFragment;->d:Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/googlepay/GooglePayOrderViewModel;->checkSavedPayOrder()V

    return-void
.end method
