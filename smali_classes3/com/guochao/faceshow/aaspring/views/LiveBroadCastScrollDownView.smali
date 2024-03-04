.class public Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView$a;
    }
.end annotation


# instance fields
.field private a:Z

.field b:F

.field c:F

.field d:Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

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

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;->a:Z

    .line 4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 7
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;->b:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 8
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;->c:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_5

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;->d:Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView$a;

    if-eqz v0, :cond_5

    .line 12
    invoke-interface {v0, p0}, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView$a;->b(Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;->d:Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView$a;

    if-eqz v0, :cond_5

    .line 14
    invoke-interface {v0, p0}, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView$a;->a(Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;)V

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;->b:F

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;->c:F

    .line 17
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getOnScrollListener()Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView$a;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;->d:Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView$a;

    return-object v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;->a:Z

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public setOnScrollListener(Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView;->d:Lcom/guochao/faceshow/aaspring/views/LiveBroadCastScrollDownView$a;

    return-void
.end method
