.class Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper;->startAnimation(Landroid/content/Context;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$down:Landroid/animation/ValueAnimator;

.field final synthetic val$gone:Ljava/lang/Runnable;

.field final synthetic val$tipsView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$5;->val$tipsView:Landroid/view/View;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$5;->val$gone:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$5;->val$down:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$5;->val$tipsView:Landroid/view/View;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$5;->val$gone:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$5;->val$tipsView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$5;->val$down:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
