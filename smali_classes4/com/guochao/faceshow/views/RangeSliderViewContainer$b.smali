.class Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;
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

    iput-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->a(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Lcom/guochao/faceshow/views/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/views/s;->w(F)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 2
    iget-object v4, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v4}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->j(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v4

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v6}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->e(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->e(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->j(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v4

    :goto_0
    sub-long/2addr v0, v4

    goto :goto_1

    :cond_0
    if-lez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->j(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v4

    add-long/2addr v4, v0

    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->l(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-lez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->l(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->j(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v4

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->c(Lcom/guochao/faceshow/views/RangeSliderViewContainer;J)J

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {p1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->h(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 8
    iget-object v2, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v2}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->a(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Lcom/guochao/faceshow/views/s;

    move-result-object v2

    iget-object v3, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v3}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->b(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/guochao/faceshow/views/s;->x(J)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v2}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->j(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v3

    add-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->k(Lcom/guochao/faceshow/views/RangeSliderViewContainer;J)J

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->h(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->a(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Lcom/guochao/faceshow/views/s;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/views/s;->C(Z)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->a(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Lcom/guochao/faceshow/views/s;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->j(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/guochao/faceshow/views/s;->B(J)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->i(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Lcom/guochao/faceshow/views/RangeSliderViewContainer$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v0}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->i(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)Lcom/guochao/faceshow/views/RangeSliderViewContainer$c;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v1}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->e(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/guochao/faceshow/views/RangeSliderViewContainer$b;->a:Lcom/guochao/faceshow/views/RangeSliderViewContainer;

    invoke-static {v3}, Lcom/guochao/faceshow/views/RangeSliderViewContainer;->j(Lcom/guochao/faceshow/views/RangeSliderViewContainer;)J

    move-result-wide v3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/guochao/faceshow/views/RangeSliderViewContainer$c;->a(JJ)V

    :cond_0
    return-void
.end method
