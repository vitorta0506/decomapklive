.class public Lld/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lmd/b;

.field private b:Lmd/c;

.field private c:Lmd/g;

.field private d:Lmd/k;

.field private e:Lmd/h;

.field private f:Lmd/e;

.field private g:Lmd/j;

.field private h:Lmd/d;

.field private i:Lmd/i;

.field private j:Lmd/f;

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Lkd/a;)V
    .locals 2
    .param p1    # Lkd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 3
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    new-instance v1, Lmd/b;

    invoke-direct {v1, v0, p1}, Lmd/b;-><init>(Landroid/graphics/Paint;Lkd/a;)V

    iput-object v1, p0, Lld/a;->a:Lmd/b;

    .line 6
    new-instance v1, Lmd/c;

    invoke-direct {v1, v0, p1}, Lmd/c;-><init>(Landroid/graphics/Paint;Lkd/a;)V

    iput-object v1, p0, Lld/a;->b:Lmd/c;

    .line 7
    new-instance v1, Lmd/g;

    invoke-direct {v1, v0, p1}, Lmd/g;-><init>(Landroid/graphics/Paint;Lkd/a;)V

    iput-object v1, p0, Lld/a;->c:Lmd/g;

    .line 8
    new-instance v1, Lmd/k;

    invoke-direct {v1, v0, p1}, Lmd/k;-><init>(Landroid/graphics/Paint;Lkd/a;)V

    iput-object v1, p0, Lld/a;->d:Lmd/k;

    .line 9
    new-instance v1, Lmd/h;

    invoke-direct {v1, v0, p1}, Lmd/h;-><init>(Landroid/graphics/Paint;Lkd/a;)V

    iput-object v1, p0, Lld/a;->e:Lmd/h;

    .line 10
    new-instance v1, Lmd/e;

    invoke-direct {v1, v0, p1}, Lmd/e;-><init>(Landroid/graphics/Paint;Lkd/a;)V

    iput-object v1, p0, Lld/a;->f:Lmd/e;

    .line 11
    new-instance v1, Lmd/j;

    invoke-direct {v1, v0, p1}, Lmd/j;-><init>(Landroid/graphics/Paint;Lkd/a;)V

    iput-object v1, p0, Lld/a;->g:Lmd/j;

    .line 12
    new-instance v1, Lmd/d;

    invoke-direct {v1, v0, p1}, Lmd/d;-><init>(Landroid/graphics/Paint;Lkd/a;)V

    iput-object v1, p0, Lld/a;->h:Lmd/d;

    .line 13
    new-instance v1, Lmd/i;

    invoke-direct {v1, v0, p1}, Lmd/i;-><init>(Landroid/graphics/Paint;Lkd/a;)V

    iput-object v1, p0, Lld/a;->i:Lmd/i;

    .line 14
    new-instance v1, Lmd/f;

    invoke-direct {v1, v0, p1}, Lmd/f;-><init>(Landroid/graphics/Paint;Lkd/a;)V

    iput-object v1, p0, Lld/a;->j:Lmd/f;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Z)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lld/a;->b:Lmd/c;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lld/a;->a:Lmd/b;

    iget v3, p0, Lld/a;->k:I

    iget v5, p0, Lld/a;->l:I

    iget v6, p0, Lld/a;->m:I

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lmd/b;->a(Landroid/graphics/Canvas;IZII)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Canvas;Lfd/a;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lld/a;->b:Lmd/c;

    if-eqz v0, :cond_0

    .line 2
    iget v3, p0, Lld/a;->k:I

    iget v4, p0, Lld/a;->l:I

    iget v5, p0, Lld/a;->m:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmd/c;->a(Landroid/graphics/Canvas;Lfd/a;III)V

    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/Canvas;Lfd/a;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lld/a;->h:Lmd/d;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lld/a;->l:I

    iget v2, p0, Lld/a;->m:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lmd/d;->a(Landroid/graphics/Canvas;Lfd/a;II)V

    :cond_0
    return-void
.end method

.method public d(Landroid/graphics/Canvas;Lfd/a;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lld/a;->f:Lmd/e;

    if-eqz v0, :cond_0

    .line 2
    iget v3, p0, Lld/a;->k:I

    iget v4, p0, Lld/a;->l:I

    iget v5, p0, Lld/a;->m:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmd/e;->a(Landroid/graphics/Canvas;Lfd/a;III)V

    :cond_0
    return-void
.end method

.method public e(Landroid/graphics/Canvas;Lfd/a;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lld/a;->c:Lmd/g;

    if-eqz v0, :cond_0

    .line 2
    iget v3, p0, Lld/a;->k:I

    iget v4, p0, Lld/a;->l:I

    iget v5, p0, Lld/a;->m:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmd/g;->a(Landroid/graphics/Canvas;Lfd/a;III)V

    :cond_0
    return-void
.end method

.method public f(Landroid/graphics/Canvas;Lfd/a;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lld/a;->j:Lmd/f;

    if-eqz v0, :cond_0

    .line 2
    iget v3, p0, Lld/a;->k:I

    iget v4, p0, Lld/a;->l:I

    iget v5, p0, Lld/a;->m:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmd/f;->a(Landroid/graphics/Canvas;Lfd/a;III)V

    :cond_0
    return-void
.end method

.method public g(Landroid/graphics/Canvas;Lfd/a;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lld/a;->e:Lmd/h;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lld/a;->l:I

    iget v2, p0, Lld/a;->m:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lmd/h;->a(Landroid/graphics/Canvas;Lfd/a;II)V

    :cond_0
    return-void
.end method

.method public h(Landroid/graphics/Canvas;Lfd/a;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lld/a;->i:Lmd/i;

    if-eqz v0, :cond_0

    .line 2
    iget v3, p0, Lld/a;->k:I

    iget v4, p0, Lld/a;->l:I

    iget v5, p0, Lld/a;->m:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmd/i;->a(Landroid/graphics/Canvas;Lfd/a;III)V

    :cond_0
    return-void
.end method

.method public i(Landroid/graphics/Canvas;Lfd/a;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lld/a;->g:Lmd/j;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lld/a;->l:I

    iget v2, p0, Lld/a;->m:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lmd/j;->a(Landroid/graphics/Canvas;Lfd/a;II)V

    :cond_0
    return-void
.end method

.method public j(Landroid/graphics/Canvas;Lfd/a;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lld/a;->d:Lmd/k;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lld/a;->l:I

    iget v2, p0, Lld/a;->m:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lmd/k;->a(Landroid/graphics/Canvas;Lfd/a;II)V

    :cond_0
    return-void
.end method

.method public k(III)V
    .locals 0

    .line 1
    iput p1, p0, Lld/a;->k:I

    .line 2
    iput p2, p0, Lld/a;->l:I

    .line 3
    iput p3, p0, Lld/a;->m:I

    return-void
.end method
