.class public Lcom/guochao/faceshow/aaspring/views/HalfHeightViewPager;
.super Lcom/duolingo/open/rtlviewpager/RtlViewPager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x69

    div-int/lit8 v0, v0, 0x57

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2
    invoke-super {p0, p1, p2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;->onMeasure(II)V

    return-void
.end method
