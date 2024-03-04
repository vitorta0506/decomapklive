.class public Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"

# interfaces
.implements Lcom/beloo/widget/chipslayoutmanager/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;,
        Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$c;
    }
.end annotation


# static fields
.field private static final B:Ljava/lang/String; = "ChipsLayoutManager"


# instance fields
.field private A:Z

.field private a:Lu/g;

.field private b:Lcom/beloo/widget/chipslayoutmanager/e;

.field private c:Lcom/beloo/widget/chipslayoutmanager/a;

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lt/n;

.field private f:Z

.field private g:Ljava/lang/Integer;

.field private h:Lv/i;

.field private i:I
    .annotation build Lcom/beloo/widget/chipslayoutmanager/Orientation;
    .end annotation
.end field

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Ls/a;

.field private n:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

.field private q:Lz/b;

.field private r:Z

.field private s:I

.field private t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

.field private u:Lu/m;

.field private v:Lu/k;

.field private w:Lr/a;

.field private x:Lcom/beloo/widget/chipslayoutmanager/f;

.field private y:Lx/g;

.field private z:La0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 2
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/a;

    invoke-direct {v0, p0}, Lcom/beloo/widget/chipslayoutmanager/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->c:Lcom/beloo/widget/chipslayoutmanager/a;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->d:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->f:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->g:Ljava/lang/Integer;

    .line 6
    new-instance v2, Lv/e;

    invoke-direct {v2}, Lv/e;-><init>()V

    iput-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->h:Lv/i;

    .line 7
    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->i:I

    .line 8
    iput v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->j:I

    const/4 v2, 0x0

    .line 9
    iput-boolean v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->l:Z

    .line 10
    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    .line 11
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->o:Landroid/util/SparseArray;

    .line 12
    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    invoke-direct {v1}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;-><init>()V

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->p:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    .line 13
    iput-boolean v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->r:Z

    .line 14
    new-instance v1, Lx/g;

    invoke-direct {v1, p0}, Lx/g;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)V

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->y:Lx/g;

    .line 15
    new-instance v1, La0/a;

    invoke-direct {v1}, La0/a;-><init>()V

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->z:La0/b;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 17
    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->s:I

    .line 18
    new-instance p1, Lz/e;

    invoke-direct {p1}, Lz/e;-><init>()V

    .line 19
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->o:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Lz/e;->a(Landroid/util/SparseArray;)Lz/b;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->q:Lz/b;

    .line 20
    new-instance p1, Lcom/beloo/widget/chipslayoutmanager/cache/a;

    invoke-direct {p1, p0}, Lcom/beloo/widget/chipslayoutmanager/cache/a;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/cache/a;->a()Ls/a;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    .line 21
    new-instance p1, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;

    invoke-direct {p1, p0}, Lcom/beloo/widget/chipslayoutmanager/layouter/MeasureSupporter;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v:Lu/k;

    .line 22
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    return-void
.end method

.method private F(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lu/h;Lu/h;)V
    .locals 5
    .param p2    # Lu/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lw/p;

    invoke-direct {v0}, Lw/p;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->u:Lu/m;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->y:Lx/g;

    invoke-virtual {v2}, Lx/g;->a()Lx/f;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lu/m;->f(Lw/m;Lx/f;)Lu/t;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->b:Lcom/beloo/widget/chipslayoutmanager/e;

    invoke-interface {v1, p1}, Lcom/beloo/widget/chipslayoutmanager/e;->c(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Lcom/beloo/widget/chipslayoutmanager/b$a;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/b$a;->e()I

    move-result v2

    if-lez v2, :cond_2

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/b$a;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "disappearing views"

    invoke-static {v3, v2}, Lz/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "fill disappearing views"

    const-string v3, ""

    .line 6
    invoke-static {v2, v3}, Lz/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v0, p3}, Lu/t;->b(Lu/h;)Lu/h;

    move-result-object p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 8
    :goto_0
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/b$a;->d()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/b$a;->d()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 10
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {p3, v4}, Lu/h;->o(Landroid/view/View;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-interface {p3}, Lu/h;->k()V

    .line 12
    invoke-virtual {v0, p2}, Lu/t;->a(Lu/h;)Lu/h;

    move-result-object p2

    .line 13
    :goto_1
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/b$a;->c()Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge v2, p3, :cond_1

    .line 14
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/b$a;->c()Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p3

    .line 15
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p3

    invoke-interface {p2, p3}, Lu/h;->o(Landroid/view/View;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_1
    invoke-interface {p2}, Lu/h;->k()V

    :cond_2
    return-void
.end method

.method public static G(Landroid/content/Context;)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$c;

    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {v1, p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$c;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "you have passed null context to builder"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private H(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->B:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache purged from position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    invoke-interface {v0, p1}, Ls/a;->c(I)V

    .line 3
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    invoke-interface {v0, p1}, Ls/a;->b(I)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 6
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    return-void
.end method

.method private I()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 6
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " top view position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "normalization"

    invoke-static {v2, v1}, Lz/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object v1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->B:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache purged from position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lz/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    invoke-interface {v1, v0}, Ls/a;->c(I)V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    .line 10
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->J()V

    :cond_1
    return-void
.end method

.method private J()V
    .locals 0

    invoke-static {p0}, Ly/b;->a(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method static synthetic b(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/f;)Lcom/beloo/widget/chipslayoutmanager/f;
    .locals 0

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->x:Lcom/beloo/widget/chipslayoutmanager/f;

    return-object p1
.end method

.method static synthetic c(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
    .locals 0

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    return-object p1
.end method

.method static synthetic d(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/e;)Lcom/beloo/widget/chipslayoutmanager/e;
    .locals 0

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->b:Lcom/beloo/widget/chipslayoutmanager/e;

    return-object p1
.end method

.method static synthetic e(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lcom/beloo/widget/chipslayoutmanager/a;
    .locals 0

    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->c:Lcom/beloo/widget/chipslayoutmanager/a;

    return-object p0
.end method

.method static synthetic f(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lt/n;
    .locals 0

    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->e:Lt/n;

    return-object p0
.end method

.method static synthetic g(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lt/n;)Lt/n;
    .locals 0

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->e:Lt/n;

    return-object p1
.end method

.method static synthetic h(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)I
    .locals 0

    iget p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->i:I

    return p0
.end method

.method static synthetic i(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;I)I
    .locals 0

    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->i:I

    return p1
.end method

.method static synthetic j(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lu/m;
    .locals 0

    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->u:Lu/m;

    return-object p0
.end method

.method static synthetic k(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lu/m;)Lu/m;
    .locals 0

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->u:Lu/m;

    return-object p1
.end method

.method static synthetic l(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lu/g;
    .locals 0

    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->a:Lu/g;

    return-object p0
.end method

.method static synthetic m(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lu/g;)Lu/g;
    .locals 0

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->a:Lu/g;

    return-object p1
.end method

.method static synthetic n(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lr/a;
    .locals 0

    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->w:Lr/a;

    return-object p0
.end method

.method static synthetic o(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lr/a;)Lr/a;
    .locals 0

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->w:Lr/a;

    return-object p1
.end method

.method private p()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->c:Lcom/beloo/widget/chipslayoutmanager/a;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private q(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->g:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    return-void
.end method

.method private r(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lu/h;Lu/h;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->s()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->q:Lz/b;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Lz/b;->g(I)V

    .line 6
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v2}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->a()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-direct {p0, p1, p2, v3}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lu/h;I)V

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->q:Lz/b;

    invoke-interface {p2, v0}, Lz/b;->g(I)V

    .line 9
    invoke-direct {p0, p1, p3, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lu/h;I)V

    .line 10
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->q:Lz/b;

    invoke-interface {p2}, Lz/b;->b()V

    .line 11
    :goto_1
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->o:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_2

    .line 12
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->o:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 13
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->q:Lz/b;

    invoke-interface {p2, v1}, Lz/b;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->a:Lu/g;

    invoke-interface {p1}, Lu/g;->i()V

    .line 15
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->p()V

    .line 16
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->o:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 17
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->q:Lz/b;

    invoke-interface {p1}, Lz/b;->d()V

    return-void
.end method

.method private s()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 4
    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private t(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lu/h;I)V
    .locals 2

    if-gez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p2}, Lu/h;->m()Lu/b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p3}, Lu/b;->a(I)V

    .line 3
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 5
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->q:Lz/b;

    invoke-interface {v1}, Lz/b;->f()V

    .line 8
    invoke-interface {p2, p3}, Lu/h;->o(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->q:Lz/b;

    invoke-interface {p1}, Lz/b;->h()V

    goto :goto_1

    .line 11
    :cond_2
    invoke-interface {p2, v1}, Lu/h;->p(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->o:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 13
    :catch_0
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->q:Lz/b;

    invoke-interface {p1}, Lz/b;->c()V

    .line 14
    invoke-interface {p2}, Lu/h;->k()V

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->j:I

    return v0
.end method

.method public B()Ls/a;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    return-object v0
.end method

.method public C()Lcom/beloo/widget/chipslayoutmanager/c;
    .locals 2

    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/c;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->u:Lu/m;

    invoke-direct {v0, p0, v1, p0}, Lcom/beloo/widget/chipslayoutmanager/c;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lu/m;Lcom/beloo/widget/chipslayoutmanager/g$a;)V

    return-object v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->f:Z

    return v0
.end method

.method public E()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->k:Z

    return v0
.end method

.method public K()Lcom/beloo/widget/chipslayoutmanager/h;
    .locals 2

    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/h;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->u:Lu/m;

    invoke-direct {v0, p0, v1, p0}, Lcom/beloo/widget/chipslayoutmanager/h;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lu/m;Lcom/beloo/widget/chipslayoutmanager/g$a;)V

    return-object v0
.end method

.method public a(Lcom/beloo/widget/chipslayoutmanager/f;Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->I()V

    .line 2
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->w:Lr/a;

    invoke-interface {p1}, Lr/a;->b()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 3
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->u:Lu/m;

    invoke-interface {p1}, Lu/m;->n()Lw/a;

    move-result-object p1

    const/4 p3, 0x1

    .line 4
    invoke-virtual {p1, p3}, Lw/a;->d(I)V

    .line 5
    iget-object p3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->u:Lu/m;

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->y:Lx/g;

    invoke-virtual {v0}, Lx/g;->b()Lx/f;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lu/m;->f(Lw/m;Lx/f;)Lu/t;

    move-result-object p1

    .line 6
    iget-object p3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 7
    invoke-virtual {p1, p3}, Lu/t;->i(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lu/h;

    move-result-object p3

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 8
    invoke-virtual {p1, v0}, Lu/t;->j(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lu/h;

    move-result-object p1

    .line 9
    invoke-direct {p0, p2, p3, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->r(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lu/h;Lu/h;)V

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->x:Lcom/beloo/widget/chipslayoutmanager/f;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/f;->k()Z

    move-result v0

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->x:Lcom/beloo/widget/chipslayoutmanager/f;

    invoke-interface {v0}, Lcom/beloo/widget/chipslayoutmanager/f;->i()Z

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->x:Lcom/beloo/widget/chipslayoutmanager/f;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/f;->j(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->x:Lcom/beloo/widget/chipslayoutmanager/f;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/f;->c(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->x:Lcom/beloo/widget/chipslayoutmanager/f;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/f;->l(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->x:Lcom/beloo/widget/chipslayoutmanager/f;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/f;->h(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->x:Lcom/beloo/widget/chipslayoutmanager/f;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/f;->g(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->x:Lcom/beloo/widget/chipslayoutmanager/f;

    invoke-interface {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/f;->a(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 2
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public findFirstVisibleItemPosition()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->a:Lu/g;

    invoke-interface {v0}, Lu/g;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->a:Lu/g;

    invoke-interface {v0}, Lu/g;->r()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->b:Lcom/beloo/widget/chipslayoutmanager/e;

    invoke-interface {v1}, Lcom/beloo/widget/chipslayoutmanager/e;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isLayoutRTL()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->l:Z

    return v0
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v:Lu/k;

    invoke-interface {v0}, Lu/k;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v:Lu/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lu/k;->d(Z)V

    .line 3
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v:Lu/k;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v:Lu/k;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lu/k;->d(Z)V

    .line 5
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v:Lu/k;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starts from = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", item count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onItemsAdded"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lz/c;->b(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 3
    invoke-direct {p0, p2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->H(I)V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    const-string v0, "onItemsChanged"

    const-string v1, ""

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v1, v2}, Lz/c;->b(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 3
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    invoke-interface {p1}, Ls/a;->f()V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->H(I)V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "from = %d, to = %d, itemCount = %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onItemsMoved"

    invoke-static {v1, v0, v3}, Lz/c;->b(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->H(I)V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starts from = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", item count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onItemsRemoved"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lz/c;->b(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 3
    invoke-direct {p0, p2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->H(I)V

    .line 4
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v:Lu/k;

    invoke-interface {p2, p1}, Lu/k;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "starts from = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", item count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onItemsUpdated"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lz/c;->b(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 3
    invoke-direct {p0, p2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->H(I)V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->z:La0/b;

    invoke-interface {v0, p1, p2}, La0/b;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    sget-object v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->B:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutChildren. State ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPreLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onLayoutChildren"

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lz/c;->e(Ljava/lang/String;Ljava/lang/String;I)I

    .line 6
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isLayoutRTL()Z

    move-result v1

    iget-boolean v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->r:Z

    if-eq v1, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->isLayoutRTL()Z

    move-result v1

    iput-boolean v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->r:Z

    .line 8
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 9
    :cond_1
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->q(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 10
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->b:Lcom/beloo/widget/chipslayoutmanager/e;

    invoke-interface {v1, p1}, Lcom/beloo/widget/chipslayoutmanager/e;->a(Landroidx/recyclerview/widget/RecyclerView$Recycler;)I

    move-result v1

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "height ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LayoutManager"

    invoke-static {v5, v4, v3}, Lz/c;->b(Ljava/lang/String;Ljava/lang/String;I)I

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "additional height  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onDeletingHeightCalc"

    invoke-static {v5, v4, v3}, Lz/c;->b(Ljava/lang/String;Ljava/lang/String;I)I

    .line 14
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->w:Lr/a;

    invoke-interface {v3}, Lr/a;->b()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object v3

    iput-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 15
    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->w:Lr/a;

    invoke-interface {v4, v3}, Lr/a;->c(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)V

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anchor state in pre-layout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lz/c;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 18
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->u:Lu/m;

    invoke-interface {v0}, Lu/m;->n()Lw/a;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v2}, Lw/a;->d(I)V

    .line 20
    invoke-virtual {v0, v1}, Lw/a;->c(I)V

    .line 21
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->u:Lu/m;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->y:Lx/g;

    invoke-virtual {v2}, Lx/g;->b()Lx/f;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lu/m;->f(Lw/m;Lx/f;)Lu/t;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->q:Lz/b;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-interface {v1, v2}, Lz/b;->e(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)V

    .line 23
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 24
    invoke-virtual {v0, v1}, Lu/t;->i(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lu/h;

    move-result-object v1

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 25
    invoke-virtual {v0, v2}, Lu/t;->j(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lu/h;

    move-result-object v0

    .line 26
    invoke-direct {p0, p1, v1, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->r(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lu/h;Lu/h;)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->A:Z

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 29
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v3}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Ls/a;->c(I)V

    .line 30
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v1, v4, :cond_3

    .line 31
    iput-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    .line 32
    :cond_3
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->u:Lu/m;

    invoke-interface {v1}, Lu/m;->n()Lw/a;

    move-result-object v1

    .line 33
    invoke-virtual {v1, v2}, Lw/a;->d(I)V

    .line 34
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->u:Lu/m;

    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->y:Lx/g;

    invoke-virtual {v4}, Lx/g;->b()Lx/f;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lu/m;->f(Lw/m;Lx/f;)Lu/t;

    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v1, v2}, Lu/t;->i(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lu/h;

    move-result-object v2

    .line 36
    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v1, v4}, Lu/t;->j(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lu/h;

    move-result-object v1

    .line 37
    invoke-direct {p0, p1, v2, v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->r(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lu/h;Lu/h;)V

    .line 38
    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->x:Lcom/beloo/widget/chipslayoutmanager/f;

    invoke-interface {v4, p1, v3}, Lcom/beloo/widget/chipslayoutmanager/f;->d(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "normalize gaps"

    .line 39
    invoke-static {v0, v3}, Lz/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->w:Lr/a;

    invoke-interface {v0}, Lr/a;->b()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 41
    invoke-direct {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->J()V

    .line 42
    :cond_4
    iget-boolean v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->A:Z

    if-eqz v0, :cond_5

    .line 43
    invoke-direct {p0, p1, v2, v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->F(Landroidx/recyclerview/widget/RecyclerView$Recycler;Lu/h;Lu/h;)V

    :cond_5
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->A:Z

    .line 45
    :goto_0
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->b:Lcom/beloo/widget/chipslayoutmanager/e;

    invoke-interface {p1}, Lcom/beloo/widget/chipslayoutmanager/e;->reset()V

    .line 46
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isMeasuring()Z

    move-result p1

    if-nez p1, :cond_6

    .line 47
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v:Lu/k;

    invoke-interface {p1}, Lu/k;->b()V

    :cond_6
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->p:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    .line 2
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->a()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 3
    iget p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->s:I

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->p:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->c()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->c()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->w:Lr/a;

    invoke-interface {v0}, Lr/a;->a()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->f(Ljava/lang/Integer;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->p:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->s:I

    invoke-virtual {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->d(I)Landroid/os/Parcelable;

    move-result-object v0

    invoke-interface {p1, v0}, Ls/a;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 8
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->p:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->s:I

    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->b(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    .line 9
    sget-object p1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->B:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESTORE. last cache position before cleanup = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    invoke-interface {v1}, Ls/a;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lz/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ls/a;->c(I)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ls/a;->c(I)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESTORE. anchor position ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lz/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESTORE. layoutOrientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " normalizationPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lz/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RESTORE. last cache position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    invoke-interface {v1}, Ls/a;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lz/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->p:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->e(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)V

    .line 2
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->p:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->s:I

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    invoke-interface {v2}, Ls/a;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->h(ILandroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->p:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    iget v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->s:I

    invoke-virtual {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->g(I)V

    .line 4
    sget-object v0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->B:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STORE. last cache position ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    invoke-interface {v2}, Ls/a;->d()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lz/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    invoke-interface {v1}, Ls/a;->d()Ljava/lang/Integer;

    move-result-object v1

    .line 6
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STORE. layoutOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->s:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " normalizationPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lz/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->p:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    iget v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->s:I

    invoke-virtual {v0, v2, v1}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->f(ILjava/lang/Integer;)V

    .line 8
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->p:Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;

    return-object v0
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->x:Lcom/beloo/widget/chipslayoutmanager/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/beloo/widget/chipslayoutmanager/f;->f(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    invoke-interface {v0}, Ls/a;->d()Ljava/lang/Integer;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m:Ls/a;

    invoke-interface {v0, p1}, Ls/a;->b(I)I

    move-result p1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->w:Lr/a;

    invoke-interface {v0}, Lr/a;->a()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->f(Ljava/lang/Integer;)V

    .line 8
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void

    .line 9
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot scroll to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", item count "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "span layout manager"

    invoke-static {v0, p1}, Lz/c;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->x:Lcom/beloo/widget/chipslayoutmanager/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/beloo/widget/chipslayoutmanager/f;->e(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public setMeasuredDimension(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v:Lu/k;

    invoke-interface {v0, p1, p2}, Lu/k;->f(II)V

    .line 2
    sget-object p1, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->B:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "measured dimension = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lz/c;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v:Lu/k;

    invoke-interface {p1}, Lu/k;->e()I

    move-result p1

    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v:Lu/k;

    invoke-interface {p2}, Lu/k;->a()I

    move-result p2

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result p2

    if-ge p3, p2, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->x:Lcom/beloo/widget/chipslayoutmanager/f;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x96

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-interface {p2, p1, p3, v0, v1}, Lcom/beloo/widget/chipslayoutmanager/f;->b(Landroid/content/Context;IILcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void

    .line 5
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot scroll to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", item count "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "span layout manager"

    invoke-static {p2, p1}, Lz/c;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method u()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->t:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    return-object v0
.end method

.method public v()Lu/g;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->a:Lu/g;

    return-object v0
.end method

.method public w()Lt/n;
    .locals 1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->e:Lt/n;

    return-object v0
.end method

.method public x()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->c:Lcom/beloo/widget/chipslayoutmanager/a;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2
    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->a:Lu/g;

    invoke-interface {v3, v2}, Lu/g;->j(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public y()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public z()Lv/i;
    .locals 1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->h:Lv/i;

    return-object v0
.end method
