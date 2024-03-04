.class public final Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J6\u0010\u000e\u001a\u00020\u000f2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0008H\u0002J6\u0010\u0017\u001a\u00020\u000f2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u0008H\u0002J\u0008\u0010\u0019\u001a\u00020\u000fH\u0014J0\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u0008H\u0014R$\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006!"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "value",
        "",
        "currentIndex",
        "getCurrentIndex",
        "()I",
        "setCurrentIndex",
        "(I)V",
        "layoutNext",
        "",
        "next",
        "",
        "Landroid/view/View;",
        "w",
        "h",
        "l",
        "t",
        "layoutPrev",
        "prev",
        "onFinishInflate",
        "onLayout",
        "changed",
        "",
        "left",
        "top",
        "right",
        "bottom",
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
.field private currentIndex:I


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

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final layoutNext(Ljava/util/List;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;IIII)V"
        }
    .end annotation

    add-int/2addr p4, p2

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p3, p4

    add-int/2addr v0, p5

    .line 4
    invoke-virtual {p2, p4, p5, p3, v0}, Landroid/view/View;->layout(IIII)V

    move p4, p3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final layoutPrev(Ljava/util/List;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;IIII)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int p3, p4, p3

    add-int/2addr v0, p5

    .line 4
    invoke-virtual {p2, p3, p5, p4, v0}, Landroid/view/View;->layout(IIII)V

    move p4, p3

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getCurrentIndex()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;->currentIndex:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout$onFinishInflate$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout$onFinishInflate$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;)V

    const-string v1, "live_voice_room_config"

    invoke-static {v1, v0}, Lcom/guochao/lib_core/feature/FeatureKt;->requireFeature(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lcom/guochao/lib_core/feature/Feature;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;->currentIndex:I

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;->currentIndex:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    add-int v0, p4, p2

    add-int v1, p5, p3

    .line 7
    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 8
    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 9
    iget v1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;->currentIndex:I

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;->layoutPrev(Ljava/util/List;IIII)V

    .line 11
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;->layoutNext(Ljava/util/List;IIII)V

    return-void

    .line 13
    :cond_1
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public final setCurrentIndex(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;->currentIndex:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/broadcaster/view/AlwaysCenterLayout;->currentIndex:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method
