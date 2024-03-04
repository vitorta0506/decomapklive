.class public Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Landroidx/appcompat/widget/SearchView;

.field private d:Landroidx/appcompat/widget/AppCompatTextView;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput p2, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->e:I

    .line 3
    iput-object p3, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->a:Lcom/linecorp/linesdk/dialog/internal/TargetListAdapter$a;

    .line 4
    invoke-direct {p0}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    invoke-direct {p0}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->e()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    invoke-direct {p0}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->e()V

    return-void
.end method

.method static synthetic a(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)Landroidx/appcompat/widget/SearchView;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->c:Landroidx/appcompat/widget/SearchView;

    return-object p0
.end method

.method static synthetic b(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic c(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    iget-object p0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method static synthetic d(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)I
    .locals 0

    iget p0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->e:I

    return p0
.end method

.method private e()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/linecorp/linesdk/R$layout;->layout_select_target:I

    invoke-static {v0, v1, p0}, Landroid/view/ViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lcom/linecorp/linesdk/R$id;->recyclerView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    sget v1, Lcom/linecorp/linesdk/R$id;->searchView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SearchView;

    iput-object v1, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->c:Landroidx/appcompat/widget/SearchView;

    .line 4
    sget v1, Lcom/linecorp/linesdk/R$id;->emptyView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    iget-object v0, p0, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;->c:Landroidx/appcompat/widget/SearchView;

    new-instance v1, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView$a;

    invoke-direct {v1, p0}, Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView$a;-><init>(Lcom/linecorp/linesdk/dialog/internal/TargetListWithSearchView;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method
