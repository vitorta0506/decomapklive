.class public Lik/j2;
.super Lfk/i$b;
.source "SourceFile"


# direct methods
.method constructor <init>(Lfk/e;Lfk/f;Lfk/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lfk/i$b;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    return-void
.end method

.method constructor <init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lfk/i$b;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-void
.end method


# virtual methods
.method public E()Lfk/i;
    .locals 9

    invoke-virtual {p0}, Lfk/i;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lfk/i;->i()Lfk/e;

    move-result-object v0

    iget-object v1, p0, Lfk/i;->b:Lfk/f;

    invoke-virtual {v1}, Lfk/f;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lfk/e;->r()Lfk/i;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, p0, Lfk/i;->c:Lfk/f;

    iget-object v3, p0, Lfk/i;->d:[Lfk/f;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lfk/f;->h()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v6, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v6

    :goto_0
    if-eqz v5, :cond_3

    move-object v7, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lfk/f;->o()Lfk/f;

    move-result-object v7

    :goto_1
    invoke-virtual {v2}, Lfk/f;->o()Lfk/f;

    move-result-object v2

    invoke-virtual {v2, v6}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v2

    invoke-virtual {v2, v7}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v2

    invoke-virtual {v2}, Lfk/f;->i()Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v1, Lik/j2;

    invoke-virtual {v0}, Lfk/e;->m()Lfk/f;

    move-result-object v3

    invoke-virtual {v3}, Lfk/f;->n()Lfk/f;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lik/j2;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    return-object v1

    :cond_4
    invoke-virtual {v2}, Lfk/f;->o()Lfk/f;

    move-result-object v8

    if-eqz v5, :cond_5

    move-object v7, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v7}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v7

    :goto_2
    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v3}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v1

    :goto_3
    invoke-virtual {v1, v2, v6}, Lfk/f;->p(Lfk/f;Lfk/f;)Lfk/f;

    move-result-object v1

    invoke-virtual {v1, v8}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v1

    invoke-virtual {v1, v7}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v1

    new-instance v2, Lik/j2;

    const/4 v3, 0x1

    new-array v3, v3, [Lfk/f;

    aput-object v7, v3, v4

    invoke-direct {v2, v0, v8, v1, v3}, Lik/j2;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-object v2
.end method

.method public F(Lfk/i;)Lfk/i;
    .locals 9

    invoke-virtual {p0}, Lfk/i;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lfk/i;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lik/j2;->E()Lfk/i;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lfk/i;->i()Lfk/e;

    move-result-object v0

    iget-object v1, p0, Lfk/i;->b:Lfk/f;

    invoke-virtual {v1}, Lfk/f;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lfk/i;->n()Lfk/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lfk/i;->r(I)Lfk/f;

    move-result-object v4

    invoke-virtual {v2}, Lfk/f;->i()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lfk/f;->h()Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lfk/i;->c:Lfk/f;

    iget-object v5, p0, Lfk/i;->d:[Lfk/f;

    aget-object v5, v5, v3

    invoke-virtual {p1}, Lfk/i;->o()Lfk/f;

    move-result-object v6

    invoke-virtual {v1}, Lfk/f;->o()Lfk/f;

    move-result-object v1

    invoke-virtual {v4}, Lfk/f;->o()Lfk/f;

    move-result-object v7

    invoke-virtual {v5}, Lfk/f;->o()Lfk/f;

    move-result-object v8

    invoke-virtual {v4, v5}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v4

    invoke-virtual {v8, v7}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v5

    invoke-virtual {v5, v4}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v4

    invoke-virtual {v6, v8}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v5

    invoke-virtual {v5, v7}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v5

    invoke-virtual {v5, v4, v1, v8}, Lfk/f;->l(Lfk/f;Lfk/f;Lfk/f;)Lfk/f;

    move-result-object v1

    invoke-virtual {v2, v8}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v2

    invoke-virtual {v2, v4}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v5

    invoke-virtual {v5}, Lfk/f;->o()Lfk/f;

    move-result-object v5

    invoke-virtual {v5}, Lfk/f;->i()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Lfk/f;->i()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lfk/i;->E()Lfk/i;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {v0}, Lfk/e;->r()Lfk/i;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v1}, Lfk/f;->i()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lik/j2;

    invoke-virtual {v0}, Lfk/e;->m()Lfk/f;

    move-result-object v2

    invoke-virtual {v2}, Lfk/f;->n()Lfk/f;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lik/j2;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    return-object p1

    :cond_6
    invoke-virtual {v1}, Lfk/f;->o()Lfk/f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object p1

    invoke-virtual {v1, v5}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v2

    invoke-virtual {v2, v8}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v2

    invoke-virtual {v1, v5}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v1

    invoke-virtual {v1}, Lfk/f;->o()Lfk/f;

    move-result-object v1

    invoke-virtual {v6}, Lfk/f;->b()Lfk/f;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v2}, Lfk/f;->l(Lfk/f;Lfk/f;Lfk/f;)Lfk/f;

    move-result-object v1

    new-instance v4, Lik/j2;

    const/4 v5, 0x1

    new-array v5, v5, [Lfk/f;

    aput-object v2, v5, v3

    invoke-direct {v4, v0, p1, v1, v5}, Lik/j2;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-object v4

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lik/j2;->E()Lfk/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfk/i;->a(Lfk/i;)Lfk/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Lfk/i;)Lfk/i;
    .locals 13

    invoke-virtual {p0}, Lfk/i;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lfk/i;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lfk/i;->i()Lfk/e;

    move-result-object v0

    iget-object v1, p0, Lfk/i;->b:Lfk/f;

    invoke-virtual {p1}, Lfk/i;->n()Lfk/f;

    move-result-object v2

    invoke-virtual {v1}, Lfk/f;->i()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lfk/f;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lfk/e;->r()Lfk/i;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1, p0}, Lfk/i;->a(Lfk/i;)Lfk/i;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v3, p0, Lfk/i;->c:Lfk/f;

    iget-object v4, p0, Lfk/i;->d:[Lfk/f;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p1}, Lfk/i;->o()Lfk/f;

    move-result-object v6

    invoke-virtual {p1, v5}, Lfk/i;->r(I)Lfk/f;

    move-result-object p1

    invoke-virtual {v4}, Lfk/f;->h()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v2, v4}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v8

    invoke-virtual {v6, v4}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v9

    goto :goto_0

    :cond_4
    move-object v8, v2

    move-object v9, v6

    :goto_0
    invoke-virtual {p1}, Lfk/f;->h()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v1, p1}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v1

    invoke-virtual {v3, p1}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v11

    goto :goto_1

    :cond_5
    move-object v11, v3

    :goto_1
    invoke-virtual {v11, v9}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v9

    invoke-virtual {v1, v8}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v11

    invoke-virtual {v11}, Lfk/f;->i()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {v9}, Lfk/f;->i()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lik/j2;->E()Lfk/i;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {v0}, Lfk/e;->r()Lfk/i;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {v2}, Lfk/f;->i()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lfk/i;->y()Lfk/i;

    move-result-object p1

    invoke-virtual {p1}, Lfk/i;->p()Lfk/f;

    move-result-object v1

    invoke-virtual {p1}, Lfk/i;->q()Lfk/f;

    move-result-object p1

    invoke-virtual {p1, v6}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lfk/f;->d(Lfk/f;)Lfk/f;

    move-result-object v2

    invoke-virtual {v2}, Lfk/f;->o()Lfk/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v3

    invoke-virtual {v3}, Lfk/f;->b()Lfk/f;

    move-result-object v3

    invoke-virtual {v3}, Lfk/f;->i()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance p1, Lik/j2;

    invoke-virtual {v0}, Lfk/e;->m()Lfk/f;

    move-result-object v1

    invoke-virtual {v1}, Lfk/f;->n()Lfk/f;

    move-result-object v1

    invoke-direct {p1, v0, v3, v1}, Lik/j2;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    return-object p1

    :cond_8
    invoke-virtual {v1, v3}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v1

    invoke-virtual {v2, v1}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v1

    invoke-virtual {v1, v3}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object p1

    invoke-virtual {p1, v3}, Lfk/f;->d(Lfk/f;)Lfk/f;

    move-result-object p1

    invoke-virtual {p1, v3}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object p1

    sget-object v1, Lfk/d;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lfk/e;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object v1

    goto :goto_3

    :cond_9
    invoke-virtual {v11}, Lfk/f;->o()Lfk/f;

    move-result-object v2

    invoke-virtual {v9, v1}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v1

    invoke-virtual {v9, v8}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v6

    invoke-virtual {v1, v6}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v1

    invoke-virtual {v1}, Lfk/f;->i()Z

    move-result v8

    if-eqz v8, :cond_a

    new-instance p1, Lik/j2;

    invoke-virtual {v0}, Lfk/e;->m()Lfk/f;

    move-result-object v2

    invoke-virtual {v2}, Lfk/f;->n()Lfk/f;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lik/j2;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    return-object p1

    :cond_a
    invoke-virtual {v9, v2}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v8

    if-nez v10, :cond_b

    invoke-virtual {v8, p1}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object p1

    goto :goto_2

    :cond_b
    move-object p1, v8

    :goto_2
    invoke-virtual {v6, v2}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v2

    invoke-virtual {v3, v4}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lfk/f;->p(Lfk/f;Lfk/f;)Lfk/f;

    move-result-object v2

    if-nez v7, :cond_c

    invoke-virtual {p1, v4}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object p1

    :cond_c
    move-object v3, v1

    move-object v1, p1

    move-object p1, v2

    :goto_3
    new-instance v2, Lik/j2;

    const/4 v4, 0x1

    new-array v4, v4, [Lfk/f;

    aput-object v1, v4, v5

    invoke-direct {v2, v0, v3, p1, v4}, Lik/j2;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-object v2
.end method

.method protected d()Lfk/i;
    .locals 4

    new-instance v0, Lik/j2;

    invoke-virtual {p0}, Lfk/i;->f()Lfk/f;

    move-result-object v1

    invoke-virtual {p0}, Lfk/i;->g()Lfk/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lik/j2;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    return-object v0
.end method

.method protected h()Z
    .locals 3

    invoke-virtual {p0}, Lfk/i;->n()Lfk/f;

    move-result-object v0

    invoke-virtual {v0}, Lfk/f;->i()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lfk/i;->o()Lfk/f;

    move-result-object v1

    invoke-virtual {v1}, Lfk/f;->s()Z

    move-result v1

    invoke-virtual {v0}, Lfk/f;->s()Z

    move-result v0

    if-eq v1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public q()Lfk/f;
    .locals 3

    iget-object v0, p0, Lfk/i;->b:Lfk/f;

    iget-object v1, p0, Lfk/i;->c:Lfk/f;

    invoke-virtual {p0}, Lfk/i;->t()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lfk/f;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v0

    iget-object v1, p0, Lfk/i;->d:[Lfk/f;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lfk/f;->h()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Lfk/f;->d(Lfk/f;)Lfk/f;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public x()Lfk/i;
    .locals 7

    invoke-virtual {p0}, Lfk/i;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lfk/i;->b:Lfk/f;

    invoke-virtual {v0}, Lfk/f;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    iget-object v1, p0, Lfk/i;->c:Lfk/f;

    iget-object v2, p0, Lfk/i;->d:[Lfk/f;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    new-instance v4, Lik/j2;

    iget-object v5, p0, Lfk/i;->a:Lfk/e;

    invoke-virtual {v1, v2}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v1

    const/4 v6, 0x1

    new-array v6, v6, [Lfk/f;

    aput-object v2, v6, v3

    invoke-direct {v4, v5, v0, v1, v6}, Lik/j2;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-object v4
.end method
