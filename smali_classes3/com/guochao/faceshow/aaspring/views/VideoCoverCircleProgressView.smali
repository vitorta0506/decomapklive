.class public final Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0017\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u001f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0012\u0010 \u001a\u00020\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0014R\u001a\u0010\u000b\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u0011\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0018@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u0006#"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attributes",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "colorBlue",
        "getColorBlue",
        "()I",
        "setColorBlue",
        "(I)V",
        "colorLightBlue",
        "getColorLightBlue",
        "setColorLightBlue",
        "paint",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "value",
        "",
        "progress",
        "getProgress",
        "()F",
        "setProgress",
        "(F)V",
        "initattributes",
        "",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
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
.field private colorBlue:I

.field private colorLightBlue:I

.field private final paint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private progress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06006a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->colorBlue:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600a1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->colorLightBlue:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->progress:F

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, 0x40800000    # 4.0f

    .line 6
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->colorBlue:I

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->colorLightBlue:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    iput v0, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->progress:F

    .line 14
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, 0x40800000    # 4.0f

    .line 15
    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->paint:Landroid/graphics/Paint;

    .line 19
    invoke-direct {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->initattributes(Landroid/util/AttributeSet;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f06006a

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->colorBlue:I

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0600a1

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->colorLightBlue:I

    const/high16 p3, 0x3f800000    # 1.0f

    .line 23
    iput p3, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->progress:F

    .line 24
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, 0x40800000    # 4.0f

    .line 25
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 27
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 28
    iput-object p3, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->paint:Landroid/graphics/Paint;

    .line 29
    invoke-direct {p0, p2, p1}, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->initattributes(Landroid/util/AttributeSet;Landroid/content/Context;)V

    return-void
.end method

.method private final initattributes(Landroid/util/AttributeSet;Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/guochao/faceshow/R$styleable;->circle_progress:[I

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026tyleable.circle_progress)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06006a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->colorBlue:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600a1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->colorLightBlue:I

    return-void
.end method


# virtual methods
.method public final getColorBlue()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->colorBlue:I

    return v0
.end method

.method public final getColorLightBlue()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->colorLightBlue:I

    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getProgress()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->progress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->colorLightBlue:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->colorBlue:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float v3, v0, v1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    div-float v4, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v1

    sub-float v5, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v1

    sub-float v6, v0, v2

    const/high16 v7, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->progress:F

    const/16 v2, 0x168

    int-to-float v2, v2

    mul-float v8, v0, v2

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/high16 v3, 0x41880000    # 17.0f

    invoke-static {v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final setColorBlue(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->colorBlue:I

    return-void
.end method

.method public final setColorLightBlue(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->colorLightBlue:I

    return-void
.end method

.method public final setProgress(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->progress:F

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/VideoCoverCircleProgressView;->progress:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
