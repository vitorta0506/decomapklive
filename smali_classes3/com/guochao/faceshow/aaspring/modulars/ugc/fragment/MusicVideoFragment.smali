.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;
.source "SourceFile"


# instance fields
.field d:I

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;-><init>()V

    return-void
.end method

.method public static R1(ILjava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "musicId"

    .line 4
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "musicName"

    .line 5
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
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

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v3, "coding"

    invoke-static {p1, v3}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment;->d:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v6

    new-instance v9, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment$a;

    invoke-direct {v9, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment;)V

    const-string v4, ""

    const/16 v7, 0xc

    const-string v8, ""

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
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/VideoTopicFragment;->onCreate(Landroid/os/Bundle;)V

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

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment;->d:I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "musicId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "musicName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p3

    sput-object p3, Lcom/guochao/faceshow/utils/Tool;->mDataList:Ljava/util/List;

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p3, v0, v1, v1}, Landroidx/core/app/ActivityOptionsCompat;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p1

    .line 5
    new-instance p3, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/guochao/faceshow/activity/VideoPlayListActivity;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    new-instance v0, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;

    invoke-direct {v0}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;-><init>()V

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment;->e:Ljava/lang/String;

    const-string v3, "musicId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v4, "coding"

    invoke-static {v2, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "country"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "type"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "limit"

    const-string v5, "12"

    .line 11
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->c(I)V

    .line 13
    sget-object v2, Lcom/guochao/faceshow/utils/Contants;->findVideoRelevantNew_v2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->e(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/activity/PersonVideoActivity$VideoUrlConfig;->d(Ljava/util/HashMap;)V

    const-string v1, "config"

    .line 15
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "position"

    .line 16
    invoke-virtual {p3, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getCurrentPage()I

    move-result p2

    const-string v2, "currPage"

    invoke-virtual {p3, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment;->d:I

    invoke-virtual {p3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment;->e:Ljava/lang/String;

    invoke-virtual {p3, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment;->f:Ljava/lang/String;

    const-string v2, "musicName"

    invoke-virtual {p3, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 22
    invoke-virtual {p1}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/fragment/MusicVideoFragment;->onItemClick(Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    return-void
.end method
