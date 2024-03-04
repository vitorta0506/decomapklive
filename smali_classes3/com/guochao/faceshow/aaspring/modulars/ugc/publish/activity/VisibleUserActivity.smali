.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;
.super Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity<",
        "Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;",
        "Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/IM_User;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

.field recyclerContent:Landroid/view/ViewGroup;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->a:I

    return p0
.end method

.method static synthetic d0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->a:I

    return p1
.end method

.method static synthetic e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->b:Ljava/util/List;

    return-object p0
.end method

.method private l0(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setAllSelected(Z)V

    if-ne p1, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setSelected(Z)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->b:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setSelectInvisibleUsers(Ljava/util/List;)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    return-void
.end method

.method private m0()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/IM_User;

    .line 4
    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/IM_User;->getNick_name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    const-string v3, " / "

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 7
    :goto_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x4

    if-ge v2, v3, :cond_3

    if-ne v5, v2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setSelected(Z)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {v3, v1}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setSelected(Z)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setAllSelected(Z)V

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setSelectInvisibleName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->b:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setSelectInvisibleUsers(Ljava/util/List;)V

    .line 13
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    return-void
.end method

.method public static n0(Landroid/app/Activity;Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;II)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    const-string v2, "key1"

    invoke-virtual {v1, v2, p1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "key2"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

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

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;ILcom/guochao/faceshow/aaspring/beans/VisibleUserBean;)V

    return-void
.end method

.method public g0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;ILcom/guochao/faceshow/aaspring/beans/VisibleUserBean;)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->d(ILcom/guochao/faceshow/aaspring/beans/VisibleUserBean;)V

    return-void
.end method

.method public i0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 2
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$b;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;)V

    invoke-virtual {p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;->setOnInvisibleUserClickListener(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder$a;)V

    return-object p2
.end method

.method public k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;ILcom/guochao/faceshow/aaspring/beans/VisibleUserBean;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->l0(I)V

    return-void
.end method

.method public loadData(I)V
    .locals 3

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;-><init>()V

    if-nez v0, :cond_0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setSelected(Z)V

    .line 4
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->addDatas(Ljava/util/List;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x79

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string p2, "key1"

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->b:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->m0()V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f120abd

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setTitle(I)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->finish()V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object p1

    const-string v0, "key1"

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->c:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key2"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->a:I

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->c:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->getSelectInvisibleUsers()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->c:Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->getSelectInvisibleUsers()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->b:Ljava/util/List;

    .line 8
    :cond_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->a:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 9
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->l0(I)V

    goto :goto_2

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->b:Ljava/util/List;

    if-eqz p1, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->m0()V

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge p1, v2, :cond_5

    if-ne v0, p1, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setSelected(Z)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {v2, v1}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setSelected(Z)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {p1, v3}, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;->setAllSelected(Z)V

    .line 16
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/base/activity/BaseRecyclerViewActivity;->notifyDataLoaded(Z)V

    :goto_2
    const p1, 0x7f12069a

    .line 17
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f060093

    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->setEndText(Ljava/lang/String;I)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    if-eqz p1, :cond_6

    .line 19
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/views/v;->setOnRightTextClickListener(Lcom/guochao/faceshow/aaspring/views/v$e;)V

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/activity/BaseActivity;->mTitleBarHelper:Lcom/guochao/faceshow/aaspring/views/v;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/v;->f()V

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->recyclerContent:Landroid/view/ViewGroup;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->i0(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/VisibleUserBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/activity/VisibleUserActivity;->k0(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/holder/VisibleUserHolder;ILcom/guochao/faceshow/aaspring/beans/VisibleUserBean;)V

    return-void
.end method
