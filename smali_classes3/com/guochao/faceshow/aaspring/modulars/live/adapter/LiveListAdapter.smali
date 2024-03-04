.class public final Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;
.super Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter<",
        "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0015\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u0002H\u0014J\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0011R\u0018\u0010\n\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;",
        "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "mCurrSelectTypeId",
        "",
        "(Landroidx/lifecycle/LifecycleOwner;I)V",
        "fragment",
        "Ljava/lang/ref/WeakReference;",
        "convert",
        "",
        "holder",
        "item",
        "getList",
        "",
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
.field private fragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mCurrSelectTypeId:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;I)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->mCurrSelectTypeId:I

    .line 3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getLoadMoreModule()Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p2

    new-instance v0, Lcom/guochao/faceshow/views/LoadMoreView;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/views/LoadMoreView;-><init>(Z)V

    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setLoadMoreView(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V

    .line 4
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->fragment:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    const p2, 0x7f0d03b5

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const p1, 0x7f0d03ae

    .line 6
    invoke-virtual {p0, v1, p1}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x2

    const p2, 0x7f0d03a4

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x3

    const p2, 0x7f0d020c

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    const/4 p1, 0x4

    const p2, 0x7f0d020b

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;->addItemType(II)V

    return-void
.end method


# virtual methods
.method public addLoadMoreModule(Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;
    .locals 0
    .param p1    # Lcom/chad/library/adapter/base/BaseQuickAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "**>;)",
            "Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/chad/library/adapter/base/module/LoadMoreModule$DefaultImpls;->addLoadMoreModule(Lcom/chad/library/adapter/base/module/LoadMoreModule;Lcom/chad/library/adapter/base/BaseQuickAdapter;)Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    move-result-object p1

    return-object p1
.end method

.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V
    .locals 4
    .param p1    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/guochao/faceshow/aaspring/beans/RoomItemData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->getItemType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "holder.itemView"

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    const/4 p2, 0x4

    if-eq v0, p2, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->fragment:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    if-eqz p2, :cond_7

    .line 4
    instance-of v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    if-eqz v0, :cond_7

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveViewPagerFragment;

    if-eqz v0, :cond_7

    .line 5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getMEventItemBeans()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getMRankRows()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveBannerHeader;->updateDatas(Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->fragment:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/LifecycleOwner;

    if-eqz p2, :cond_7

    .line 7
    instance-of v0, p2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    if-eqz v0, :cond_7

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->fragment:Ljava/lang/ref/WeakReference;

    .line 10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    invoke-direct {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;-><init>(Ljava/lang/ref/WeakReference;Landroid/view/View;)V

    .line 12
    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/fragment/LiveListFragment;->getMData()Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/LiveRoomPageData;->getCountryLiveList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/area/LiveDiscoveryHeader;->k(Ljava/util/List;)V

    goto :goto_2

    .line 13
    :cond_3
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveNormalViewHolder;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveNormalViewHolder;-><init>(Landroid/view/View;)V

    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    .line 15
    invoke-virtual {v0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveNormalViewHolder;->bindValue(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;I)V

    goto :goto_2

    .line 16
    :cond_4
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;-><init>(Landroid/view/View;)V

    .line 17
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    .line 18
    invoke-virtual {v0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/MultiLiveTopViewHolder;->bindValue(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;I)V

    goto :goto_2

    .line 19
    :cond_5
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/SingleLiveItemViewHolder;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/SingleLiveItemViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->mCurrSelectTypeId:I

    if-ne v2, v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;->setCheckTip(Z)Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/BaseLiveItemViewHolder;

    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    .line 22
    invoke-virtual {v0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/SingleLiveItemViewHolder;->bindValue(Lcom/guochao/faceshow/aaspring/beans/RoomItemData;I)V

    :cond_7
    :goto_2
    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/LiveListAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/guochao/faceshow/aaspring/beans/RoomItemData;)V

    return-void
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/RoomItemData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
