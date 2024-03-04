.class public final Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShareValues"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0008J\u0006\u0010\t\u001a\u00020\u0008J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\u0006J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;",
        "",
        "()V",
        "shareMatteCanvas",
        "Landroid/graphics/Canvas;",
        "shareMattePaint",
        "Landroid/graphics/Paint;",
        "sharedMatrix",
        "Landroid/graphics/Matrix;",
        "sharedMatrix2",
        "sharedMatteBitmap",
        "Landroid/graphics/Bitmap;",
        "sharedPaint",
        "sharedPath",
        "Landroid/graphics/Path;",
        "sharedPath2",
        "width",
        "",
        "height",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private shareMatteCanvas:Landroid/graphics/Canvas;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final shareMattePaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedMatrix2:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sharedMatteBitmap:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sharedPaint:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedPath:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedPath2:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath:Landroid/graphics/Path;

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath2:Landroid/graphics/Path;

    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix:Landroid/graphics/Matrix;

    .line 6
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix2:Landroid/graphics/Matrix;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMattePaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final shareMatteCanvas(II)Landroid/graphics/Canvas;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMatteCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatteBitmap:Landroid/graphics/Bitmap;

    .line 3
    :cond_0
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatteBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method public final shareMattePaint()Landroid/graphics/Paint;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMattePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMattePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final sharedMatrix()Landroid/graphics/Matrix;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final sharedMatrix2()Landroid/graphics/Matrix;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix2:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix2:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final sharedMatteBitmap()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatteBitmap:Landroid/graphics/Bitmap;

    const-string v1, "null cannot be cast to non-null type android.graphics.Bitmap"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public final sharedPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 2
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final sharedPath()Landroid/graphics/Path;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public final sharedPath2()Landroid/graphics/Path;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath2:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath2:Landroid/graphics/Path;

    return-object v0
.end method
