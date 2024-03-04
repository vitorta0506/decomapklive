.class public Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/rtmp/ITXVodPlayListener;


# instance fields
.field bgFL:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field bgIV:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewPlayIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mVideoContentView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public r:Lcom/tencent/rtmp/TXVodPlayer;

.field s:Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;

.field t:I

.field private u:I

.field public v:Z

.field public w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->v:Z

    .line 3
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->w:Z

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->t:I

    return-void
.end method

.method static synthetic T(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic U(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->Z(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic V(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;)Lcom/guochao/faceshow/aaspring/beans/DynamicBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    return-object p0
.end method

.method static synthetic W(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;)Laa/e;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->b:Laa/e;

    return-object p0
.end method

.method static synthetic X(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;)Lcom/guochao/faceshow/aaspring/beans/DynamicBean;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    return-object p0
.end method

.method static synthetic Y(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;)Laa/e;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->b:Laa/e;

    return-object p0
.end method

.method private Z(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getInstance()Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getPlayer(Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->s:Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->getTXVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->r:Lcom/tencent/rtmp/TXVodPlayer;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getInstance()Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->createPlayer(Landroid/content/Context;)Lcom/tencent/rtmp/TXVodPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->r:Lcom/tencent/rtmp/TXVodPlayer;

    .line 4
    invoke-virtual {p1, p0}, Lcom/tencent/rtmp/TXVodPlayer;->setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->r:Lcom/tencent/rtmp/TXVodPlayer;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/TXVodPlayer;->setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->s:Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;

    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V

    return-void
.end method

.method private a0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public G(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->G(Lcom/guochao/faceshow/aaspring/beans/DynamicBean;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->w:Z

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getWidth()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getHeight()I

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mVideoContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 6
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->bgFL:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 7
    iget v5, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->t:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/lit16 v6, v5, 0x1e0

    .line 8
    div-int/lit16 v6, v6, 0x177

    .line 9
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v9, 0x41100000    # 9.0f

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-le v1, v2, :cond_1

    .line 10
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v5

    mul-float v1, v1, v9

    div-float/2addr v1, v4

    float-to-double v1, v1

    add-double/2addr v1, v7

    double-to-int v1, v1

    .line 11
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    if-ne v1, v2, :cond_2

    .line 12
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_2
    int-to-float v1, v6

    mul-float v1, v1, v9

    div-float/2addr v1, v4

    float-to-double v1, v1

    add-double/2addr v1, v7

    double-to-int v1, v1

    .line 14
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_3
    :goto_0
    int-to-float v1, v6

    mul-float v1, v1, v9

    div-float/2addr v1, v4

    float-to-double v1, v1

    add-double/2addr v1, v7

    double-to-int v1, v1

    .line 16
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 17
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    :goto_1
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->f(Landroid/view/View;)V

    .line 20
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lic/a;->c(Landroid/view/View;)Lic/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object v0

    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v2}, Lic/c;->H1(II)Lic/c;

    move-result-object v0

    invoke-static {}, Lm0/d;->i()Lm0/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/c;->S1(Lcom/bumptech/glide/i;)Lic/c;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->bgIV:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getImg()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xf

    const/4 v2, 0x4

    invoke-static {v0, p1, v1, v2}, Lhc/a;->o(Landroid/widget/ImageView;Ljava/lang/String;II)V

    return-void
.end method

.method public b0(Landroid/app/Activity;Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    .line 1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 2
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p2, 0x1

    aget v3, v2, p2

    .line 3
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    aget v2, v2, p2

    aget v1, v1, p2

    if-le v2, v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v3, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public c0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->w:Z

    return v0
.end method

.method public d0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->Z(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->s:Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->start()V

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->a0()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->r:Lcom/tencent/rtmp/TXVodPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setAutoPlay(Z)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->r:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp/TXVodPlayer;->startVodPlay(Ljava/lang/String;)I

    const/16 v0, 0x3e8

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->u:I

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->v:Z

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mImageViewPlayIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->r:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->setMute(Lcom/tencent/rtmp/TXVodPlayer;Z)V

    .line 11
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->w:Z

    return-void
.end method

.method public e0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mImageViewPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x3ed

    .line 4
    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->u:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->v:Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->r:Lcom/tencent/rtmp/TXVodPlayer;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->stopPlay(Z)I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->r:Lcom/tencent/rtmp/TXVodPlayer;

    .line 9
    :cond_0
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->w:Z

    .line 10
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getInstance()Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/base/BaseDynamicViewHolder;->g:Lcom/guochao/faceshow/aaspring/beans/DynamicBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/DynamicBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->stop(Ljava/lang/String;)V

    return-void
.end method

.method public onNetStatus(Lcom/tencent/rtmp/TXVodPlayer;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlayEvent(Lcom/tencent/rtmp/TXVodPlayer;ILandroid/os/Bundle;)V
    .locals 2

    const/16 p3, 0x7d4

    if-eq p2, p3, :cond_0

    const/16 p3, 0x7d5

    if-eq p2, p3, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->v:Z

    const/4 p3, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mImageViewPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->w:Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mImageViewPlayIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->mTXCloudVideoView:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    iput-boolean p3, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;->w:Z

    .line 9
    :goto_0
    invoke-static {p1, p3}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->setMute(Lcom/tencent/rtmp/TXVodPlayer;Z)V

    :goto_1
    return-void
.end method

.method public onVideoClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/viewholder/VideoDynamicViewHolder;)V

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/views/h;->c(Landroid/view/View;Lcom/guochao/faceshow/aaspring/views/h$b;)V

    return-void
.end method
