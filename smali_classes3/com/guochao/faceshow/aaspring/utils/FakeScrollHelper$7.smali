.class Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic val$tipsView:Landroid/view/View;

.field final synthetic val$valueAnimator:Landroid/animation/ValueAnimator;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$viewPager2:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Landroid/view/View;Ljava/lang/Runnable;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$valueAnimator:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$down:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$tipsView:Landroid/view/View;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$gone:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p6, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p7, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$view:Landroid/view/View;

    iput-object p8, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$down:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$down:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$down:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$tipsView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$tipsView:Landroid/view/View;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$gone:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$7;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz p1, :cond_0

    .line 13
    invoke-interface {p1, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return p2
.end method
