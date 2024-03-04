.class Lx/i;
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
    .locals 2

    invoke-virtual {p0}, Lx/a;->b()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    return-void
.end method
