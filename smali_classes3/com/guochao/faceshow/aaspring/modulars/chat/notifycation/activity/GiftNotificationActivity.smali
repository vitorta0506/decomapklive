.class public Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;-><init>()V

    return-void
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;->k0(Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;)V

    return-void
.end method

.method private k0(Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/activity/VideoPlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getVideoId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "videoUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imgUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getHeight()I

    move-result v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getWidth()I

    move-result v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;ILcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;)V

    return-void
.end method

.method public i0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;ILcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;)V
    .locals 0

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;->c(Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->initView()V

    const v0, 0x7f12003c

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const v1, 0x7f0603ce

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method public l0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2
.end method

.method public loadData(I)V
    .locals 3

    const-string v0, "tokens/user/message/findSendGiftMessage"

    .line 1
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
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public m0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;ILcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;)V
    .locals 1

    .line 1
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getVideoId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    const-string p2, "api/token/social/video/checkVideoIsExist"

    invoke-direct {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;->getVideoId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "videoId"

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity$c;

    invoke-direct {p2, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;)V

    .line 3
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;->l0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/GiftNotificationActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/GiftNotifycationHolder;ILcom/guochao/faceshow/aaspring/beans/UserGiftNotifyBean$ListBean;)V

    return-void
.end method
