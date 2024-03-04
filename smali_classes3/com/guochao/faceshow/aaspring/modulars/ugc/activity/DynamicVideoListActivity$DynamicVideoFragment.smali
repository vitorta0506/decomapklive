.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicVideoFragment"
.end annotation


# instance fields
.field L:F

.field M:I

.field N:Z

.field O:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;-><init>()V

    return-void
.end method

.method private S2()Z
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/utils/SystemUtil;->supportVideoTransition()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public B2(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->S2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->B2(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/tencent/rtmp/TXVodPlayConfig;

    invoke-direct {p2}, Lcom/tencent/rtmp/TXVodPlayConfig;-><init>()V

    const-string v0, "ugc_video"

    .line 4
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/FilePathProvider;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->setCacheFolderPath(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 5
    invoke-virtual {p2, v0}, Lcom/tencent/rtmp/TXVodPlayConfig;->setMaxCacheItems(I)V

    .line 6
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v0, p2}, Lcom/tencent/rtmp/TXVodPlayer;->setConfig(Lcom/tencent/rtmp/TXVodPlayConfig;)V

    return-object p1

    .line 7
    :cond_0
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/DynamicShortVideoViewHolder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0d0461

    goto :goto_0

    :cond_1
    const v2, 0x7f0d0464

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, v0, p0, p1, v3}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/DynamicShortVideoViewHolder;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Landroid/view/View;Z)V

    return-object p2
.end method

.method public M2(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldPlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortVideoFragment"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a04aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v0

    const-string v1, "KEY_SLIDE_TO_SEE_MORE_UGC_VIDEO"

    invoke-virtual {v0, v1}, Lja/a;->e(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-ne v0, v1, :cond_2

    return-void

    .line 8
    :cond_2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->S2()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p1, p3, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->O(Lcom/guochao/faceshow/aaspring/beans/VideoItem;I)V

    const p2, 0x7f0a0de1

    .line 11
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->h:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->L:F

    invoke-virtual {p1, p3, p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->P(Lcom/guochao/faceshow/aaspring/beans/VideoItem;IF)V

    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    .line 14
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->L:F

    return-void
.end method

.method public N2(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->M:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->D:Z

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->M:I

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v1, v3, :cond_0

    const v1, 0x7f0a04aa

    .line 4
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lja/a;->b()Lja/a;

    move-result-object v1

    const-string v3, "KEY_SLIDE_TO_SEE_MORE_UGC_VIDEO"

    invoke-virtual {v1, v3}, Lja/a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0351

    invoke-virtual {v3, v4, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->O:Landroid/view/View;

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->O:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->O:Landroid/view/View;

    const v3, 0x7f0a0af5

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/SVGAImageView;

    const v3, 0x7f0a0af4

    .line 11
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setId(I)V

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v3

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$b;

    invoke-direct {v5, p0, v1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;Lcom/opensource/svgaplayer/SVGAImageView;)V

    const-string v1, "slide_to_see_more"

    .line 14
    invoke-virtual {v3, v4, v1, v5, v2}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    .line 15
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->O:Landroid/view/View;

    const v2, 0x7f0a0b47

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1209b7

    .line 16
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->O:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->O:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$c;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->N2(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    .line 20
    iget p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->M:I

    if-ne p2, p3, :cond_1

    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->N:Z

    if-eqz p2, :cond_1

    const p2, 0x7f0a0de1

    .line 21
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    const/16 p2, 0x8

    .line 23
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public R2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    return-void
.end method

.method public canLoadMore()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFragmentConfig()Lcom/guochao/faceshow/aaspring/base/fragment/e;
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->d(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->c(Z)Lcom/guochao/faceshow/aaspring/base/fragment/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/e$a;->a()Lcom/guochao/faceshow/aaspring/base/fragment/e;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d017e

    return v0
.end method

.method public loadData(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->loadData(I)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getList()Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/guochao/faceshow/utils/Tool;->mDataList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->notifyDataLoaded(Z)V

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->M:I

    if-lez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->M:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 9
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 10
    :goto_0
    sget-object v2, Lcom/guochao/faceshow/utils/Tool;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 11
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "videoId"

    .line 12
    sget-object v4, Lcom/guochao/faceshow/utils/Tool;->mDataList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v4}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 13
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 14
    :goto_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->L(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 16
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseRecyclerViewFragment;->getRefreshableLayout()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->K(Z)Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const-string p1, "tokens/userVideo/getVideoInfo"

    .line 17
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/mvvm/fragment/GCCoreFragment;->post(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "param"

    invoke-virtual {p1, v1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->D(Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/http/request/PostRequest;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;)V

    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;->M(Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Lcom/guochao/faceshow/aaspring/base/http/request/BaseFaceCastRequest;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "current"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->L:F

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->M:I

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "playing"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->N:Z

    const-string p1, "first_Main_ugc"

    const/4 v0, 0x1

    .line 5
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->getSetting(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->s:Z

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->s:Z

    .line 8
    :goto_0
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->t:Z

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

    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/DynamicVideoListActivity$DynamicVideoFragment;->B2(Landroid/view/ViewGroup;I)Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->q:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->F()V

    :cond_0
    return-void
.end method
