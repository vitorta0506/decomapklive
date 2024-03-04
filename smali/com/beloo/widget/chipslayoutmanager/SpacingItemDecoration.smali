.class public Lcom/beloo/widget/chipslayoutmanager/SpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/beloo/widget/chipslayoutmanager/SpacingItemDecoration;->a:I

    div-int/lit8 p3, p2, 0x2

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 2
    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 3
    iget p2, p0, Lcom/beloo/widget/chipslayoutmanager/SpacingItemDecoration;->b:I

    div-int/lit8 p3, p2, 0x2

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 4
    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
