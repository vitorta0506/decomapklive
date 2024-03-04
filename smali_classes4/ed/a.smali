.class public Led/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Led/b;

.field private b:Led/b$a;

.field private c:Lhd/a;

.field private d:Lkd/a;

.field private e:F

.field private f:Z


# direct methods
.method public constructor <init>(Lkd/a;Led/b$a;)V
    .locals 1
    .param p1    # Lkd/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Led/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Led/b;

    invoke-direct {v0, p2}, Led/b;-><init>(Led/b$a;)V

    iput-object v0, p0, Led/a;->a:Led/b;

    .line 3
    iput-object p2, p0, Led/a;->b:Led/b$a;

    .line 4
    iput-object p1, p0, Led/a;->d:Lkd/a;

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->b()Lcom/rd/animation/type/AnimationType;

    move-result-object v0

    .line 2
    sget-object v1, Led/a$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-direct {p0}, Led/a;->i()V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-direct {p0}, Led/a;->k()V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-direct {p0}, Led/a;->d()V

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-direct {p0}, Led/a;->l()V

    goto :goto_0

    .line 7
    :pswitch_4
    invoke-direct {p0}, Led/a;->j()V

    goto :goto_0

    .line 8
    :pswitch_5
    invoke-direct {p0}, Led/a;->f()V

    goto :goto_0

    .line 9
    :pswitch_6
    invoke-direct {p0}, Led/a;->m()V

    goto :goto_0

    .line 10
    :pswitch_7
    invoke-direct {p0}, Led/a;->h()V

    goto :goto_0

    .line 11
    :pswitch_8
    invoke-direct {p0}, Led/a;->c()V

    goto :goto_0

    .line 12
    :pswitch_9
    iget-object v0, p0, Led/a;->b:Led/b$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Led/b$a;->a(Lfd/a;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c()V
    .locals 5

    .line 1
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->p()I

    move-result v0

    .line 2
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->t()I

    move-result v1

    .line 3
    iget-object v2, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v2}, Lkd/a;->a()J

    move-result-wide v2

    .line 4
    iget-object v4, p0, Led/a;->a:Led/b;

    .line 5
    invoke-virtual {v4}, Led/b;->a()Lhd/b;

    move-result-object v4

    .line 6
    invoke-virtual {v4, v1, v0}, Lhd/b;->l(II)Lhd/b;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v2, v3}, Lhd/a;->b(J)Lhd/a;

    move-result-object v0

    .line 8
    iget-boolean v1, p0, Led/a;->f:Z

    if-eqz v1, :cond_0

    .line 9
    iget v1, p0, Led/a;->e:F

    invoke-virtual {v0, v1}, Lhd/a;->d(F)Lhd/a;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lhd/a;->e()V

    .line 11
    :goto_0
    iput-object v0, p0, Led/a;->c:Lhd/a;

    return-void
.end method

.method private d()V
    .locals 9

    .line 1
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->q()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->f()I

    move-result v0

    .line 2
    :goto_0
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->r()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->q()I

    move-result v1

    .line 3
    :goto_1
    iget-object v2, p0, Led/a;->d:Lkd/a;

    invoke-static {v2, v0}, Lnd/a;->a(Lkd/a;I)I

    move-result v4

    .line 4
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-static {v0, v1}, Lnd/a;->a(Lkd/a;I)I

    move-result v5

    .line 5
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->l()I

    move-result v0

    .line 6
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->j()I

    move-result v1

    .line 7
    iget-object v2, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v2}, Lkd/a;->g()Lcom/rd/draw/data/Orientation;

    move-result-object v2

    sget-object v3, Lcom/rd/draw/data/Orientation;->HORIZONTAL:Lcom/rd/draw/data/Orientation;

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 8
    :goto_2
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->m()I

    move-result v8

    mul-int/lit8 v1, v8, 0x3

    add-int v6, v1, v0

    add-int v7, v8, v0

    .line 9
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->a()J

    move-result-wide v0

    .line 10
    iget-object v2, p0, Led/a;->a:Led/b;

    .line 11
    invoke-virtual {v2}, Led/b;->b()Lhd/c;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v0, v1}, Lhd/c;->i(J)Lhd/c;

    move-result-object v3

    .line 13
    invoke-virtual/range {v3 .. v8}, Lhd/c;->m(IIIII)Lhd/c;

    move-result-object v0

    .line 14
    iget-boolean v1, p0, Led/a;->f:Z

    if-eqz v1, :cond_3

    .line 15
    iget v1, p0, Led/a;->e:F

    invoke-virtual {v0, v1}, Lhd/a;->d(F)Lhd/a;

    goto :goto_3

    .line 16
    :cond_3
    invoke-virtual {v0}, Lhd/a;->e()V

    .line 17
    :goto_3
    iput-object v0, p0, Led/a;->c:Lhd/a;

    return-void
.end method

.method private f()V
    .locals 7

    .line 1
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->p()I

    move-result v0

    .line 2
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->t()I

    move-result v1

    .line 3
    iget-object v2, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v2}, Lkd/a;->m()I

    move-result v2

    .line 4
    iget-object v3, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v3}, Lkd/a;->s()I

    move-result v3

    .line 5
    iget-object v4, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v4}, Lkd/a;->a()J

    move-result-wide v4

    .line 6
    iget-object v6, p0, Led/a;->a:Led/b;

    .line 7
    invoke-virtual {v6}, Led/b;->c()Lhd/d;

    move-result-object v6

    .line 8
    invoke-virtual {v6, v1, v0, v2, v3}, Lhd/d;->q(IIII)Lhd/d;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v4, v5}, Lhd/a;->b(J)Lhd/a;

    move-result-object v0

    .line 10
    iget-boolean v1, p0, Led/a;->f:Z

    if-eqz v1, :cond_0

    .line 11
    iget v1, p0, Led/a;->e:F

    invoke-virtual {v0, v1}, Lhd/a;->d(F)Lhd/a;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lhd/a;->e()V

    .line 13
    :goto_0
    iput-object v0, p0, Led/a;->c:Lhd/a;

    return-void
.end method

.method private h()V
    .locals 7

    .line 1
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->p()I

    move-result v0

    .line 2
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->t()I

    move-result v1

    .line 3
    iget-object v2, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v2}, Lkd/a;->m()I

    move-result v2

    .line 4
    iget-object v3, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v3}, Lkd/a;->o()F

    move-result v3

    .line 5
    iget-object v4, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v4}, Lkd/a;->a()J

    move-result-wide v4

    .line 6
    iget-object v6, p0, Led/a;->a:Led/b;

    .line 7
    invoke-virtual {v6}, Led/b;->d()Lhd/e;

    move-result-object v6

    .line 8
    invoke-virtual {v6, v1, v0, v2, v3}, Lhd/e;->p(IIIF)Lhd/e;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v4, v5}, Lhd/a;->b(J)Lhd/a;

    move-result-object v0

    .line 10
    iget-boolean v1, p0, Led/a;->f:Z

    if-eqz v1, :cond_0

    .line 11
    iget v1, p0, Led/a;->e:F

    invoke-virtual {v0, v1}, Lhd/a;->d(F)Lhd/a;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lhd/a;->e()V

    .line 13
    :goto_0
    iput-object v0, p0, Led/a;->c:Lhd/a;

    return-void
.end method

.method private i()V
    .locals 7

    .line 1
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->p()I

    move-result v0

    .line 2
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->t()I

    move-result v1

    .line 3
    iget-object v2, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v2}, Lkd/a;->m()I

    move-result v2

    .line 4
    iget-object v3, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v3}, Lkd/a;->o()F

    move-result v3

    .line 5
    iget-object v4, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v4}, Lkd/a;->a()J

    move-result-wide v4

    .line 6
    iget-object v6, p0, Led/a;->a:Led/b;

    .line 7
    invoke-virtual {v6}, Led/b;->e()Lhd/f;

    move-result-object v6

    .line 8
    invoke-virtual {v6, v1, v0, v2, v3}, Lhd/e;->p(IIIF)Lhd/e;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v4, v5}, Lhd/a;->b(J)Lhd/a;

    move-result-object v0

    .line 10
    iget-boolean v1, p0, Led/a;->f:Z

    if-eqz v1, :cond_0

    .line 11
    iget v1, p0, Led/a;->e:F

    invoke-virtual {v0, v1}, Lhd/a;->d(F)Lhd/a;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lhd/a;->e()V

    .line 13
    :goto_0
    iput-object v0, p0, Led/a;->c:Lhd/a;

    return-void
.end method

.method private j()V
    .locals 5

    .line 1
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->q()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->f()I

    move-result v0

    .line 2
    :goto_0
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->r()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->q()I

    move-result v1

    .line 3
    :goto_1
    iget-object v2, p0, Led/a;->d:Lkd/a;

    invoke-static {v2, v0}, Lnd/a;->a(Lkd/a;I)I

    move-result v0

    .line 4
    iget-object v2, p0, Led/a;->d:Lkd/a;

    invoke-static {v2, v1}, Lnd/a;->a(Lkd/a;I)I

    move-result v1

    .line 5
    iget-object v2, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v2}, Lkd/a;->a()J

    move-result-wide v2

    .line 6
    iget-object v4, p0, Led/a;->a:Led/b;

    .line 7
    invoke-virtual {v4}, Led/b;->f()Lhd/g;

    move-result-object v4

    .line 8
    invoke-virtual {v4, v0, v1}, Lhd/g;->l(II)Lhd/g;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v2, v3}, Lhd/a;->b(J)Lhd/a;

    move-result-object v0

    .line 10
    iget-boolean v1, p0, Led/a;->f:Z

    if-eqz v1, :cond_2

    .line 11
    iget v1, p0, Led/a;->e:F

    invoke-virtual {v0, v1}, Lhd/a;->d(F)Lhd/a;

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v0}, Lhd/a;->e()V

    .line 13
    :goto_2
    iput-object v0, p0, Led/a;->c:Lhd/a;

    return-void
.end method

.method private k()V
    .locals 5

    .line 1
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->q()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->f()I

    move-result v0

    .line 2
    :goto_0
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->r()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->q()I

    move-result v1

    .line 3
    :goto_1
    iget-object v2, p0, Led/a;->d:Lkd/a;

    invoke-static {v2, v0}, Lnd/a;->a(Lkd/a;I)I

    move-result v0

    .line 4
    iget-object v2, p0, Led/a;->d:Lkd/a;

    invoke-static {v2, v1}, Lnd/a;->a(Lkd/a;I)I

    move-result v1

    .line 5
    iget-object v2, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v2}, Lkd/a;->a()J

    move-result-wide v2

    .line 6
    iget-object v4, p0, Led/a;->a:Led/b;

    .line 7
    invoke-virtual {v4}, Led/b;->g()Lhd/h;

    move-result-object v4

    .line 8
    invoke-virtual {v4, v0, v1}, Lhd/h;->l(II)Lhd/h;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v2, v3}, Lhd/a;->b(J)Lhd/a;

    move-result-object v0

    .line 10
    iget-boolean v1, p0, Led/a;->f:Z

    if-eqz v1, :cond_2

    .line 11
    iget v1, p0, Led/a;->e:F

    invoke-virtual {v0, v1}, Lhd/a;->d(F)Lhd/a;

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v0}, Lhd/a;->e()V

    .line 13
    :goto_2
    iput-object v0, p0, Led/a;->c:Lhd/a;

    return-void
.end method

.method private l()V
    .locals 7

    .line 1
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->q()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->f()I

    move-result v0

    .line 2
    :goto_0
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->r()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->q()I

    move-result v1

    .line 3
    :goto_1
    iget-object v2, p0, Led/a;->d:Lkd/a;

    invoke-static {v2, v0}, Lnd/a;->a(Lkd/a;I)I

    move-result v2

    .line 4
    iget-object v3, p0, Led/a;->d:Lkd/a;

    invoke-static {v3, v1}, Lnd/a;->a(Lkd/a;I)I

    move-result v3

    if-le v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_2
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->m()I

    move-result v1

    .line 6
    iget-object v4, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v4}, Lkd/a;->a()J

    move-result-wide v4

    .line 7
    iget-object v6, p0, Led/a;->a:Led/b;

    .line 8
    invoke-virtual {v6}, Led/b;->h()Lhd/i;

    move-result-object v6

    .line 9
    invoke-virtual {v6, v2, v3, v1, v0}, Lhd/i;->n(IIIZ)Lhd/j;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v4, v5}, Lhd/j;->j(J)Lhd/j;

    move-result-object v0

    .line 11
    iget-boolean v1, p0, Led/a;->f:Z

    if-eqz v1, :cond_3

    .line 12
    iget v1, p0, Led/a;->e:F

    invoke-virtual {v0, v1}, Lhd/a;->d(F)Lhd/a;

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {v0}, Lhd/a;->e()V

    .line 14
    :goto_3
    iput-object v0, p0, Led/a;->c:Lhd/a;

    return-void
.end method

.method private m()V
    .locals 7

    .line 1
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->q()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v0}, Lkd/a;->f()I

    move-result v0

    .line 2
    :goto_0
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->r()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->q()I

    move-result v1

    .line 3
    :goto_1
    iget-object v2, p0, Led/a;->d:Lkd/a;

    invoke-static {v2, v0}, Lnd/a;->a(Lkd/a;I)I

    move-result v2

    .line 4
    iget-object v3, p0, Led/a;->d:Lkd/a;

    invoke-static {v3, v1}, Lnd/a;->a(Lkd/a;I)I

    move-result v3

    if-le v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 5
    :goto_2
    iget-object v1, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v1}, Lkd/a;->m()I

    move-result v1

    .line 6
    iget-object v4, p0, Led/a;->d:Lkd/a;

    invoke-virtual {v4}, Lkd/a;->a()J

    move-result-wide v4

    .line 7
    iget-object v6, p0, Led/a;->a:Led/b;

    .line 8
    invoke-virtual {v6}, Led/b;->i()Lhd/j;

    move-result-object v6

    .line 9
    invoke-virtual {v6, v2, v3, v1, v0}, Lhd/j;->n(IIIZ)Lhd/j;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v4, v5}, Lhd/j;->j(J)Lhd/j;

    move-result-object v0

    .line 11
    iget-boolean v1, p0, Led/a;->f:Z

    if-eqz v1, :cond_3

    .line 12
    iget v1, p0, Led/a;->e:F

    invoke-virtual {v0, v1}, Lhd/a;->d(F)Lhd/a;

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {v0}, Lhd/a;->e()V

    .line 14
    :goto_3
    iput-object v0, p0, Led/a;->c:Lhd/a;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Led/a;->f:Z

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Led/a;->e:F

    .line 3
    invoke-direct {p0}, Led/a;->a()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Led/a;->c:Lhd/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lhd/a;->c()V

    :cond_0
    return-void
.end method

.method public g(F)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Led/a;->f:Z

    .line 2
    iput p1, p0, Led/a;->e:F

    .line 3
    invoke-direct {p0}, Led/a;->a()V

    return-void
.end method
