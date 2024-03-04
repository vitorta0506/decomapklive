.class public Lcom/guochao/faceshow/aaspring/views/WebGameLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/WebGameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/views/WebGameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/views/WebGameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/WebGameLayout;->b:Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WebGameLayout;->a:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    const v2, 0x7f0a0a07

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    if-eqz v1, :cond_1

    .line 6
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WebGameLayout;->a:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    return-void

    .line 7
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/WebGameLayout;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WebGameLayout;->a:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->b(Landroid/view/MotionEvent;Z)Ljava/lang/Boolean;

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 7
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
