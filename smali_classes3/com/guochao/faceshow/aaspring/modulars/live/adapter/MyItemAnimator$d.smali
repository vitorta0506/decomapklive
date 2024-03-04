.class Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$d;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$d;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$d;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$d;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$d;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$d;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$d;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;->j:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$d;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$d;->d:Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator;

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/MyItemAnimator$d;->a:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
