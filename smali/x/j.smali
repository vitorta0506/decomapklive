.class Lx/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx/f;


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx/j;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public a()Lx/e;
    .locals 2

    new-instance v0, Lx/h;

    iget-object v1, p0, Lx/j;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {v0, v1}, Lx/h;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public b()Lx/e;
    .locals 2

    new-instance v0, Lx/i;

    iget-object v1, p0, Lx/j;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {v0, v1}, Lx/i;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method
