.class public abstract Lcom/guochao/faceshow/aaspring/views/doodle/g;
.super Lcom/guochao/faceshow/aaspring/views/doodle/b;
.source "SourceFile"

# interfaces
.implements Lla/f;


# static fields
.field public static final w:I

.field public static final x:I


# instance fields
.field private r:Landroid/graphics/Rect;

.field public s:Landroid/graphics/Rect;

.field private t:Landroid/graphics/Paint;

.field private u:Landroid/graphics/PointF;

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40a00000    # 5.0f

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    sput v0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->w:I

    const/high16 v0, 0x40800000    # 4.0f

    .line 2
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    sput v0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->x:I

    return-void
.end method

.method public constructor <init>(Lla/a;IFF)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/views/doodle/g;-><init>(Lla/a;Lcom/guochao/faceshow/aaspring/views/doodle/d;IFF)V

    return-void
.end method

.method public constructor <init>(Lla/a;Lcom/guochao/faceshow/aaspring/views/doodle/d;IFF)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/doodle/b;-><init>(Lla/a;Lcom/guochao/faceshow/aaspring/views/doodle/d;)V

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->r:Landroid/graphics/Rect;

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->s:Landroid/graphics/Rect;

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->t:Landroid/graphics/Paint;

    .line 6
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->u:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->v:Z

    .line 8
    invoke-virtual {p0, p4, p5}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->n(FF)V

    int-to-float p1, p3

    .line 9
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->d(F)V

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->r:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->H(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public abstract E(Landroid/graphics/Canvas;)V
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->v:Z

    return v0
.end method

.method protected abstract G(Landroid/graphics/Rect;)V
.end method

.method protected H(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->G(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->g()F

    move-result v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->h()F

    move-result v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->f()F

    move-result v2

    invoke-static {p1, v2, v0, v1}, Lma/a;->f(Landroid/graphics/Rect;FFF)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->v:Z

    xor-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->z(Z)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->w()V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getBounds"

    invoke-static {v1, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->r:Landroid/graphics/Rect;

    return-object v0
.end method

.method public i(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->i(F)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->r:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->H(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->w()V

    return-void
.end method

.method public o(FF)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->r:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->H(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v0

    .line 3
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float v4, p1, v1

    .line 4
    iget p1, v0, Landroid/graphics/PointF;->y:F

    sub-float v5, p2, p1

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->u:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->m()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float v3, p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->g()F

    move-result p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float v6, p1, p2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->h()F

    move-result p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float v7, p1, p2

    invoke-static/range {v2 .. v7}, Lma/a;->d(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->u:Landroid/graphics/PointF;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->s:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->r:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->k()Lla/a;

    move-result-object p1

    invoke-interface {p1}, Lla/a;->getUnitSize()F

    move-result p1

    .line 8
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->s:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sget v1, Lcom/guochao/faceshow/aaspring/views/doodle/g;->w:I

    int-to-float v2, v1

    mul-float v2, v2, p1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 9
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    int-to-float v2, v1

    mul-float v2, v2, p1

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 10
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    int-to-float v2, v1

    mul-float v2, v2, p1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 11
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/doodle/g;->u:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public p(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v1

    .line 3
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->m()F

    move-result v1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->g()F

    move-result v2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->h()F

    move-result v3

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->r()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->E(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public setSize(F)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->setSize(F)V

    .line 2
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->G(Landroid/graphics/Rect;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->g()F

    move-result p1

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->h()F

    move-result v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/guochao/faceshow/aaspring/views/doodle/b;->y(FFZ)V

    .line 4
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/doodle/g;->H(Landroid/graphics/Rect;)V

    return-void
.end method

.method public t(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public u(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method
