.class public abstract Lcom/guochao/faceshow/aaspring/views/doodle/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lla/c;
.implements Lla/d;


# instance fields
.field private a:F

.field private b:Lla/a;

.field private c:Landroid/graphics/PointF;

.field private d:Lla/e;

.field private e:Lla/g;

.field private f:F

.field private g:Lla/b;

.field private h:Z

.field private i:Z

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:Z

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lla/d;",
            ">;"
        }
    .end annotation
.end field

.field private q:I


# direct methods
.method public constructor <init>(Lla/a;Lcom/guochao/faceshow/aaspring/views/doodle/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->c:Landroid/graphics/PointF;

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->h:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->i:Z

    const v0, 0x3c23d70a    # 0.01f

    .line 5
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->l:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 6
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->m:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->n:F

    .line 8
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->o:Z

    .line 9
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->p:Ljava/util/List;

    .line 10
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->x(Lla/a;)V

    return-void
.end method


# virtual methods
.method public A(Lla/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->d:Lla/e;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->w()V

    return-void
.end method

.method public B(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->j:F

    const/4 p1, 0x3

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->q(I)V

    return-void
.end method

.method public C(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k:F

    const/4 p1, 0x4

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->q(I)V

    return-void
.end method

.method public D(Lla/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->e:Lla/g;

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->w()V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->q:I

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->a:F

    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->q(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->w()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->u(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->c:Landroid/graphics/PointF;

    .line 4
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->j:F

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->c:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v2

    .line 6
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->a:F

    invoke-virtual {p1, v2, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 7
    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->n:F

    invoke-virtual {p1, v2, v2, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->s(Landroid/graphics/Canvas;)V

    .line 9
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->t(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->o:Z

    return-void
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->n:F

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->j:F

    return v0
.end method

.method public getColor()Lla/b;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->g:Lla/b;

    return-object v0
.end method

.method public getPen()Lla/e;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->d:Lla/e;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->q:I

    return v0
.end method

.method public getShape()Lla/g;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->e:Lla/g;

    return-object v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k:F

    return v0
.end method

.method public i(F)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->l:F

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    .line 2
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->m:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    :goto_1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->n:F

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->q(I)V

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->w()V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->i:Z

    return v0
.end method

.method public k()Lla/a;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->b:Lla/a;

    return-object v0
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->o:Z

    return-void
.end method

.method public m()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->a:F

    return v0
.end method

.method public n(FF)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->y(FFZ)V

    return-void
.end method

.method public p(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public q(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lla/d;

    invoke-interface {v1, p1}, Lla/d;->q(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r()Landroid/graphics/PointF;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getLocation"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->c:Landroid/graphics/PointF;

    return-object v0
.end method

.method protected abstract s(Landroid/graphics/Canvas;)V
.end method

.method public setColor(Lla/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->g:Lla/b;

    const/4 p1, 0x6

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->q(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->w()V

    return-void
.end method

.method public setSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->f:F

    const/4 p1, 0x5

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->q(I)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->w()V

    return-void
.end method

.method protected t(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected u(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public v()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->f:F

    return v0
.end method

.method public w()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->b:Lla/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lla/a;->c()V

    :cond_0
    return-void
.end method

.method public x(Lla/a;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->b:Lla/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "item\'s doodle object is not null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->b:Lla/a;

    return-void
.end method

.method public y(FFZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->c:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float v1, p1, v1

    iget v2, v0, Landroid/graphics/PointF;->y:F

    sub-float v2, p2, v2

    .line 2
    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 3
    iput p2, v0, Landroid/graphics/PointF;->y:F

    const/4 p1, 0x7

    .line 4
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->q(I)V

    if-eqz p3, :cond_0

    .line 5
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->j:F

    add-float/2addr p1, v1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->j:F

    .line 6
    iget p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k:F

    add-float/2addr p1, v2

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k:F

    const/4 p1, 0x3

    .line 7
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->q(I)V

    const/4 p1, 0x4

    .line 8
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->q(I)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->w()V

    return-void
.end method

.method public z(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/b;->i:Z

    return-void
.end method
