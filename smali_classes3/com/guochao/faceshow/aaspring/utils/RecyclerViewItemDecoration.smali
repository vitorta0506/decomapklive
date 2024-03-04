.class public Lcom/guochao/faceshow/aaspring/utils/RecyclerViewItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private mDividerSize:I

.field private mOrientation:I


# direct methods
.method public constructor <init>(FI)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/Dimension;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/RecyclerViewItemDecoration;->mDividerSize:I

    .line 3
    iput p2, p0, Lcom/guochao/faceshow/aaspring/utils/RecyclerViewItemDecoration;->mOrientation:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 3
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 5
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result p2

    .line 6
    iget v0, p0, Lcom/guochao/faceshow/aaspring/utils/RecyclerViewItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/RecyclerViewItemDecoration;->mDividerSize:I

    invoke-virtual {p1, p4, p4, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    sub-int/2addr p3, v1

    if-ne p2, p3, :cond_3

    .line 8
    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 9
    :cond_3
    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/RecyclerViewItemDecoration;->mDividerSize:I

    invoke-virtual {p1, p4, p4, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void
.end method
