.class Lcom/yanzhenjie/recyclerview/swipe/b;
.super Lcom/yanzhenjie/recyclerview/swipe/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/yanzhenjie/recyclerview/swipe/a;-><init>(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/OverScroller;II)V
    .locals 7

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public b(Landroid/widget/OverScroller;II)V
    .locals 6

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/a;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int v3, v0, p2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public d(II)Lcom/yanzhenjie/recyclerview/swipe/a$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/a;->c:Lcom/yanzhenjie/recyclerview/swipe/a$a;

    iput p1, v0, Lcom/yanzhenjie/recyclerview/swipe/a$a;->a:I

    .line 2
    iput p2, v0, Lcom/yanzhenjie/recyclerview/swipe/a$a;->b:I

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, v0, Lcom/yanzhenjie/recyclerview/swipe/a$a;->c:Z

    if-nez p1, :cond_0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/yanzhenjie/recyclerview/swipe/a$a;->c:Z

    :cond_0
    if-ltz p1, :cond_1

    .line 5
    iput p2, v0, Lcom/yanzhenjie/recyclerview/swipe/a$a;->a:I

    .line 6
    :cond_1
    iget p1, v0, Lcom/yanzhenjie/recyclerview/swipe/a$a;->a:I

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/a;->f()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    neg-int p2, p2

    if-gt p1, p2, :cond_2

    .line 7
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/a;->c:Lcom/yanzhenjie/recyclerview/swipe/a$a;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/a;->f()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    neg-int p2, p2

    iput p2, p1, Lcom/yanzhenjie/recyclerview/swipe/a$a;->a:I

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/a;->c:Lcom/yanzhenjie/recyclerview/swipe/a$a;

    return-object p1
.end method

.method public h(IF)Z
    .locals 0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/a;->f()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/a;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/a;->e()I

    move-result v1

    mul-int v0, v0, v1

    if-gt p1, v0, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/a;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/a;->e()I

    move-result v1

    mul-int v0, v0, v1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
