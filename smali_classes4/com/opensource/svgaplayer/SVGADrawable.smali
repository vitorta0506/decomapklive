.class public Lcom/opensource/svgaplayer/SVGADrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010!\u001a\u00020\"J\u0012\u0010#\u001a\u00020\"2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0008\u0010&\u001a\u00020\u000fH\u0016J\u0006\u0010\'\u001a\u00020\"J\u0006\u0010(\u001a\u00020\"J\u0010\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020\u000fH\u0016J\u0012\u0010+\u001a\u00020\"2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0016J\u0006\u0010.\u001a\u00020\"R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u000f@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006/"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/SVGADrawable;",
        "Landroid/graphics/drawable/Drawable;",
        "videoItem",
        "Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V",
        "dynamicItem",
        "Lcom/opensource/svgaplayer/SVGADynamicEntity;",
        "(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V",
        "value",
        "",
        "cleared",
        "getCleared",
        "()Z",
        "setCleared",
        "(Z)V",
        "",
        "currentFrame",
        "getCurrentFrame",
        "()I",
        "setCurrentFrame",
        "(I)V",
        "drawer",
        "Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;",
        "getDynamicItem",
        "()Lcom/opensource/svgaplayer/SVGADynamicEntity;",
        "scaleType",
        "Landroid/widget/ImageView$ScaleType;",
        "getScaleType",
        "()Landroid/widget/ImageView$ScaleType;",
        "setScaleType",
        "(Landroid/widget/ImageView$ScaleType;)V",
        "getVideoItem",
        "()Lcom/opensource/svgaplayer/SVGAVideoEntity;",
        "clear",
        "",
        "draw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "getOpacity",
        "pause",
        "resume",
        "setAlpha",
        "alpha",
        "setColorFilter",
        "colorFilter",
        "Landroid/graphics/ColorFilter;",
        "stop",
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
.field private cleared:Z

.field private currentFrame:I

.field private final drawer:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scaleType:Landroid/widget/ImageView$ScaleType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/SVGAVideoEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    return-void
.end method

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
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGADrawable;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    .line 4
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 5
    new-instance v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

    invoke-direct {v0, p1, p2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->drawer:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAudioList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    .line 3
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getPlayID()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGADrawable;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSoundPool$com_opensource_svgaplayer()Landroid/media/SoundPool;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->stop(I)V

    :goto_1
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->setPlayID(Ljava/lang/Integer;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->clear()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->drawer:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGADrawable;->getCurrentFrame()I

    move-result v1

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGADrawable;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawFrame(Landroid/graphics/Canvas;ILandroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method

.method public final getCleared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    return v0
.end method

.method public final getCurrentFrame()I
    .locals 1

    iget v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    return v0
.end method

.method public final getDynamicItem()Lcom/opensource/svgaplayer/SVGADynamicEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public final getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    return-object v0
.end method

.method public final pause()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAudioList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    .line 3
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getPlayID()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGADrawable;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSoundPool$com_opensource_svgaplayer()Landroid/media/SoundPool;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->pause(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final resume()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAudioList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    .line 3
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getPlayID()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGADrawable;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSoundPool$com_opensource_svgaplayer()Landroid/media/SoundPool;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setCleared(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final setCurrentFrame(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView$ScaleType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAudioList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    .line 3
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getPlayID()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGADrawable;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSoundPool$com_opensource_svgaplayer()Landroid/media/SoundPool;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_0

    :cond_2
    return-void
.end method
