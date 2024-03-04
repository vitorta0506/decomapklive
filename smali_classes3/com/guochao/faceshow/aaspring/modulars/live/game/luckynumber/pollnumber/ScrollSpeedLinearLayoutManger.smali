.class public Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const p1, 0x3cf5c28f    # 0.03f

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;->a:F

    const p1, 0x3eb33333    # 0.35f

    .line 3
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;->c(F)V

    return-void
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;)F
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;->a:F

    return p0
.end method


# virtual methods
.method public c(F)V
    .locals 1

    invoke-static {}, Lcom/guochao/faceshow/BaseApplication;->getInstance()Lcom/guochao/faceshow/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/guochao/faceshow/BaseAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, p1

    iput v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;->a:F

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1
    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;Landroid/content/Context;)V

    .line 2
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 3
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
