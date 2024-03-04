.class public Lcom/guochao/faceshow/aaspring/views/LiveRoomView;
.super Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/LiveRoomView$a;
    }
.end annotation


# instance fields
.field private t:Z

.field u:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

.field private v:Z

.field w:I

.field private x:Z

.field y:Lcom/guochao/faceshow/aaspring/views/LiveRoomView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->x:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->x:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->x:Z

    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->x:Z

    .line 2
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->c(Z)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->u:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v0}, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->t(ZZ)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->u:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->v:Z

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->a:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 8
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->v:Z

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->d()V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->w:I

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->t:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->v:Z

    return v0
.end method

.method public getOnLoadMoreListener()Lcom/guochao/faceshow/aaspring/views/LiveRoomView$a;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->y:Lcom/guochao/faceshow/aaspring/views/LiveRoomView$a;

    return-object v0
.end method

.method public i(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->u:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 3
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->q:F

    sub-float/2addr v2, v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result p1

    int-to-float p1, p1

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->w:I

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_2

    return v3

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->u:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->u:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    iget-boolean v4, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->x:Z

    invoke-virtual {p1, v4}, Lcom/guochao/faceshow/aaspring/views/UgcFooter;->setLoading(Z)V

    .line 8
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->v:Z

    float-to-int p1, v2

    .line 9
    invoke-virtual {p0, v1, p1}, Landroid/widget/LinearLayout;->scrollBy(II)V

    goto :goto_0

    .line 10
    :cond_3
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->v:Z

    if-eqz p1, :cond_6

    .line 11
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->x:Z

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->y:Lcom/guochao/faceshow/aaspring/views/LiveRoomView$a;

    if-eqz p1, :cond_4

    .line 13
    invoke-interface {p1, p0}, Lcom/guochao/faceshow/aaspring/views/LiveRoomView$a;->a(Lcom/guochao/faceshow/aaspring/views/LiveRoomView;)V

    goto :goto_0

    .line 14
    :cond_4
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->v:Z

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p0, v3}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->l(Z)V

    .line 16
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->v:Z

    .line 17
    :cond_6
    :goto_0
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->q:F

    return v3
.end method

.method protected j(I)V
    .locals 0

    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 3
    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->u(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->f(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public o(ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 4
    invoke-static {p1, p2}, Lhc/a;->v(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/LiveRoomScrollView;->l(Z)V

    return-void
.end method

.method public setEnableLoadMore(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->t:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->t:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->x:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->u:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/guochao/faceshow/aaspring/views/UgcFooter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->u:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    const/4 v1, 0x4

    .line 6
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->u:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_3

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->u:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->u:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->u:Lcom/guochao/faceshow/aaspring/views/UgcFooter;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setOnLoadMoreListener(Lcom/guochao/faceshow/aaspring/views/LiveRoomView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveRoomView;->y:Lcom/guochao/faceshow/aaspring/views/LiveRoomView$a;

    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0

    return-void
.end method
