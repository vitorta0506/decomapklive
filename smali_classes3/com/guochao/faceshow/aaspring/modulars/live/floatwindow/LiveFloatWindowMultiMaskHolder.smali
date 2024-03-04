.class public Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;
.source "SourceFile"


# instance fields
.field protected f:J

.field g:Ljava/lang/Runnable;

.field mImageViewAvatar:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mImageViewCover:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;Landroid/view/View;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;->g:Ljava/lang/Runnable;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->setClearsAfterDetached(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f11001f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;)V

    const-string v2, "live_voice_small"

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method


# virtual methods
.method public e(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;J)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/live/viewholder/common/BaseLiveRoomHolder;->e(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;J)V

    .line 2
    move-object p2, p1

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;

    .line 3
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getMatchType()Ljava/lang/String;

    move-result-object p3

    const-string v0, "2"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 4
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :goto_0
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getVoiceStatus()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    const/16 v0, 0x8

    if-eqz p3, :cond_1

    .line 7
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;->getVoiceStatus()Ljava/lang/String;

    move-result-object p3

    const-string v2, "1"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 9
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    :goto_1
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p3

    invoke-static {p3}, Lic/a;->b(Landroid/content/Context;)Lic/d;

    move-result-object p3

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/LiveInfoMatchBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lic/d;->M(Ljava/lang/String;)Lic/c;

    move-result-object p2

    .line 12
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p3

    invoke-static {p3}, Lic/a;->b(Landroid/content/Context;)Lic/d;

    move-result-object p3

    const v0, 0x7f0f03f3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lic/d;->K(Ljava/lang/Integer;)Lic/c;

    move-result-object p3

    new-instance v0, Ljc/a;

    const/16 v1, 0x19

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljc/a;-><init>(II)V

    .line 13
    invoke-virtual {p3, v0}, Lic/c;->Q1(Le0/h;)Lic/c;

    move-result-object p3

    .line 14
    invoke-virtual {p2, p3}, Lic/c;->P1(Lcom/bumptech/glide/g;)Lic/c;

    move-result-object p2

    new-instance p3, Ljc/a;

    invoke-direct {p3, v1, v2}, Ljc/a;-><init>(II)V

    .line 15
    invoke-virtual {p2, p3}, Lic/c;->Q1(Le0/h;)Lic/c;

    move-result-object p2

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;->mImageViewCover:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    .line 16
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;->mImageViewAvatar:Landroid/widget/ImageView;

    invoke-interface {p1}, Lp7/h;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lhc/a;->d(Landroid/widget/ImageView;Ljava/lang/String;)V

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

    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;->f:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAImageView;->startAnimation()V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;->mSVGAImageView:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/floatwindow/LiveFloatWindowMultiMaskHolder;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
