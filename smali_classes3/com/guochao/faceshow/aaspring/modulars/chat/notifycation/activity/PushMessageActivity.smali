.class public Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;ILcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;)V

    return-void
.end method

.method public g0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;ILcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;)V
    .locals 0

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;->c(Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;)V

    return-void
.end method

.method public i0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->initView()V

    const v0, 0x7f120085

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->recyclerContentArea:Landroid/view/View;

    if-eqz v0, :cond_0

    const v1, 0x7f06002d

    .line 4
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public k0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;ILcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->getTypeId()I

    move-result p1

    const/16 p2, 0xbb9

    if-ne p1, p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;->getTypeId()I

    move-result p1

    const/16 p2, 0xbba

    if-ne p1, p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->getActivity()Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;

    move-result-object p1

    const-string p2, "activity_task"

    invoke-static {p1, p2}, Lcom/guochao/faceshow/signin/activity/UserSigninCenterActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public loadData(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/guochao/faceshow/utils/Contants;->PushMessageListmsg:Ljava/lang/String;

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

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const-string v0, "limit"

    const-string v1, "10"

    .line 3
    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;->i0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/PushMessageActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/PushMessageHolder;ILcom/guochao/faceshow/aaspring/beans/PushMessageBean$ListBean;)V

    return-void
.end method
