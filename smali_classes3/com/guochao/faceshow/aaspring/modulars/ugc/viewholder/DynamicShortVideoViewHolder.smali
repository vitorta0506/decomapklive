.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/DynamicShortVideoViewHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;
.source "SourceFile"


# instance fields
.field public J:Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;

.field private K:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method protected C()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/utils/Tools;->playLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public E(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setAutoPlay(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setLoop(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->pause()V

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->c:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->o:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f0a0de1

    .line 8
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->h:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->d:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->pause()V

    :cond_1
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->C:Z

    :cond_2
    return-void
.end method

.method public G(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->G(Z)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->h:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const v0, 0x7f0f008d

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public P(Lcom/guochao/faceshow/aaspring/beans/VideoItem;IF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->P(Lcom/guochao/faceshow/aaspring/beans/VideoItem;IF)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->L(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/DynamicShortVideoViewHolder;->K:Z

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;

    invoke-virtual {p1, p2}, Lcom/tencent/rtmp/TXVodPlayer;->setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getInstance()Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getPlayer(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->start()V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/DynamicShortVideoViewHolder;->C()V

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->destroy()V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->F()V

    return-void
.end method

.method public n(Lcom/guochao/faceshow/aaspring/beans/VideoItem;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/DynamicShortVideoViewHolder;->u()Lcom/tencent/rtmp/TXVodPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->n(Lcom/guochao/faceshow/aaspring/beans/VideoItem;I)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    move-object v3, v0

    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;-><init>(Landroid/view/View;ILandroidx/fragment/app/FragmentActivity;ZZ)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/DynamicShortVideoViewHolder;->J:Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUgcId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->setUgcId(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/DynamicShortVideoViewHolder;->J:Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoModel;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoMatchHolder;->bind(Lcom/guochao/faceshow/aaspring/modulars/videomatch/VideoModel;)V

    :cond_1
    return-void
.end method

.method public u()Lcom/tencent/rtmp/TXVodPlayer;
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getInstance()Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->createPlayer(Landroid/content/Context;)Lcom/tencent/rtmp/TXVodPlayer;

    move-result-object v0

    return-object v0
.end method
