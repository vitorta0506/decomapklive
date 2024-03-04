.class public Lcom/guochao/faceshow/views/DYLoadingView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# instance fields
.field a:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/DYLoadingView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/DYLoadingView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Lcom/guochao/faceshow/views/DYLoadingView;->b()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/DYLoadingView;->a:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/DYLoadingView;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/DYLoadingView;->a:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    aput v3, v1, v2

    const-string v2, "rotation"

    .line 2
    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/views/DYLoadingView;->a:Landroid/animation/ObjectAnimator;

    .line 3
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/views/DYLoadingView;->a:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/views/DYLoadingView;->a:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/views/DYLoadingView;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/DYLoadingView;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    const v0, 0x7f0f01ac

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/DYLoadingView;->c()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/DYLoadingView;->a()V

    return-void
.end method
