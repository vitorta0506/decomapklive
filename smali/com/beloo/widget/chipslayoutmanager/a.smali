.class public Lcom/beloo/widget/chipslayoutmanager/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/a;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method static synthetic c(Lcom/beloo/widget/chipslayoutmanager/a;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/a;->a:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/a$a;

    invoke-direct {v0, p0}, Lcom/beloo/widget/chipslayoutmanager/a$a;-><init>(Lcom/beloo/widget/chipslayoutmanager/a;)V

    return-object v0
.end method
