.class public final Lcom/guochao/faceshow/views/SvgaImageViewV2;
.super Lcom/opensource/svgaplayer/SVGAImageView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u0017\u001a\u00020\u0016H\u0014J\u0008\u0010\u0018\u001a\u00020\u0016H\u0014J\u000e\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001fJ\u0008\u0010 \u001a\u00020\u0016H\u0002R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/guochao/faceshow/views/SvgaImageViewV2;",
        "Lcom/opensource/svgaplayer/SVGAImageView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "c",
        "Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;",
        "getC",
        "()Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;",
        "c$delegate",
        "Lkotlin/Lazy;",
        "resizeScale",
        "",
        "getResizeScale",
        "()F",
        "setResizeScale",
        "(F)V",
        "uri",
        "Landroid/net/Uri;",
        "clearPlay",
        "",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "playAssets",
        "path",
        "",
        "playFile",
        "playRaw",
        "rawId",
        "",
        "startPlay",
        "lib_base_release"
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
.field private final c$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private resizeScale:F

.field private uri:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/opensource/svgaplayer/SVGAImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 p1, 0x2710

    .line 3
    invoke-virtual {p0, p1}, Lcom/opensource/svgaplayer/SVGAImageView;->setLoops(I)V

    const/high16 p1, 0x40400000    # 3.0f

    .line 4
    iput p1, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2;->resizeScale:F

    .line 5
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/guochao/faceshow/views/SvgaImageViewV2$c$2;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/views/SvgaImageViewV2$c$2;-><init>(Lcom/guochao/faceshow/views/SvgaImageViewV2;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2;->c$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/views/SvgaImageViewV2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getC()Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2;->c$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    return-object v0
.end method

.method private final startPlay()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2;->uri:Landroid/net/Uri;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    sget-object v1, Lcom/opensource/svgaplayer/SVGAParser;->Companion:Lcom/opensource/svgaplayer/SVGAParser$Companion;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGAParser$Companion;->shareParser()Lcom/opensource/svgaplayer/SVGAParser;

    move-result-object v1

    iget-object v2, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2;->uri:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->getC()Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/opensource/svgaplayer/SVGAParser;->decodeFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;Z)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final clearPlay()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2;->uri:Landroid/net/Uri;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/opensource/svgaplayer/SVGAImageView;->stopAnimation(Z)V

    return-void
.end method

.method public final getResizeScale()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2;->resizeScale:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->startPlay()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAImageView;->clear()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final playAssets(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2;->uri:Landroid/net/Uri;

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->startPlay()V

    return-void
.end method

.method public final playFile(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2;->uri:Landroid/net/Uri;

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->startPlay()V

    return-void
.end method

.method public final playRaw(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2;->uri:Landroid/net/Uri;

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/SvgaImageViewV2;->startPlay()V

    return-void
.end method

.method public final setResizeScale(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/SvgaImageViewV2;->resizeScale:F

    return-void
.end method
