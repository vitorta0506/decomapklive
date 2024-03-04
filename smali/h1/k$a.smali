.class Lh1/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh1/k;


# direct methods
.method constructor <init>(Lh1/k;)V
    .locals 0

    iput-object p1, p0, Lh1/k$a;->a:Lh1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {v0}, Lh1/k;->a(Lh1/k;)Lh1/b;

    move-result-object v0

    invoke-virtual {v0}, Lh1/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {v0}, Lh1/k;->b(Lh1/k;)Lh1/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {v0}, Lh1/k;->b(Lh1/k;)Lh1/i;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lh1/i;->a(FF)V

    .line 4
    :cond_1
    iget-object v0, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {v0}, Lh1/k;->m(Lh1/k;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 5
    iget-object v0, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {v0}, Lh1/k;->s(Lh1/k;)V

    .line 6
    iget-object v0, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {v0}, Lh1/k;->t(Lh1/k;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {v1}, Lh1/k;->u(Lh1/k;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {v1}, Lh1/k;->a(Lh1/k;)Lh1/b;

    move-result-object v1

    invoke-virtual {v1}, Lh1/b;->e()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {v1}, Lh1/k;->v(Lh1/k;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 8
    iget-object v1, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {v1}, Lh1/k;->w(Lh1/k;)I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    iget-object v1, p0, Lh1/k$a;->a:Lh1/k;

    .line 9
    invoke-static {v1}, Lh1/k;->w(Lh1/k;)I

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v1, :cond_2

    cmpl-float v1, p1, v3

    if-gez v1, :cond_5

    :cond_2
    iget-object v1, p0, Lh1/k$a;->a:Lh1/k;

    .line 10
    invoke-static {v1}, Lh1/k;->w(Lh1/k;)I

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    if-ne v1, v2, :cond_3

    cmpg-float p1, p1, v4

    if-lez p1, :cond_5

    :cond_3
    iget-object p1, p0, Lh1/k$a;->a:Lh1/k;

    .line 11
    invoke-static {p1}, Lh1/k;->x(Lh1/k;)I

    move-result p1

    if-nez p1, :cond_4

    cmpl-float p1, p2, v3

    if-gez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lh1/k$a;->a:Lh1/k;

    .line 12
    invoke-static {p1}, Lh1/k;->x(Lh1/k;)I

    move-result p1

    if-ne p1, v2, :cond_7

    cmpg-float p1, p2, v4

    if-gtz p1, :cond_7

    :cond_5
    if-eqz v0, :cond_7

    const/4 p1, 0x0

    .line 13
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 14
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public b(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh1/k$a;->a:Lh1/k;

    invoke-virtual {v0}, Lh1/k;->M()F

    move-result v0

    iget-object v1, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {v1}, Lh1/k;->e(Lh1/k;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {v0}, Lh1/k;->f(Lh1/k;)Lh1/g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {v0}, Lh1/k;->f(Lh1/k;)Lh1/g;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lh1/g;->a(FFF)V

    .line 4
    :cond_1
    iget-object v0, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {v0}, Lh1/k;->m(Lh1/k;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 5
    iget-object p1, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {p1}, Lh1/k;->s(Lh1/k;)V

    :cond_2
    return-void
.end method

.method public c(FFFF)V
    .locals 2

    .line 1
    iget-object p1, p0, Lh1/k$a;->a:Lh1/k;

    new-instance p2, Lh1/k$f;

    invoke-static {p1}, Lh1/k;->t(Lh1/k;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lh1/k$f;-><init>(Lh1/k;Landroid/content/Context;)V

    invoke-static {p1, p2}, Lh1/k;->z(Lh1/k;Lh1/k$f;)Lh1/k$f;

    .line 2
    iget-object p1, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {p1}, Lh1/k;->y(Lh1/k;)Lh1/k$f;

    move-result-object p1

    iget-object p2, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {p2}, Lh1/k;->t(Lh1/k;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p2, v0}, Lh1/k;->c(Lh1/k;Landroid/widget/ImageView;)I

    move-result p2

    iget-object v0, p0, Lh1/k$a;->a:Lh1/k;

    .line 3
    invoke-static {v0}, Lh1/k;->t(Lh1/k;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lh1/k;->d(Lh1/k;Landroid/widget/ImageView;)I

    move-result v0

    float-to-int p3, p3

    float-to-int p4, p4

    .line 4
    invoke-virtual {p1, p2, v0, p3, p4}, Lh1/k$f;->c(IIII)V

    .line 5
    iget-object p1, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {p1}, Lh1/k;->t(Lh1/k;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p2, p0, Lh1/k$a;->a:Lh1/k;

    invoke-static {p2}, Lh1/k;->y(Lh1/k;)Lh1/k$f;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
