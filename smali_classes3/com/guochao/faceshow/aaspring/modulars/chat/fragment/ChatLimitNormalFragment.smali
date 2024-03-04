.class public final Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0006H\u0014J\u0006\u0010\n\u001a\u00020\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;",
        "Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;",
        "()V",
        "getLayoutId",
        "",
        "initView",
        "",
        "view",
        "Landroid/view/View;",
        "loadData",
        "setCurData",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d016a

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->initView(Landroid/view/View;)V

    return-void
.end method

.method protected loadData()V
    .locals 0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitNormalFragment;->setCurData()V

    return-void
.end method

.method public final setCurData()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.modulars.chat.fragment.ChatLimitDialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/ChatLimitDialog;->getMData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->getMDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->getGifList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "gifList"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->getMDataList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->getMDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->getMDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->setMSelectItem(Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/chat/fragment/BaseChatLimitFragment;->getMDataList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_1
    return-void
.end method
