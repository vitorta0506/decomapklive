.class Lx/c;
.super Lx/a;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lx/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lx/a;->b()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;)V

    return-void
.end method
