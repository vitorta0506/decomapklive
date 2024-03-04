.class public Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field a:I

.field b:Z

.field c:F

.field d:F

.field e:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

.field f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->a:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->b:Z

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->a:I

    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->e:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->h()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->e:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->i()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->b:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getLiveScrollToClearScreenView()Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->e:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    return-object v0
.end method

.method getParentView()Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;
    .locals 3

    move-object v0, p0

    .line 1
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    return-object v0

    .line 5
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->b:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    const/4 v4, 0x2

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->c:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->d:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    .line 8
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->a:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_9

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 10
    :cond_2
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->c:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->a:I

    int-to-float v2, v2

    const-string v5, "UserGuideTouchView"

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->d:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->a:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    const-string p1, "onTouchEvent: \u70b9\u51fb\u4e8b\u4ef6"

    .line 11
    invoke-static {v5, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->f:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_3

    .line 13
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    return v3

    :cond_4
    const-string v0, "onTouchEvent: up "

    .line 14
    invoke-static {v5, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->c:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 16
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 19
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->a:I

    if-le v0, p1, :cond_9

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_9

    .line 20
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->c:F

    sub-float/2addr v2, p1

    const/high16 p1, 0x428c0000    # 70.0f

    .line 21
    invoke-static {p1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_6

    .line 22
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 23
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->c()V

    return v3

    .line 24
    :cond_5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->c()V

    return v3

    .line 25
    :cond_6
    invoke-static {p1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_9

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p1

    if-ne p1, v3, :cond_7

    .line 27
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->b()V

    return v3

    .line 28
    :cond_7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->b()V

    return v3

    .line 29
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->c:F

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->d:F

    :cond_9
    :goto_0
    return v3
.end method

.method public setLiveScrollToClearScreenView(Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->e:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/UserGuideTouchView;->b:Z

    return-void
.end method
