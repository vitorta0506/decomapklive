.class public Lcom/guochao/faceshow/aaspring/utils/RecyclerViewAnimatorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final closeAnimator(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 3
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 4
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 5
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_0
    return-void
.end method

.method public static final sync(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/RecyclerViewAnimatorUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/guochao/faceshow/aaspring/utils/RecyclerViewAnimatorUtils$1;-><init>(Landroidx/recyclerview/widget/RecyclerView;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
