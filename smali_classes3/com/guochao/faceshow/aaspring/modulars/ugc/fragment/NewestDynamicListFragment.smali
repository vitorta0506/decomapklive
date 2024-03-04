.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcDynamicListFragment;
.source "SourceFile"

# interfaces
.implements Lba/a$e;
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;
.implements Lja/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$c;,
        Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$d;
    }
.end annotation


# instance fields
.field public a:I

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$d;

.field d:Z

.field e:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

.field private f:Z

.field private g:Z

.field h:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

.field i:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$c;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcDynamicListFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->a:I

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->b:Ljava/util/Set;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->d:Z

    .line 5
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->f:Z

    .line 6
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->g:Z

    return-void
.end method

.method static synthetic Q1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->f:Z

    return p1
.end method

.method static synthetic R1(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->U1(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V

    return-void
.end method

.method private T1(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->j:Z

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p2

    const-string v0, "KEY_UGC_LIKE"

    invoke-virtual {p2, v0}, Lja/a;->f(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->g:Z

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->O(Z)V

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->g:Z

    return-void
.end method

.method private U1(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->f:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$b;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;I)V

    if-eqz p2, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private V1(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->b:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->b:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static W1()Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    const/4 v2, 0x2

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "position"

    const/4 v2, 0x3

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;

    invoke-direct {v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;-><init>()V

    .line 5
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public S1(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addData(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic addData(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->S1(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    return-void
.end method

.method public addDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->V1(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->addDatas(Ljava/util/List;)V

    return-void
.end method

.method public clearAll()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->clearAll()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->convertItem(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    return-void
.end method

.method public convertItem(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 2

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->convertItem(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;ILcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    .line 3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->a:I

    if-ne p2, v0, :cond_1

    .line 4
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getIsLike()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->a:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->T1(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    :cond_1
    :goto_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$d;

    if-eqz p2, :cond_2

    .line 8
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->e:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p3, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->U1(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V

    :cond_2
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->initView(Landroid/view/View;)V

    .line 2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->d:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$c;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$c;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->i:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcDynamicListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lba/a;->r()Lba/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lba/a;->registerOnPublishListener(Lba/a$e;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$d;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$d;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->c:Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$d;

    .line 5
    :cond_0
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_SEND_DYNAMIC"

    invoke-virtual {p1, v0}, Lja/a;->f(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->d:Z

    .line 6
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string v0, "KEY_UGC_LIKE"

    invoke-virtual {p1, v0, p0}, Lja/a;->d(Ljava/lang/String;Lja/a$b;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->onDestroy()V

    .line 2
    invoke-static {}, Lba/a;->r()Lba/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lba/a;->unregisterOnPublishListener(Lba/a$e;)V

    .line 3
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_UGC_LIKE"

    invoke-virtual {v0, v1, p0}, Lja/a;->h(Ljava/lang/String;Lja/a$b;)V

    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->d:Z

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->h:Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->B()V

    :cond_0
    return-void
.end method

.method public onLikeClick(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->a:I

    if-ne p3, p2, :cond_0

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->j:Z

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->B()V

    .line 4
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object p1

    const-string p2, "KEY_UGC_LIKE"

    invoke-virtual {p1, p2}, Lja/a;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    return-void
.end method

.method public onPublishResponse(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->toDynamic(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUuid()I

    move-result v3

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUuid()I

    move-result v4

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->getPublishStatus()I

    move-result p1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->b:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->b:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 9
    :cond_3
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->resetList(Z)Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->b:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 13
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 14
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 15
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->b:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getFriendId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->notifyDataLoaded(Z)V

    :cond_6
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 0
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V
    .locals 2
    .param p2    # Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;",
            "Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse<",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getDefaultPage()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->resetList(Z)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    invoke-super {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcDynamicListFragment;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/UgcDynamicListFragment;->onResponse(Ljava/util/List;Lcom/guochao/faceshow/aaspring/base/http/response/FaceCastBaseResponse;)V

    :goto_0
    return-void
.end method

.method protected resetList(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->clearAll()V

    .line 3
    :cond_0
    invoke-static {}, Lba/a;->r()Lba/a;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;)V

    invoke-virtual {p1, v1}, Lba/a;->t(Laa/b;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;

    .line 7
    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;->toDynamic(Lcom/guochao/faceshow/aaspring/beans/PublishUgcBean;)Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    move-result-object v2

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 9
    invoke-interface {v0, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/NewestDynamicListFragment;->V1(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicListFragment;->setDatas(Ljava/util/List;)V

    return-void
.end method
