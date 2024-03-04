.class Lcom/beloo/widget/chipslayoutmanager/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beloo/widget/chipslayoutmanager/a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/beloo/widget/chipslayoutmanager/a;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/a$a;->b:Lcom/beloo/widget/chipslayoutmanager/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/a$a;->a:I

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/a$a;->b:Lcom/beloo/widget/chipslayoutmanager/a;

    invoke-static {v0}, Lcom/beloo/widget/chipslayoutmanager/a;->c(Lcom/beloo/widget/chipslayoutmanager/a;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/a$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/beloo/widget/chipslayoutmanager/a$a;->a:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/a$a;->a:I

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/a$a;->b:Lcom/beloo/widget/chipslayoutmanager/a;

    invoke-static {v1}, Lcom/beloo/widget/chipslayoutmanager/a;->c(Lcom/beloo/widget/chipslayoutmanager/a;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/a$a;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
