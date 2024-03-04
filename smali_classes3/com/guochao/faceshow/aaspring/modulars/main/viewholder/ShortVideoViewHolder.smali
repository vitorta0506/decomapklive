.class public Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;
.super Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;
    }
.end annotation


# instance fields
.field A:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

.field B:Z

.field public C:Z

.field public D:Z

.field private E:Z

.field F:Landroid/view/View;

.field private G:Z

.field H:Landroid/graphics/drawable/AnimationDrawable;

.field I:J

.field public a:Lcom/opensource/svgaplayer/SVGAImageView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected c:Z

.field public d:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected e:Landroid/content/Context;

.field public f:Lcom/tencent/rtmp/TXVodPlayer;

.field private final g:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

.field public h:Lcom/tencent/rtmp/ui/TXCloudVideoView;

.field protected i:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;

.field private j:Landroid/animation/ObjectAnimator;

.field private k:Ljava/lang/String;

.field private l:Lcom/guochao/faceshow/aaspring/beans/Comment;

.field public m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

.field mCoverImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field n:Landroid/widget/ProgressBar;

.field protected o:Landroid/widget/ImageView;

.field p:Lcom/opensource/svgaplayer/SVGAImageView;

.field q:Landroid/widget/ImageView;

.field r:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

.field s:Landroid/widget/TextView;

.field t:Lcom/guochao/faceshow/views/Love;

.field u:Landroidx/core/view/GestureDetectorCompat;

.field v:Landroid/widget/ImageView;

.field w:Lcom/opensource/svgaplayer/SVGAImageView;

.field private x:Z

.field public y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;Landroid/view/View;Z)V
    .locals 4

    .line 1
    invoke-direct {p0, p3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->x:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->y:Z

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->z:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->B:Z

    .line 6
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->C:Z

    .line 7
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->D:Z

    .line 8
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->E:Z

    if-nez p1, :cond_0

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    .line 10
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 12
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_2

    .line 13
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 14
    :cond_2
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    :goto_0
    invoke-virtual {p3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iput-boolean p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->x:Z

    .line 18
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    .line 19
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->u()Lcom/tencent/rtmp/TXVodPlayer;

    move-result-object p4

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    .line 20
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->g:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    .line 21
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p4

    invoke-virtual {p4, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const p4, 0x7f0a0d5e

    .line 22
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/tencent/rtmp/ui/TXCloudVideoView;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->h:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const p4, 0x7f0a0ded

    .line 23
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ProgressBar;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->n:Landroid/widget/ProgressBar;

    const p4, 0x7f0a08a1

    .line 24
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->o:Landroid/widget/ImageView;

    const p4, 0x7f0a04c0

    .line 25
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->r:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    if-nez p4, :cond_3

    return-void

    .line 26
    :cond_3
    invoke-virtual {p4, v0}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->r(Z)V

    const p4, 0x7f0a0e88

    .line 27
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->F:Landroid/view/View;

    const p4, 0x7f0a08b0

    .line 28
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->p:Lcom/opensource/svgaplayer/SVGAImageView;

    const p4, 0x7f0a08b5

    .line 29
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->q:Landroid/widget/ImageView;

    .line 30
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->p:Lcom/opensource/svgaplayer/SVGAImageView;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$k;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$k;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V

    invoke-virtual {p4, v2}, Lcom/opensource/svgaplayer/SVGAImageView;->setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V

    .line 31
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->p:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p4, v1}, Lcom/opensource/svgaplayer/SVGAImageView;->setLoops(I)V

    .line 32
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->p:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p4, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->setClearsAfterStop(Z)V

    .line 33
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->p:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    .line 34
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    const v3, 0x7f0f0348

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->p:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v3, p4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->q:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    .line 39
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 40
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->q:Landroid/widget/ImageView;

    invoke-virtual {v2, p4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const p4, 0x7f0a08b1

    .line 42
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->s:Landroid/widget/TextView;

    const p4, 0x7f0a087c

    .line 43
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/guochao/faceshow/views/Love;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->t:Lcom/guochao/faceshow/views/Love;

    const p4, 0x7f0a042f

    .line 44
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->v:Landroid/widget/ImageView;

    const p4, 0x7f0a0430

    .line 45
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->w:Lcom/opensource/svgaplayer/SVGAImageView;

    const p4, 0x7f0a09f1

    .line 46
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    const p4, 0x7f0a00af

    .line 47
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->b:Landroid/view/ViewGroup;

    .line 48
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    if-eqz p3, :cond_4

    .line 49
    new-instance p4, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$n;

    invoke-direct {p4, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$n;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V

    invoke-virtual {p3, p4}, Lcom/opensource/svgaplayer/SVGAImageView;->setCallback(Lcom/opensource/svgaplayer/SVGACallback;)V

    :cond_4
    const p3, 0x7f0a0292

    .line 50
    invoke-virtual {p0, p3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->A:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    if-eqz p3, :cond_6

    .line 51
    new-instance p4, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    invoke-direct {p4, p2, p3}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;-><init>(Landroidx/fragment/app/Fragment;Lcom/guochao/faceshow/aaspring/danmu/DanmuView;)V

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->d:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-nez p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->B:Z

    .line 53
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->d:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$o;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$o;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->setOnDanmuClickListener(Lcom/guochao/faceshow/aaspring/danmu/c$a;)V

    :cond_6
    return-void
.end method

.method private A(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$j;

    invoke-direct {v3, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$j;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;I)V

    const-string v0, "short_video_like"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    .line 3
    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setIsZan(I)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoCollectionNum()I

    move-result v0

    add-int/2addr v0, v4

    .line 5
    invoke-virtual {p1, v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoCollectionNum(I)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->s:Landroid/widget/TextView;

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v1, "video_like_3000"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;->insertVideoCollection(Ljava/lang/String;)V

    return-void
.end method

.method private D(Lcom/guochao/faceshow/aaspring/beans/VideoItem;Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->getInstance()Lcom/guochao/faceshow/aaspring/utils/MemoryCache;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->l:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/MemoryCache;->put(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->g:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->r:Z

    const v0, 0x7f0a0bac

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/CommentsFragment;->o1(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/beans/VideoItem;ZLjava/lang/String;ILcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V

    .line 5
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object p1

    invoke-interface {p1}, Lb8/d;->c()Lb8/a;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/bean/UserBean;

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/bean/UserBean;->getVideoBarrageSwitch()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const-string p1, "first_danmu"

    .line 7
    invoke-static {p1, v1}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->setSetting(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private N(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getLiveState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setUserId(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setNickName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getLiveId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getLiveImg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setLiveImg(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserImg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/beans/RoomItemData;->setImg(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/utils/LiveInfoUtils;->jumpToBaseLiveRoomAct(Lcom/guochao/faceshow/aaspring/modulars/live/interfaces/LiveRoomModel;Landroid/content/Context;)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_user_click:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    .line 10
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    const-class v2, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "userId"

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private Q(Lcom/guochao/faceshow/aaspring/beans/VideoItem;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->g:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->y2()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->t()V

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->L(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    .line 5
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v0, p2}, Lcom/tencent/rtmp/TXVodPlayer;->setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V

    .line 7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->h:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p2, v0}, Lcom/tencent/rtmp/TXVodPlayer;->setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/tencent/rtmp/TXVodPlayer;->setAutoPlay(Z)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p2, v0}, Lcom/tencent/rtmp/TXVodPlayer;->setLoop(Z)V

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->g:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->y2()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "BaseShortVideoFragment"

    const-string v1, "startPlay()"

    .line 11
    invoke-static {p2, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/tencent/rtmp/TXVodPlayer;->startVodPlay(Ljava/lang/String;)I

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->o:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->y:Z

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->C()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->E(Z)V

    :goto_0
    return-void
.end method

.method private S(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->p:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->p:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->q:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->q:Landroid/widget/ImageView;

    const v2, 0x7f0f0348

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setIsZan(I)V

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoCollectionNum()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 7
    :goto_0
    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoCollectionNum(I)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->s:Landroid/widget/TextView;

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;->cancelVideoCollection(Ljava/lang/String;)V

    return-void
.end method

.method private T(Lcom/guochao/faceshow/aaspring/beans/Comment;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/guochao/faceshow/utils/Ahttp;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    sget-object v3, Lcom/guochao/faceshow/utils/Contants;->updateCommentLike:Ljava/lang/String;

    const-string v4, "userToken"

    invoke-static {v1, v4}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/guochao/faceshow/utils/Ahttp;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    const-string v2, "userId"

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/guochao/faceshow/utils/Ahttp;->addStrParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/Comment;->getCommentId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "commentId"

    invoke-virtual {v0, v1, p1}, Lcom/guochao/faceshow/utils/Ahttp;->addStrParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$p;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p1, p0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$p;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Landroid/app/Activity;Lcom/guochao/faceshow/utils/Ahttp;)V

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/utils/Ahttp;->send(Lcom/guochao/faceshow/utils/ArequestCallBack;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/Comment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->T(Lcom/guochao/faceshow/aaspring/beans/Comment;)V

    return-void
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->D(Lcom/guochao/faceshow/aaspring/beans/VideoItem;Landroidx/fragment/app/FragmentActivity;Z)V

    return-void
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;Landroid/widget/ImageView;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->l(Lcom/guochao/faceshow/aaspring/beans/VideoItem;Landroid/widget/ImageView;Lcom/opensource/svgaplayer/SVGAImageView;)V

    return-void
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->A(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    return-void
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->S(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    return-void
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->N(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    return-void
.end method

.method static synthetic i(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->g:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    return-object p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->E:Z

    return p1
.end method

.method static synthetic k(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->G:Z

    return p1
.end method

.method private l(Lcom/guochao/faceshow/aaspring/beans/VideoItem;Landroid/widget/ImageView;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_follow_click:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->E:Z

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$l;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$l;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V

    sget v2, Lib/b;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v0, 0x7f11000b

    const v1, 0x7f0f017b

    .line 4
    invoke-static {p2, p3, v0, v1}, Lib/a;->b(Landroid/widget/ImageView;Lcom/opensource/svgaplayer/SVGAImageView;II)V

    .line 5
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;->DEFAULT:Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$m;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    invoke-static {p2, p3, v0, v1}, Lib/b;->b(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/utils/FriendFromSource;Landroid/app/Activity;Lhb/b;)V

    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->INSTANCE:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setMute(Z)V

    :cond_1
    return-void
.end method

.method private w()V
    .locals 5

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$i;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$i;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V

    const/4 v3, 0x1

    const/16 v4, 0x14

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewmodel/ShortVideoViewModel;->getBarrageList(IILjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public B()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->C:Z

    return v0
.end method

.method protected C()V
    .locals 3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/guochao/faceshow/utils/Tools;->playLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public E(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    if-eqz v0, :cond_1

    const-string v0, "BaseShortVideoFragment"

    const-string v1, "ShortVideoViewHolder:pause()"

    .line 2
    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setAutoPlay(Z)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setLoop(Z)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->pause()V

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->c:Z

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->d:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveDanmuHelper;->pause()V

    :cond_0
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->C:Z

    :cond_1
    return-void
.end method

.method public F()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->stopPlay(Z)I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->h:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v0, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/guochao/faceshow/aaspring/utils/VideoPlayer;->setMute(Lcom/tencent/rtmp/TXVodPlayer;Z)V

    const v0, 0x7f0a0de1

    .line 7
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 8
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->d:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->stop()V

    .line 13
    :cond_0
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->y:Z

    .line 14
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->z:Z

    :cond_1
    return-void
.end method

.method public G(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->g:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->y2()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->INSTANCE:Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;

    invoke-virtual {v0}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v0, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setMute(Z)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setMute(Z)V

    .line 5
    :goto_0
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->C:Z

    .line 6
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->c:Z

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 7
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->y:Z

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->Q(Lcom/guochao/faceshow/aaspring/beans/VideoItem;I)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setAutoPlay(Z)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setLoop(Z)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXVodPlayer;->resume()V

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_3
    if-nez v0, :cond_5

    .line 13
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->y:Z

    if-nez p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->Q(Lcom/guochao/faceshow/aaspring/beans/VideoItem;I)V

    goto :goto_2

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setAutoPlay(Z)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setLoop(Z)V

    .line 17
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1}, Lcom/tencent/rtmp/TXVodPlayer;->resume()V

    .line 18
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->d:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    if-eqz p1, :cond_6

    .line 20
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$q;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$q;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    :cond_6
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->z:Z

    return-void
.end method

.method public H(Lcom/guochao/faceshow/aaspring/beans/Comment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->l:Lcom/guochao/faceshow/aaspring/beans/Comment;

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->k:Ljava/lang/String;

    return-void
.end method

.method public J(Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->j:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public K(Ly7/n;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    if-eqz v0, :cond_2

    const v0, 0x7f0a022c

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3
    iget v1, p1, Ly7/n;->a:I

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoCommentNum()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoCommentNum(I)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->d:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    if-eqz v1, :cond_1

    .line 6
    iget-object p1, p1, Ly7/n;->b:Lcom/guochao/faceshow/aaspring/beans/Comment;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->addDanmu(Lcom/guochao/faceshow/aaspring/beans/Comment;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoCommentNum()I

    move-result p1

    if-lez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoCommentNum()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->setVideoCommentNum(I)V

    .line 9
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoCommentNum()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected L(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->h:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getHeight()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getHeight()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getWidth()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getWidth()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_1
    const/4 v2, 0x1

    if-eqz p1, :cond_4

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_5

    int-to-double v3, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double v3, v3, v5

    int-to-double v5, p1

    div-double/2addr v3, v5

    const-wide v5, 0x3ffbae147ae147aeL    # 1.73

    cmpl-double p1, v3, v5

    if-ltz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/TXVodPlayer;->setRenderMode(I)V

    goto :goto_3

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setRenderMode(I)V

    goto :goto_3

    .line 6
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setRenderMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 7
    :catch_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/TXVodPlayer;->setRenderMode(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method public M(ILcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_1

    .line 4
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/guochao/faceshow/BaseAppContext;->getCurrTopActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->o:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$u;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$u;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->v:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    return-void

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->x:Z

    if-nez v0, :cond_3

    const v0, 0x7f0a09fa

    .line 9
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->v:Landroid/widget/ImageView;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$b;

    invoke-direct {v1, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a022b

    .line 11
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$c;

    invoke-direct {v1, p0, p2, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$c;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->F:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$d;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$d;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->r:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$e;

    invoke-direct {v0, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$e;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public O(Lcom/guochao/faceshow/aaspring/beans/VideoItem;I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->C:Z

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->G:Z

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->h:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->h:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearFocus()V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->r()V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->z()V

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->Q(Lcom/guochao/faceshow/aaspring/beans/VideoItem;I)V

    .line 9
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->p()V

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->q()V

    return-void
.end method

.method public P(Lcom/guochao/faceshow/aaspring/beans/VideoItem;IF)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->O(Lcom/guochao/faceshow/aaspring/beans/VideoItem;I)V

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getInstance()Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getTXVodPlayer()Lcom/tencent/rtmp/TXVodPlayer;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->u()Lcom/tencent/rtmp/TXVodPlayer;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->t()V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->C:Z

    .line 6
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->r()V

    .line 8
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->z()V

    const/4 v1, 0x1

    cmpl-float p3, p3, v0

    if-lez p3, :cond_2

    const/4 p2, 0x1

    .line 9
    :cond_2
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->G:Z

    .line 10
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p2}, Lcom/tencent/rtmp/TXVodPlayer;->pause()V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->h:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    invoke-virtual {p2, p3}, Lcom/tencent/rtmp/TXVodPlayer;->setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p2}, Lcom/tencent/rtmp/TXVodPlayer;->resume()V

    .line 13
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->y:Z

    .line 14
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->o(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    return-void
.end method

.method public R()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->i:Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;->a(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$v;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2"

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v0}, Lcom/tencent/rtmp/TXVodPlayer;->getCurrentPlaybackTime()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    .line 4
    :goto_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    sget-object v2, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->video_play_progress:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->stopPlay(Z)I

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->h:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setPlayerView(Lcom/tencent/rtmp/ui/TXCloudVideoView;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {v0, v2}, Lcom/tencent/rtmp/TXVodPlayer;->setVodListener(Lcom/tencent/rtmp/ITXVodPlayListener;)V

    const v0, 0x7f0a0de1

    .line 9
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 10
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->d:Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/utils/DanmuHelper;->stop()V

    .line 15
    :cond_2
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->y:Z

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->z:Z

    :cond_3
    return-void
.end method

.method public closeVoiceRoomEvent(Lcom/guochao/component/voiceliveroom/event/VoiceRoomCloseEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/tencent/rtmp/TXVodPlayer;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->G:Z

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->R()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->g:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->h:Lcom/tencent/rtmp/ui/TXCloudVideoView;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/tencent/rtmp/ui/TXCloudVideoView;->onDestroy()V

    :cond_2
    return-void
.end method

.method public m(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp/TXVodPlayer;->setAutoPlay(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->f:Lcom/tencent/rtmp/TXVodPlayer;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp/TXVodPlayer;->startVodPlay(Ljava/lang/String;)I

    return-void
.end method

.method public n(Lcom/guochao/faceshow/aaspring/beans/VideoItem;I)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindViews: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ShortVideoViewHolder"

    invoke-static {v0, p2}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->q()V

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->p()V

    const p2, 0x7f0a0af5

    .line 5
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/views/SvgaImageViewV2;

    if-nez p2, :cond_1

    return-void

    :cond_1
    const v0, 0x7f0a0a6b

    .line 6
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getShareNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->setText(ILjava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getLiveState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipAvatarPendentUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/guochao/faceshow/aaspring/beans/UserVipData;->getVipAvatarPendentType()I

    move-result v3

    if-lez v3, :cond_2

    const/high16 v3, 0x42860000    # 67.0f

    .line 12
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    const/high16 v3, 0x42680000    # 58.0f

    .line 14
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v4

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 16
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f11002d

    .line 17
    invoke-virtual {p2, v0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->playRaw(I)V

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    const p2, 0x7f0a04c0

    .line 19
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    const v0, 0x7f0a07c4

    .line 20
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f0a07bd

    .line 21
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 22
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080063

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_4

    .line 23
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const/4 v5, 0x1

    .line 24
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 25
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 26
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object v4

    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$s;

    invoke-direct {v6, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$s;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V

    invoke-virtual {v4, v6}, Lio/reactivex/k;->map(Lvh/o;)Lio/reactivex/k;

    move-result-object v4

    .line 27
    invoke-static {}, Ldi/a;->b()Lio/reactivex/s;

    move-result-object v6

    invoke-virtual {v4, v6}, Lio/reactivex/k;->subscribeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v4

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object v6

    invoke-virtual {v4, v6}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object v4

    new-instance v6, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$r;

    invoke-direct {v6, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$r;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V

    invoke-virtual {v4, v6}, Lio/reactivex/k;->subscribe(Lio/reactivex/r;)V

    .line 28
    new-instance v4, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$t;

    invoke-direct {v4, p0, v3}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$t;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;Landroid/widget/ImageView;)V

    const-wide/16 v6, 0x8c0

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    new-instance v3, Lcom/guochao/faceshow/bean/UserBean;

    invoke-direct {v3}, Lcom/guochao/faceshow/bean/UserBean;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/guochao/faceshow/bean/UserBean;->userId:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserImg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/guochao/faceshow/bean/UserBean;->img:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getAvatar()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/guochao/faceshow/bean/UserBean;->avatar:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserVipMsg()Lcom/guochao/faceshow/aaspring/beans/UserVipData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/guochao/faceshow/bean/UserBean;->setUserVipMsg(Lcom/guochao/faceshow/aaspring/beans/UserVipData;)V

    .line 34
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getCountryLogo()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/guochao/faceshow/bean/UserBean;->countryFlag:Ljava/lang/String;

    .line 35
    invoke-virtual {p2, v3}, Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;->d(Lp7/h;)V

    .line 36
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getMusicImg()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 37
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->B:Z

    const/4 v0, 0x2

    const-string v3, "rotation"

    const v4, 0x7f0a07bc

    if-eqz p2, :cond_5

    .line 38
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p2, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    goto :goto_2

    .line 39
    :cond_5
    invoke-virtual {p0, v4}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {p2, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    :goto_2
    const/4 v0, -0x1

    .line 40
    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 41
    invoke-virtual {p2, v5}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 42
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xe10

    .line 43
    invoke-virtual {p2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 44
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    .line 45
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->J(Landroid/animation/ObjectAnimator;)V

    const p2, 0x7f0a08b1

    .line 46
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 47
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoCollectionNum()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a022c

    .line 48
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 49
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getVideoCommentNum()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Lcom/guochao/faceshow/aaspring/utils/Formatter;->getFormat(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->r()V

    .line 51
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->D:Z

    if-eqz p2, :cond_6

    .line 52
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    .line 53
    :cond_6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->p:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->q:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getIsZan()I

    move-result p2

    if-ne p2, v5, :cond_7

    .line 56
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->q:Landroid/widget/ImageView;

    const v0, 0x7f0f0349

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 57
    :cond_7
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->q:Landroid/widget/ImageView;

    const v0, 0x7f0f0348

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    :goto_3
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getPositionMap()Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;

    move-result-object p2

    const v0, 0x7f0a008a

    .line 59
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    .line 60
    invoke-static {}, Lcom/guochao/faceshow/utils/BaseConfig;->isChinese()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 62
    :cond_8
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    if-eqz p2, :cond_9

    .line 63
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0088

    .line 64
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData$OnlineInfo;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 67
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 68
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_5

    .line 69
    :cond_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    const p2, 0x7f0a009e

    .line 70
    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;

    .line 71
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getSex()I

    move-result v0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getAge()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/guochao/faceshow/aaspring/views/AgeAndSexView;->c(II)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_1
    .array-data 4
        0x43b40000    # 360.0f
        0x0
    .end array-data
.end method

.method public o(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->A:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->y:Z

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p1, "danmu"

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/AppSettings;->getSetting(Ljava/lang/String;Z)Z

    move-result p1

    .line 5
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v1

    invoke-interface {v1}, Lb8/d;->c()Lb8/a;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/bean/UserBean;

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getVideoBarrageSwitch()I

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->g:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget-boolean p1, p1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->s:Z

    if-eqz p1, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->w()V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->A:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->A:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/danmu/DanmuView;->i()V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->A:Lcom/guochao/faceshow/aaspring/danmu/DanmuView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public p()V
    .locals 6

    const v0, 0x7f0a0293

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->g:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->t2()Z

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    .line 4
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 5
    :cond_1
    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 6
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public q()V
    .locals 5

    const v0, 0x7f0a0bac

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->g:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget-boolean v2, v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->r:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->getCurrentUser()Lcom/guochao/faceshow/bean/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserBean;->getVideoBarrageSwitch()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->g:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;

    iget-boolean v1, v1, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/BaseShortVideoFragment;->s:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v4, 0x8

    .line 3
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v3, :cond_3

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 4
    fill-array-data v2, :array_0

    const-string v3, "translationX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, -0x1

    .line 6
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const-wide/16 v1, 0x258

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 9
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x41200000    # 10.0f
    .end array-data
.end method

.method public r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->E:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    const-string v2, "userId"

    invoke-static {v1, v2}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->v:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->v:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getIsAttention()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->v:Landroid/widget/ImageView;

    const v1, 0x7f0f017b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->v:Landroid/widget/ImageView;

    const v1, 0x7f0f032d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public s(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/beans/VideoItem;->getIsZan()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    invoke-direct {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->A(Lcom/guochao/faceshow/aaspring/beans/VideoItem;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->t:Lcom/guochao/faceshow/views/Love;

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/Love;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public u()Lcom/tencent/rtmp/TXVodPlayer;
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->getInstance()Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/utils/DynamicVideoPlayer;->createShortVideoPlayer(Landroid/content/Context;)Lcom/tencent/rtmp/TXVodPlayer;

    move-result-object v0

    return-object v0
.end method

.method public v(Z)V
    .locals 2

    const v0, 0x7f0a09fa

    .line 1
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    const v0, 0x7f0a022b

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/base/adapter/BaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->F:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->v:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->r:Lcom/guochao/faceshow/aaspring/views/HeadPortraitView;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->o:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_5
    return-void
.end method

.method public x()Lcom/guochao/faceshow/aaspring/beans/VideoItem;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->m:Lcom/guochao/faceshow/aaspring/beans/VideoItem;

    return-object v0
.end method

.method public y()Landroid/animation/ObjectAnimator;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->j:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public z()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->e:Landroid/content/Context;

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$f;

    invoke-direct {v2, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$f;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V

    invoke-direct {v0, v1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;->u:Landroidx/core/view/GestureDetectorCompat;

    .line 2
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$g;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$g;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$h;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder$h;-><init>(Lcom/guochao/faceshow/aaspring/modulars/main/viewholder/ShortVideoViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
