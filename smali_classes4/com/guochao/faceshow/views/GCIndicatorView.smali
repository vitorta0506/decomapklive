.class public final Lcom/guochao/faceshow/views/GCIndicatorView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u00012\u00020\u0002B%\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u000e\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020 J\u0010\u0010$\u001a\u00020\"2\u0006\u0010%\u001a\u00020&H\u0014J\u0018\u0010\'\u001a\u00020\"2\u0006\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u0008H\u0014J\u0010\u0010*\u001a\u00020\"2\u0006\u0010+\u001a\u00020\u0008H\u0016J \u0010,\u001a\u00020\"2\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010-\u001a\u00020\u0008H\u0016J\u0010\u0010.\u001a\u00020\"2\u0006\u0010\u000e\u001a\u00020\u0008H\u0016J(\u0010/\u001a\u00020\"2\u0006\u00100\u001a\u00020\u00082\u0006\u00101\u001a\u00020\u00082\u0006\u00102\u001a\u00020\u00082\u0006\u00103\u001a\u00020\u0008H\u0014J\u0008\u00104\u001a\u00020\"H\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0010\"\u0004\u0008\u001b\u0010\u0012R\u001a\u0010\u001c\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0010\"\u0004\u0008\u001e\u0010\u0012R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lcom/guochao/faceshow/views/GCIndicatorView;",
        "Landroid/view/View;",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "indicatorDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "observer",
        "Landroid/database/DataSetObserver;",
        "position",
        "getPosition",
        "()I",
        "setPosition",
        "(I)V",
        "positionOffset",
        "",
        "getPositionOffset",
        "()F",
        "setPositionOffset",
        "(F)V",
        "singlePeace",
        "getSinglePeace",
        "setSinglePeace",
        "total",
        "getTotal",
        "setTotal",
        "viewPager",
        "Landroidx/viewpager/widget/ViewPager;",
        "bindTo",
        "",
        "vp",
        "onDraw",
        "canvas",
        "Landroid/graphics/Canvas;",
        "onMeasure",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onPageScrollStateChanged",
        "state",
        "onPageScrolled",
        "positionOffsetPixels",
        "onPageSelected",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "refresh",
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
.field private indicatorDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final observer:Landroid/database/DataSetObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private position:I

.field private positionOffset:F

.field private singlePeace:I

.field private total:I

.field private viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/views/GCIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

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
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/guochao/faceshow/views/GCIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080350

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p2, "resources.getDrawable(R.\u2026able.indicator_indicator)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->indicatorDrawable:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f08034f

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5
    new-instance p1, Lcom/guochao/faceshow/views/GCIndicatorView$observer$1;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/views/GCIndicatorView$observer$1;-><init>(Lcom/guochao/faceshow/views/GCIndicatorView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->observer:Landroid/database/DataSetObserver;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/guochao/faceshow/views/GCIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final refresh()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->total:I

    if-gtz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v1, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->total:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->singlePeace:I

    .line 4
    iget-object v1, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->indicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v2, v3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final bindTo(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2
    .param p1    # Landroidx/viewpager/widget/ViewPager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "vp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 5
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->observer:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method

.method public final getPosition()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->position:I

    return v0
.end method

.method public final getPositionOffset()F
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->positionOffset:F

    return v0
.end method

.method public final getSinglePeace()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->singlePeace:I

    return v0
.end method

.method public final getTotal()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->total:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->singlePeace:I

    iget v4, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->position:I

    add-int/2addr v4, v2

    mul-int v4, v4, v3

    int-to-float v2, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->positionOffset:F

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->indicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->singlePeace:I

    iget v2, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->position:I

    mul-int v2, v2, v0

    int-to-float v2, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->positionOffset:F

    mul-float v0, v0, v3

    add-float/2addr v2, v0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 10
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11
    iget-object v0, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->indicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    const/high16 v0, 0x42f00000    # 120.0f

    .line 1
    invoke-static {v0}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    :cond_1
    int-to-float p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    mul-int p1, p1, v1

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->position:I

    .line 2
    iput p2, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->positionOffset:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/views/GCIndicatorView;->refresh()V

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->position:I

    return-void
.end method

.method public final setPositionOffset(F)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->positionOffset:F

    return-void
.end method

.method public final setSinglePeace(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->singlePeace:I

    return-void
.end method

.method public final setTotal(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/views/GCIndicatorView;->total:I

    return-void
.end method
