.class public final Lcom/guochao/faceshow/views/HourRankTextView;
.super Landroid/widget/TextSwitcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\r\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u00013B\u001b\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010$\u001a\u00020\"H\u0002J\u0012\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0014J\u0018\u0010)\u001a\u00020&2\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nH\u0014J\u0006\u0010,\u001a\u00020&J\u0008\u0010-\u001a\u00020&H\u0002J\u0012\u0010.\u001a\u00020&2\u0008\u0010/\u001a\u0004\u0018\u00010\u0015H\u0016J\u0012\u00100\u001a\u00020&2\u0008\u00101\u001a\u0004\u0018\u000102H\u0016J\u0006\u0010!\u001a\u00020&R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/guochao/faceshow/views/HourRankTextView;",
        "Landroid/widget/TextSwitcher;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "currentText",
        "",
        "currentWidth",
        "",
        "endRunnable",
        "Ljava/lang/Runnable;",
        "h",
        "Landroid/os/Handler;",
        "max",
        "getMax",
        "()I",
        "setMax",
        "(I)V",
        "oldFactory",
        "Landroid/widget/ViewSwitcher$ViewFactory;",
        "getOldFactory",
        "()Landroid/widget/ViewSwitcher$ViewFactory;",
        "setOldFactory",
        "(Landroid/widget/ViewSwitcher$ViewFactory;)V",
        "onScrollListener",
        "Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;",
        "getOnScrollListener",
        "()Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;",
        "setOnScrollListener",
        "(Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;)V",
        "realWidth",
        "stop",
        "",
        "waitingForNext",
        "canScroll",
        "onDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "reStartScroll",
        "scroll",
        "setFactory",
        "factory",
        "setText",
        "text",
        "",
        "ScrollListener",
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
.field private currentText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentWidth:I

.field private endRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private max:I

.field private oldFactory:Landroid/widget/ViewSwitcher$ViewFactory;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onScrollListener:Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private realWidth:I

.field private stop:Z

.field private waitingForNext:Z


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

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/guochao/faceshow/views/HourRankTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x42a00000    # 80.0f

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->max:I

    .line 4
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->h:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/TextSwitcher;->setWillNotDraw(Z)V

    .line 6
    new-instance p1, Lcom/guochao/faceshow/views/i;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/views/i;-><init>(Lcom/guochao/faceshow/views/HourRankTextView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->endRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/views/HourRankTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/views/HourRankTextView;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/views/HourRankTextView;->endRunnable$lambda-0(Lcom/guochao/faceshow/views/HourRankTextView;)V

    return-void
.end method

.method public static synthetic b(Lcom/guochao/faceshow/views/HourRankTextView;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/views/HourRankTextView;->reStartScroll$lambda-1(Lcom/guochao/faceshow/views/HourRankTextView;)V

    return-void
.end method

.method public static synthetic c(Lcom/guochao/faceshow/views/HourRankTextView;)V
    .locals 0

    invoke-static {p0}, Lcom/guochao/faceshow/views/HourRankTextView;->setText$lambda-2(Lcom/guochao/faceshow/views/HourRankTextView;)V

    return-void
.end method

.method private final canScroll()Z
    .locals 5

    .line 1
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->j()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/guochao/faceshow/views/HourRankTextView;->realWidth:I

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getScrollX()I

    move-result v0

    iget v3, p0, Lcom/guochao/faceshow/views/HourRankTextView;->realWidth:I

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static final endRunnable$lambda-0(Lcom/guochao/faceshow/views/HourRankTextView;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->onScrollListener:Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;->onScrollToEnd(Lcom/guochao/faceshow/views/HourRankTextView;)V

    :cond_0
    return-void
.end method

.method private static final reStartScroll$lambda-1(Lcom/guochao/faceshow/views/HourRankTextView;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->stop:Z

    .line 3
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->waitingForNext:Z

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/views/HourRankTextView;->canScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/guochao/faceshow/views/HourRankTextView;->scroll()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->endRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->h:Landroid/os/Handler;

    iget-object p0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->endRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private final scroll()V
    .locals 2

    .line 1
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextSwitcher;->scrollBy(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextSwitcher;->scrollBy(II)V

    :goto_0
    return-void
.end method

.method private static final setText$lambda-2(Lcom/guochao/faceshow/views/HourRankTextView;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/guochao/faceshow/views/HourRankTextView;->reStartScroll()V

    return-void
.end method


# virtual methods
.method public final getMax()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->max:I

    return v0
.end method

.method public final getOldFactory()Landroid/widget/ViewSwitcher$ViewFactory;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->oldFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    return-object v0
.end method

.method public final getOnScrollListener()Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->onScrollListener:Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextSwitcher;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->stop:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->waitingForNext:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object p1

    invoke-virtual {p1}, Lq7/a;->j()Z

    move-result p1

    const-wide/16 v0, 0x7d0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/guochao/faceshow/views/HourRankTextView;->realWidth:I

    sub-int/2addr v3, v4

    if-gt p1, v3, :cond_1

    .line 5
    iput-boolean v2, p0, Lcom/guochao/faceshow/views/HourRankTextView;->stop:Z

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/guochao/faceshow/views/HourRankTextView;->endRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/guochao/faceshow/views/HourRankTextView;->endRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0}, Lcom/guochao/faceshow/views/HourRankTextView;->scroll()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getScrollX()I

    move-result p1

    iget v3, p0, Lcom/guochao/faceshow/views/HourRankTextView;->realWidth:I

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    if-lt p1, v3, :cond_3

    .line 10
    iput-boolean v2, p0, Lcom/guochao/faceshow/views/HourRankTextView;->stop:Z

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/guochao/faceshow/views/HourRankTextView;->endRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->h:Landroid/os/Handler;

    iget-object v2, p0, Lcom/guochao/faceshow/views/HourRankTextView;->endRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 13
    :cond_3
    invoke-direct {p0}, Lcom/guochao/faceshow/views/HourRankTextView;->scroll()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextSwitcher;->onMeasure(II)V

    .line 2
    iget p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->currentWidth:I

    iget p2, p0, Lcom/guochao/faceshow/views/HourRankTextView;->max:I

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextSwitcher;->setMeasuredDimension(II)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getChildCount()I

    return-void
.end method

.method public final reStartScroll()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->stop:Z

    .line 3
    invoke-static {}, Lq7/a;->e()Lq7/a;

    move-result-object v0

    invoke-virtual {v0}, Lq7/a;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextSwitcher;->scrollTo(II)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextSwitcher;->scrollTo(II)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->h:Landroid/os/Handler;

    new-instance v1, Lcom/guochao/faceshow/views/j;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/views/j;-><init>(Lcom/guochao/faceshow/views/HourRankTextView;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V
    .locals 0
    .param p1    # Landroid/widget/ViewSwitcher$ViewFactory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->oldFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    return-void
.end method

.method public final setMax(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->max:I

    return-void
.end method

.method public final setOldFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V
    .locals 0
    .param p1    # Landroid/widget/ViewSwitcher$ViewFactory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->oldFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    return-void
.end method

.method public final setOnScrollListener(Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->onScrollListener:Lcom/guochao/faceshow/views/HourRankTextView$ScrollListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->stop:Z

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->currentText:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->currentText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/TextViewUtils;->calTextWidth(Landroid/widget/TextView;Ljava/lang/String;)I

    move-result p1

    .line 6
    iput p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->realWidth:I

    .line 7
    iget v0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->currentWidth:I

    if-nez v0, :cond_1

    .line 8
    iput p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->currentWidth:I

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->currentWidth:I

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextSwitcher;->requestLayout()V

    .line 11
    iget-object p1, p0, Lcom/guochao/faceshow/views/HourRankTextView;->h:Landroid/os/Handler;

    new-instance v0, Lcom/guochao/faceshow/views/k;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/views/k;-><init>(Lcom/guochao/faceshow/views/HourRankTextView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final stop()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->stop:Z

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/views/HourRankTextView;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v0}, Landroid/widget/TextSwitcher;->scrollTo(II)V

    return-void
.end method
