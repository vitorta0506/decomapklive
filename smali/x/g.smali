.class public Lx/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;


# direct methods
.method public constructor <init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx/g;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    return-void
.end method


# virtual methods
.method public a()Lx/f;
    .locals 2

    new-instance v0, Lx/b;

    iget-object v1, p0, Lx/g;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {v0, v1}, Lx/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method

.method public b()Lx/f;
    .locals 2

    new-instance v0, Lx/j;

    iget-object v1, p0, Lx/g;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {v0, v1}, Lx/j;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-object v0
.end method
