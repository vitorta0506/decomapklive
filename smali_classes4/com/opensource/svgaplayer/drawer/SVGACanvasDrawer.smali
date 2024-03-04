.class public final Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;
.super Lcom/opensource/svgaplayer/drawer/SGVADrawer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;,
        Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001:\u000289B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J$\u0010\u0019\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J \u0010!\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\"\u001a\u00020#H\u0016J\u001e\u0010!\u001a\u00020\u001a2\u0006\u0010$\u001a\u00020%2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\"\u001a\u00020#J\u001c\u0010&\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u001c\u0010\'\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J$\u0010(\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J,\u0010)\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\u000e2\n\u0010\u001b\u001a\u00060\u001cR\u00020\u00012\u0006\u0010+\u001a\u00020,H\u0002J\"\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020 2\u0010\u0010/\u001a\u000c\u0012\u0008\u0012\u00060\u001cR\u00020\u000100H\u0002J\"\u00101\u001a\u00020\t2\u0006\u0010.\u001a\u00020 2\u0010\u0010/\u001a\u000c\u0012\u0008\u0012\u00060\u001cR\u00020\u000100H\u0002J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u00020,H\u0002J\u0010\u00105\u001a\u00020\u001a2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u00106\u001a\u00020,2\u0006\u00107\u001a\u00020,H\u0002R\u0018\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR*\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;",
        "Lcom/opensource/svgaplayer/drawer/SGVADrawer;",
        "videoItem",
        "Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "dynamicItem",
        "Lcom/opensource/svgaplayer/SVGADynamicEntity;",
        "(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V",
        "beginIndexList",
        "",
        "",
        "[Ljava/lang/Boolean;",
        "drawTextCache",
        "Ljava/util/HashMap;",
        "",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/collections/HashMap;",
        "getDynamicItem",
        "()Lcom/opensource/svgaplayer/SVGADynamicEntity;",
        "endIndexList",
        "matrixScaleTempValues",
        "",
        "pathCache",
        "Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;",
        "sharedValues",
        "Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;",
        "drawDynamic",
        "",
        "sprite",
        "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;",
        "canvas",
        "Landroid/graphics/Canvas;",
        "frameIndex",
        "",
        "drawFrame",
        "scaleType",
        "Landroid/widget/ImageView$ScaleType;",
        "surface",
        "Landroid/view/Surface;",
        "drawImage",
        "drawShape",
        "drawSprite",
        "drawTextOnBitmap",
        "drawingBitmap",
        "frameMatrix",
        "Landroid/graphics/Matrix;",
        "isMatteBegin",
        "spriteIndex",
        "sprites",
        "",
        "isMatteEnd",
        "matrixScale",
        "",
        "matrix",
        "playAudio",
        "shareFrameMatrix",
        "transform",
        "PathCache",
        "ShareValues",
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
.field private beginIndexList:[Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final drawTextCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private endIndexList:[Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final matrixScaleTempValues:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pathCache:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/opensource/svgaplayer/SVGADynamicEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    .line 2
    iput-object p2, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    .line 3
    new-instance p1, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-direct {p1}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    .line 5
    new-instance p1, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;

    invoke-direct {p1}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->pathCache:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 6
    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->matrixScaleTempValues:[F

    return-void
.end method

.method private final drawDynamic(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicDrawer$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    if-nez v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->shareFrameMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 4
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 5
    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicDrawerSized$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function4;

    if-nez v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->shareFrameMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 11
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 12
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 13
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 14
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/utils/SVGARect;->getHeight()D

    move-result-wide v2

    double-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 15
    invoke-interface {v0, p2, p3, v1, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    return-void
.end method

.method private final drawImage(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicHidden$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const-string v2, ".matte"

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 3
    invoke-static {v1, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    .line 5
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicImage$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getImageMap$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    return-void

    :cond_3
    move-object v6, v2

    .line 7
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->shareFrameMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v7

    .line 8
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAntiAlias()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAntiAlias()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 11
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v8

    const/16 v2, 0xff

    int-to-double v10, v2

    mul-double v8, v8, v10

    double-to-int v2, v8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 12
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 13
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v2

    if-nez v2, :cond_4

    return-void

    .line 14
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 15
    iget-object v5, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath()Landroid/graphics/Path;

    move-result-object v5

    .line 16
    invoke-virtual {v2, v5}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->buildPath(Landroid/graphics/Path;)V

    .line 17
    invoke-virtual {v5, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 18
    invoke-virtual {p2, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 19
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v10, v2

    div-double/2addr v8, v10

    double-to-float v2, v8

    .line 20
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/utils/SVGARect;->getHeight()D

    move-result-wide v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v10, v5

    div-double/2addr v8, v10

    double-to-float v5, v8

    .line 21
    invoke-virtual {v7, v2, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 22
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 23
    invoke-virtual {p2, v6, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 24
    :cond_5
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 25
    :cond_6
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v10, v2

    div-double/2addr v8, v10

    double-to-float v2, v8

    .line 26
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/utils/SVGARect;->getHeight()D

    move-result-wide v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v10, v5

    div-double/2addr v8, v10

    double-to-float v5, v8

    .line 27
    invoke-virtual {v7, v2, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 28
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 29
    invoke-virtual {p2, v6, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 30
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicIClickArea$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/IClickAreaListener;

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 32
    fill-array-data v2, :array_0

    .line 33
    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->getValues([F)V

    aget v5, v2, v4

    float-to-int v5, v5

    const/4 v8, 0x5

    aget v9, v2, v8

    float-to-int v9, v9

    .line 34
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    aget v3, v2, v3

    mul-float v10, v10, v3

    aget v3, v2, v4

    add-float/2addr v10, v3

    float-to-int v4, v10

    .line 35
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v10, 0x4

    aget v10, v2, v10

    mul-float v3, v3, v10

    aget v2, v2, v8

    add-float/2addr v3, v2

    float-to-int v8, v3

    move v2, v5

    move v3, v9

    move v5, v8

    .line 36
    invoke-interface/range {v0 .. v5}, Lcom/opensource/svgaplayer/IClickAreaListener;->onResponseArea(Ljava/lang/String;IIII)V

    .line 37
    :goto_2
    invoke-direct {p0, p2, v6, p1, v7}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextOnBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Matrix;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private final drawShape(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->shareFrameMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getShapes()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;

    .line 4
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->buildPath()V

    .line 5
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getShapePath()Landroid/graphics/Path;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 8
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAntiAlias()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v4

    const/16 v6, 0xff

    int-to-double v7, v6

    mul-double v4, v4, v7

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 10
    iget-object v4, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath()Landroid/graphics/Path;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 12
    iget-object v5, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->pathCache:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;

    invoke-virtual {v5, v2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;->buildPath(Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;)Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 13
    iget-object v5, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix2()Landroid/graphics/Matrix;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 15
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v9

    if-nez v9, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 17
    :goto_1
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 18
    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 19
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v5

    const/4 v9, 0x0

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getFill()I

    move-result v5

    if-eqz v5, :cond_6

    .line 20
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v10

    mul-double v10, v10, v7

    double-to-int v5, v10

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 23
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 24
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 25
    :cond_4
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_2

    .line 26
    :cond_5
    iget-object v10, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v10}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath2()Landroid/graphics/Path;

    move-result-object v10

    .line 27
    invoke-virtual {v5, v10}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->buildPath(Landroid/graphics/Path;)V

    .line 28
    invoke-virtual {v10, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 29
    invoke-virtual {p2, v10}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 30
    :goto_2
    invoke-virtual {p2, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 31
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 32
    :cond_6
    :goto_3
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v5

    if-nez v5, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getStrokeWidth()F

    move-result v5

    const/4 v10, 0x0

    cmpl-float v5, v5, v10

    if-lez v5, :cond_0

    .line 33
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getStroke()I

    move-result v5

    .line 35
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v11

    mul-double v11, v11, v7

    double-to-int v5, v11

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 37
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 38
    :goto_4
    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->matrixScale(Landroid/graphics/Matrix;)F

    move-result v5

    .line 39
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v6

    if-nez v6, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v6}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getStrokeWidth()F

    move-result v6

    mul-float v6, v6, v5

    .line 40
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    :goto_5
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v6

    const-string v7, "round"

    const/4 v8, 0x1

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v6}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineCap()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_b

    goto :goto_6

    :cond_b
    const-string v11, "butt"

    .line 42
    invoke-static {v6, v11, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_c

    sget-object v6, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_6

    .line 43
    :cond_c
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_d

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_6

    :cond_d
    const-string/jumbo v11, "square"

    .line 44
    invoke-static {v6, v11, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 45
    :cond_e
    :goto_6
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v6

    if-nez v6, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v6}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineJoin()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_10

    goto :goto_7

    :cond_10
    const-string v11, "miter"

    .line 46
    invoke-static {v6, v11, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_11

    sget-object v6, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_7

    .line 47
    :cond_11
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_12

    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_7

    :cond_12
    const-string v7, "bevel"

    .line 48
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_13

    sget-object v6, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 49
    :cond_13
    :goto_7
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v6

    if-nez v6, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {v6}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getMiterLimit()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v5

    .line 50
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 51
    :goto_8
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v2

    if-nez v2, :cond_15

    goto :goto_b

    :cond_15
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineDash()[F

    move-result-object v2

    if-nez v2, :cond_16

    goto :goto_b

    .line 52
    :cond_16
    array-length v6, v2

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1a

    aget v6, v2, v9

    cmpl-float v6, v6, v10

    if-gtz v6, :cond_17

    aget v6, v2, v8

    cmpl-float v6, v6, v10

    if-lez v6, :cond_1a

    .line 53
    :cond_17
    new-instance v6, Landroid/graphics/DashPathEffect;

    const/4 v7, 0x2

    new-array v10, v7, [F

    .line 54
    aget v11, v2, v9

    const/high16 v12, 0x3f800000    # 1.0f

    cmpg-float v11, v11, v12

    if-gez v11, :cond_18

    goto :goto_9

    :cond_18
    aget v12, v2, v9

    :goto_9
    mul-float v12, v12, v5

    aput v12, v10, v9

    .line 55
    aget v9, v2, v8

    const v11, 0x3dcccccd    # 0.1f

    cmpg-float v9, v9, v11

    if-gez v9, :cond_19

    goto :goto_a

    :cond_19
    aget v11, v2, v8

    :goto_a
    mul-float v11, v11, v5

    aput v11, v10, v8

    .line 56
    aget v2, v2, v7

    mul-float v2, v2, v5

    .line 57
    invoke-direct {v6, v10, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 58
    :cond_1a
    :goto_b
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 59
    :cond_1b
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v2

    if-nez v2, :cond_1c

    goto :goto_c

    .line 60
    :cond_1c
    iget-object v5, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath2()Landroid/graphics/Path;

    move-result-object v5

    .line 61
    invoke-virtual {v2, v5}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->buildPath(Landroid/graphics/Path;)V

    .line 62
    invoke-virtual {v5, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 63
    invoke-virtual {p2, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 64
    :goto_c
    invoke-virtual {p2, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 65
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_1d
    return-void
.end method

.method private final drawSprite(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawImage(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawShape(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawDynamic(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V

    return-void
.end method

.method private final drawTextOnBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Matrix;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 1
    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->isTextDirty$com_opensource_svgaplayer()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2
    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 3
    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v3, v4}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->setTextDirty$com_opensource_svgaplayer(Z)V

    .line 4
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v5, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicText$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "null cannot be cast to non-null type android.graphics.Bitmap"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v5, :cond_2

    :goto_0
    const/4 v11, 0x0

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->getDynamicItem()Lcom/opensource/svgaplayer/SVGADynamicEntity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicTextPaint$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/text/TextPaint;

    if-nez v10, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget-object v11, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Bitmap;

    if-nez v11, :cond_4

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez v12, :cond_5

    .line 8
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 9
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 10
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 11
    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 12
    new-instance v12, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    invoke-direct {v12, v4, v4, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 13
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    invoke-virtual {v10, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 15
    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v14

    .line 16
    iget v15, v14, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 17
    iget v14, v14, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 18
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    int-to-float v4, v7

    div-float/2addr v15, v4

    sub-float/2addr v9, v15

    div-float/2addr v14, v4

    sub-float/2addr v9, v14

    .line 19
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    .line 20
    invoke-virtual {v13, v5, v4, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 21
    iget-object v4, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    invoke-static {v11, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v4, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 22
    :cond_5
    :goto_2
    iget-object v4, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicBoringLayoutText$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/BoringLayout;

    const/4 v5, 0x0

    if-nez v4, :cond_6

    goto :goto_4

    .line 23
    :cond_6
    iget-object v9, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    if-nez v9, :cond_7

    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v11, v9

    :goto_3
    if-nez v10, :cond_8

    .line 24
    invoke-virtual {v4}, Landroid/text/BoringLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 25
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 26
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 27
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 28
    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 29
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 30
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v4}, Landroid/text/BoringLayout;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/2addr v11, v7

    int-to-float v11, v11

    invoke-virtual {v10, v5, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 31
    invoke-virtual {v4, v10}, Landroid/text/BoringLayout;->draw(Landroid/graphics/Canvas;)V

    .line 32
    iget-object v4, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    invoke-static {v9, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v4, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v11, v9

    .line 33
    :cond_8
    :goto_4
    iget-object v4, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicStaticLayoutText$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/StaticLayout;

    if-nez v4, :cond_9

    goto/16 :goto_8

    .line 34
    :cond_9
    iget-object v9, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    if-nez v9, :cond_a

    const/4 v9, 0x0

    goto :goto_5

    :cond_a
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v11, v9

    move-object v9, v10

    :goto_5
    if-nez v9, :cond_c

    .line 35
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 36
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_b

    .line 37
    :try_start_0
    const-class v9, Landroid/text/StaticLayout;

    const-string v10, "mMaximumVisibleLineCount"

    .line 38
    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 39
    invoke-virtual {v9, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 40
    invoke-virtual {v9, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    const v8, 0x7fffffff

    .line 41
    :goto_6
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v9, v13, v10, v11, v12}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v9

    .line 42
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 43
    invoke-virtual {v4, v8}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 44
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v8}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 45
    invoke-virtual {v4}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v4

    goto :goto_7

    .line 46
    :cond_b
    new-instance v8, Landroid/text/StaticLayout;

    .line 47
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x0

    .line 48
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v19

    .line 49
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v20

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 51
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v22

    .line 52
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getSpacingMultiplier()F

    move-result v23

    .line 53
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getSpacingAdd()F

    move-result v24

    const/16 v25, 0x0

    move-object/from16 v16, v8

    .line 54
    invoke-direct/range {v16 .. v25}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v4, v8

    .line 55
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 57
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 58
    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 59
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    int-to-float v7, v10

    invoke-virtual {v9, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 61
    invoke-virtual {v4, v9}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 62
    iget-object v4, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    invoke-static {v8, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v4, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object v11, v8

    :cond_c
    :goto_8
    if-nez v11, :cond_d

    goto :goto_9

    .line 63
    :cond_d
    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAntiAlias()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    invoke-virtual/range {p3 .. p3}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v4

    const/16 v6, 0xff

    int-to-double v6, v6

    mul-double v4, v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 66
    invoke-virtual/range {p3 .. p3}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 67
    invoke-virtual/range {p3 .. p3}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v4

    if-nez v4, :cond_e

    goto :goto_9

    .line 68
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 69
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v6, v2, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 71
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v11, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 72
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 73
    iget-object v2, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath()Landroid/graphics/Path;

    move-result-object v2

    .line 74
    invoke-virtual {v4, v2}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->buildPath(Landroid/graphics/Path;)V

    .line 75
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_9

    .line 77
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAntiAlias()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 78
    invoke-virtual {v1, v11, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :goto_9
    return-void
.end method

.method private final isMatteBegin(ILjava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->beginIndexList:[Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v4, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    .line 4
    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v9, ".matte"

    .line 5
    invoke-static {v6, v9, v1, v7, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_5

    .line 6
    :cond_3
    :goto_2
    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_5

    .line 7
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_9

    add-int/lit8 v6, v3, -0x1

    .line 8
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    if-nez v6, :cond_5

    goto :goto_5

    .line 9
    :cond_5
    invoke-virtual {v6}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    const/4 v7, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v7, 0x1

    :goto_4
    if-eqz v7, :cond_8

    .line 10
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    goto :goto_5

    .line 11
    :cond_8
    invoke-virtual {v6}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 12
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    :cond_9
    :goto_5
    move v3, v5

    goto :goto_1

    .line 13
    :cond_a
    iput-object v2, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->beginIndexList:[Ljava/lang/Boolean;

    .line 14
    :cond_b
    iget-object p2, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->beginIndexList:[Ljava/lang/Boolean;

    if-nez p2, :cond_c

    goto :goto_6

    :cond_c
    aget-object p1, p2, p1

    if-nez p1, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_6
    return v1
.end method

.method private final isMatteEnd(ILjava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->endIndexList:[Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Boolean;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_1
    check-cast v4, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    .line 4
    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x2

    const/4 v8, 0x0

    const-string v9, ".matte"

    .line 5
    invoke-static {v6, v9, v1, v7, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_4

    .line 6
    :cond_3
    :goto_2
    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_4

    .line 7
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    .line 8
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v3, v6, :cond_5

    .line 9
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    goto :goto_4

    .line 10
    :cond_5
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    if-nez v6, :cond_6

    goto :goto_4

    .line 11
    :cond_6
    invoke-virtual {v6}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :cond_8
    :goto_3
    if-eqz v7, :cond_9

    .line 12
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    goto :goto_4

    .line 13
    :cond_9
    invoke-virtual {v6}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 14
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    :cond_a
    :goto_4
    move v3, v5

    goto :goto_1

    .line 15
    :cond_b
    iput-object v2, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->endIndexList:[Ljava/lang/Boolean;

    .line 16
    :cond_c
    iget-object p2, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->endIndexList:[Ljava/lang/Boolean;

    if-nez p2, :cond_d

    goto :goto_5

    :cond_d
    aget-object p1, p2, p1

    if-nez p1, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_5
    return v1
.end method

.method private final matrixScale(Landroid/graphics/Matrix;)F
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->matrixScaleTempValues:[F

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2
    iget-object v1, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->matrixScaleTempValues:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    return v5

    .line 3
    :cond_1
    aget v3, v1, v2

    float-to-double v6, v3

    const/4 v3, 0x3

    .line 4
    aget v3, v1, v3

    float-to-double v8, v3

    .line 5
    aget v3, v1, v4

    float-to-double v10, v3

    const/4 v3, 0x4

    .line 6
    aget v1, v1, v3

    float-to-double v12, v1

    mul-double v14, v6, v12

    mul-double v16, v8, v10

    cmpg-double v1, v14, v16

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    return v5

    :cond_3
    mul-double v1, v6, v6

    mul-double v3, v8, v8

    add-double/2addr v1, v3

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double/2addr v6, v1

    div-double/2addr v8, v1

    mul-double v3, v6, v10

    mul-double v14, v8, v12

    add-double/2addr v3, v14

    mul-double v14, v6, v3

    sub-double/2addr v10, v14

    mul-double v3, v3, v8

    sub-double/2addr v12, v3

    mul-double v3, v10, v10

    mul-double v14, v12, v12

    add-double/2addr v3, v14

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double/2addr v10, v3

    div-double/2addr v12, v3

    mul-double v6, v6, v12

    mul-double v8, v8, v10

    cmpg-double v5, v6, v8

    if-gez v5, :cond_4

    neg-double v1, v1

    .line 9
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->getRatioX()Z

    move-result v5

    if-eqz v5, :cond_5

    double-to-float v1, v1

    goto :goto_1

    :cond_5
    double-to-float v1, v3

    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    return v1
.end method

.method private final playAudio(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAudioList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    .line 3
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getStartFrame()I

    move-result v2

    if-ne v2, p1, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSoundPool$com_opensource_svgaplayer()Landroid/media/SoundPool;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getSoundID()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->setPlayID(Ljava/lang/Integer;)V

    .line 7
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getEndFrame()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getPlayID()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 9
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSoundPool$com_opensource_svgaplayer()Landroid/media/SoundPool;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->stop(I)V

    :goto_2
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->setPlayID(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private final shareFrameMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->getScaleFx()F

    move-result v1

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->getScaleFy()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->getTranFx()F

    move-result v1

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->getTranFy()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-object v0
.end method


# virtual methods
.method public drawFrame(Landroid/graphics/Canvas;ILandroid/widget/ImageView$ScaleType;)V
    .locals 20
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView$ScaleType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    const-string v1, "canvas"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "scaleType"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super/range {p0 .. p3}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->drawFrame(Landroid/graphics/Canvas;ILandroid/widget/ImageView$ScaleType;)V

    .line 2
    invoke-direct {v0, v8}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->playAudio(I)V

    .line 3
    iget-object v1, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->pathCache:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;

    invoke-virtual {v1, v7}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;->onSizeChanged(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {v0, v8}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->requestFrameSprites$com_opensource_svgaplayer(I)Ljava/util/List;

    move-result-object v9

    .line 5
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v11, 0x0

    .line 7
    iput-object v11, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->beginIndexList:[Ljava/lang/Boolean;

    .line 8
    iput-object v11, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->endIndexList:[Ljava/lang/Boolean;

    const/4 v12, 0x0

    .line 9
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x2

    const-string v14, ".matte"

    if-nez v1, :cond_1

    const/4 v15, 0x0

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1, v14, v12, v13, v11}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    move v15, v1

    .line 11
    :goto_0
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v1, -0x1

    const/4 v5, 0x0

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v17, v5, 0x1

    if-gez v5, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    move-object v4, v2

    check-cast v4, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    .line 12
    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v15, :cond_8

    .line 13
    invoke-static {v2, v14, v12, v13, v11}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 14
    invoke-interface {v10, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, -0x1

    goto/16 :goto_4

    .line 15
    :cond_4
    :goto_2
    invoke-direct {v0, v5, v9}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->isMatteBegin(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/16 v18, 0x0

    move/from16 v19, v1

    move-object/from16 v1, p1

    move-object v11, v4

    move/from16 v4, v19

    move v12, v5

    move v5, v6

    const/4 v13, -0x1

    move-object/from16 v6, v18

    .line 18
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v1

    goto :goto_3

    :cond_5
    move-object v11, v4

    move v12, v5

    const/4 v13, -0x1

    .line 19
    :goto_3
    invoke-direct {v0, v11, v7, v8}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawSprite(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V

    .line 20
    invoke-direct {v0, v12, v9}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->isMatteEnd(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 21
    invoke-virtual {v11}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    if-nez v2, :cond_6

    goto :goto_4

    .line 22
    :cond_6
    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMatteCanvas(II)Landroid/graphics/Canvas;

    move-result-object v3

    .line 23
    invoke-direct {v0, v2, v3, v8}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawSprite(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V

    .line 24
    iget-object v2, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatteBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 25
    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMattePaint()Landroid/graphics/Paint;

    move-result-object v3

    const/4 v4, 0x0

    .line 26
    invoke-virtual {v7, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eq v1, v13, :cond_7

    .line 27
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_4

    .line 28
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    :cond_8
    move-object v11, v4

    const/4 v13, -0x1

    .line 29
    invoke-direct {v0, v11, v7, v8}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawSprite(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V

    :cond_9
    :goto_4
    move/from16 v5, v17

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    goto/16 :goto_1

    .line 30
    :cond_a
    invoke-virtual {v0, v9}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->releaseFrameSprites$com_opensource_svgaplayer(Ljava/util/List;)V

    return-void
.end method

.method public final drawFrame(Landroid/view/Surface;ILandroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1    # Landroid/view/Surface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView$ScaleType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scaleType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object p1

    const-string v0, "canvas"

    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawFrame(Landroid/graphics/Canvas;ILandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public final getDynamicItem()Lcom/opensource/svgaplayer/SVGADynamicEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    return-object v0
.end method
