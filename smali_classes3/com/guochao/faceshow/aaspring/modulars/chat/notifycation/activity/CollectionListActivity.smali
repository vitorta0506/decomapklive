.class public Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;-><init>()V

    return-void
.end method

.method static synthetic g0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;->k0(Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;)V

    return-void
.end method

.method private k0(Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    const-class v1, Lcom/guochao/faceshow/activity/VideoPlayActivity;

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getTypeId()I

    move-result v2

    const v3, 0x7f12015b

    const v4, 0x7f120517

    const-string v5, "with_comment"

    const-string v6, "user_id"

    const-string v7, "width"

    const-string v8, "height"

    const-string v9, "imgUrl"

    const-string v10, "videoUrl"

    const-string v11, "video_id"

    const/4 v12, 0x2

    const-string v13, "type"

    const/4 v14, 0x1

    if-eq v2, v14, :cond_4

    const/16 v15, 0x19

    if-eq v2, v15, :cond_0

    const/16 v15, 0x26

    if-eq v2, v15, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-boolean v2, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->a:Z

    if-eqz v2, :cond_3

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLivingInMic()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    :goto_1
    return-void

    .line 6
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {v2, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getInfoId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "commentId"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v3, "comment"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getHeight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getWidth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xb

    const-string v3, "from"

    .line 15
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    invoke-virtual {v2, v5, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 18
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 19
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoCommentParent()Lcom/guochao/faceshow/aaspring/beans/Comment;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    goto :goto_4

    .line 20
    :cond_4
    iget-boolean v2, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->a:Z

    if-eqz v2, :cond_7

    .line 21
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLiving()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/UserStateHolder;->isLivingInMic()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 22
    :cond_5
    invoke-virtual {v0, v3}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    goto :goto_3

    .line 23
    :cond_6
    :goto_2
    invoke-virtual {v0, v4}, Lcom/guochao/faceshow/aaspring/base/mvvm/activity/GCCoreActivity;->showToast(I)V

    :goto_3
    return-void

    .line 24
    :cond_7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    invoke-virtual {v2, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getInfoId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getHeight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getWidth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 32
    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_4
    return-void
.end method

.method public static n0(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "float"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;->n0(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;->i0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;ILcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;)V

    return-void
.end method

.method public i0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;ILcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;)V
    .locals 0

    invoke-virtual {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;->c(Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/BaseIMListActivity;->initView()V

    const v0, 0x7f120741

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const v1, 0x7f0603ce

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method public l0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object p2
.end method

.method public loadData(I)V
    .locals 3

    const-string v0, "tokens/user/message/findLiked_push_summary/V2"

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

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$g;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public m0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;ILcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;)V
    .locals 4

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/DisableDoubleClickUtils;->canClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getTypeId()I

    move-result p1

    const/4 p2, 0x1

    const-string v0, "videoId"

    const-string v1, "api/token/social/video/checkVideoIsExist"

    if-eq p1, p2, :cond_4

    const/16 p2, 0x8

    const-string v2, "friendId"

    const-string v3, "tokens/friend/checkFriendRingIsExist"

    if-eq p1, p2, :cond_3

    const/16 p2, 0x19

    if-eq p1, p2, :cond_2

    const/16 p2, 0x1c

    if-eq p1, p2, :cond_1

    const/16 p2, 0x26

    if-eq p1, p2, :cond_2

    const/16 p2, 0x27

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$f;

    invoke-direct {p2, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;)V

    .line 4
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    invoke-direct {p1, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getRefId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$d;

    invoke-direct {p2, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$c;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;)V

    .line 6
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getInfoId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$e;

    invoke-direct {p2, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;)V

    .line 9
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    goto :goto_0

    .line 10
    :cond_4
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    invoke-direct {p1, v1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;->getInfoId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$b;

    invoke-direct {p2, p0, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->j(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$d;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;)V

    .line 11
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->d(Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava$c;)Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;->i()Lcom/guochao/faceshow/aaspring/base/http/v2/GCRequestJava;

    :goto_0
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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;->l0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/activity/CollectionListActivity;->m0(Lcom/guochao/faceshow/aaspring/modulars/chat/notifycation/holder/CollectionViewHolder;ILcom/guochao/faceshow/aaspring/beans/UserNotifyBean$ListBean;)V

    return-void
.end method

.method public useImmersiveStatusBar()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
