.class public Lcom/airbnb/lottie/model/layer/g;
.super Lcom/airbnb/lottie/model/layer/a;
.source "SourceFile"


# instance fields
.field private final B:Ljava/lang/StringBuilder;

.field private final C:Landroid/graphics/RectF;

.field private final D:Landroid/graphics/Matrix;

.field private final E:Landroid/graphics/Paint;

.field private final F:Landroid/graphics/Paint;

.field private final G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh/c;",
            "Ljava/util/List<",
            "Le/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final H:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final I:Lf/o;

.field private final J:Lcom/airbnb/lottie/f;

.field private final K:Lcom/airbnb/lottie/d;

.field private L:Lf/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private M:Lf/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private N:Lf/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private O:Lf/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private P:Lf/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Lf/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private R:Lf/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private S:Lf/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private T:Lf/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private U:Lf/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private V:Lf/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/a<",
            "Landroid/graphics/Typeface;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->B:Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->C:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->D:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Lcom/airbnb/lottie/model/layer/g$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/model/layer/g$a;-><init>(Lcom/airbnb/lottie/model/layer/g;I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->E:Landroid/graphics/Paint;

    .line 6
    new-instance v0, Lcom/airbnb/lottie/model/layer/g$b;

    invoke-direct {v0, p0, v1}, Lcom/airbnb/lottie/model/layer/g$b;-><init>(Lcom/airbnb/lottie/model/layer/g;I)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/Paint;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->G:Ljava/util/Map;

    .line 8
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroidx/collection/LongSparseArray;

    .line 9
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->J:Lcom/airbnb/lottie/f;

    .line 10
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->b()Lcom/airbnb/lottie/d;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->K:Lcom/airbnb/lottie/d;

    .line 11
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->s()Li/j;

    move-result-object p1

    invoke-virtual {p1}, Li/j;->d()Lf/o;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->I:Lf/o;

    .line 12
    invoke-virtual {p1, p0}, Lf/a;->a(Lf/a$b;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lf/a;)V

    .line 14
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->t()Li/k;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    iget-object p2, p1, Li/k;->a:Li/a;

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p2}, Li/a;->a()Lf/a;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->L:Lf/a;

    .line 17
    invoke-virtual {p2, p0}, Lf/a;->a(Lf/a$b;)V

    .line 18
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->L:Lf/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lf/a;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 19
    iget-object p2, p1, Li/k;->b:Li/a;

    if-eqz p2, :cond_1

    .line 20
    invoke-virtual {p2}, Li/a;->a()Lf/a;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->N:Lf/a;

    .line 21
    invoke-virtual {p2, p0}, Lf/a;->a(Lf/a$b;)V

    .line 22
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->N:Lf/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lf/a;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 23
    iget-object p2, p1, Li/k;->c:Li/b;

    if-eqz p2, :cond_2

    .line 24
    invoke-virtual {p2}, Li/b;->a()Lf/a;

    move-result-object p2

    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->P:Lf/a;

    .line 25
    invoke-virtual {p2, p0}, Lf/a;->a(Lf/a$b;)V

    .line 26
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->P:Lf/a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/model/layer/a;->i(Lf/a;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 27
    iget-object p1, p1, Li/k;->d:Li/b;

    if-eqz p1, :cond_3

    .line 28
    invoke-virtual {p1}, Li/b;->a()Lf/a;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->R:Lf/a;

    .line 29
    invoke-virtual {p1, p0}, Lf/a;->a(Lf/a$b;)V

    .line 30
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->R:Lf/a;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lf/a;)V

    :cond_3
    return-void
.end method

.method private N(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V
    .locals 2

    .line 1
    sget-object v0, Lcom/airbnb/lottie/model/layer/g$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    .line 2
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    neg-float p1, p3

    .line 3
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    return-void
.end method

.method private O(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v1, p2

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 5
    invoke-direct {p0, v2}, Lcom/airbnb/lottie/model/layer/g;->b0(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroidx/collection/LongSparseArray;

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->B:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_2
    if-ge p2, v1, :cond_3

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 11
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->B:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_2

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->B:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->H:Landroidx/collection/LongSparseArray;

    invoke-virtual {p2, v3, v4, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object p1
.end method

.method private P(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private Q(Lh/c;Landroid/graphics/Matrix;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/g;->X(Lh/c;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/d;

    invoke-virtual {v2}, Le/d;->getPath()Landroid/graphics/Path;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/g;->C:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/g;->D:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/g;->D:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    iget v5, p4, Lcom/airbnb/lottie/model/DocumentData;->g:F

    neg-float v5, v5

    invoke-static {}, Lm/h;->e()F

    move-result v6

    mul-float v5, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 7
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/g;->D:Landroid/graphics/Matrix;

    invoke-virtual {v3, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 8
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/g;->D:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 9
    iget-boolean v3, p4, Lcom/airbnb/lottie/model/DocumentData;->k:Z

    if-eqz v3, :cond_0

    .line 10
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/g;->E:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/g;->T(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 11
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/g;->T(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 12
    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/g;->T(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 13
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/g;->E:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/g;->T(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private R(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    iget-boolean p2, p2, Lcom/airbnb/lottie/model/DocumentData;->k:Z

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->E:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/g;->P(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 3
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/g;->P(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/g;->P(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 5
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->E:Landroid/graphics/Paint;

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/g;->P(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private S(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;F)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/model/layer/g;->O(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 4
    invoke-direct {p0, v1, p2, p3}, Lcom/airbnb/lottie/model/layer/g;->R(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 5
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->E:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, p4

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p3, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private T(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private U(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lh/b;Landroid/graphics/Canvas;FF)V
    .locals 8

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 3
    invoke-virtual {p4}, Lh/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lh/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lh/c;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->K:Lcom/airbnb/lottie/d;

    invoke-virtual {v2}, Lcom/airbnb/lottie/d;->c()Landroidx/collection/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh/c;

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    move-object v2, p0

    move-object v3, v1

    move-object v4, p3

    move v5, p7

    move-object v6, p2

    move-object v7, p5

    .line 5
    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/model/layer/g;->Q(Lh/c;Landroid/graphics/Matrix;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {v1}, Lh/c;->b()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, p7

    invoke-static {}, Lm/h;->e()F

    move-result v2

    mul-float v1, v1, v2

    mul-float v1, v1, p6

    .line 7
    iget v2, p2, Lcom/airbnb/lottie/model/DocumentData;->e:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    .line 8
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/g;->S:Lf/a;

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v3}, Lf/a;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_1
    add-float/2addr v2, v3

    goto :goto_2

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/g;->R:Lf/a;

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3}, Lf/a;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_1

    :cond_2
    :goto_2
    mul-float v2, v2, p6

    add-float/2addr v1, v2

    const/4 v2, 0x0

    .line 12
    invoke-virtual {p5, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private V(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lh/b;Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    .line 1
    iget-object v0, v8, Lcom/airbnb/lottie/model/layer/g;->U:Lf/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lf/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v8, Lcom/airbnb/lottie/model/layer/g;->T:Lf/a;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lf/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    iget v0, v9, Lcom/airbnb/lottie/model/DocumentData;->c:F

    :goto_0
    const/high16 v1, 0x42c80000    # 100.0f

    div-float v11, v0, v1

    .line 6
    invoke-static/range {p2 .. p2}, Lm/h;->g(Landroid/graphics/Matrix;)F

    move-result v12

    .line 7
    iget-object v0, v9, Lcom/airbnb/lottie/model/DocumentData;->a:Ljava/lang/String;

    .line 8
    iget v1, v9, Lcom/airbnb/lottie/model/DocumentData;->f:F

    invoke-static {}, Lm/h;->e()F

    move-result v2

    mul-float v13, v1, v2

    .line 9
    invoke-direct {v8, v0}, Lcom/airbnb/lottie/model/layer/g;->Z(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 10
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v15, :cond_2

    .line 11
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object/from16 v6, p3

    .line 12
    invoke-direct {v8, v1, v6, v11, v12}, Lcom/airbnb/lottie/model/layer/g;->Y(Ljava/lang/String;Lh/b;FF)F

    move-result v0

    .line 13
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    .line 14
    iget-object v2, v9, Lcom/airbnb/lottie/model/DocumentData;->d:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-direct {v8, v2, v10, v0}, Lcom/airbnb/lottie/model/layer/g;->N(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    add-int/lit8 v0, v15, -0x1

    int-to-float v0, v0

    mul-float v0, v0, v13

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v2, v7

    mul-float v2, v2, v13

    sub-float/2addr v2, v0

    const/4 v0, 0x0

    .line 15
    invoke-virtual {v10, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v12

    move/from16 v16, v7

    move v7, v11

    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/airbnb/lottie/model/layer/g;->U(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lh/b;Landroid/graphics/Canvas;FF)V

    .line 17
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v7, v16, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private W(Lcom/airbnb/lottie/model/DocumentData;Lh/b;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/model/layer/g;->a0(Lh/b;)Landroid/graphics/Typeface;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p3, p1, Lcom/airbnb/lottie/model/DocumentData;->a:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->J:Lcom/airbnb/lottie/f;

    invoke-virtual {v0}, Lcom/airbnb/lottie/f;->G()Lcom/airbnb/lottie/p;

    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->E:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 5
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->U:Lf/a;

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Lf/a;->h()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->T:Lf/a;

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p2}, Lf/a;->h()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    goto :goto_0

    .line 9
    :cond_2
    iget p2, p1, Lcom/airbnb/lottie/model/DocumentData;->c:F

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->E:Landroid/graphics/Paint;

    invoke-static {}, Lm/h;->e()F

    move-result v1

    mul-float v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 11
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->E:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 12
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->E:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 13
    iget v0, p1, Lcom/airbnb/lottie/model/DocumentData;->f:F

    invoke-static {}, Lm/h;->e()F

    move-result v1

    mul-float v0, v0, v1

    .line 14
    iget v1, p1, Lcom/airbnb/lottie/model/DocumentData;->e:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    .line 15
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->S:Lf/a;

    if-eqz v2, :cond_3

    .line 16
    invoke-virtual {v2}, Lf/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_1
    add-float/2addr v1, v2

    goto :goto_2

    .line 17
    :cond_3
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->R:Lf/a;

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {v2}, Lf/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    .line 19
    :cond_4
    :goto_2
    invoke-static {}, Lm/h;->e()F

    move-result v2

    mul-float v1, v1, v2

    mul-float v1, v1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr v1, p2

    .line 20
    invoke-direct {p0, p3}, Lcom/airbnb/lottie/model/layer/g;->Z(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 21
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p3, :cond_5

    .line 22
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 23
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    mul-float v5, v5, v1

    add-float/2addr v4, v5

    .line 24
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    .line 25
    iget-object v5, p1, Lcom/airbnb/lottie/model/DocumentData;->d:Lcom/airbnb/lottie/model/DocumentData$Justification;

    invoke-direct {p0, v5, p4, v4}, Lcom/airbnb/lottie/model/layer/g;->N(Lcom/airbnb/lottie/model/DocumentData$Justification;Landroid/graphics/Canvas;F)V

    add-int/lit8 v4, p3, -0x1

    int-to-float v4, v4

    mul-float v4, v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v5, v2

    mul-float v5, v5, v0

    sub-float/2addr v5, v4

    const/4 v4, 0x0

    .line 26
    invoke-virtual {p4, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 27
    invoke-direct {p0, v3, p1, p4, v1}, Lcom/airbnb/lottie/model/layer/g;->S(Ljava/lang/String;Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;F)V

    .line 28
    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private X(Lh/c;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c;",
            ")",
            "Ljava/util/List<",
            "Le/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lh/c;->a()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj/j;

    .line 7
    new-instance v5, Le/d;

    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/g;->J:Lcom/airbnb/lottie/f;

    invoke-direct {v5, v6, p0, v4}, Le/d;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lj/j;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->G:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private Y(Ljava/lang/String;Lh/b;FF)F
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3
    invoke-virtual {p2}, Lh/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lh/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lh/c;->c(CLjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/g;->K:Lcom/airbnb/lottie/d;

    invoke-virtual {v3}, Lcom/airbnb/lottie/d;->c()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh/c;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    float-to-double v3, v0

    .line 5
    invoke-virtual {v2}, Lh/c;->b()D

    move-result-wide v5

    float-to-double v7, p3

    mul-double v5, v5, v7

    invoke-static {}, Lm/h;->e()F

    move-result v0

    float-to-double v7, v0

    mul-double v5, v5, v7

    float-to-double v7, p4

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    double-to-float v0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private Z(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "\r\n"

    const-string v1, "\r"

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    .line 2
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private a0(Lh/b;)Landroid/graphics/Typeface;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->V:Lf/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lf/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->J:Lcom/airbnb/lottie/f;

    invoke-virtual {p1}, Lh/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lh/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/f;->H(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lh/b;->d()Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method private b0(I)Z
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_1

    .line 3
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 4
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    .line 5
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result p1

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public c(Ljava/lang/Object;Ln/c;)V
    .locals 2
    .param p2    # Ln/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ln/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/a;->c(Ljava/lang/Object;Ln/c;)V

    .line 2
    sget-object v0, Lcom/airbnb/lottie/k;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->M:Lf/a;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->F(Lf/a;)V

    :cond_0
    if-nez p2, :cond_1

    .line 5
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->M:Lf/a;

    goto/16 :goto_0

    .line 6
    :cond_1
    new-instance p1, Lf/q;

    invoke-direct {p1, p2}, Lf/q;-><init>(Ln/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->M:Lf/a;

    .line 7
    invoke-virtual {p1, p0}, Lf/a;->a(Lf/a$b;)V

    .line 8
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->M:Lf/a;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lf/a;)V

    goto/16 :goto_0

    .line 9
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/k;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_5

    .line 10
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->O:Lf/a;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->F(Lf/a;)V

    :cond_3
    if-nez p2, :cond_4

    .line 12
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->O:Lf/a;

    goto/16 :goto_0

    .line 13
    :cond_4
    new-instance p1, Lf/q;

    invoke-direct {p1, p2}, Lf/q;-><init>(Ln/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->O:Lf/a;

    .line 14
    invoke-virtual {p1, p0}, Lf/a;->a(Lf/a$b;)V

    .line 15
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->O:Lf/a;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lf/a;)V

    goto/16 :goto_0

    .line 16
    :cond_5
    sget-object v0, Lcom/airbnb/lottie/k;->s:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    .line 17
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->Q:Lf/a;

    if-eqz p1, :cond_6

    .line 18
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->F(Lf/a;)V

    :cond_6
    if-nez p2, :cond_7

    .line 19
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->Q:Lf/a;

    goto/16 :goto_0

    .line 20
    :cond_7
    new-instance p1, Lf/q;

    invoke-direct {p1, p2}, Lf/q;-><init>(Ln/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->Q:Lf/a;

    .line 21
    invoke-virtual {p1, p0}, Lf/a;->a(Lf/a$b;)V

    .line 22
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->Q:Lf/a;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lf/a;)V

    goto :goto_0

    .line 23
    :cond_8
    sget-object v0, Lcom/airbnb/lottie/k;->t:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    .line 24
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->S:Lf/a;

    if-eqz p1, :cond_9

    .line 25
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->F(Lf/a;)V

    :cond_9
    if-nez p2, :cond_a

    .line 26
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->S:Lf/a;

    goto :goto_0

    .line 27
    :cond_a
    new-instance p1, Lf/q;

    invoke-direct {p1, p2}, Lf/q;-><init>(Ln/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->S:Lf/a;

    .line 28
    invoke-virtual {p1, p0}, Lf/a;->a(Lf/a$b;)V

    .line 29
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->S:Lf/a;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lf/a;)V

    goto :goto_0

    .line 30
    :cond_b
    sget-object v0, Lcom/airbnb/lottie/k;->F:Ljava/lang/Float;

    if-ne p1, v0, :cond_e

    .line 31
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->U:Lf/a;

    if-eqz p1, :cond_c

    .line 32
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->F(Lf/a;)V

    :cond_c
    if-nez p2, :cond_d

    .line 33
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->U:Lf/a;

    goto :goto_0

    .line 34
    :cond_d
    new-instance p1, Lf/q;

    invoke-direct {p1, p2}, Lf/q;-><init>(Ln/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->U:Lf/a;

    .line 35
    invoke-virtual {p1, p0}, Lf/a;->a(Lf/a$b;)V

    .line 36
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->U:Lf/a;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lf/a;)V

    goto :goto_0

    .line 37
    :cond_e
    sget-object v0, Lcom/airbnb/lottie/k;->M:Landroid/graphics/Typeface;

    if-ne p1, v0, :cond_11

    .line 38
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->V:Lf/a;

    if-eqz p1, :cond_f

    .line 39
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->F(Lf/a;)V

    :cond_f
    if-nez p2, :cond_10

    .line 40
    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->V:Lf/a;

    goto :goto_0

    .line 41
    :cond_10
    new-instance p1, Lf/q;

    invoke-direct {p1, p2}, Lf/q;-><init>(Ln/c;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->V:Lf/a;

    .line 42
    invoke-virtual {p1, p0}, Lf/a;->a(Lf/a$b;)V

    .line 43
    iget-object p1, p0, Lcom/airbnb/lottie/model/layer/g;->V:Lf/a;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lf/a;)V

    :cond_11
    :goto_0
    return-void
.end method

.method public d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/layer/a;->d(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, Lcom/airbnb/lottie/model/layer/g;->K:Lcom/airbnb/lottie/d;

    invoke-virtual {p2}, Lcom/airbnb/lottie/d;->b()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->K:Lcom/airbnb/lottie/d;

    invoke-virtual {p3}, Lcom/airbnb/lottie/d;->b()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->J:Lcom/airbnb/lottie/f;

    invoke-virtual {p3}, Lcom/airbnb/lottie/f;->n0()Z

    move-result p3

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/airbnb/lottie/model/layer/g;->I:Lf/o;

    invoke-virtual {p3}, Lf/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/model/DocumentData;

    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/g;->K:Lcom/airbnb/lottie/d;

    invoke-virtual {v0}, Lcom/airbnb/lottie/d;->g()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p3, Lcom/airbnb/lottie/model/DocumentData;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/b;

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->M:Lf/a;

    if-eqz v1, :cond_2

    .line 8
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->E:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lf/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->L:Lf/a;

    if-eqz v1, :cond_3

    .line 10
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->E:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lf/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->E:Landroid/graphics/Paint;

    iget v2, p3, Lcom/airbnb/lottie/model/DocumentData;->h:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->O:Lf/a;

    if-eqz v1, :cond_4

    .line 13
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lf/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->N:Lf/a;

    if-eqz v1, :cond_5

    .line 15
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lf/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 16
    :cond_5
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/Paint;

    iget v2, p3, Lcom/airbnb/lottie/model/DocumentData;->i:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    :goto_1
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->v:Lf/p;

    invoke-virtual {v1}, Lf/p;->h()Lf/a;

    move-result-object v1

    const/16 v2, 0x64

    if-nez v1, :cond_6

    const/16 v1, 0x64

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a;->v:Lf/p;

    invoke-virtual {v1}, Lf/p;->h()Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2
    mul-int/lit16 v1, v1, 0xff

    .line 18
    div-int/2addr v1, v2

    .line 19
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->E:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 21
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->Q:Lf/a;

    if-eqz v1, :cond_7

    .line 22
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lf/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 23
    :cond_7
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->P:Lf/a;

    if-eqz v1, :cond_8

    .line 24
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lf/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    .line 25
    :cond_8
    invoke-static {p2}, Lm/h;->g(Landroid/graphics/Matrix;)F

    move-result v1

    .line 26
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/g;->F:Landroid/graphics/Paint;

    iget v3, p3, Lcom/airbnb/lottie/model/DocumentData;->j:F

    invoke-static {}, Lm/h;->e()F

    move-result v4

    mul-float v3, v3, v4

    mul-float v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 27
    :goto_3
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/g;->J:Lcom/airbnb/lottie/f;

    invoke-virtual {v1}, Lcom/airbnb/lottie/f;->n0()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 28
    invoke-direct {p0, p3, p2, v0, p1}, Lcom/airbnb/lottie/model/layer/g;->V(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lh/b;Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 29
    :cond_9
    invoke-direct {p0, p3, v0, p2, p1}, Lcom/airbnb/lottie/model/layer/g;->W(Lcom/airbnb/lottie/model/DocumentData;Lh/b;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    .line 30
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
