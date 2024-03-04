.class Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeScrollHolder$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->T1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;->c()V

    return-void
.end method

.method private synthetic c()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->Q1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;->P1(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/bean/MarqueeUser;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    new-array v4, v1, [F

    const/4 v5, 0x0

    aput v5, v4, v2

    const/high16 v5, 0x41e00000    # 28.0f

    invoke-static {v5}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aput v5, v4, v6

    const-string v5, "translationY"

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 5
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v7, 0x12c

    .line 6
    invoke-virtual {v4, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v2

    aput-object v3, v1, v6

    .line 7
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 8
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 9
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/dressmarket/marquee/FloatMarqueeFragment$b;)V

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
