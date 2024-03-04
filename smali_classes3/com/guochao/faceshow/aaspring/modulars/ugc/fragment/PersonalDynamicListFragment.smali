.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;
.source "SourceFile"

# interfaces
.implements Lba/a$e;


# instance fields
.field mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;->isSelf()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;Z)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->resetList(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "userId"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private isSelf()Z
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public loadData(I)V
    .locals 2

    const-string p1, "tokens/friend/list/home_page"

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;->mUserId:Ljava/lang/String;

    const-string v1, "account"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "limit"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "queryType"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->v(Ljava/lang/String;Ljava/lang/Object;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onBlackStateChanged(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V
    .locals 4

    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setUserAttentStatus(I)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setBlacked(Z)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->notifyDataLoaded(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/PersonalDynamicListFragment;->mUserId:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-static {}, Lba/a;->r()Lba/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lba/a;->registerOnPublishListener(Lba/a$e;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->onDestroy()V

    .line 2
    invoke-static {}, Lba/a;->r()Lba/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/a;->unregisterOnPublishListener(Lba/a$e;)V

    return-void
.end method

.method public onPublishResponse(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->toDynamic(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUuid()I

    move-result v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUuid()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->notifyDataLoaded(Z)V

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->resetList(Z)Ljava/util/List;

    :goto_2
    return-void
.end method

.method public onPublishTaskChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
