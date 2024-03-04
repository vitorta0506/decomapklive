.class public final Lcom/guochao/faceshow/aaspring/modulars/gift/BezierEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\r\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0008J \u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0002H\u0016R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/gift/BezierEvaluator;",
        "Landroid/animation/TypeEvaluator;",
        "Landroid/graphics/PointF;",
        "x1",
        "",
        "y1",
        "x2",
        "y2",
        "(FFFF)V",
        "firstX",
        "firstY",
        "secondX",
        "secondY",
        "evaluate",
        "fraction",
        "startValue",
        "endValue",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private firstX:F

.field private firstY:F

.field private secondX:F

.field private secondY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/BezierEvaluator;->firstX:F

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/BezierEvaluator;->firstY:F

    .line 4
    iput p3, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/BezierEvaluator;->secondX:F

    .line 5
    iput p4, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/BezierEvaluator;->secondY:F

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 6
    .param p2    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "startValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 2
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 3
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    mul-float v2, v0, v0

    mul-float v2, v2, v0

    .line 4
    iget v3, p2, Landroid/graphics/PointF;->x:F

    mul-float v3, v3, v2

    const/4 v4, 0x3

    int-to-float v4, v4

    iget v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/BezierEvaluator;->firstX:F

    mul-float v5, v5, v4

    mul-float v5, v5, p1

    mul-float v5, v5, v0

    mul-float v5, v5, v0

    add-float/2addr v3, v5

    iget v5, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/BezierEvaluator;->secondX:F

    mul-float v5, v5, v4

    mul-float v5, v5, p1

    mul-float v5, v5, p1

    mul-float v5, v5, v0

    add-float/2addr v3, v5

    iget v5, p3, Landroid/graphics/PointF;->x:F

    mul-float v5, v5, p1

    mul-float v5, v5, p1

    mul-float v5, v5, p1

    add-float/2addr v3, v5

    .line 5
    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 6
    iget p2, p2, Landroid/graphics/PointF;->y:F

    mul-float v2, v2, p2

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/BezierEvaluator;->firstY:F

    mul-float p2, p2, v4

    mul-float p2, p2, p1

    mul-float p2, p2, v0

    mul-float p2, p2, v0

    add-float/2addr v2, p2

    iget p2, p0, Lcom/guochao/faceshow/aaspring/modulars/gift/BezierEvaluator;->secondY:F

    mul-float v4, v4, p2

    mul-float v4, v4, p1

    mul-float v4, v4, p1

    mul-float v4, v4, v0

    add-float/2addr v2, v4

    iget p2, p3, Landroid/graphics/PointF;->y:F

    mul-float p2, p2, p1

    mul-float p2, p2, p1

    mul-float p2, p2, p1

    add-float/2addr v2, p2

    .line 7
    iput v2, v1, Landroid/graphics/PointF;->y:F

    return-object v1
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Landroid/graphics/PointF;

    check-cast p3, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/gift/BezierEvaluator;->evaluate(FLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
