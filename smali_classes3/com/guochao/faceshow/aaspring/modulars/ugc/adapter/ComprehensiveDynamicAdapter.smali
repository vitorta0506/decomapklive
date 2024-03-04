.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Laa/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Laa/e;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field d:Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;

.field e:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/DynamicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->b:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getImageRecyclerViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->e:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->e:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->e:Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getItemViewType()I

    move-result p1

    return p1
.end method

.method public onAvatarClicked(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->b:Landroid/content/Context;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->b:Landroid/content/Context;

    const-class v2, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "userId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/16 v0, 0x12c

    invoke-virtual {p1, p2, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->o(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    :cond_0
    return-void
.end method

.method public onBlackStateChanged(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 4
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onCommentButtonClicked(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 0

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->c:Landroid/view/LayoutInflater;

    invoke-static {v0, v1, p1, p2}, Ly9/a;->a(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->setOnDynamicOperationListener(Laa/e;)V

    return-object p1
.end method

.method public onDeleteDynamic(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->a:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onFocusStateChanged(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;Z)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 2
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->a:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 3
    invoke-virtual {p3}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserAttentStatus()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->setUserAttentStatus(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onImageClick(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;ILandroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->d:Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->b:Landroid/content/Context;

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->d:Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->d:Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/utils/DynamicImageZoomHelper;->startZoom(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/ImageDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;ILandroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    return-void
.end method

.method public synthetic onLikeClick(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Laa/d;->a(Laa/e;Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;I)V

    return-void
.end method

.method public onResendClicked(Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 0

    return-void
.end method

.method public onVideoClick(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v3, v4, :cond_1

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v6}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getItemViewType()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 6
    new-instance v5, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-direct {v5}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;-><init>()V

    .line 7
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getVideoId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoId(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setUserImg(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getNickName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setUserNickName(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoUrl(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getImg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoImg(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setUserId(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLiveState()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setLiveState(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getAvatar()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setAvatar(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setHeight(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setWidth(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getLikeNum()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoCollectionNum(I)V

    .line 18
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getCommentNum()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoCommentNum(I)V

    .line 19
    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoIntroductionContent(Ljava/lang/String;)V

    .line 20
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 21
    :cond_1
    sput-object v1, Lcom/guochao/faceshow/utils/Tool;->mDataList:Ljava/util/List;

    const/4 v0, 0x0

    .line 22
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_2
    const p2, 0x7f0a0ddf

    .line 24
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v5

    invoke-static {p2, v1, v3, v2, v2}, Landroidx/core/app/ActivityOptionsCompat;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroidx/core/app/ActivityOptionsCompat;

    move-result-object p2

    .line 26
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->b:Landroid/content/Context;

    const-class v3, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    .line 27
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "private"

    const/4 v3, 0x1

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->r:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXVodPlayer;->getCurrentPlaybackTime()F

    move-result p1

    const-string v2, "current"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    const-string p1, "position"

    .line 30
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/adapter/ComprehensiveDynamicAdapter;->b:Landroid/content/Context;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    const/16 v0, 0x1f4

    invoke-virtual {p2}, Landroidx/core/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, v1, v0, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
