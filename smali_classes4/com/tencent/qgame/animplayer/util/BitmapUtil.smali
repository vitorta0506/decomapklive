.class public final Lcom/tencent/qgame/animplayer/util/BitmapUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/tencent/qgame/animplayer/util/BitmapUtil;",
        "",
        "()V",
        "createEmptyBitmap",
        "Landroid/graphics/Bitmap;",
        "createTxtBitmap",
        "src",
        "Lcom/tencent/qgame/animplayer/mix/Src;",
        "animplayer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tencent/qgame/animplayer/util/BitmapUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/qgame/animplayer/util/BitmapUtil;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/util/BitmapUtil;-><init>()V

    sput-object v0, Lcom/tencent/qgame/animplayer/util/BitmapUtil;->INSTANCE:Lcom/tencent/qgame/animplayer/util/BitmapUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createEmptyBitmap()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x10

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    const-string v1, "Bitmap.createBitmap(16, \u2026or.TRANSPARENT)\n        }"

    .line 3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final createTxtBitmap(Lcom/tencent/qgame/animplayer/mix/Src;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1    # Lcom/tencent/qgame/animplayer/mix/Src;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mix/Src;->getW()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mix/Src;->getH()I

    move-result v1

    .line 3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    int-to-float v1, v1

    const v7, 0x3f4ccccd    # 0.8f

    mul-float v8, v1, v7

    .line 8
    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 9
    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 10
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v8, 0x1

    .line 11
    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 12
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mix/Src;->getStyle()Lcom/tencent/qgame/animplayer/mix/Src$Style;

    move-result-object v9

    sget-object v10, Lcom/tencent/qgame/animplayer/mix/Src$Style;->BOLD:Lcom/tencent/qgame/animplayer/mix/Src$Style;

    if-ne v9, v10, :cond_0

    .line 13
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v9, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mix/Src;->getColor()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 15
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mix/Src;->getTxt()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const v8, 0x3dcccccd    # 0.1f

    cmpl-float v9, v7, v8

    if-lez v9, :cond_2

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, p1, v5, v9, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-gt v9, v10, :cond_1

    goto :goto_1

    :cond_1
    sub-float/2addr v7, v8

    mul-float v8, v1, v7

    .line 18
    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_0

    .line 19
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 20
    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 21
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 22
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v5, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v5, v0

    .line 23
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v5

    invoke-virtual {v3, p1, v0, v1, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-string p1, "bitmap"

    .line 24
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method
