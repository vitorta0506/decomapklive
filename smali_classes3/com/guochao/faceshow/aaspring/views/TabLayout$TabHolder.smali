.class Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TabHolder"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/guochao/faceshow/aaspring/views/TabLayout;

.field private c:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->a:I

    .line 3
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->c:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 4
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->a:I

    .line 7
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->c:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 8
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->a:I

    .line 11
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder$a;-><init>(Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->c:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 12
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->c()V

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;)Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->c:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-object p0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public b(Lcom/guochao/faceshow/aaspring/views/TabLayout$e;)V
    .locals 0

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout$e;->a()Lcom/guochao/faceshow/aaspring/views/TabLayout$f;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public e(Lcom/guochao/faceshow/aaspring/views/TabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->b:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    if-ne p1, p2, :cond_2

    .line 3
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->b:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->r(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->b:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->s(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I

    move-result v0

    if-le p1, v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->b:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->u(Lcom/guochao/faceshow/aaspring/views/TabLayout;I)I

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->b:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->s(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I

    move-result v1

    sub-int/2addr p1, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 9
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 10
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    div-int v5, p1, v0

    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->b:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v6}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->v(Lcom/guochao/faceshow/aaspring/views/TabLayout;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0xa

    .line 12
    iget-object v6, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->b:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    invoke-static {v6}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->w(Lcom/guochao/faceshow/aaspring/views/TabLayout;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    .line 13
    invoke-static {v5, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    if-ne v7, v5, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/view/View;->measure(II)V

    .line 16
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 17
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 18
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 19
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/TabLayout$TabHolder;->b:Lcom/guochao/faceshow/aaspring/views/TabLayout;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/views/TabLayout;->u(Lcom/guochao/faceshow/aaspring/views/TabLayout;I)I

    :cond_2
    :goto_1
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;

    if-ne p1, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_1
    invoke-virtual {v2, v3}, Lcom/guochao/faceshow/aaspring/views/TabLayout$f;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
