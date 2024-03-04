.class Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->g2(Landroid/view/View;Lcom/opensource/svgaplayer/SVGAImageView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/opensource/svgaplayer/SVGAImageView;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;Lcom/opensource/svgaplayer/SVGAImageView;Landroid/view/View;II)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->b:Landroid/view/View;

    iput p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->c:I

    iput p5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [I

    .line 3
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->b:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 6
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 7
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 8
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    aget v7, v1, v6

    aget v8, v2, v6

    sub-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v5, v5

    const v8, 0x3f19999a    # 0.6f

    mul-float v5, v5, v8

    sub-float/2addr v7, v5

    .line 9
    iget v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->c:I

    int-to-float v5, v5

    mul-float v5, v5, v8

    add-float/2addr v7, v5

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v7, v5

    float-to-int v5, v7

    .line 10
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->e:Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;

    iget-object v9, v9, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment;->mAnimStartRightView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v10, 0x0

    if-ne v7, v9, :cond_0

    aget v1, v1, v10

    aget v2, v2, v10

    sub-int/2addr v1, v2

    sub-int/2addr v4, v3

    .line 11
    div-int/2addr v4, v0

    sub-int/2addr v1, v4

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->d:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    aget v1, v1, v10

    aget v2, v2, v10

    sub-int/2addr v1, v2

    sub-int/2addr v4, v3

    .line 12
    div-int/2addr v4, v0

    sub-int/2addr v1, v4

    iget v2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->d:I

    sub-int/2addr v1, v2

    .line 13
    :goto_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    new-array v4, v6, [F

    int-to-float v1, v1

    aput v1, v4, v10

    const-string v1, "translationX"

    invoke-static {v3, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 15
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    new-array v4, v6, [F

    int-to-float v5, v5

    aput v5, v4, v10

    const-string v5, "translationY"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 16
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    new-array v5, v6, [F

    aput v8, v5, v10

    const-string v7, "scaleX"

    invoke-static {v4, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 17
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/modulars/live/common/PKLiveInfoFragment$c;->a:Lcom/opensource/svgaplayer/SVGAImageView;

    new-array v7, v6, [F

    aput v8, v7, v10

    const-string v8, "scaleY"

    invoke-static {v5, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 18
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v1, v7, v10

    aput-object v3, v7, v6

    aput-object v4, v7, v0

    const/4 v0, 0x3

    aput-object v5, v7, v0

    .line 19
    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x1f4

    .line 20
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v0, 0xc8

    .line 21
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 22
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method
