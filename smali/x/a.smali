.class abstract Lx/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx/e;


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx/a;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public b()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    iget-object v0, p0, Lx/a;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object v0
.end method
