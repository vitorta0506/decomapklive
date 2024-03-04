.class public Lu/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

.field private b:Ls/a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu/j;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lv/g;

.field private e:Lw/m;

.field private f:Lx/f;

.field private g:Lt/p;

.field private h:Lt/q;

.field private i:Lu/i;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lu/i;Lv/g;Lw/m;Lx/f;Lt/p;Lt/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/t;->c:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lu/t;->i:Lu/i;

    .line 4
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->B()Ls/a;

    move-result-object p2

    iput-object p2, p0, Lu/t;->b:Ls/a;

    .line 5
    iput-object p1, p0, Lu/t;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 6
    iput-object p3, p0, Lu/t;->d:Lv/g;

    .line 7
    iput-object p4, p0, Lu/t;->e:Lw/m;

    .line 8
    iput-object p5, p0, Lu/t;->f:Lx/f;

    .line 9
    iput-object p6, p0, Lu/t;->g:Lt/p;

    .line 10
    iput-object p7, p0, Lu/t;->h:Lt/q;

    return-void
.end method

.method private c()Lu/a$a;
    .locals 1

    iget-object v0, p0, Lu/t;->i:Lu/i;

    invoke-interface {v0}, Lu/i;->d()Lu/a$a;

    move-result-object v0

    return-object v0
.end method

.method private d()Lu/g;
    .locals 1

    iget-object v0, p0, Lu/t;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->v()Lu/g;

    move-result-object v0

    return-object v0
.end method

.method private e()Lu/a$a;
    .locals 1

    iget-object v0, p0, Lu/t;->i:Lu/i;

    invoke-interface {v0}, Lu/i;->c()Lu/a$a;

    move-result-object v0

    return-object v0
.end method

.method private f(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/graphics/Rect;
    .locals 1
    .param p1    # Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lu/t;->i:Lu/i;

    invoke-interface {v0, p1}, Lu/i;->a(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method private g(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lu/t;->i:Lu/i;

    invoke-interface {v0, p1}, Lu/i;->b(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method private h(Lu/a$a;)Lu/a$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lu/t;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-virtual {p1, v0}, Lu/a$a;->v(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lu/a$a;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lu/t;->d()Lu/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/a$a;->q(Lcom/beloo/widget/chipslayoutmanager/d;)Lu/a$a;

    move-result-object p1

    iget-object v0, p0, Lu/t;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 3
    invoke-virtual {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->w()Lt/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/a$a;->r(Lt/n;)Lu/a$a;

    move-result-object p1

    iget-object v0, p0, Lu/t;->b:Ls/a;

    .line 4
    invoke-virtual {p1, v0}, Lu/a$a;->p(Ls/a;)Lu/a$a;

    move-result-object p1

    iget-object v0, p0, Lu/t;->g:Lt/p;

    .line 5
    invoke-virtual {p1, v0}, Lu/a$a;->u(Lt/p;)Lu/a$a;

    move-result-object p1

    iget-object v0, p0, Lu/t;->c:Ljava/util/List;

    .line 6
    invoke-virtual {p1, v0}, Lu/a$a;->m(Ljava/util/List;)Lu/a$a;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lu/h;)Lu/h;
    .locals 1
    .param p1    # Lu/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, Lu/a;

    .line 2
    iget-object v0, p0, Lu/t;->e:Lw/m;

    invoke-interface {v0}, Lw/m;->b()Lw/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/a;->T(Lw/n;)V

    .line 3
    iget-object v0, p0, Lu/t;->f:Lx/f;

    invoke-interface {v0}, Lx/f;->b()Lx/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/a;->U(Lx/e;)V

    return-object p1
.end method

.method public final b(Lu/h;)Lu/h;
    .locals 1
    .param p1    # Lu/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, Lu/a;

    .line 2
    iget-object v0, p0, Lu/t;->e:Lw/m;

    invoke-interface {v0}, Lw/m;->a()Lw/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/a;->T(Lw/n;)V

    .line 3
    iget-object v0, p0, Lu/t;->f:Lx/f;

    invoke-interface {v0}, Lx/f;->a()Lx/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/a;->U(Lx/e;)V

    return-object p1
.end method

.method public final i(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lu/h;
    .locals 2
    .param p1    # Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lu/t;->c()Lu/a$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/t;->h(Lu/a$a;)Lu/a$a;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lu/t;->f(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Lu/a$a;->w(Landroid/graphics/Rect;)Lu/a$a;

    move-result-object p1

    iget-object v0, p0, Lu/t;->d:Lv/g;

    .line 3
    invoke-interface {v0}, Lv/g;->a()Lv/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/a$a;->n(Lv/h;)Lu/a$a;

    move-result-object p1

    iget-object v0, p0, Lu/t;->e:Lw/m;

    .line 4
    invoke-interface {v0}, Lw/m;->b()Lw/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/a$a;->t(Lw/n;)Lu/a$a;

    move-result-object p1

    iget-object v0, p0, Lu/t;->h:Lt/q;

    .line 5
    invoke-virtual {p1, v0}, Lu/a$a;->z(Lt/q;)Lu/a$a;

    move-result-object p1

    iget-object v0, p0, Lu/t;->f:Lx/f;

    .line 6
    invoke-interface {v0}, Lx/f;->b()Lx/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/a$a;->x(Lx/e;)Lu/a$a;

    move-result-object p1

    new-instance v0, Lu/f;

    iget-object v1, p0, Lu/t;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 7
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result v1

    invoke-direct {v0, v1}, Lu/f;-><init>(I)V

    invoke-virtual {p1, v0}, Lu/a$a;->y(Lu/b;)Lu/a$a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lu/a$a;->o()Lu/a;

    move-result-object p1

    return-object p1
.end method

.method public final j(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lu/h;
    .locals 3
    .param p1    # Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lu/t;->e()Lu/a$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/t;->h(Lu/a$a;)Lu/a$a;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lu/t;->g(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v0, p1}, Lu/a$a;->w(Landroid/graphics/Rect;)Lu/a$a;

    move-result-object p1

    iget-object v0, p0, Lu/t;->d:Lv/g;

    .line 3
    invoke-interface {v0}, Lv/g;->b()Lv/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/a$a;->n(Lv/h;)Lu/a$a;

    move-result-object p1

    iget-object v0, p0, Lu/t;->e:Lw/m;

    .line 4
    invoke-interface {v0}, Lw/m;->a()Lw/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/a$a;->t(Lw/n;)Lu/a$a;

    move-result-object p1

    new-instance v0, Lt/f0;

    iget-object v1, p0, Lu/t;->h:Lt/q;

    iget-object v2, p0, Lu/t;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 5
    invoke-virtual {v2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->E()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lt/f0;-><init>(Lt/q;Z)V

    invoke-virtual {p1, v0}, Lu/a$a;->z(Lt/q;)Lu/a$a;

    move-result-object p1

    iget-object v0, p0, Lu/t;->f:Lx/f;

    .line 6
    invoke-interface {v0}, Lx/f;->a()Lx/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/a$a;->x(Lx/e;)Lu/a$a;

    move-result-object p1

    new-instance v0, Lu/n;

    iget-object v1, p0, Lu/t;->a:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    .line 7
    invoke-virtual {v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->getItemCount()I

    move-result v1

    invoke-direct {v0, v1}, Lu/n;-><init>(I)V

    invoke-virtual {p1, v0}, Lu/a$a;->y(Lu/b;)Lu/a$a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lu/a$a;->o()Lu/a;

    move-result-object p1

    return-object p1
.end method
