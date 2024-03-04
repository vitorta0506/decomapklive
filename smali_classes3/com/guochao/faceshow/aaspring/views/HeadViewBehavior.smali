.class public Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Landroid/widget/LinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private final d:Landroid/widget/OverScroller;

.field private e:Z

.field private f:Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;

.field private g:I

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->a:Ljava/lang/String;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->e:Z

    const/16 p2, 0x190

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->g:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701f7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->c:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07010a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->b:I

    .line 7
    new-instance p2, Landroid/widget/OverScroller;

    invoke-direct {p2, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;)Landroid/widget/OverScroller;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->j(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;I)V

    return-void
.end method

.method private j(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;I)V
    .locals 0
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput p4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 2
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;ILandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "moveDirection"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    .line 5
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->j:Z

    if-eqz v0, :cond_3

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->b:I

    div-int/lit8 v1, v0, 0xa

    if-le p3, v1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->c:I

    sub-int/2addr v4, p3

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->g:I

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sub-int v5, v0, p3

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->g:I

    move-object v0, v1

    move v1, v3

    move v2, p3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    goto :goto_0

    .line 9
    :cond_3
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->b:I

    div-int/lit8 v1, v0, 0xa

    if-le p3, v1, :cond_4

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sub-int v5, v0, p3

    iget v6, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->g:I

    move-object v0, v1

    move v1, v3

    move v2, p3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->c:I

    sub-int/2addr v4, p3

    iget v5, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->g:I

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 12
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->f:Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;

    if-nez v0, :cond_6

    .line 13
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;-><init>(Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->f:Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;

    .line 14
    :cond_6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->f:Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public c(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->k:F

    const/4 p1, 0x1

    return p1
.end method

.method public d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->h:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->h:Ljava/lang/ref/WeakReference;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->i:Ljava/lang/ref/WeakReference;

    .line 5
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;FFZ)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;FF)Z
    .locals 8
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->e:Z

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return v0

    .line 2
    :cond_0
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p3

    if-eqz p3, :cond_1

    return v0

    .line 5
    :cond_1
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_2

    .line 6
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    invoke-virtual {p3, p4}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 7
    :cond_2
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->f:Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;

    if-nez v1, :cond_3

    .line 9
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;-><init>(Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->f:Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;

    .line 10
    :cond_3
    iget v4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 p1, 0x0

    cmpl-float p3, p5, p1

    if-lez p3, :cond_4

    .line 11
    iget p3, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->c:I

    if-eq v4, p3, :cond_4

    .line 12
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    sub-int v6, v4, p3

    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->g:I

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 13
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->f:Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return p4

    :cond_4
    cmpg-float p1, p5, p1

    if-gez p1, :cond_5

    .line 14
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->b:I

    if-eq v4, p1, :cond_5

    .line 15
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    sub-int v6, p1, v4

    iget v7, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->g:I

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 16
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->f:Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior$a;

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return p4

    :cond_5
    return v0
.end method

.method public g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;II[II)V
    .locals 4
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->e:Z

    if-nez p4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    invoke-virtual {p4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p4

    const/4 p7, 0x1

    if-nez p4, :cond_1

    .line 3
    iget-object p4, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    invoke-virtual {p4, p7}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 4
    :cond_1
    instance-of p4, p3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p4, :cond_8

    .line 5
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p3

    .line 8
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 9
    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sub-int v1, v0, p5

    const/4 v2, 0x0

    if-lez p5, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 10
    :goto_0
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->j:Z

    if-lez p5, :cond_5

    .line 11
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->c:I

    if-lt v0, v3, :cond_5

    if-le v1, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    .line 12
    :goto_1
    invoke-direct {p0, p1, p2, p4, v1}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->j(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;I)V

    sub-int/2addr v0, v1

    .line 13
    aput v0, p6, p7

    .line 14
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->c:I

    if-le v1, p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p7, 0x0

    :goto_2
    iput-boolean p7, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->j:Z

    goto :goto_3

    :cond_5
    if-gez p5, :cond_8

    .line 15
    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->b:I

    if-gt v0, v3, :cond_8

    if-nez p3, :cond_8

    if-le v1, v3, :cond_6

    move v1, v3

    :cond_6
    if-le v1, v3, :cond_7

    const/4 v2, 0x1

    .line 16
    :cond_7
    iput-boolean v2, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->j:Z

    .line 17
    invoke-direct {p0, p1, p2, p4, v1}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->j(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;I)V

    .line 18
    aput p5, p6, p7

    :cond_8
    :goto_3
    return-void
.end method

.method public h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of p1, p4, Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 2
    check-cast p4, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    .line 4
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_0

    .line 5
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    invoke-virtual {p3, p4}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_0
    if-nez p1, :cond_1

    .line 6
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->e:Z

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2
.end method

.method public i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/LinearLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    .line 2
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p3

    if-nez p3, :cond_0

    .line 3
    iget-object p3, p0, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d:Landroid/widget/OverScroller;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 5
    iget p4, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;ILandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->c(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->d(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->g(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->h(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/views/HeadViewBehavior;->i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/LinearLayout;Landroid/view/View;I)V

    return-void
.end method
