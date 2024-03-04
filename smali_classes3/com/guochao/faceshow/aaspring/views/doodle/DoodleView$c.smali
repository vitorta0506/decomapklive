.class Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;


# direct methods
.method public constructor <init>(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->r(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllTranX()F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllTranY()F

    move-result v1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->getAllScale()F

    move-result v0

    .line 6
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->e(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->l(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->m(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 8
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 9
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->n(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Ljava/util/List;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->e(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 11
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->i(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 12
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->i(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 13
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lla/c;

    .line 14
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->i(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 15
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v4}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->i(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->i(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Ljava/util/List;

    move-result-object v2

    .line 17
    :cond_5
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v3}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->j(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_6

    const/4 v3, 0x1

    .line 18
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    .line 19
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 20
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 22
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 23
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lla/c;

    .line 24
    invoke-interface {v8}, Lla/c;->getPen()Lla/e;

    move-result-object v9

    sget-object v10, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->MOSAIC:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-ne v9, v10, :cond_8

    .line 25
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_8
    invoke-interface {v8}, Lla/c;->getPen()Lla/e;

    move-result-object v9

    sget-object v10, Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;->TEXT:Lcom/guochao/faceshow/aaspring/views/doodle/DoodlePen;

    if-ne v9, v10, :cond_7

    .line 27
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 28
    :cond_9
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v7}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->i(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 29
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v7}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->i(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4, v5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 30
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v7}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->i(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 31
    iget-object v7, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v7}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->i(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 32
    invoke-interface {v2, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 33
    invoke-interface {v2, v4, v5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 34
    invoke-interface {v2, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 35
    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lla/c;

    .line 37
    invoke-interface {v6}, Lla/c;->j()Z

    move-result v7

    if-nez v7, :cond_c

    if-eqz v3, :cond_b

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 39
    :cond_b
    invoke-interface {v6, p1}, Lla/c;->draw(Landroid/graphics/Canvas;)V

    if-eqz v3, :cond_a

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 41
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p1, v4, v4, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_5

    .line 42
    :cond_c
    invoke-interface {v6, p1}, Lla/c;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    .line 43
    :cond_d
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lla/c;

    .line 44
    invoke-interface {v5}, Lla/c;->j()Z

    move-result v6

    if-nez v6, :cond_10

    if-eqz v3, :cond_f

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 46
    :cond_f
    invoke-interface {v5, p1}, Lla/c;->p(Landroid/graphics/Canvas;)V

    if-eqz v3, :cond_e

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_6

    .line 49
    :cond_10
    invoke-interface {v5, p1}, Lla/c;->p(Landroid/graphics/Canvas;)V

    goto :goto_6

    .line 50
    :cond_11
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 51
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->s(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Lla/e;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 52
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->s(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Lla/e;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-interface {v0, p1, v1}, Lla/e;->drawHelpers(Landroid/graphics/Canvas;Lla/a;)V

    .line 53
    :cond_12
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->k(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Lla/g;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 54
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->k(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Lla/g;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-interface {v0, p1, v1}, Lla/g;->drawHelpers(Landroid/graphics/Canvas;Lla/a;)V

    :cond_13
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->o(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->g(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->s(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Lla/e;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lla/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lla/h;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->h(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Lla/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView$c;->a:Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;->h(Lcom/guochao/faceshow/aaspring/views/doodle/DoodleView;)Lla/h;

    move-result-object v0

    invoke-interface {v0, p1}, Lla/h;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
