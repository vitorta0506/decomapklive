.class public Lcom/guochao/faceshow/aaspring/modulars/login/utils/o;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move/from16 v0, p7

    move-object/from16 v8, p9

    int-to-float v6, v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v7, p9

    .line 1
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 2
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    const/high16 v1, 0x3f000000    # 0.5f

    .line 3
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v2, v2

    move-object v7, p0

    iget v3, v7, Lcom/guochao/faceshow/aaspring/modulars/login/utils/o;->a:I

    int-to-float v3, v3

    add-float/2addr v3, p5

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v4, v0

    move-object v0, p1

    move v1, p5

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 5
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Paint$FontMetricsInt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/o;->a:I

    return p1
.end method
