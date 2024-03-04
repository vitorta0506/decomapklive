.class public Lcom/guochao/faceshow/aaspring/views/FoldingViewPager;
.super Lcom/duolingo/open/rtlviewpager/RtlViewPager;
.source "SourceFile"


# instance fields
.field private c:F

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/duolingo/open/rtlviewpager/RtlViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/FoldingViewPager;->d:Ljava/util/HashMap;

    return-void
.end method

.method private g(F)Z
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected e(Landroid/view/View;Landroid/view/View;FI)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "effectOffset----------------/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "FoldingViewPager"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "positionOffsetPixels----------------/"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    :cond_0
    if-eqz p1, :cond_1

    int-to-float p2, p4

    .line 4
    iput p2, p0, Lcom/guochao/faceshow/aaspring/views/FoldingViewPager;->c:F

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    return-void
.end method

.method public f(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/FoldingViewPager;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/FoldingViewPager;->g(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/FoldingViewPager;->f(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/FoldingViewPager;->e:Landroid/view/View;

    add-int/lit8 v1, p1, 0x1

    .line 3
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/views/FoldingViewPager;->f(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/views/FoldingViewPager;->f:Landroid/view/View;

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/FoldingViewPager;->e:Landroid/view/View;

    invoke-virtual {p0, v2, v1, v0, p3}, Lcom/guochao/faceshow/aaspring/views/FoldingViewPager;->e(Landroid/view/View;Landroid/view/View;FI)V

    .line 5
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->onPageScrolled(IFI)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
