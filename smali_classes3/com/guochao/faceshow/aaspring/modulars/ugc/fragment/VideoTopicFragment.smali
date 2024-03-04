.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment<",
        "Lcom/guochao/faceshow/aaspring/beans/VideoItem;",
        "Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;-><init>()V

    return-void
.end method

.method public static Q1(ILjava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;
    .locals 2

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;

    invoke-direct {p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "topicId"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "typeId"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "type"

    .line 5
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p2
.end method


# virtual methods
.method public convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 6

    const v0, 0x7f0a0de9

    .line 2
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getIsOfficial()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v0, 0x7f0a064e

    .line 6
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoImg()Ljava/lang/String;

    move-result-object v1

    const v4, 0x7f0f0088

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v1, v0, v4, v5}, Lhc/a;->l(Ljava/lang/String;Landroid/widget/ImageView;ILandroid/content/Context;)V

    const v0, 0x7f0a04d5

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoCollectionNum()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    const v0, 0x7f0a0ab3

    .line 9
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 10
    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;->b:I

    const/16 v5, 0x8

    if-nez v4, :cond_1

    .line 11
    invoke-virtual {p1, v0, p3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 12
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    .line 13
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p2, "NO.1"

    .line 14
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    const p1, 0x7f080150

    .line 15
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    if-ne p2, v2, :cond_3

    .line 16
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p2, "NO.2"

    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    const p1, 0x7f080151

    .line 18
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    .line 19
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p2, "NO.3"

    .line 20
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    const p1, 0x7f080152

    .line 21
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 22
    :cond_4
    invoke-virtual {p1, v0, p3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 23
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;->convertItem(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->initView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/high16 v0, 0x40900000    # 4.5f

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, v2}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p1, 0x4

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->setFooterView(I)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getEmptyView()Landroid/view/View;

    move-result-object p1

    .line 6
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 7
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_0
    const/high16 v0, 0x42700000    # 60.0f

    .line 8
    invoke-static {v0}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v0

    invoke-virtual {p1, v2, v0, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f0a0330

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public loadData(I)V
    .locals 10

    .line 1
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    .line 2
    sget-object v1, Lcom/guochao/faceshow/utils/Contants;->findVideoRelevantNew_v2:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v2, "coding"

    invoke-static {p1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;->b:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v6

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;->a:Ljava/lang/String;

    new-instance v9, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment$b;

    invoke-direct {v9, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;)V

    const-string v2, ""

    const-string v4, ""

    const/16 v7, 0xc

    .line 4
    invoke-virtual/range {v0 .. v9}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;->findVideoRelevantNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    rem-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;->b:I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "topicId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "typeId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateLayoutManager(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0284

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/guochao/faceshow/utils/Tool;->mDataList:Ljava/util/List;

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/guochao/faceshow/activity/VideoPlayListActivity;

    invoke-direct {p1, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "position"

    .line 4
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result p2

    const-string p3, "currPage"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;->b:I

    const-string p3, "type"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;->c:Ljava/lang/String;

    const-string v0, "type_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;->a:Ljava/lang/String;

    const-string v0, "topic_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    new-instance p2, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;

    invoke-direct {p2}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "limit"

    const-string v2, "12"

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;->a:Ljava/lang/String;

    const-string v2, "topicId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "coding"

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object p3, Lcom/guochao/faceshow/utils/Contants;->findVideoRelevantNew_v2:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->e(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->c(I)V

    .line 18
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->d(Ljava/util/HashMap;)V

    const-string p3, "config"

    .line 19
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;->onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    return-void
.end method
