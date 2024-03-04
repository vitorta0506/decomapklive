.class Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;
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
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic val$tipsView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$viewPager2:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/content/Context;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;->val$tipsView:Landroid/view/View;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;->val$viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p5, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p6, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper;->access$108()I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;->val$tipsView:Landroid/view/View;

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6$1;-><init>(Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$6;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
