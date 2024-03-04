.class public final Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u001dB\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0010\u001a\u00020\u0011H\u0014J\u0012\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0014J\u0012\u0010\u0015\u001a\u00020\u00082\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00082\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0008\u0010\u0019\u001a\u00020\u0008H\u0002J\u0006\u0010\u001a\u001a\u00020\u0011J\u0006\u0010\u001b\u001a\u00020\u0008J\u0008\u0010\u001c\u001a\u00020\u0011H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;",
        "Landroid/widget/HorizontalScrollView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "autoScrolling",
        "",
        "scrollEndListener",
        "Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;",
        "getScrollEndListener",
        "()Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;",
        "setScrollEndListener",
        "(Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;)V",
        "shouldScroll",
        "onDetachedFromWindow",
        "",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onInterceptTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "onTouchEvent",
        "scrollInternal",
        "scrollToEnd",
        "startAutoScroll",
        "stopScroll",
        "ScrollEndListener",
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
.field private autoScrolling:Z

.field private scrollEndListener:Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shouldScroll:Z


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

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->onDraw$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->onDraw$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;)V

    return-void
.end method

.method private static final onDraw$lambda-1$lambda-0(Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;)V
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;->onScrollEnd(Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;)V

    return-void
.end method

.method private static final onDraw$lambda-3$lambda-2(Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;)V
    .locals 1

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;->onScrollEnd(Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;)V

    return-void
.end method

.method private final scrollInternal()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, -0x3

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    return v2

    :cond_0
    const/4 v0, 0x3

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v2, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    return v2

    :cond_1
    return v1
.end method

.method private final stopScroll()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->shouldScroll:Z

    return-void
.end method


# virtual methods
.method public final getScrollEndListener()Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->scrollEndListener:Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->stopScroll()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->autoScrolling:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->shouldScroll:Z

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result p1

    const-wide/16 v0, 0x1388

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    const/4 p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->autoScrolling:Z

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->scrollEndListener:Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;

    if-eqz p1, :cond_3

    .line 8
    new-instance v2, Lcom/guochao/faceshow/aaspring/views/d;

    invoke-direct {v2, p1, p0}, Lcom/guochao/faceshow/aaspring/views/d;-><init>(Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;)V

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0, v2, v3}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_0

    .line 11
    :cond_2
    iput-boolean v3, p0, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->autoScrolling:Z

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->scrollEndListener:Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;

    if-eqz p1, :cond_3

    .line 13
    new-instance v2, Lcom/guochao/faceshow/aaspring/views/c;

    invoke-direct {v2, p1, p0}, Lcom/guochao/faceshow/aaspring/views/c;-><init>(Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;)V

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public final scrollToEnd()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/16 v0, 0x42

    goto :goto_1

    :cond_1
    const/16 v0, 0x11

    .line 2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    return-void
.end method

.method public final setScrollEndListener(Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->scrollEndListener:Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView$ScrollEndListener;

    return-void
.end method

.method public final startAutoScroll()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->autoScrolling:Z

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->shouldScroll:Z

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->scrollToEnd()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/AutoHorizontalScrollView;->scrollInternal()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
