.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private g:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

.field private h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private i:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$c;

.field rvContent:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->b:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    const/16 v0, 0x9

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->d:I

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->g:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 6
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a:Landroid/content/Context;

    .line 8
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->c(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->m(Ljava/util/List;)V

    return-void
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->d:I

    return p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->i:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$c;

    return-object p0
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->e:Z

    return p0
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->e:Z

    return p1
.end method

.method private m(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getThumb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getThumb()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public i()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->getThumb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public j(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, 0x6a

    if-eqz p1, :cond_1

    const-string v1, "save_data"

    .line 1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;-><init>()V

    .line 4
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setMediaType(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;-><init>()V

    .line 7
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setMediaType(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->a:Landroid/content/Context;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->g:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->f:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public k(IILandroid/content/Intent;)V
    .locals 5

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0xd3

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc9

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v1

    const-string v2, "media"

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez p3, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    :cond_2
    return-void

    :cond_3
    if-nez v1, :cond_4

    .line 2
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 3
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_a

    .line 4
    new-instance p3, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;

    invoke-direct {p3}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;-><init>()V

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getFileType()I

    move-result v2

    if-ne v2, v0, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_7

    const/16 v2, 0x65

    .line 6
    invoke-virtual {p3, v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setMediaType(I)V

    .line 7
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setThumb(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setUri(Landroid/net/Uri;)V

    goto :goto_3

    :cond_7
    const/16 v2, 0x66

    .line 9
    invoke-virtual {p3, v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setMediaType(I)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setVideoPath(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/LocalImageOrVideoBean;->getDisplayUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setUri(Landroid/net/Uri;)V

    .line 12
    :goto_3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->d:I

    if-le v2, v3, :cond_8

    return-void

    .line 13
    :cond_8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-long v3, v2

    .line 14
    invoke-virtual {p3, v3, v4}, Lcom/guochao/faceshow/aaspring/beans/MediaLocalData;->setId(J)V

    .line 15
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    invoke-interface {v3, v2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->d:I

    if-le p3, v2, :cond_9

    .line 17
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    .line 18
    :cond_a
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->h:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public l(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->c:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "save_data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public n(Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector;->i:Lcom/guochao/faceshow/aaspring/modulars/ugc/publish/PublishImageSelector$c;

    return-void
.end method
