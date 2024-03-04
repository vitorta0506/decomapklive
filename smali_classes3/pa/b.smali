.class public Lpa/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpa/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpa/b$c;,
        Lpa/b$b;,
        Lpa/b$a;
    }
.end annotation


# instance fields
.field protected final a:Landroidx/recyclerview/widget/RecyclerView;

.field protected final b:Lpa/b$a;

.field protected c:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lpa/b;->c:Z

    .line 3
    iput-object p1, p0, Lpa/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 5
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_1

    instance-of v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Recycler views with custom layout managers are not supported by this adapter out of the box.Try implementing and providing an explicit \'impl\' parameter to the other c\'tors, or otherwise create a custom adapter subclass of your own."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    goto :goto_1

    .line 8
    :cond_2
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p1

    :goto_1
    if-nez p1, :cond_3

    .line 9
    new-instance p1, Lpa/b$b;

    invoke-direct {p1, p0}, Lpa/b$b;-><init>(Lpa/b;)V

    iput-object p1, p0, Lpa/b;->b:Lpa/b$a;

    goto :goto_2

    .line 10
    :cond_3
    new-instance p1, Lpa/b$c;

    invoke-direct {p1, p0}, Lpa/b$c;-><init>(Lpa/b;)V

    iput-object p1, p0, Lpa/b;->b:Lpa/b$a;

    :goto_2
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lpa/b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lpa/b;->b:Lpa/b$a;

    invoke-interface {v0}, Lpa/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lpa/b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lpa/b;->b:Lpa/b$a;

    invoke-interface {v0}, Lpa/b$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lpa/b;->a:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method
