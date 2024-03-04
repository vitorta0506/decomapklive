.class public Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;
.super Lcom/scwang/smartrefresh/header/fungame/FunGameView;
.source "SourceFile"


# static fields
.field protected static D4:I = 0x3


# instance fields
.field protected B3:I

.field protected C4:Z

.field protected J:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Queue<",
            "Landroid/graphics/RectF;",
            ">;>;"
        }
    .end annotation
.end field

.field protected K:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field protected L:Landroid/graphics/Point;

.field protected M:Ljava/util/Random;

.field protected N:F

.field protected O:I

.field protected P:I

.field protected Q:I

.field protected R:I

.field protected V1:I

.field protected V2:I

.field protected V3:I

.field protected a1:I

.field protected a2:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->R:I

    const/4 p2, 0x4

    iput p2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->a1:I

    .line 5
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->C4:Z

    .line 6
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->M:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->D:I

    .line 2
    iget v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->n:F

    iput v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->B:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-static {v1}, Lae/b;->b(F)I

    move-result v1

    iput v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->R:I

    const/high16 v1, 0x40800000    # 4.0f

    .line 4
    invoke-static {v1}, Lae/b;->b(F)I

    move-result v1

    iput v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->a1:I

    const/16 v1, 0x8

    .line 5
    iput v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->B3:I

    .line 6
    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->V3:I

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->C4:Z

    .line 8
    iget v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->Q:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3c

    iput v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->O:I

    const/16 v1, 0x168

    .line 9
    iput v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->P:I

    .line 10
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->J:Landroid/util/SparseArray;

    .line 11
    :goto_0
    sget v1, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->D4:I

    if-ge v0, v1, :cond_0

    .line 12
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->J:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->K:Ljava/util/Queue;

    return-void
.end method

.method protected B()I
    .locals 2

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->M:Ljava/util/Random;

    sget v1, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->D4:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method protected C(IFF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->J:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected D(Landroid/graphics/Point;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->K(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->J:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    iget v3, p1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {v1, v3, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->V3:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->V3:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->B3:I

    if-ne p1, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->L()V

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->J:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected E(Landroid/graphics/Canvas;Landroid/graphics/Point;)V
    .locals 3

    .line 1
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->a1:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    .line 2
    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->N:F

    iget-object v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected F(Landroid/graphics/Canvas;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->z:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->G:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->a2:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->a1:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->a2:I

    .line 3
    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->P:I

    div-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 4
    iput v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->a2:I

    .line 5
    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->a2:I

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 7
    iget v3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    sub-int/2addr p2, v3

    iget v4, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->Q:I

    sub-int/2addr p2, v4

    iput p2, v0, Landroid/graphics/Point;->x:I

    .line 8
    iget p2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->B:F

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    add-float/2addr p2, v3

    float-to-int p2, p2

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 9
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->K:Ljava/util/Queue;

    invoke-interface {p2, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->K:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 11
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->D(Landroid/graphics/Point;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    iput-object v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->L:Landroid/graphics/Point;

    goto :goto_0

    .line 13
    :cond_2
    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->N:F

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    const/4 v1, 0x1

    .line 14
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->E(Landroid/graphics/Canvas;Landroid/graphics/Point;)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 15
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->K:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->K:Ljava/util/Queue;

    iget-object p2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->L:Landroid/graphics/Point;

    invoke-interface {p1, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->L:Landroid/graphics/Point;

    return-void
.end method

.method protected G(Landroid/graphics/Canvas;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->z:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->E:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->V1:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->R:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->V1:I

    .line 3
    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->O:I

    div-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->C4:Z

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iput v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->V1:I

    .line 5
    iput-boolean v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->C4:Z

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->B()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    :goto_0
    sget v5, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->D4:I

    if-ge v3, v5, :cond_8

    .line 8
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->J:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Queue;

    .line 9
    iget v6, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->V1:I

    if-nez v6, :cond_2

    if-ne v3, v0, :cond_2

    .line 10
    invoke-virtual {p0, v3}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->J(I)Landroid/graphics/RectF;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    invoke-interface {v5}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/RectF;

    .line 12
    iget v9, v7, Landroid/graphics/RectF;->left:F

    int-to-float v10, p2

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    .line 13
    iget v4, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->V2:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->V2:I

    const/16 v7, 0x8

    if-lt v4, v7, :cond_3

    .line 14
    iput v8, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->D:I

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p0, p1, v7}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->I(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto :goto_1

    .line 16
    :cond_5
    :goto_2
    iget v6, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->D:I

    if-ne v6, v8, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    .line 17
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    const/4 v4, 0x0

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 18
    :cond_8
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected H(Landroid/graphics/Canvas;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->z:Landroid/graphics/Paint;

    iget v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->F:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->B:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->K(I)I

    move-result v0

    iget v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->B:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->C(IFF)Z

    move-result v0

    .line 3
    iget v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->B:F

    iget v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->K(I)I

    move-result v1

    iget v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    sub-int v3, p2, v2

    int-to-float v3, v3

    iget v4, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->B:F

    int-to-float v2, v2

    add-float/2addr v4, v2

    invoke-virtual {p0, v1, v3, v4}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->C(IFF)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->D:I

    .line 5
    :cond_1
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    sub-int v1, p2, v0

    int-to-float v3, v1

    iget v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->B:F

    iget v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->n:F

    add-float v4, v1, v2

    int-to-float v5, p2

    int-to-float v0, v0

    add-float/2addr v1, v0

    add-float v6, v1, v2

    iget-object v7, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->z:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    sub-int v1, p2, v0

    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->Q:I

    sub-int/2addr v1, v2

    int-to-float v4, v1

    iget v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->B:F

    sub-int v3, v0, v2

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v3, v3, v5

    add-float v6, v1, v3

    sub-int/2addr p2, v0

    int-to-float p2, p2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float v0, v0, v5

    add-float/2addr v1, v0

    int-to-float v0, v2

    add-float v7, v1, v0

    iget-object v8, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->z:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v6

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected I(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 9

    .line 1
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->R:I

    int-to-float v2, v1

    add-float/2addr v0, v2

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    int-to-float v1, v1

    add-float/2addr v3, v1

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 3
    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->Q:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v1, v1, v3

    add-float v5, v0, v1

    .line 4
    iget v4, p2, Landroid/graphics/RectF;->right:F

    int-to-float p2, v2

    add-float v6, v4, p2

    int-to-float p2, v2

    add-float v7, v5, p2

    iget-object v8, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->z:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected J(I)Landroid/graphics/RectF;
    .locals 4

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    iget v1, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->Q:I

    add-int/2addr v1, v0

    neg-int v1, v1

    int-to-float v1, v1

    mul-int p1, p1, v0

    int-to-float p1, p1

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->n:F

    add-float/2addr p1, v0

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->Q:I

    int-to-float v2, v2

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v2, v2, v3

    add-float/2addr v2, v1

    iget v3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method protected K(I)I
    .locals 2

    iget v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameBase;->e:I

    sget v1, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->D4:I

    div-int/2addr v0, v1

    div-int/2addr p1, v0

    if-lt p1, v1, :cond_0

    add-int/lit8 p1, v1, -0x1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method protected L()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->B3:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->B3:I

    .line 2
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->R:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lae/b;->b(F)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->R:I

    .line 3
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->a1:I

    invoke-static {v1}, Lae/b;->b(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->a1:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->V3:I

    .line 5
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->O:I

    const/16 v1, 0xc

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    .line 6
    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->O:I

    .line 7
    :cond_0
    iget v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->P:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    sub-int/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->P:I

    :cond_1
    return-void
.end method

.method public g(Lwd/i;II)V
    .locals 4
    .param p1    # Lwd/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->D4:I

    div-int v0, p2, v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    int-to-float v0, v0

    const v1, 0x3eaaaaab

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-double v2, v0

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->Q:I

    int-to-float v0, v0

    .line 3
    iget v2, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->n:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    sub-float/2addr v0, v2

    mul-float v0, v0, v1

    iput v0, p0, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->N:F

    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->g(Lwd/i;II)V

    return-void
.end method

.method protected w(Landroid/graphics/Canvas;II)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->H(Landroid/graphics/Canvas;I)V

    .line 2
    iget p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->D:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    if-eq p3, v0, :cond_0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->G(Landroid/graphics/Canvas;I)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->F(Landroid/graphics/Canvas;I)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    new-instance p2, Landroid/graphics/RectF;

    iget p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    int-to-float v1, p3

    mul-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    int-to-float p3, p3

    const/4 v3, 0x0

    invoke-direct {p2, v1, v3, v2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->I(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 7
    new-instance p2, Landroid/graphics/RectF;

    iget p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    int-to-float v1, p3

    int-to-float v2, p3

    mul-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    invoke-direct {p2, v3, v1, v2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->I(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 8
    new-instance p2, Landroid/graphics/RectF;

    iget p3, p0, Lcom/scwang/smartrefresh/header/fungame/FunGameView;->C:I

    mul-int/lit8 v1, p3, 0x3

    int-to-float v1, v1

    mul-int/lit8 v2, p3, 0x2

    int-to-float v2, v2

    mul-int/lit8 v3, p3, 0x4

    int-to-float v3, v3

    mul-int/lit8 p3, p3, 0x3

    int-to-float p3, p3

    invoke-direct {p2, v1, v2, v3, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, p1, p2}, Lcom/scwang/smartrefresh/header/FunGameBattleCityHeader;->I(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_2
    return-void
.end method
