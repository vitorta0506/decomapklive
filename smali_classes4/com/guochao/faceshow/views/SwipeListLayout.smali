.class public Lcom/guochao/faceshow/views/SwipeListLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/SwipeListLayout$b;,
        Lcom/guochao/faceshow/views/SwipeListLayout$Status;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:I

.field private d:Landroidx/customview/widget/ViewDragHelper;

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/guochao/faceshow/views/SwipeListLayout$b;

.field private i:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

.field private j:Z

.field k:Landroidx/customview/widget/ViewDragHelper$Callback;

.field private l:Lcom/guochao/faceshow/views/SwipeListLayout$Status;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/views/SwipeListLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object p1, Lcom/guochao/faceshow/views/SwipeListLayout$Status;->Close:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    iput-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->i:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->j:Z

    .line 5
    new-instance p2, Lcom/guochao/faceshow/views/SwipeListLayout$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/views/SwipeListLayout$a;-><init>(Lcom/guochao/faceshow/views/SwipeListLayout;)V

    iput-object p2, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->k:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 6
    iput-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->l:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    .line 7
    invoke-static {p0, p2}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->d:Landroidx/customview/widget/ViewDragHelper;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/views/SwipeListLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->b:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/views/SwipeListLayout;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->c:I

    return p0
.end method

.method static synthetic c(Lcom/guochao/faceshow/views/SwipeListLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/guochao/faceshow/views/SwipeListLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->j:Z

    return p0
.end method

.method static synthetic e(Lcom/guochao/faceshow/views/SwipeListLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/SwipeListLayout;->i(Z)V

    return-void
.end method

.method static synthetic f(Lcom/guochao/faceshow/views/SwipeListLayout;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/SwipeListLayout;->g(Z)V

    return-void
.end method

.method private g(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->i:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    iput-object v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->l:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    .line 2
    sget-object v0, Lcom/guochao/faceshow/views/SwipeListLayout$Status;->Close:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    iput-object v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->i:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    const-string v1, "SlipListLayout"

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->d:Landroidx/customview/widget/ViewDragHelper;

    iget-object v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->b:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->h:Lcom/guochao/faceshow/views/SwipeListLayout$b;

    if-eqz p1, :cond_0

    const-string/jumbo p1, "start close animation"

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->h:Lcom/guochao/faceshow/views/SwipeListLayout$b;

    invoke-interface {p1}, Lcom/guochao/faceshow/views/SwipeListLayout$b;->c()V

    .line 7
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/views/SwipeListLayout;->h(Lcom/guochao/faceshow/views/SwipeListLayout$Status;)V

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->h:Lcom/guochao/faceshow/views/SwipeListLayout$b;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->l:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    sget-object v0, Lcom/guochao/faceshow/views/SwipeListLayout$Status;->Open:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    if-ne p1, v0, :cond_3

    const-string p1, "close"

    .line 10
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->h:Lcom/guochao/faceshow/views/SwipeListLayout$b;

    iget-object v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->i:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/views/SwipeListLayout$b;->b(Lcom/guochao/faceshow/views/SwipeListLayout$Status;)V

    :cond_3
    return-void
.end method

.method private h(Lcom/guochao/faceshow/views/SwipeListLayout$Status;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/guochao/faceshow/views/SwipeListLayout$Status;->Close:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->a:Landroid/view/View;

    iget v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->f:I

    iget v2, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->c:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->g:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->b:Landroid/view/View;

    iget v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->f:I

    iget v2, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->g:I

    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->a:Landroid/view/View;

    iget v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->f:I

    iget v2, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->c:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->g:I

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/view/View;->layout(IIII)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->b:Landroid/view/View;

    iget v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->c:I

    neg-int v2, v0

    iget v3, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->f:I

    sub-int/2addr v3, v0

    iget v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->g:I

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method private i(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->i:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    iput-object v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->l:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    .line 2
    sget-object v0, Lcom/guochao/faceshow/views/SwipeListLayout$Status;->Open:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    iput-object v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->i:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    const-string v1, "SlipListLayout"

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->d:Landroidx/customview/widget/ViewDragHelper;

    iget-object v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->b:Landroid/view/View;

    iget v2, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->c:I

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->h:Lcom/guochao/faceshow/views/SwipeListLayout$b;

    if-eqz p1, :cond_0

    const-string/jumbo p1, "start open animation"

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->h:Lcom/guochao/faceshow/views/SwipeListLayout$b;

    invoke-interface {p1}, Lcom/guochao/faceshow/views/SwipeListLayout$b;->a()V

    .line 7
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/views/SwipeListLayout;->h(Lcom/guochao/faceshow/views/SwipeListLayout$Status;)V

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->h:Lcom/guochao/faceshow/views/SwipeListLayout$b;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->l:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    sget-object v0, Lcom/guochao/faceshow/views/SwipeListLayout$Status;->Close:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    if-ne p1, v0, :cond_3

    const-string p1, "open"

    .line 10
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->h:Lcom/guochao/faceshow/views/SwipeListLayout$b;

    iget-object v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->i:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    invoke-interface {p1, v0}, Lcom/guochao/faceshow/views/SwipeListLayout$b;->b(Lcom/guochao/faceshow/views/SwipeListLayout$Status;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->d:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->a:Landroid/view/View;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->b:Landroid/view/View;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->d:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->d:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sget-object p1, Lcom/guochao/faceshow/views/SwipeListLayout$Status;->Close:Lcom/guochao/faceshow/views/SwipeListLayout$Status;

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/SwipeListLayout;->h(Lcom/guochao/faceshow/views/SwipeListLayout$Status;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->f:I

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->g:I

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->c:I

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->e:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->d:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setOnSwipeStatusListener(Lcom/guochao/faceshow/views/SwipeListLayout$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->h:Lcom/guochao/faceshow/views/SwipeListLayout$b;

    return-void
.end method

.method public setSmooth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/views/SwipeListLayout;->j:Z

    return-void
.end method
