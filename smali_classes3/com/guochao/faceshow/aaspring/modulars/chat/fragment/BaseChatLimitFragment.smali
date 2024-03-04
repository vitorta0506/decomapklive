.class public abstract Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H&J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0017H$J\u0010\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u0015H\u0002R!\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;",
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;",
        "()V",
        "mDataList",
        "Ljava/util/ArrayList;",
        "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
        "Lkotlin/collections/ArrayList;",
        "getMDataList",
        "()Ljava/util/ArrayList;",
        "mSelectItem",
        "getMSelectItem",
        "()Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
        "setMSelectItem",
        "(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "setRecyclerView",
        "(Landroidx/recyclerview/widget/RecyclerView;)V",
        "getLayoutId",
        "",
        "initView",
        "",
        "view",
        "Landroid/view/View;",
        "loadData",
        "selectItem",
        "position",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mSelectItem:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->mDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$selectItem(Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->selectItem(I)V

    return-void
.end method

.method private final selectItem(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->mSelectItem:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract getLayoutId()I
.end method

.method public final getMDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMSelectItem()Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->mSelectItem:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    return-object v0
.end method

.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const v0, 0x7f0a095c

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment$initView$1$1;

    invoke-direct {v0, p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment$initView$1$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    return-void
.end method

.method protected abstract loadData()V
.end method

.method public final setMSelectItem(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->mSelectItem:Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    return-void
.end method

.method public final setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
