.class public Lcom/guochao/faceshow/views/TCLayerOperationView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/TCLayerOperationView$a;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/Path;

.field private B:Landroid/graphics/Paint;

.field private B3:F

.field private C:I

.field private C4:F

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:Landroid/util/DisplayMetrics;

.field private I:Landroid/graphics/PointF;

.field private J:Landroid/graphics/PointF;

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private V1:J

.field private V2:F

.field private V3:F

.field private a:Z

.field private a1:J

.field private a2:Lcom/guochao/faceshow/views/TCLayerOperationView$a;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/PointF;

.field private d:I

.field private e:I

.field private f:F

.field private g:F

.field private h:Landroid/graphics/Matrix;

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Point;

.field private l:Landroid/graphics/Point;

.field private m:Landroid/graphics/Point;

.field private n:Landroid/graphics/Point;

.field private o:Landroid/graphics/Point;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:I

.field private r:I

.field private s:Landroid/graphics/Point;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:I

.field private v:I

.field private w:Landroid/graphics/Point;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/guochao/faceshow/views/TCLayerOperationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/guochao/faceshow/views/TCLayerOperationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->c:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->f:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 6
    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->g:F

    .line 7
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->h:Landroid/graphics/Matrix;

    .line 8
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->o:Landroid/graphics/Point;

    .line 9
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->s:Landroid/graphics/Point;

    .line 10
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->w:Landroid/graphics/Point;

    .line 11
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->A:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->C:I

    .line 13
    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->D:I

    const/4 p3, -0x1

    .line 14
    iput p3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->E:I

    const/4 p3, 0x2

    .line 15
    iput p3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->F:I

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->G:Z

    .line 17
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->I:Landroid/graphics/PointF;

    .line 18
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->J:Landroid/graphics/PointF;

    .line 19
    iput p3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->M:I

    .line 20
    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->N:I

    .line 21
    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->O:I

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->a2:Lcom/guochao/faceshow/views/TCLayerOperationView$a;

    .line 23
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->l(Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCLayerOperationView;->h()V

    return-void
.end method

.method private a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->c:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 2
    :cond_0
    iget v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->V3:F

    iget v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->C4:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 3
    :cond_1
    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->d:I

    iget v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->y:I

    add-int/2addr v0, v1

    .line 4
    iget v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->e:I

    iget v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->z:I

    add-int/2addr v1, v2

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->c:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    div-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 6
    iget v2, v2, Landroid/graphics/PointF;->y:F

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 7
    iget v4, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->i:I

    if-ne v4, v3, :cond_2

    iget v4, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->j:I

    if-eq v4, v2, :cond_3

    .line 8
    :cond_2
    iput v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->i:I

    .line 9
    iput v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->j:I

    :cond_3
    add-int/2addr v0, v3

    add-int/2addr v1, v2

    .line 10
    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 11
    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->y:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    iput v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->P:I

    .line 12
    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->z:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->Q:I

    .line 13
    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->d:I

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->R:I

    return-void
.end method

.method private b(IIIIF)V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p3, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 3
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    .line 4
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, p4}, Landroid/graphics/Point;-><init>(II)V

    .line 5
    new-instance v4, Landroid/graphics/Point;

    add-int/2addr p1, p3

    const/4 p3, 0x2

    div-int/2addr p1, p3

    add-int/2addr p2, p4

    div-int/2addr p2, p3

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 6
    invoke-direct {p0, v4, v0, p5}, Lcom/guochao/faceshow/views/TCLayerOperationView;->k(Landroid/graphics/Point;Landroid/graphics/Point;F)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->k:Landroid/graphics/Point;

    .line 7
    invoke-direct {p0, v4, v1, p5}, Lcom/guochao/faceshow/views/TCLayerOperationView;->k(Landroid/graphics/Point;Landroid/graphics/Point;F)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->l:Landroid/graphics/Point;

    .line 8
    invoke-direct {p0, v4, v2, p5}, Lcom/guochao/faceshow/views/TCLayerOperationView;->k(Landroid/graphics/Point;Landroid/graphics/Point;F)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->m:Landroid/graphics/Point;

    .line 9
    invoke-direct {p0, v4, v3, p5}, Lcom/guochao/faceshow/views/TCLayerOperationView;->k(Landroid/graphics/Point;Landroid/graphics/Point;F)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->n:Landroid/graphics/Point;

    const/4 p1, 0x4

    new-array p2, p1, [Ljava/lang/Integer;

    .line 10
    iget-object p4, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->k:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p2, p5

    iget-object p4, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->l:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v0, 0x1

    aput-object p4, p2, v0

    iget-object p4, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->m:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    iget-object p4, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->n:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v1, 0x3

    aput-object p4, p2, v1

    invoke-virtual {p0, p2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->f([Ljava/lang/Integer;)I

    move-result p2

    new-array p4, p1, [Ljava/lang/Integer;

    .line 11
    iget-object v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->k:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p4, p5

    iget-object v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->l:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p4, v0

    iget-object v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->m:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p4, p3

    iget-object v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->n:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p4, v1

    invoke-virtual {p0, p4}, Lcom/guochao/faceshow/views/TCLayerOperationView;->g([Ljava/lang/Integer;)I

    move-result p4

    sub-int v2, p2, p4

    .line 12
    iput v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->d:I

    new-array v2, p1, [Ljava/lang/Integer;

    .line 13
    iget-object v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->k:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p5

    iget-object v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->l:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->m:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p3

    iget-object v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->n:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->f([Ljava/lang/Integer;)I

    move-result v2

    new-array p1, p1, [Ljava/lang/Integer;

    .line 14
    iget-object v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->k:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, p5

    iget-object p5, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->l:Landroid/graphics/Point;

    iget p5, p5, Landroid/graphics/Point;->y:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p1, v0

    iget-object p5, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->m:Landroid/graphics/Point;

    iget p5, p5, Landroid/graphics/Point;->y:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p1, p3

    iget-object p5, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->n:Landroid/graphics/Point;

    iget p5, p5, Landroid/graphics/Point;->y:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p1, v1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->g([Ljava/lang/Integer;)I

    move-result p1

    sub-int p5, v2, p1

    .line 15
    iput p5, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->e:I

    .line 16
    new-instance p5, Landroid/graphics/Point;

    add-int/2addr p2, p4

    div-int/2addr p2, p3

    add-int/2addr v2, p1

    div-int/2addr v2, p3

    invoke-direct {p5, p2, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 17
    iget p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->d:I

    div-int/2addr p1, p3

    iget p2, p5, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->K:I

    .line 18
    iget p2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->e:I

    div-int/2addr p2, p3

    iget p4, p5, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p4

    iput p2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->L:I

    .line 19
    iget p4, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->y:I

    div-int/2addr p4, p3

    .line 20
    iget p5, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->z:I

    div-int/2addr p5, p3

    .line 21
    iget-object p3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->k:Landroid/graphics/Point;

    iget v0, p3, Landroid/graphics/Point;->x:I

    add-int v1, p1, p4

    add-int/2addr v0, v1

    iput v0, p3, Landroid/graphics/Point;->x:I

    .line 22
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->l:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    add-int v2, p1, p4

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 23
    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->m:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    add-int v3, p1, p4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 24
    iget-object v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->n:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    add-int/2addr p1, p4

    add-int/2addr v3, p1

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 25
    iget p1, p3, Landroid/graphics/Point;->y:I

    add-int p4, p2, p5

    add-int/2addr p1, p4

    iput p1, p3, Landroid/graphics/Point;->y:I

    .line 26
    iget p1, v0, Landroid/graphics/Point;->y:I

    add-int p3, p2, p5

    add-int/2addr p1, p3

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 27
    iget p1, v1, Landroid/graphics/Point;->y:I

    add-int p3, p2, p5

    add-int/2addr p1, p3

    iput p1, v1, Landroid/graphics/Point;->y:I

    .line 28
    iget p1, v2, Landroid/graphics/Point;->y:I

    add-int/2addr p2, p5

    add-int/2addr p1, p2

    iput p1, v2, Landroid/graphics/Point;->y:I

    .line 29
    iget p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->M:I

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->j(I)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->w:Landroid/graphics/Point;

    .line 30
    iget p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->N:I

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->j(I)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->o:Landroid/graphics/Point;

    .line 31
    iget p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->O:I

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->j(I)Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->s:Landroid/graphics/Point;

    return-void
.end method

.method private c(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double p1, p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private d(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 1
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 2
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    mul-float v0, v0, v0

    mul-float p2, p2, p2

    add-float/2addr v0, p2

    float-to-double p1, v0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method private e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/16 v3, 0x32

    if-gtz v1, :cond_2

    const/16 v1, 0x32

    :cond_2
    if-gtz v2, :cond_3

    const/16 v2, 0x32

    .line 5
    :cond_3
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 6
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 7
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 8
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private h()V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->B:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->E:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->F:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->B:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->x:Landroid/graphics/drawable/Drawable;

    const-wide/high16 v1, 0x3ff8000000000000L    # 1.5

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-double v3, v0

    mul-double v3, v3, v1

    double-to-int v0, v3

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->y:I

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-double v3, v0

    mul-double v3, v3, v1

    double-to-int v0, v3

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->z:I

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-double v3, v0

    mul-double v3, v3, v1

    double-to-int v0, v3

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->q:I

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-double v3, v0

    mul-double v3, v3, v1

    double-to-int v0, v3

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->r:I

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-double v3, v0

    mul-double v3, v3, v1

    double-to-int v0, v3

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->u:I

    .line 14
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-double v3, v0

    mul-double v3, v3, v1

    double-to-int v0, v3

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->v:I

    .line 15
    :cond_2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCLayerOperationView;->o()V

    return-void
.end method

.method private i(FF)I
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2
    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->w:Landroid/graphics/Point;

    invoke-direct {p1, p2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->d(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->y:I

    const/4 v1, 0x2

    div-int/2addr p2, v1

    iget v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->z:I

    div-int/2addr v2, v1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    return v1

    .line 5
    :cond_0
    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->o:Landroid/graphics/Point;

    invoke-direct {p1, p2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->d(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 6
    iget p2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->q:I

    div-int/2addr p2, v1

    iget v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->r:I

    div-int/2addr v2, v1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, 0x3

    return p1

    .line 7
    :cond_1
    new-instance p1, Landroid/graphics/PointF;

    iget-object p2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->s:Landroid/graphics/Point;

    invoke-direct {p1, p2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->d(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 8
    iget p2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->u:I

    div-int/2addr p2, v1

    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->v:I

    div-int/2addr v0, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private j(I)Landroid/graphics/Point;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->k:Landroid/graphics/Point;

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->n:Landroid/graphics/Point;

    return-object p1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->m:Landroid/graphics/Point;

    return-object p1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->l:Landroid/graphics/Point;

    return-object p1

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->k:Landroid/graphics/Point;

    return-object p1
.end method

.method private k(Landroid/graphics/Point;Landroid/graphics/Point;F)Landroid/graphics/Point;
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 3
    iget p2, p2, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, v1

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 4
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 5
    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int v1, v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int v2, v2, v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 6
    iget v3, v0, Landroid/graphics/Point;->x:I

    if-nez v3, :cond_0

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-nez v4, :cond_0

    return-object p1

    :cond_0
    if-ltz v3, :cond_1

    .line 7
    iget v4, v0, Landroid/graphics/Point;->y:I

    if-ltz v4, :cond_1

    int-to-double v3, v4

    div-double/2addr v3, v1

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    goto :goto_1

    :cond_1
    if-gez v3, :cond_2

    .line 9
    iget v4, v0, Landroid/graphics/Point;->y:I

    if-ltz v4, :cond_2

    .line 10
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    :goto_0
    add-double/2addr v3, v5

    goto :goto_1

    :cond_2
    if-gez v3, :cond_3

    .line 11
    iget v4, v0, Landroid/graphics/Point;->y:I

    if-gez v4, :cond_3

    .line 12
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v3, v0

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    goto :goto_0

    :cond_3
    if-ltz v3, :cond_4

    .line 13
    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_4

    int-to-double v3, v3

    div-double/2addr v3, v1

    .line 14
    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    const-wide v5, 0x4012d97c7f3321d2L    # 4.71238898038469

    goto :goto_0

    :cond_4
    const-wide/16 v3, 0x0

    .line 15
    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/guochao/faceshow/views/TCLayerOperationView;->m(D)D

    move-result-wide v3

    float-to-double v5, p3

    add-double/2addr v3, v5

    .line 16
    invoke-direct {p0, v3, v4}, Lcom/guochao/faceshow/views/TCLayerOperationView;->c(D)D

    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int p3, v5

    iput p3, p2, Landroid/graphics/Point;->x:I

    .line 18
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p3, v0

    iput p3, p2, Landroid/graphics/Point;->y:I

    .line 19
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 20
    iget p1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr p3, p1

    iput p3, p2, Landroid/graphics/Point;->y:I

    return-object p2
.end method

.method private l(Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->H:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->D:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->H:Landroid/util/DisplayMetrics;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->F:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/guochao/faceshow/R$styleable;->TCLayerOperationView:[I

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v0, 0xc

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lcom/guochao/faceshow/views/TCLayerOperationView;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->b:Landroid/graphics/Bitmap;

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->D:I

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->D:I

    .line 8
    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->F:I

    const/16 v3, 0xa

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->F:I

    const/16 v0, 0x8

    const/4 v3, -0x1

    .line 9
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->E:I

    const/16 v0, 0xb

    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->g:F

    const/4 v0, 0x2

    .line 11
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->f:F

    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->x:Landroid/graphics/drawable/Drawable;

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->M:I

    const/4 v0, 0x5

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->p:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x6

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->N:I

    const/4 v0, 0x3

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->t:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x4

    .line 17
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->O:I

    const/4 v0, 0x7

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->G:Z

    .line 19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private m(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p1, p1, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private o()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->g:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->g:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 4
    iget v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->D:I

    neg-int v4, v2

    neg-int v5, v2

    add-int v6, v0, v2

    add-int v7, v1, v2

    iget v8, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->f:F

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/guochao/faceshow/views/TCLayerOperationView;->b(IIIIF)V

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->h:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->g:F

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 6
    iget-object v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->h:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->f:F

    const/high16 v4, 0x43b40000    # 360.0f

    rem-float/2addr v3, v4

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->h:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->K:I

    iget v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->y:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->L:I

    iget v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->z:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCLayerOperationView;->a()V

    return-void
.end method


# virtual methods
.method public varargs f([Ljava/lang/Integer;)I
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public varargs g([Ljava/lang/Integer;)I
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getCenterX()F
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->V1:J

    return-wide v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageRotate()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->f:F

    return v0
.end method

.method public getImageScale()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->g:F

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->R:I

    return v0
.end method

.method public getImageX()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->P:I

    return v0
.end method

.method public getImageY()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->Q:I

    return v0
.end method

.method public getRotateBitmap()Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->h:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->a1:J

    return-wide v0
.end method

.method public n(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->a1:J

    .line 2
    iput-wide p3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->V1:J

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->h:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 4
    iget-boolean v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->G:Z

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->A:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->A:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->k:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->A:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->l:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->A:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->m:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->A:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->n:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 10
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->A:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->k:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->A:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->l:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 12
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->A:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 14
    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->w:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->y:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->z:I

    div-int/lit8 v6, v5, 0x2

    sub-int v6, v1, v6

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    invoke-virtual {v0, v4, v6, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 15
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->p:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 17
    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->o:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->y:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->z:I

    div-int/lit8 v6, v5, 0x2

    sub-int v6, v1, v6

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    invoke-virtual {v0, v4, v6, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 20
    iget-object v1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->s:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->y:I

    div-int/lit8 v4, v3, 0x2

    sub-int v4, v2, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->z:I

    div-int/lit8 v6, v5, 0x2

    sub-int v6, v1, v6

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    invoke-virtual {v0, v4, v6, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 22
    :cond_3
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCLayerOperationView;->a()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    iget-boolean p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->a:Z

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->c:Landroid/graphics/PointF;

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v0, p2, p1}, Landroid/graphics/PointF;->set(FF)V

    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->a:Z

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCLayerOperationView;->a()V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->G:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    const/4 v2, 0x2

    if-eq v0, v1, :cond_8

    if-eq v0, v2, :cond_1

    goto/16 :goto_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->J:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->i:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v4, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->j:I

    int-to-float v4, v4

    add-float/2addr p1, v4

    invoke-virtual {v0, v3, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 5
    iget p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->C:I

    if-ne p1, v2, :cond_6

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/2addr p1, v2

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/2addr v0, v2

    mul-int p1, p1, p1

    mul-int v0, v0, v0

    add-int/2addr p1, v0

    int-to-double v2, p1

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 9
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->c:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->J:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->d(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    div-float/2addr v0, p1

    const/high16 p1, 0x40800000    # 4.0f

    const v2, 0x3e99999a    # 0.3f

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_2

    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_2
    cmpl-float v2, v0, p1

    if-ltz v2, :cond_3

    const/high16 v0, 0x40800000    # 4.0f

    .line 10
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->c:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->I:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->d(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    float-to-double v2, p1

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->I:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->J:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v4}, Lcom/guochao/faceshow/views/TCLayerOperationView;->d(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    float-to-double v4, p1

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->c:Landroid/graphics/PointF;

    iget-object v6, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->J:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v6}, Lcom/guochao/faceshow/views/TCLayerOperationView;->d(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    float-to-double v6, p1

    mul-double v8, v2, v2

    mul-double v10, v6, v6

    add-double/2addr v8, v10

    mul-double v4, v4, v4

    sub-double/2addr v8, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v2, v2, v4

    mul-double v2, v2, v6

    div-double/2addr v8, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v8, v2

    if-ltz p1, :cond_4

    move-wide v8, v2

    .line 13
    :cond_4
    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    .line 14
    invoke-direct {p0, v2, v3}, Lcom/guochao/faceshow/views/TCLayerOperationView;->m(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 15
    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->I:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->c:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v6

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v5

    invoke-direct {v2, v4, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 16
    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->J:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->c:Landroid/graphics/PointF;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v7

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v6

    invoke-direct {v3, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 17
    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    mul-float v4, v4, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float v2, v2, v3

    sub-float/2addr v4, v2

    const/4 v2, 0x0

    cmpg-float v2, v4, v2

    if-gez v2, :cond_5

    neg-float p1, p1

    .line 18
    :cond_5
    iget v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->f:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->f:F

    .line 19
    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->g:F

    .line 20
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCLayerOperationView;->o()V

    goto :goto_1

    :cond_6
    if-ne p1, v1, :cond_7

    .line 21
    iget-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->c:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->J:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->I:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    add-float/2addr v0, v3

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 22
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v3, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 23
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCLayerOperationView;->a()V

    .line 24
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->I:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->J:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto/16 :goto_2

    .line 25
    :cond_8
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->a2:Lcom/guochao/faceshow/views/TCLayerOperationView$a;

    if-eqz v0, :cond_c

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/guochao/faceshow/views/TCLayerOperationView;->i(FF)I

    move-result v0

    .line 27
    iget v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->C:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    if-ne v0, v3, :cond_9

    .line 28
    iget-object v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->a2:Lcom/guochao/faceshow/views/TCLayerOperationView$a;

    invoke-interface {v3}, Lcom/guochao/faceshow/views/TCLayerOperationView$a;->E()V

    .line 29
    :cond_9
    iget v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->C:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_a

    if-ne v0, v3, :cond_a

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->a2:Lcom/guochao/faceshow/views/TCLayerOperationView$a;

    invoke-interface {v0}, Lcom/guochao/faceshow/views/TCLayerOperationView$a;->g()V

    .line 31
    :cond_a
    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->C:I

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_c

    .line 32
    :cond_b
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->a2:Lcom/guochao/faceshow/views/TCLayerOperationView$a;

    invoke-interface {v0}, Lcom/guochao/faceshow/views/TCLayerOperationView$a;->O()V

    .line 33
    :cond_c
    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->C:I

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->V2:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_d

    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->B3:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_d

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    :cond_d
    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->C:I

    goto :goto_2

    .line 36
    :cond_e
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->I:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->i:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->j:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/guochao/faceshow/views/TCLayerOperationView;->i(FF)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->C:I

    if-ne v0, v1, :cond_f

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->V2:F

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->B3:F

    :cond_f
    :goto_2
    return v1
.end method

.method public setCenterX(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->V3:F

    return-void
.end method

.method public setCenterY(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->C4:F

    return-void
.end method

.method public setEditable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->G:Z

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setIOperationViewClickListener(Lcom/guochao/faceshow/views/TCLayerOperationView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->a2:Lcom/guochao/faceshow/views/TCLayerOperationView$a;

    return-void
.end method

.method public setImageBitamp(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->b:Landroid/graphics/Bitmap;

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCLayerOperationView;->o()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->b:Landroid/graphics/Bitmap;

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCLayerOperationView;->o()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/views/TCLayerOperationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageRotate(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->f:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->f:F

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCLayerOperationView;->o()V

    :cond_0
    return-void
.end method

.method public setImageScale(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->g:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->g:F

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/views/TCLayerOperationView;->o()V

    :cond_0
    return-void
.end method

.method public setParentHeight(I)V
    .locals 0

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->C4:F

    return-void
.end method

.method public setParentWidth(I)V
    .locals 0

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/guochao/faceshow/views/TCLayerOperationView;->V3:F

    return-void
.end method
