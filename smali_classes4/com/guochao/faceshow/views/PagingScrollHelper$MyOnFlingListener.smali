.class public Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/views/PagingScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyOnFlingListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/PagingScrollHelper;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/views/PagingScrollHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(II)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/views/PagingScrollHelper;->a(Lcom/guochao/faceshow/views/PagingScrollHelper;)Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    move-result-object v0

    sget-object v1, Lcom/guochao/faceshow/views/PagingScrollHelper$b;->c:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {v0}, Lcom/guochao/faceshow/views/PagingScrollHelper;->b(Lcom/guochao/faceshow/views/PagingScrollHelper;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {v1}, Lcom/guochao/faceshow/views/PagingScrollHelper;->a(Lcom/guochao/faceshow/views/PagingScrollHelper;)Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    move-result-object v1

    sget-object v3, Lcom/guochao/faceshow/views/PagingScrollHelper$b;->b:Lcom/guochao/faceshow/views/PagingScrollHelper$b;

    if-ne v1, v3, :cond_3

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p1}, Lcom/guochao/faceshow/views/PagingScrollHelper;->c(Lcom/guochao/faceshow/views/PagingScrollHelper;)I

    move-result p1

    if-gez p2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 5
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    iget-object p2, p2, Lcom/guochao/faceshow/views/PagingScrollHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    mul-int v0, v0, p2

    goto :goto_2

    .line 6
    :cond_3
    iget-object p2, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    invoke-static {p2}, Lcom/guochao/faceshow/views/PagingScrollHelper;->e(Lcom/guochao/faceshow/views/PagingScrollHelper;)I

    move-result p2

    if-gez p1, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    if-lez p1, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 7
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/views/PagingScrollHelper;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    mul-int v0, v0, p1

    move p1, p2

    :goto_2
    if-gez v0, :cond_6

    const/4 v0, 0x0

    .line 8
    :cond_6
    iget-object p2, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    iget-object v1, p2, Lcom/guochao/faceshow/views/PagingScrollHelper;->i:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_7

    .line 9
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    new-array v1, v3, [I

    aput p1, v1, v2

    aput v0, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p2, Lcom/guochao/faceshow/views/PagingScrollHelper;->i:Landroid/animation/ValueAnimator;

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/views/PagingScrollHelper;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/views/PagingScrollHelper;->i:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$a;-><init>(Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/views/PagingScrollHelper;->i:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$b;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener$b;-><init>(Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    .line 13
    :cond_7
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    iget-object p2, p2, Lcom/guochao/faceshow/views/PagingScrollHelper;->i:Landroid/animation/ValueAnimator;

    new-array v1, v3, [I

    aput p1, v1, v2

    aput v0, v1, v4

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 15
    :goto_3
    iget-object p1, p0, Lcom/guochao/faceshow/views/PagingScrollHelper$MyOnFlingListener;->a:Lcom/guochao/faceshow/views/PagingScrollHelper;

    iget-object p1, p1, Lcom/guochao/faceshow/views/PagingScrollHelper;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return v4
.end method
