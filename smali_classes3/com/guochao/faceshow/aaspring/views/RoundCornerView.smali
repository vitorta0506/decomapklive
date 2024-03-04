.class public final Lcom/guochao/faceshow/aaspring/views/RoundCornerView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J(\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\nH\u0014R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/views/RoundCornerView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "clipPath",
        "Landroid/graphics/Path;",
        "radius",
        "",
        "dispatchDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
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
.field private final clipPath:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final radius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/guochao/faceshow/aaspring/views/RoundCornerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/RoundCornerView;->radius:I

    .line 4
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RoundCornerView;->clipPath:Landroid/graphics/Path;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/RoundCornerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/RoundCornerView;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/RoundCornerView;->radius:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/RoundCornerView;->clipPath:Landroid/graphics/Path;

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    int-to-float p2, v0

    const/4 p3, 0x0

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float p4, v1, p2

    .line 8
    invoke-virtual {p1, p4, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    invoke-virtual {p1, v1, p3, v1, p2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 10
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 11
    invoke-virtual {p1, v1, v2, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 12
    invoke-virtual {p1, p3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    invoke-virtual {p1, p3, v2, p3, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 14
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    invoke-virtual {p1, p3, p3, p2, p3}, Landroid/graphics/Path;->quadTo(FFFF)V

    return-void
.end method
