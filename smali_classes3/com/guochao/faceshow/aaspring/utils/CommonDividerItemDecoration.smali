.class public Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_SPACE:F = 0.5f

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private isIncludeBottom:Z

.field private isIncludeLeft:Z

.field private isIncludeRight:Z

.field private isIncludeTop:Z

.field private mBottomEdgeSpace:I

.field private mContext:Landroid/content/Context;

.field private mLeftEdgeSpace:I

.field private mMaxSpanGroupIndex:I

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintColor:I

.field private mRectSpace:I

.field private mRightEdgeSpace:I

.field private mTopEdgeSpace:I


# direct methods
.method private constructor <init>(Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;->access$000(Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mContext:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;->access$100(Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mOrientation:I

    .line 5
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;->access$200(Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    .line 6
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;->access$300(Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mLeftEdgeSpace:I

    .line 7
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;->access$400(Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mTopEdgeSpace:I

    .line 8
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;->access$500(Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRightEdgeSpace:I

    .line 9
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;->access$600(Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mBottomEdgeSpace:I

    .line 10
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;->access$700(Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeLeft:Z

    .line 11
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;->access$800(Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeTop:Z

    .line 12
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;->access$900(Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeRight:Z

    .line 13
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;->access$1000(Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeBottom:Z

    .line 14
    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;->access$1100(Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;)I

    move-result p1

    iput p1, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaintColor:I

    .line 15
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;-><init>(Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration$Builder;)V

    return-void
.end method

.method private drawGridSpace(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    .line 3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v2

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    .line 5
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v7

    .line 7
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 8
    invoke-virtual {v2, v7, v3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    .line 9
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    .line 10
    invoke-virtual {v2, v7, v3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    .line 11
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v9

    .line 12
    iget v9, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    add-int/2addr v9, v7

    .line 13
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v10

    iget v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v10, v11

    .line 14
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v11

    iget v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v12

    iget v12, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    add-int/2addr v11, v12

    int-to-float v13, v10

    int-to-float v14, v7

    int-to-float v15, v11

    int-to-float v7, v9

    .line 15
    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v16, v7

    move-object/from16 v17, v9

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 16
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v7, v9

    .line 17
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    .line 18
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v8

    .line 19
    iget v8, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    add-int/2addr v8, v6

    int-to-float v11, v6

    int-to-float v12, v7

    int-to-float v13, v8

    int-to-float v14, v9

    .line 20
    iget-object v15, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->drawLeftOrRightSpace(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 22
    invoke-direct/range {p0 .. p2}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->drawTopOrBottomSpace(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private drawListHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v4, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeTop:Z

    if-eqz v4, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    iget v5, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mTopEdgeSpace:I

    add-int/2addr v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    .line 4
    :goto_0
    iget-boolean v5, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeBottom:Z

    if-eqz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mBottomEdgeSpace:I

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    :goto_1
    sub-int/2addr v5, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_7

    .line 5
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v9

    if-nez v9, :cond_4

    .line 8
    iget-boolean v9, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeLeft:Z

    if-eqz v9, :cond_3

    .line 9
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    iget v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v9, v10

    iget v10, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mLeftEdgeSpace:I

    sub-int/2addr v9, v10

    add-int/2addr v10, v9

    int-to-float v12, v9

    int-to-float v13, v4

    int-to-float v14, v10

    int-to-float v15, v5

    .line 10
    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    .line 12
    iget v8, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    add-int/2addr v8, v7

    int-to-float v10, v7

    int-to-float v11, v4

    int-to-float v12, v8

    int-to-float v13, v5

    .line 13
    iget-object v14, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v10, v3, -0x1

    if-ne v9, v10, :cond_5

    .line 14
    iget-boolean v9, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeRight:Z

    if-eqz v9, :cond_6

    .line 15
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    .line 16
    iget v8, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRightEdgeSpace:I

    add-int/2addr v8, v7

    int-to-float v10, v7

    int-to-float v11, v4

    int-to-float v12, v8

    int-to-float v13, v5

    .line 17
    iget-object v14, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 18
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    .line 19
    iget v8, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    add-int/2addr v8, v7

    int-to-float v10, v7

    int-to-float v11, v4

    int-to-float v12, v8

    int-to-float v13, v5

    .line 20
    iget-object v14, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 21
    :cond_7
    invoke-direct/range {p0 .. p2}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->drawTopOrBottomSpace(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private drawListVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v4, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeLeft:Z

    if-eqz v4, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    iget v5, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mLeftEdgeSpace:I

    add-int/2addr v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    .line 4
    :goto_0
    iget-boolean v5, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeRight:Z

    if-eqz v5, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRightEdgeSpace:I

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    :goto_1
    sub-int/2addr v5, v6

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_7

    .line 5
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7
    invoke-virtual {v1, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v9

    if-nez v9, :cond_4

    .line 8
    iget-boolean v9, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeTop:Z

    if-eqz v9, :cond_3

    .line 9
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    iget v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v9, v10

    iget v10, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mTopEdgeSpace:I

    sub-int/2addr v9, v10

    add-int/2addr v10, v9

    int-to-float v12, v4

    int-to-float v13, v9

    int-to-float v14, v5

    int-to-float v15, v10

    .line 10
    iget-object v9, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    .line 12
    iget v8, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    add-int/2addr v8, v7

    int-to-float v10, v4

    int-to-float v11, v7

    int-to-float v12, v5

    int-to-float v13, v8

    .line 13
    iget-object v14, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v10, v3, -0x1

    if-ne v9, v10, :cond_5

    .line 14
    iget-boolean v9, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeBottom:Z

    if-eqz v9, :cond_6

    .line 15
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    .line 16
    iget v8, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mBottomEdgeSpace:I

    add-int/2addr v8, v7

    int-to-float v10, v4

    int-to-float v11, v7

    int-to-float v12, v5

    int-to-float v13, v8

    .line 17
    iget-object v14, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 18
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    .line 19
    iget v8, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    add-int/2addr v8, v7

    int-to-float v10, v4

    int-to-float v11, v7

    int-to-float v12, v5

    int-to-float v13, v8

    .line 20
    iget-object v14, v0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 21
    :cond_7
    invoke-virtual/range {p0 .. p2}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->drawLeftOrRightSpace(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private drawTopOrBottomSpace(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeTop:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 5
    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mTopEdgeSpace:I

    add-int/2addr v3, v1

    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    .line 6
    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeBottom:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 9
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mBottomEdgeSpace:I

    sub-int/2addr v1, v2

    .line 10
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr v2, p2

    .line 11
    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mBottomEdgeSpace:I

    add-int/2addr p2, v1

    int-to-float v4, v0

    int-to-float v5, v1

    int-to-float v6, v2

    int-to-float v7, p2

    .line 12
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private isFirsColumn(II)Z
    .locals 0

    rem-int/2addr p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isFirstRow(II)Z
    .locals 0

    div-int/2addr p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isLastColumn(II)Z
    .locals 1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    rem-int/2addr p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLastRow(III)Z
    .locals 1

    rem-int v0, p3, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    sub-int/2addr p3, p2

    if-lt p1, p3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public drawLeftOrRightSpace(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeLeft:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 4
    iget v2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mLeftEdgeSpace:I

    add-int/2addr v2, v0

    .line 5
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    .line 6
    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeRight:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRightEdgeSpace:I

    sub-int/2addr v0, v1

    .line 9
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    .line 10
    iget v2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRightEdgeSpace:I

    add-int/2addr v2, v0

    .line 11
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    sub-int/2addr v3, p2

    int-to-float v5, v0

    int-to-float v6, v1

    int-to-float v7, v2

    int-to-float v8, v3

    .line 12
    iget-object v9, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4
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
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 6
    instance-of v1, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_20

    .line 7
    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    .line 9
    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p2

    .line 10
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-virtual {v1, p3, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p3

    iput p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mMaxSpanGroupIndex:I

    .line 11
    invoke-direct {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isFirsColumn(II)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 12
    invoke-direct {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isFirstRow(II)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 13
    invoke-direct {p0, v0, p2, p4}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isLastRow(III)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 14
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeLeft:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mLeftEdgeSpace:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeTop:Z

    if-eqz p3, :cond_2

    iget p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mTopEdgeSpace:I

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    iget p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeBottom:Z

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mBottomEdgeSpace:I

    :cond_3
    invoke-virtual {p1, p2, p3, p4, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_17

    .line 15
    :cond_4
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeLeft:Z

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mLeftEdgeSpace:I

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeTop:Z

    if-eqz p3, :cond_6

    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mTopEdgeSpace:I

    :cond_6
    iget p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    invoke-virtual {p1, p2, v3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_17

    .line 16
    :cond_7
    invoke-direct {p0, v0, p2, p4}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isLastRow(III)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 17
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeLeft:Z

    if-eqz p2, :cond_8

    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mLeftEdgeSpace:I

    goto :goto_3

    :cond_8
    const/4 p2, 0x0

    :goto_3
    iget p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeBottom:Z

    if-eqz p4, :cond_9

    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mBottomEdgeSpace:I

    :cond_9
    invoke-virtual {p1, p2, p3, p3, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_17

    .line 18
    :cond_a
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeLeft:Z

    if-eqz p2, :cond_b

    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mLeftEdgeSpace:I

    :cond_b
    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    invoke-virtual {p1, v3, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_17

    .line 19
    :cond_c
    invoke-direct {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isLastColumn(II)Z

    move-result p3

    if-eqz p3, :cond_18

    .line 20
    invoke-direct {p0, v0, p2, p4}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isLastRow(III)Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-direct {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isFirstRow(II)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 21
    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeTop:Z

    if-eqz p3, :cond_d

    iget p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mTopEdgeSpace:I

    goto :goto_4

    :cond_d
    const/4 p3, 0x0

    :goto_4
    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeRight:Z

    if-eqz p4, :cond_e

    iget p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRightEdgeSpace:I

    goto :goto_5

    :cond_e
    const/4 p4, 0x0

    :goto_5
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeBottom:Z

    if-eqz v0, :cond_f

    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mBottomEdgeSpace:I

    :cond_f
    invoke-virtual {p1, p2, p3, p4, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_17

    .line 22
    :cond_10
    invoke-direct {p0, v0, p2, p4}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isLastRow(III)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 23
    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeRight:Z

    if-eqz p3, :cond_11

    iget p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRightEdgeSpace:I

    goto :goto_6

    :cond_11
    const/4 p3, 0x0

    :goto_6
    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeBottom:Z

    if-eqz p4, :cond_12

    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mBottomEdgeSpace:I

    :cond_12
    invoke-virtual {p1, p2, p2, p3, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_17

    .line 24
    :cond_13
    invoke-direct {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isFirstRow(II)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 25
    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeTop:Z

    if-eqz p3, :cond_14

    iget p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mTopEdgeSpace:I

    goto :goto_7

    :cond_14
    const/4 p3, 0x0

    :goto_7
    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeRight:Z

    if-eqz p4, :cond_15

    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRightEdgeSpace:I

    :cond_15
    invoke-virtual {p1, p2, p3, v3, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_17

    .line 26
    :cond_16
    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeRight:Z

    if-eqz p3, :cond_17

    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRightEdgeSpace:I

    :cond_17
    invoke-virtual {p1, p2, p2, v3, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_17

    .line 27
    :cond_18
    invoke-direct {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isFirstRow(II)Z

    move-result p3

    if-eqz p3, :cond_1b

    invoke-direct {p0, v0, p2, p4}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isLastRow(III)Z

    move-result p3

    if-eqz p3, :cond_1b

    .line 28
    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeTop:Z

    if-eqz p3, :cond_19

    iget p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mTopEdgeSpace:I

    goto :goto_8

    :cond_19
    const/4 p3, 0x0

    :goto_8
    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeBottom:Z

    if-eqz p4, :cond_1a

    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mBottomEdgeSpace:I

    :cond_1a
    invoke-virtual {p1, p2, p3, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_17

    .line 29
    :cond_1b
    invoke-direct {p0, v0, p2}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isFirstRow(II)Z

    move-result p3

    if-eqz p3, :cond_1d

    .line 30
    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeTop:Z

    if-eqz p3, :cond_1c

    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mTopEdgeSpace:I

    :cond_1c
    invoke-virtual {p1, p2, v3, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_17

    .line 31
    :cond_1d
    invoke-direct {p0, v0, p2, p4}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isLastRow(III)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 32
    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeBottom:Z

    if-eqz p3, :cond_1e

    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mBottomEdgeSpace:I

    :cond_1e
    invoke-virtual {p1, p2, p2, p2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_17

    .line 33
    :cond_1f
    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_17

    .line 34
    :cond_20
    instance-of p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_36

    .line 35
    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mOrientation:I

    if-ne p2, v2, :cond_2b

    if-nez v0, :cond_24

    .line 36
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeLeft:Z

    if-eqz p2, :cond_21

    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mLeftEdgeSpace:I

    goto :goto_9

    :cond_21
    const/4 p2, 0x0

    :goto_9
    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeTop:Z

    if-eqz p3, :cond_22

    iget p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mTopEdgeSpace:I

    goto :goto_a

    :cond_22
    const/4 p3, 0x0

    .line 37
    :goto_a
    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeRight:Z

    if-eqz p4, :cond_23

    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRightEdgeSpace:I

    :cond_23
    iget p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    .line 38
    invoke-virtual {p1, p2, p3, v3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_17

    :cond_24
    sub-int/2addr p4, v2

    if-ne v0, p4, :cond_28

    .line 39
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeLeft:Z

    if-eqz p2, :cond_25

    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mLeftEdgeSpace:I

    goto :goto_b

    :cond_25
    const/4 p2, 0x0

    .line 40
    :goto_b
    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeRight:Z

    if-eqz p3, :cond_26

    iget p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRightEdgeSpace:I

    goto :goto_c

    :cond_26
    const/4 p3, 0x0

    :goto_c
    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeBottom:Z

    if-eqz p4, :cond_27

    iget p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mBottomEdgeSpace:I

    goto :goto_d

    :cond_27
    const/4 p4, 0x0

    .line 41
    :goto_d
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_17

    .line 42
    :cond_28
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeLeft:Z

    if-eqz p2, :cond_29

    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mLeftEdgeSpace:I

    goto :goto_e

    :cond_29
    const/4 p2, 0x0

    .line 43
    :goto_e
    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeRight:Z

    if-eqz p3, :cond_2a

    iget p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRightEdgeSpace:I

    goto :goto_f

    :cond_2a
    const/4 p3, 0x0

    :goto_f
    iget p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    .line 44
    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_17

    :cond_2b
    if-nez v0, :cond_2f

    .line 45
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeLeft:Z

    if-eqz p2, :cond_2c

    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mLeftEdgeSpace:I

    goto :goto_10

    :cond_2c
    const/4 p2, 0x0

    :goto_10
    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeTop:Z

    if-eqz p3, :cond_2d

    iget p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mTopEdgeSpace:I

    goto :goto_11

    :cond_2d
    const/4 p3, 0x0

    :goto_11
    iget p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    .line 46
    iget-boolean v0, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeBottom:Z

    if-eqz v0, :cond_2e

    iget v3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mBottomEdgeSpace:I

    .line 47
    :cond_2e
    invoke-virtual {p1, p2, p3, p4, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_17

    :cond_2f
    sub-int/2addr p4, v2

    if-ne v0, p4, :cond_33

    .line 48
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeTop:Z

    if-eqz p2, :cond_30

    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mTopEdgeSpace:I

    goto :goto_12

    :cond_30
    const/4 p2, 0x0

    .line 49
    :goto_12
    iget-boolean p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeRight:Z

    if-eqz p3, :cond_31

    iget p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRightEdgeSpace:I

    goto :goto_13

    :cond_31
    const/4 p3, 0x0

    :goto_13
    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeBottom:Z

    if-eqz p4, :cond_32

    iget p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mBottomEdgeSpace:I

    goto :goto_14

    :cond_32
    const/4 p4, 0x0

    .line 50
    :goto_14
    invoke-virtual {p1, v3, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_17

    .line 51
    :cond_33
    iget-boolean p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeTop:Z

    if-eqz p2, :cond_34

    iget p2, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mTopEdgeSpace:I

    goto :goto_15

    :cond_34
    const/4 p2, 0x0

    :goto_15
    iget p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mRectSpace:I

    .line 52
    iget-boolean p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->isIncludeBottom:Z

    if-eqz p4, :cond_35

    iget p4, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mBottomEdgeSpace:I

    goto :goto_16

    :cond_35
    const/4 p4, 0x0

    .line 53
    :goto_16
    invoke-virtual {p1, v3, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_36
    :goto_17
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    .line 3
    instance-of v0, p3, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->drawGridSpace(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p3, :cond_2

    .line 6
    iget p3, p0, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->mOrientation:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->drawListVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/utils/CommonDividerItemDecoration;->drawListHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_2
    :goto_0
    return-void
.end method
