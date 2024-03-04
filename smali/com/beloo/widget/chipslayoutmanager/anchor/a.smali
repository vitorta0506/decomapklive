.class abstract Lcom/beloo/widget/chipslayoutmanager/anchor/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/a;


# instance fields
.field a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private b:Lu/g;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lu/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/anchor/a;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3
    iput-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/anchor/a;->b:Lu/g;

    return-void
.end method


# virtual methods
.method public a()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
    .locals 1

    invoke-static {}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->b()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object v0

    return-object v0
.end method

.method d(Landroid/view/View;)Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
    .locals 3

    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/anchor/a;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/anchor/a;->b:Lu/g;

    invoke-interface {v2, p1}, Lu/g;->h(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;-><init>(ILandroid/graphics/Rect;)V

    return-object v0
.end method

.method e()Lu/g;
    .locals 1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/anchor/a;->b:Lu/g;

    return-object v0
.end method
