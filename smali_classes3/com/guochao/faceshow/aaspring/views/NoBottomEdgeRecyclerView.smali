.class public Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView$a;

.field b:F

.field c:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;->b:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;->c:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;->b:F

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;->c:F

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->getTopFadingEdgeStrength()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onScrolled(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;->a:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView$a;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;->a:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView$a;

    invoke-interface {p1}, Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView$a;->a()V

    :cond_1
    return-void
.end method

.method public setOnBottomCallback(Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView;->a:Lcom/guochao/faceshow/aaspring/views/NoBottomEdgeRecyclerView$a;

    return-void
.end method
