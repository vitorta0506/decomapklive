.class public Lcom/beloo/widget/chipslayoutmanager/cache/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/a;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public a()Ls/a;
    .locals 2

    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/cache/b;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/a;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/cache/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method
