.class public Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;
.source "SourceFile"


# instance fields
.field L:I

.field M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
            ">;"
        }
    .end annotation
.end field

.field N:I

.field O:Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;

.field private P:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->P:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic R2(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->V2()V

    return-void
.end method

.method public static S2(IILjava/util/List;)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
            ">;)",
            "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "position"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    check-cast p2, Ljava/util/ArrayList;

    const-string p0, "data"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static T2(IILjava/util/List;Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
            ">;",
            "Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;",
            ")",
            "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "position"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    check-cast p2, Ljava/util/ArrayList;

    const-string p0, "data"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string p0, "config"

    .line 6
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private U2(I)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->mViewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method private V2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public D2()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->D2()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->O:Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setCurrentPage(I)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->loadData(I)V

    return-void
.end method

.method public getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->c(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->d(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->a()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01a3

    return v0
.end method

.method public loadData(I)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->loadData(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->M:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->O:Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addDatas(Ljava/util/List;)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded()V

    .line 6
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->L:I

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->U2(I)V

    goto/16 :goto_4

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->R()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getDefaultPage()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->M:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->addDatas(Ljava/util/List;)V

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded()V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->O:Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setCurrentPage(I)V

    .line 14
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->L:I

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->U2(I)V

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->V2()V

    goto/16 :goto_4

    .line 16
    :cond_2
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    .line 17
    new-instance p1, Landroidx/collection/ArrayMap;

    invoke-direct {p1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->O:Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;

    invoke-virtual {v1}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->b()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/collection/ArrayMap;->putAll(Ljava/util/Map;)V

    const-string v1, "musicId"

    .line 19
    invoke-virtual {p1, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_3

    move-object v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    :goto_0
    const-string v1, "topicId"

    .line 20
    invoke-virtual {p1, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    move-object v8, v3

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    :goto_1
    const-string v1, "type"

    .line 21
    invoke-virtual {p1, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v5, v3

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    :goto_2
    const-string v1, "is_private"

    .line 22
    invoke-virtual {p1, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    move-object v4, v3

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v4, p1

    .line 23
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->O:Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;

    invoke-virtual {p1}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v6

    const/16 v7, 0xc

    new-instance v9, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;

    invoke-direct {v9, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;)V

    const-string v3, ""

    invoke-virtual/range {v0 .. v9}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;->findVideoRelevantNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "position"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->L:I

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->M:Ljava/util/List;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->N:I

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->O:Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDelete()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->onDelete()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->R()V

    :cond_1
    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p0, v1, v0, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->M2(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->R()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded()V

    .line 6
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->onDestroy()V

    return-void
.end method

.method public x2()Z
    .locals 2

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/PersonalShortVideoFragment;->N:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
