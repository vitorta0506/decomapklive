.class public Lcom/guochao/faceshow/aaspring/views/FlowLayout/SpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/SpaceItemDecoration;->a:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/views/FlowLayout/SpaceItemDecoration;->a:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 2
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 3
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 4
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
