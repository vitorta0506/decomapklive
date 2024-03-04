.class public Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$c;,
        Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$b;,
        Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;
    }
.end annotation


# instance fields
.field a:Landroid/widget/Scroller;

.field b:I

.field public c:Z

.field d:I

.field e:I

.field f:Z

.field private g:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$c;

.field private h:Z

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field j:Z

.field private k:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$b;

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c:Z

    .line 3
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->f:Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->i:Ljava/util/List;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->j:Z

    .line 6
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c()V

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

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c:Z

    .line 9
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->f:Z

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->i:Ljava/util/List;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->j:Z

    .line 12
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c()V

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

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c:Z

    .line 15
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->f:Z

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->i:Ljava/util/List;

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->j:Z

    .line 18
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;

    .line 3
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/BaseLiveActivity;->k0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0, p0}, Lcom/guochao/faceshow/utils/SoftKeyBoardUtils;->closeSoftKeyBoardV2(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->a:Landroid/widget/Scroller;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->b:I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private k(IIIII)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->a:Landroid/widget/Scroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    return-void
.end method

.method private l(FF)Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 4
    iget-object v4, v2, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;->a:Landroid/view/View;

    .line 5
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    aget v5, v3, v0

    .line 6
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x1

    aget v7, v3, v6

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v7, v4

    aget v4, v3, v0

    int-to-float v4, v4

    cmpg-float v4, v4, p1

    if-gez v4, :cond_0

    int-to-float v4, v5

    cmpl-float v4, v4, p1

    if-lez v4, :cond_0

    aget v3, v3, v6

    int-to-float v3, v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_0

    int-to-float v3, v7

    cmpl-float v3, v3, p2

    if-lez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public b(Landroid/view/MotionEvent;Z)Ljava/lang/Boolean;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    const/4 v3, 0x2

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 4
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 5
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->e:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_a

    .line 6
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->b:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_a

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->g:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$c;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$c;->a(Landroid/view/MotionEvent;)V

    .line 10
    :cond_2
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->h:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 11
    iput-boolean v4, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->h:Z

    .line 12
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 13
    :cond_3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 14
    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->e:I

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 17
    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->b:I

    if-le v0, v7, :cond_7

    mul-int/lit8 v8, v5, 0x2

    if-le v0, v8, :cond_7

    .line 18
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d:I

    int-to-float p1, p1

    sub-float/2addr v6, p1

    const/high16 p1, 0x428c0000    # 70.0f

    .line 19
    invoke-static {p1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, v6, p2

    if-lez p2, :cond_5

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 21
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c:Z

    if-eqz p1, :cond_a

    .line 22
    iput-boolean v4, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c:Z

    .line 23
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->i()V

    .line 24
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 25
    :cond_4
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c:Z

    if-nez p1, :cond_a

    .line 26
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c:Z

    .line 27
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->i()V

    .line 28
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 29
    :cond_5
    invoke-static {p1}, Lcom/guochao/faceshow/utils/ScreenTools;->dip2px(F)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    cmpg-float p1, v6, p1

    if-gez p1, :cond_a

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 31
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c:Z

    if-nez p1, :cond_a

    .line 32
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c:Z

    .line 33
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->h()V

    .line 34
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 35
    :cond_6
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c:Z

    if-eqz p1, :cond_a

    .line 36
    iput-boolean v4, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c:Z

    .line 37
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->h()V

    .line 38
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_7
    if-ge v5, v7, :cond_a

    if-eqz p2, :cond_a

    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz p2, :cond_8

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    .line 41
    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->e0()Ld9/g;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/modulars/live/watcher/WatcherLiveRoomFragment;

    if-eqz p2, :cond_8

    .line 42
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/BaseLiveRoomFragment;->z:Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;

    if-eqz p2, :cond_8

    .line 43
    iget-object p2, p2, Lcom/guochao/faceshow/aaspring/modulars/live/common/LiveUserInfoFragment;->backToLast:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    new-array v0, v3, [I

    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v0, v4

    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    aget v5, v0, v2

    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    aget v4, v0, v4

    int-to-float v4, v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_8

    int-to-float v3, v3

    cmpl-float v3, v3, v6

    if-lez v3, :cond_8

    aget v0, v0, v2

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_8

    int-to-float v0, v5

    cmpl-float v0, v0, p1

    if-lez v0, :cond_8

    .line 48
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    return-object v1

    .line 49
    :cond_8
    invoke-direct {p0, v6, p1}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->l(FF)Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 50
    iget-object p2, p1, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;->b:Landroid/view/View$OnClickListener;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;->a:Landroid/view/View;

    invoke-interface {p2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 51
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->d:I

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->e:I

    .line 53
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->f:Z

    :cond_a
    :goto_0
    return-object v1
.end method

.method public computeScroll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->a:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->a:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->a:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->j:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->l:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 3
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->b(Landroid/view/MotionEvent;Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 5
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method public e(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->m:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;

    .line 5
    iget-object v1, v1, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;->a:Landroid/view/View;

    if-ne v1, p1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    return-void
.end method

.method public f()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c:Z

    return-void
.end method

.method public g()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    neg-int v0, v0

    :goto_0
    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 3
    :goto_1
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    int-to-float v4, v0

    .line 5
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iput-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->c:Z

    .line 7
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->a()V

    return-void
.end method

.method public getClickInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->m:Ljava/util/List;

    return-object v0
.end method

.method public getOnSwipeListener()Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$b;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->k:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$b;

    return-object v0
.end method

.method public getOnTouchDownListener()Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$c;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->g:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$c;

    return-object v0
.end method

.method public h()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v4, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    add-int/lit8 v1, v5, 0x0

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    move-object v2, p0

    .line 4
    invoke-direct/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->k(IIIII)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->j:Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->k:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$b;

    if-eqz v0, :cond_5

    .line 8
    invoke-interface {v0, p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$b;->l0(Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;)V

    .line 9
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->a()V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    neg-int v3, v0

    const/4 v4, 0x0

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    add-int v2, v3, v5

    if-ne v0, v2, :cond_3

    return-void

    :cond_3
    const/16 v7, 0x3e8

    move-object v2, p0

    .line 13
    invoke-direct/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->k(IIIII)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->j:Z

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->k:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$b;

    if-eqz v0, :cond_5

    .line 17
    invoke-interface {v0, p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$b;->r0(Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public i()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    neg-int v5, v0

    const/4 v6, 0x0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    add-int v2, v3, v5

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    const/16 v7, 0x3e8

    move-object v2, p0

    .line 5
    invoke-direct/range {v2 .. v7}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->k(IIIII)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->j:Z

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->k:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$b;

    if-eqz v0, :cond_5

    .line 9
    invoke-interface {v0, p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$b;->r0(Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    neg-int v4, v0

    const/4 v5, 0x0

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    add-int/lit8 v1, v4, 0x0

    if-ne v0, v1, :cond_3

    return-void

    :cond_3
    const/16 v6, 0x3e8

    const/4 v2, 0x0

    move-object v1, p0

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->k(IIIII)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/guochao/faceshow/aaspring/modulars/live/activity/WatchLiveRoomActivity;->j:Z

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->k:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$b;

    if-eqz v0, :cond_5

    .line 16
    invoke-interface {v0, p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$b;->l0(Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;)V

    .line 17
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->a()V

    :cond_5
    :goto_0
    return-void
.end method

.method public j(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->m:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->m:Ljava/util/List;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;

    invoke-direct {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$a;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->g:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$c;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1}, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$c;->b(Landroid/view/MotionEvent;)V

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->h:Z

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public setIsVoiceRoom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->l:Z

    return-void
.end method

.method public setOnSwipeListener(Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->k:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$b;

    return-void
.end method

.method public setOnTouchDownListener(Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->g:Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView$c;

    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/LiveScrollToClearScreenView;->j:Z

    return-void
.end method
