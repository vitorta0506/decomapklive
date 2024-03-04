.class Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper;->startAnimation(Landroid/content/Context;Landroid/view/View;Landroidx/viewpager2/widget/ViewPager2;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic val$tipsView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$2;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$2;->val$tipsView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$2;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget v1, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper;->lastDown:I

    sub-int v1, p1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper$2;->val$tipsView:Landroid/view/View;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 4
    sput p1, Lcom/guochao/faceshow/aaspring/utils/FakeScrollHelper;->lastDown:I

    return-void
.end method
