.class public Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final GB:J = 0x40000000L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeRaw(ILjava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;)V
    .locals 2

    invoke-static {}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->getParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    return-void
.end method

.method public static fitImageView(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;)V
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    .line 1
    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/SvgaImageViewUtils;->fitImageView(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;F)V

    return-void
.end method

.method public static fitImageView(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGAImageView;F)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/SVGARect;->getHeight()D

    move-result-wide v0

    float-to-double v2, p2

    div-double/2addr v0, v2

    double-to-float p2, v0

    invoke-static {p2}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p2

    int-to-double v0, p2

    .line 3
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide v4

    div-double/2addr v4, v2

    double-to-float p0, v4

    invoke-static {p0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p0

    int-to-double v2, p0

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    double-to-int p2, v2

    .line 5
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    double-to-int p2, v0

    .line 6
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static fitScreenWidth(Lcom/opensource/svgaplayer/SVGAVideoEntity;Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/utils/SVGARect;->getHeight()D

    move-result-wide v1

    .line 3
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide v3

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v5, p0

    div-double/2addr v5, v3

    double-to-float v0, v5

    float-to-double v3, v0

    mul-double v1, v1, v3

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    double-to-int p0, v1

    .line 7
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static fitWidth(Lcom/opensource/svgaplayer/SVGAVideoEntity;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/utils/SVGARect;->getHeight()D

    move-result-wide v0

    .line 2
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide v2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    int-to-double v4, p0

    div-double/2addr v4, v2

    double-to-float p0, v4

    float-to-double v2, p0

    mul-double v0, v0, v2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 v2, -0x1

    .line 5
    iput v2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    double-to-int v0, v0

    .line 6
    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static getParser()Lcom/opensource/svgaplayer/SVGAParser;
    .locals 1

    sget-object v0, Lcom/opensource/svgaplayer/SVGAParser;->Companion:Lcom/opensource/svgaplayer/SVGAParser$Companion;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAParser$Companion;->shareParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v0

    return-object v0
.end method

.method public static setOptions(Landroid/content/Context;)V
    .locals 3

    const-string v0, "activity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 5
    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-float p0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p0, p0, v1

    const/high16 v1, 0x4e800000

    div-float/2addr p0, v1

    const v1, 0x3fd9999a    # 1.7f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_1

    const/4 p0, 0x3

    .line 6
    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_2

    const/4 p0, 0x2

    .line 7
    iput p0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/opensource/svgaplayer/bitmap/SVGABitmapDecoderKt;->setOption(Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method
