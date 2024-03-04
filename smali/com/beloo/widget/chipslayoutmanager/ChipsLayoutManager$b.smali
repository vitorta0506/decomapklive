.class public Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field final synthetic b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;


# direct methods
.method private constructor <init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-static {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->f(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lt/n;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    new-instance v2, Lt/k;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v0}, Lt/k;-><init>(I)V

    invoke-static {v1, v2}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->g(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lt/n;)Lt/n;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    new-instance v1, Lt/b;

    invoke-direct {v1}, Lt/b;-><init>()V

    invoke-static {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->g(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lt/n;)Lt/n;

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-static {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->h(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    new-instance v1, Lu/b0;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {v1, v2}, Lu/b0;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lu/e;

    iget-object v2, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-direct {v1, v2}, Lu/e;-><init>(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)V

    :goto_1
    invoke-static {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->k(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lu/m;)Lu/m;

    .line 6
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-static {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->j(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lu/m;

    move-result-object v1

    invoke-interface {v1}, Lu/m;->m()Lu/g;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->m(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lu/g;)Lu/g;

    .line 7
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-static {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->j(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lu/m;

    move-result-object v1

    invoke-interface {v1}, Lu/m;->a()Lr/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->o(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lr/a;)Lr/a;

    .line 8
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-static {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->j(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lu/m;

    move-result-object v1

    invoke-interface {v1}, Lu/m;->j()Lcom/beloo/widget/chipslayoutmanager/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->b(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/f;)Lcom/beloo/widget/chipslayoutmanager/f;

    .line 9
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-static {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->n(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lr/a;

    move-result-object v1

    invoke-interface {v1}, Lr/a;->a()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->c(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 10
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    new-instance v1, Lcom/beloo/widget/chipslayoutmanager/b;

    invoke-static {v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->l(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lu/g;

    move-result-object v2

    iget-object v3, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-static {v3}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->e(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lcom/beloo/widget/chipslayoutmanager/a;

    move-result-object v3

    iget-object v4, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-static {v4}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->j(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;)Lu/m;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/beloo/widget/chipslayoutmanager/b;-><init>(Lu/g;Lcom/beloo/widget/chipslayoutmanager/a;Lu/m;)V

    invoke-static {v0, v1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->d(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;Lcom/beloo/widget/chipslayoutmanager/e;)Lcom/beloo/widget/chipslayoutmanager/e;

    .line 11
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    return-object v0
.end method

.method public b(I)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;
    .locals 1
    .param p1    # I
        .annotation build Lcom/beloo/widget/chipslayoutmanager/Orientation;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$b;->b:Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    invoke-static {v0, p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->i(Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;I)I

    return-object p0
.end method
