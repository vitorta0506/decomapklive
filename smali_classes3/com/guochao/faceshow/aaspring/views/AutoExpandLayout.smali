.class public Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->c:Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->d:Z

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

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->c:Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->d:Z

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

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->c:Z

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->d:Z

    return-void
.end method


# virtual methods
.method a()Lcom/google/android/material/appbar/AppBarLayout;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->a()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 6
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->a:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_2

    .line 7
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->d:Z

    .line 8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 9
    :cond_2
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->d:Z

    .line 10
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->b:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_3

    .line 11
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->c:Z

    return v2

    .line 12
    :cond_3
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->c:Z

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 14
    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->c:Z

    if-eqz v1, :cond_5

    .line 15
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 16
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 17
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->a:I

    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lez v4, :cond_8

    .line 18
    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->a:I

    if-le v1, v4, :cond_6

    .line 19
    invoke-virtual {v0, v3, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    goto :goto_0

    .line 20
    :cond_6
    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    goto :goto_0

    .line 21
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->b:I

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->a:I

    .line 23
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->c:Z

    .line 24
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AutoExpandLayout;->c:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
