.class public Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;-><init>()V

    return-void
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;->l0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic i0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;->o0()V

    return-void
.end method

.method private l0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/imsdk/v2/V2TIMManager;->getConversationManager()Lcom/tencent/imsdk/v2/V2TIMConversationManager;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;Ljava/util/List;)V

    const-string p1, "c2c_-10000"

    invoke-virtual {v0, p1, v1}, Lcom/tencent/imsdk/v2/V2TIMConversationManager;->getConversation(Ljava/lang/String;Lcom/tencent/imsdk/v2/V2TIMValueCallback;)V

    return-void
.end method

.method private o0()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 2
    new-instance v3, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    invoke-direct {v3}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;-><init>()V

    .line 3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setDatas(Ljava/util/List;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->hideFooterView()V

    return-void
.end method


# virtual methods
.method public canLoadMore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canRefresh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;ILcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->initView()V

    const v0, 0x7f120697

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const v1, 0x7f0603ce

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method public k0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;ILcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->d(ILcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;)V

    return-void
.end method

.method public loadData(I)V
    .locals 0

    return-void
.end method

.method public loadNetData()V
    .locals 3

    .line 1
    const-class v0, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    const-string v1, "AuthorityNotifyBean"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/manager/b;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->setDatas(Ljava/util/List;)V

    :cond_0
    const-string v0, "tokens/user/message/findSysMessageList"

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;)V

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public m0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2
.end method

.method public n0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;ILcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->f()V

    const/4 p2, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getMessageType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    .line 3
    :goto_0
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;->getUnreadCount()I

    move-result p3

    const-string v1, "system_official"

    invoke-static {v1, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->read(Ljava/lang/String;I)V

    if-eq v0, p2, :cond_4

    const/4 p2, 0x2

    if-eq v0, p2, :cond_3

    const/4 p3, 0x3

    if-eq v0, p3, :cond_1

    const/4 p2, 0x4

    if-eq v0, p2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;->e()V

    .line 5
    new-instance p1, Lcom/guochao/faceshow/web/WebViewActivity$e;

    invoke-direct {p1}, Lcom/guochao/faceshow/web/WebViewActivity$e;-><init>()V

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/web/WebViewActivity$e;->e(I)Lcom/guochao/faceshow/web/WebViewActivity$e;

    move-result-object p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/web/WebViewActivity$e;->a(Landroid/content/Context;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    new-instance p1, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;

    invoke-direct {p1}, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;-><init>()V

    .line 8
    invoke-static {}, Lfb/a;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;->userId:I

    .line 9
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->A0(Landroid/content/Context;Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;I)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;->start(Landroid/content/Context;)V

    goto :goto_1

    .line 11
    :cond_3
    invoke-static {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;->start(Landroid/content/Context;)V

    goto :goto_1

    .line 12
    :cond_4
    new-instance p1, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;

    invoke-direct {p1}, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;-><init>()V

    .line 13
    invoke-static {}, Lfb/a;->c()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p1, Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;->userId:I

    .line 14
    invoke-static {p0, p1, p2}, Lcom/guochao/faceshow/systemassistant/act/SystemAssistantAct;->A0(Landroid/content/Context;Lcom/guochao/faceshow/systemassistant/data/AssistantUserInfo$OfficialUserData;I)V

    .line 15
    :goto_1
    invoke-static {}, Lk8/a;->c()Lk8/a;

    move-result-object p1

    invoke-virtual {p1}, Lk8/a;->e()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/modulars/chat/utils/SystemConversationManager;->loadMessageFromServer()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;->m0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;->n0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/AuthorityViewHolder;ILcom/guochao/faceshow/aaspring/beans/AuthorityNotifyBean;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/AuthorityNotifyListActivity;->loadNetData()V

    return-void
.end method
