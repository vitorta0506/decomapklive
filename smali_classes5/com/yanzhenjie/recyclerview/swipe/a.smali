.class abstract Lcom/yanzhenjie/recyclerview/swipe/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/swipe/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/view/View;

.field protected c:Lcom/yanzhenjie/recyclerview/swipe/a$a;


# direct methods
.method public constructor <init>(ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/yanzhenjie/recyclerview/swipe/a;->a:I

    .line 3
    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/swipe/a;->b:Landroid/view/View;

    .line 4
    new-instance p1, Lcom/yanzhenjie/recyclerview/swipe/a$a;

    invoke-direct {p1}, Lcom/yanzhenjie/recyclerview/swipe/a$a;-><init>()V

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/swipe/a;->c:Lcom/yanzhenjie/recyclerview/swipe/a$a;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/widget/OverScroller;II)V
.end method

.method public abstract b(Landroid/widget/OverScroller;II)V
.end method

.method public c()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/a;->b:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public abstract d(II)Lcom/yanzhenjie/recyclerview/swipe/a$a;
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/yanzhenjie/recyclerview/swipe/a;->a:I

    return v0
.end method

.method public f()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/a;->b:Landroid/view/View;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/swipe/a;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public abstract h(IF)Z
.end method

.method public i(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/a;->f()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/swipe/a;->e()I

    move-result v1

    mul-int v0, v0, v1

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
