.class Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/guochao/faceshow/views/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/views/RangeSliderViewContainer;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->a(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Lcom/guochao/faceshow/views/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/s;->w(F)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 2
    iget-object v4, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v4}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->b(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->b(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->e(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v4

    add-long/2addr v4, v0

    cmp-long p1, v4, v2

    if-gez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->e(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v0

    neg-long v0, v0

    :cond_1
    :goto_0
    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->d(Lcom/guochao/faceshow/views/RangeSliderViewContainer;J)J

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->e(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {p1, v2, v3}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->f(Lcom/guochao/faceshow/views/RangeSliderViewContainer;J)J

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->g(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 10
    iget-object v1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-virtual {v1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->m()V

    .line 11
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p1, v0

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->h(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 13
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->a(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Lcom/guochao/faceshow/views/s;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/s;->C(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->a(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Lcom/guochao/faceshow/views/s;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->e(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/views/s;->B(J)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->i(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Lcom/guochao/faceshow/views/RangeSliderViewContainer$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->i(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Lcom/guochao/faceshow/views/RangeSliderViewContainer$c;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->e(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$a;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v3}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->j(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/guochao/faceshow/views/RangeSliderViewContainer$c;->a(JJ)V

    :cond_0
    return-void
.end method
