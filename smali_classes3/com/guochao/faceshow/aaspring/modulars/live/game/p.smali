.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field c:F

.field d:F

.field e:F

.field f:F

.field private g:Z

.field h:Landroid/widget/EditText;

.field i:I

.field j:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/widget/EditText;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->g:Z

    .line 3
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->a:Landroid/view/View;

    .line 4
    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->b:Landroid/view/View;

    .line 5
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->h:Landroid/widget/EditText;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->i:I

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 2
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3
    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4
    invoke-direct {p0, v4, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->d(Landroid/view/View;Landroid/view/MotionEvent;[I)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f0a0209

    .line 5
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 6
    instance-of v6, v5, Landroid/view/View$OnClickListener;

    if-eqz v6, :cond_0

    .line 7
    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-interface {v5, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 8
    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    return-void

    .line 9
    :cond_0
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 10
    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {p0, v4, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->a(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private b(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 2
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3
    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4
    invoke-direct {p0, v4, p2, v1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->d(Landroid/view/View;Landroid/view/MotionEvent;[I)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f0a0209

    .line 5
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    .line 6
    instance-of v5, v5, Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    aget v0, v1, v2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    const/4 v0, 0x1

    aget v1, v1, v0

    int-to-float v1, v1

    sub-float/2addr p2, v1

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 8
    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 9
    iput-object v4, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->j:Landroid/view/View;

    return-void

    .line 10
    :cond_0
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 11
    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {p0, v4, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->b(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private d(Landroid/view/View;Landroid/view/MotionEvent;[I)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    aget v1, p3, v0

    const/4 v2, 0x1

    .line 2
    aget p3, p3, v2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, p3

    int-to-float v1, v1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    cmpg-float p3, p3, v1

    if-gez p3, :cond_0

    int-to-float p3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    cmpl-float p3, p3, v1

    if-lez p3, :cond_0

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    return v2

    :cond_0
    return v0
.end method


# virtual methods
.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->g:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->h:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoardNow(Landroid/content/Context;Landroid/view/View;)V

    .line 2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->g:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->b:Landroid/view/View;

    check-cast p1, Landroid/view/ViewParent;

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    if-eq v3, v4, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    goto/16 :goto_1

    .line 7
    :cond_1
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->c:F

    sub-float/2addr v1, p1

    .line 8
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->d:F

    sub-float/2addr v2, p1

    .line 9
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->e:F

    add-float/2addr p1, v1

    .line 10
    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->f:F

    add-float/2addr p2, v2

    .line 11
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->a:Landroid/view/View;

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->b:Landroid/view/View;

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    cmpl-float v1, p1, v1

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->b:Landroid/view/View;

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->a:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setY(F)V

    goto :goto_1

    :cond_3
    :goto_0
    return v0

    :cond_4
    if-eqz p1, :cond_5

    .line 17
    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 18
    :cond_5
    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->c:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->i:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_6

    iget p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->d:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->i:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_6

    .line 19
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->a:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->a(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->j:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->j:Landroid/view/View;

    goto :goto_1

    .line 23
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->c:F

    .line 24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->d:F

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->e:F

    .line 26
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->f:F

    if-eqz p1, :cond_8

    .line 27
    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 28
    :cond_8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->a:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/game/p;->b(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)V

    :cond_9
    :goto_1
    return v4
.end method
