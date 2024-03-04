.class public Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;
.super Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;
.source "SourceFile"


# instance fields
.field private c:Z

.field private d:[I

.field private e:[I

.field f:Landroid/graphics/Paint;

.field g:Landroid/graphics/RectF;

.field h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->c:Z

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->g:Landroid/graphics/RectF;

    .line 5
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->c:Z

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->g:Landroid/graphics/RectF;

    .line 10
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->c:Z

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    .line 14
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->g:Landroid/graphics/RectF;

    .line 15
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->b()V

    return-void
.end method


# virtual methods
.method b()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    const-string v2, "#C5C6FF"

    .line 1
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->d:[I

    new-array v0, v0, [I

    const-string v1, "#9259FE"

    .line 2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    const-string v1, "#6365FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->e:[I

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->setStrokeColor(I)V

    const/high16 v0, 0x40200000    # 2.5f

    .line 4
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;->setStrokeWidth(F)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->h:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    invoke-static {}, Lb8/e;->g()Lb8/d;

    move-result-object v0

    invoke-interface {v0}, Lb8/d;->c()Lb8/a;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/bean/UserBean;

    invoke-virtual {v0}, Lcom/guochao/faceshow/bean/UserBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lhc/a;->j(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method public c(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->d:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 2
    aput p2, v0, p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    .line 3
    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-super/range {p0 .. p1}, Lcom/google/android/material/imageview/ShapeableImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 5
    iget-boolean v4, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->c:Z

    const/high16 v6, 0x40000000    # 2.0f

    if-nez v4, :cond_0

    int-to-float v4, v2

    div-float/2addr v4, v6

    int-to-float v3, v3

    div-float/2addr v3, v6

    .line 6
    iget v5, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->h:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget-object v5, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v3, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    .line 7
    :cond_0
    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->g:Landroid/graphics/RectF;

    int-to-float v5, v2

    int-to-float v3, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9
    new-instance v4, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    int-to-float v11, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    int-to-float v12, v7

    iget-object v13, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->d:[I

    const/4 v14, 0x0

    sget-object v15, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v8, v4

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 11
    new-instance v7, Landroid/graphics/LinearGradient;

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->e:[I

    const/16 v22, 0x0

    sget-object v23, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object/from16 v16, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v21, v10

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 13
    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v9}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v9

    iput v9, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->h:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 14
    iget-object v8, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 15
    iget v7, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->h:I

    sub-int/2addr v2, v7

    int-to-float v2, v2

    div-float/2addr v2, v6

    div-float/2addr v5, v6

    div-float/2addr v3, v6

    .line 16
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v3, v2, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 17
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    const/high16 v7, 0x40200000    # 2.5f

    invoke-static {v7}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v7

    iput v7, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->h:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iget-object v6, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 19
    iget v4, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->h:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v2, v4

    iget-object v4, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 20
    iget-object v1, v0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->f:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setDrawEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/WhoSawMeImageView;->c:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
