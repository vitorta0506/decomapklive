.class public Lcom/guochao/faceshow/aaspring/views/PKProgressView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Lcom/opensource/svgaplayer/SVGAImageView;

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field j:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x1e

    .line 2
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->d:J

    const-wide/16 v0, 0x64

    .line 3
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->e:J

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->g(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x1e

    .line 6
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->d:J

    const-wide/16 v0, 0x64

    .line 7
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->e:J

    .line 8
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->g(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x1e

    .line 10
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->d:J

    const-wide/16 v0, 0x64

    .line 11
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->e:J

    .line 12
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->g(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/PKProgressView;)Lcom/opensource/svgaplayer/SVGAImageView;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->c:Lcom/opensource/svgaplayer/SVGAImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/views/PKProgressView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->f:J

    return-wide p1
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/views/PKProgressView;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->h:J

    return-wide v0
.end method

.method static synthetic d(Lcom/guochao/faceshow/aaspring/views/PKProgressView;J)J
    .locals 0

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->g:J

    return-wide p1
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/views/PKProgressView;)J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->i:J

    return-wide v0
.end method

.method private g(Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->a:Landroid/widget/ImageView;

    const v0, 0x7f0803a5

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->b:Landroid/widget/ImageView;

    const v0, 0x7f0803a6

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5
    new-instance p1, Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->c:Lcom/opensource/svgaplayer/SVGAImageView;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->c:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public f(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    sget-object v0, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->INSTANCE:Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/PKProgressView$a;

    invoke-direct {v1, p0, p1}, Lcom/guochao/faceshow/aaspring/views/PKProgressView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/PKProgressView;Landroidx/lifecycle/LifecycleOwner;)V

    const-string p1, "pk_progress.svga"

    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager;->getResource(Ljava/lang/String;Lcom/guochao/faceshow/aaspring/manager/DownloadableResourceManager$LifecycleDownloadCallback;)V

    return-void
.end method

.method public h(JJ)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->d:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->e:J

    cmp-long v2, v0, p3

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v0, "PKProgressView"

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    const-string p1, "illegal value: left < 0 "

    .line 2
    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide p1, v1

    :cond_1
    cmp-long v3, p3, v1

    if-gez v3, :cond_2

    const-string p3, "illegal value: right < 0 "

    .line 3
    invoke-static {v0, p3}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide p3, v1

    .line 4
    :cond_2
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->d:J

    sub-long v4, p1, v0

    .line 5
    iget-wide v2, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->e:J

    sub-long v6, p3, v2

    .line 6
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->h:J

    .line 7
    iput-wide v2, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->i:J

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->j:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->j:Landroid/animation/ValueAnimator;

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 11
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->j:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->j:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->j:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/PKProgressView$b;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/views/PKProgressView$b;-><init>(Lcom/guochao/faceshow/aaspring/views/PKProgressView;JJ)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 16
    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->d:J

    .line 17
    iput-wide p3, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->e:J

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->c:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const v3, 0x800003

    .line 5
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const v3, 0x800013

    .line 7
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8
    iget-wide v3, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->f:J

    iget-wide v5, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->g:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 9
    div-int/lit8 v3, p1, 0x2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 10
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    add-long/2addr v5, v3

    long-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float v3, v3, v4

    long-to-float v4, v5

    div-float/2addr v3, v4

    float-to-double v3, v3

    int-to-double v5, p1

    mul-double v5, v5, v3

    double-to-int v3, v5

    .line 11
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int v3, p1, v3

    .line 12
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    .line 14
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v1, v5, v5, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 15
    :cond_1
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 16
    :goto_1
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 17
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 18
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->a:Landroid/widget/ImageView;

    iget p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p1, p2, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->b:Landroid/widget/ImageView;

    iget p2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 20
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/PKProgressView;->c:Lcom/opensource/svgaplayer/SVGAImageView;

    iget p2, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->measure(II)V

    return-void
.end method
