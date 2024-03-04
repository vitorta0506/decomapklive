.class Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger$a;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDtToFit(IIIII)I
    .locals 0

    sub-int/2addr p4, p3

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    sub-int/2addr p3, p1

    return p3
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;->b(Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;)F

    move-result v0

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p1

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger$a;->a:Lcom/guochao/faceshow/aaspring/modulars/live/game/luckynumber/pollnumber/ScrollSpeedLinearLayoutManger;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
