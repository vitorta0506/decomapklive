.class public Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;
.source "SourceFile"


# instance fields
.field avatarView:Lcom/guochao/faceshow/views/NormalCircleImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field protected f:J

.field g:J

.field h:J

.field i:Ljava/lang/Runnable;

.field mAvatarViewArea:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewAudioIndicator:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewBigAvatar:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewVoiceIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V

    .line 2
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->i:Ljava/lang/Runnable;

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewAudioIndicator:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setClearsAfterDetached(Z)V

    .line 5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewAudioIndicator:Lcom/opensource/svgaplayer/SVGAImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f11001f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;)V

    const/4 v1, 0x1

    const-string v2, "live_voice"

    invoke-virtual {p2, p1, v2, v0, v1}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method

.method private o()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewBigAvatar:Landroid/widget/ImageView;

    invoke-static {v0}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object v0

    const v1, 0x7f0f03f3

    invoke-virtual {v0, v1}, Lic/c;->I1(I)Lic/c;

    move-result-object v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewBigAvatar:Landroid/widget/ImageView;

    .line 2
    invoke-static {v2}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lic/d;->K(Ljava/lang/Integer;)Lic/c;

    move-result-object v1

    new-instance v2, Ljc/a;

    const/16 v3, 0x19

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Ljc/a;-><init>(II)V

    .line 3
    invoke-virtual {v1, v2}, Lic/c;->Q1(Le0/h;)Lic/c;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lic/c;->P1(Lcom/bumptech/glide/g;)Lic/c;

    move-result-object v0

    new-instance v1, Ljc/a;

    invoke-direct {v1, v3, v4}, Ljc/a;-><init>(II)V

    .line 5
    invoke-virtual {v0, v1}, Lic/c;->Q1(Le0/h;)Lic/c;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewBigAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    return-void
.end method


# virtual methods
.method public d(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->d(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->avatarView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f0089

    invoke-static {v0, v1, v2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    .line 3
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    if-nez v0, :cond_7

    .line 4
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getMatchType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "1"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewBigAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mAvatarViewArea:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getMatchType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewBigAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mAvatarViewArea:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz v1, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->o()V

    .line 12
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->avatarView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {v8}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v2}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewBigAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mAvatarViewArea:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getVoiceStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewVoiceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_3
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getVoiceStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 18
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewVoiceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 19
    :cond_4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewVoiceIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    :goto_1
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getMatchType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewBigAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mAvatarViewArea:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :cond_5
    instance-of v1, p1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    if-eqz v0, :cond_7

    .line 24
    :cond_6
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getVoiceStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2, v6}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->k(ZJZ)V

    .line 25
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getMatchType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1, v1, v2, v6}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->m(ZJZ)V

    :cond_7
    return-void
.end method

.method public e(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;J)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;J)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 3
    :cond_1
    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    const-string v1, "2"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/guochao/faceshow/aaspring/modulars/live/model/BroadCasterLiveModel;

    if-eqz v0, :cond_3

    .line 4
    :cond_2
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getVoiceStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0, p2, p3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->k(ZJZ)V

    .line 5
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getMatchType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0, p2, p3, v2}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->m(ZJZ)V

    .line 6
    :cond_3
    instance-of p2, p1, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    if-nez p2, :cond_9

    .line 7
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getMatchType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x4

    const-string v0, "1"

    const/16 v3, 0x8

    if-eqz p2, :cond_4

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewBigAvatar:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mAvatarViewArea:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getMatchType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewBigAvatar:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mAvatarViewArea:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz p2, :cond_6

    .line 14
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->o()V

    .line 15
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->avatarView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p3}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object p3

    const v4, 0x7f0f0089

    invoke-static {p2, p3, v4}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    goto :goto_0

    .line 16
    :cond_5
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewBigAvatar:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mAvatarViewArea:Landroid/view/View;

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_6
    :goto_0
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getVoiceStatus()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewVoiceIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 20
    :cond_7
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getVoiceStatus()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewVoiceIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 22
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewVoiceIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    :goto_1
    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->f(Z)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewBigAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/h;->f(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewBigAvatar:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object p1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->avatarView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p1, v1}, Lcom/bumptech/glide/h;->f(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->avatarView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public k(ZJZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->k(ZJZ)V

    .line 2
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->g:J

    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    return-void

    .line 3
    :cond_0
    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->g:J

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewVoiceIcon:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setAnchorForceVoiceStatus(Z)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setAnchorForceVoiceStatus(Z)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewVoiceIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewAudioIndicator:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public m(ZJZ)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->m(ZJZ)V

    .line 2
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->h:J

    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    return-void

    .line 3
    :cond_0
    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->h:J

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewBigAvatar:Landroid/widget/ImageView;

    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mAvatarViewArea:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setAnchorForceMatchType(Z)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->setAnchorForceMatchType(Z)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewBigAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mAvatarViewArea:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    if-eqz p1, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->o()V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->avatarView:Lcom/guochao/faceshow/views/NormalCircleImageView;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->c:Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;

    invoke-interface {p2}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0f0089

    invoke-static {p1, p2, p3}, Lhc/a;->h(Landroid/widget/ImageView;Ljava/lang/Object;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public n(Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->n(Lcom/guochao/faceshow/aaspring/modulars/live/model/VolumeMessage;)V

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/model/BaseLiveMessage;->getSendTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->f:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewAudioIndicator:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewAudioIndicator:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->mImageViewAudioIndicator:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->i:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/VideoAudioMaskHolder;->i:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
