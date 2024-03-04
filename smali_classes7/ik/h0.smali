.class public Lik/h0;
.super Lfk/i$c;
.source "SourceFile"


# direct methods
.method constructor <init>(Lfk/e;Lfk/f;Lfk/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lfk/i$c;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    return-void
.end method

.method constructor <init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lfk/i$c;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-void
.end method


# virtual methods
.method public E()Lfk/i;
    .locals 11

    invoke-virtual {p0}, Lfk/i;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lfk/i;->i()Lfk/e;

    move-result-object v0

    iget-object v1, p0, Lfk/i;->c:Lfk/f;

    check-cast v1, Lik/g0;

    invoke-virtual {v1}, Lik/g0;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lfk/e;->r()Lfk/i;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, p0, Lfk/i;->b:Lfk/f;

    check-cast v2, Lik/g0;

    iget-object v3, p0, Lfk/i;->d:[Lfk/f;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lik/g0;

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v5

    iget-object v6, v1, Lik/g0;->g:[I

    invoke-static {v6, v5}, Lik/f0;->m([I[I)V

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v6

    invoke-static {v5, v6}, Lik/f0;->m([I[I)V

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v7

    iget-object v8, v2, Lik/g0;->g:[I

    invoke-static {v8, v7}, Lik/f0;->m([I[I)V

    invoke-static {v7, v7, v7}, Lnk/h;->b([I[I[I)I

    move-result v8

    invoke-static {v8, v7}, Lik/f0;->l(I[I)V

    iget-object v2, v2, Lik/g0;->g:[I

    invoke-static {v5, v2, v5}, Lik/f0;->f([I[I[I)V

    const/4 v2, 0x2

    const/16 v8, 0x8

    invoke-static {v8, v5, v2, v4}, Lnk/n;->L(I[III)I

    move-result v2

    invoke-static {v2, v5}, Lik/f0;->l(I[I)V

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v2

    const/4 v9, 0x3

    invoke-static {v8, v6, v9, v4, v2}, Lnk/n;->M(I[III[I)I

    move-result v8

    invoke-static {v8, v2}, Lik/f0;->l(I[I)V

    new-instance v8, Lik/g0;

    invoke-direct {v8, v6}, Lik/g0;-><init>([I)V

    iget-object v6, v8, Lik/g0;->g:[I

    invoke-static {v7, v6}, Lik/f0;->m([I[I)V

    iget-object v6, v8, Lik/g0;->g:[I

    invoke-static {v6, v5, v6}, Lik/f0;->o([I[I[I)V

    iget-object v6, v8, Lik/g0;->g:[I

    invoke-static {v6, v5, v6}, Lik/f0;->o([I[I[I)V

    new-instance v6, Lik/g0;

    invoke-direct {v6, v5}, Lik/g0;-><init>([I)V

    iget-object v9, v8, Lik/g0;->g:[I

    iget-object v10, v6, Lik/g0;->g:[I

    invoke-static {v5, v9, v10}, Lik/f0;->o([I[I[I)V

    iget-object v5, v6, Lik/g0;->g:[I

    invoke-static {v5, v7, v5}, Lik/f0;->f([I[I[I)V

    iget-object v5, v6, Lik/g0;->g:[I

    invoke-static {v5, v2, v5}, Lik/f0;->o([I[I[I)V

    new-instance v2, Lik/g0;

    invoke-direct {v2, v7}, Lik/g0;-><init>([I)V

    iget-object v1, v1, Lik/g0;->g:[I

    iget-object v5, v2, Lik/g0;->g:[I

    invoke-static {v1, v5}, Lik/f0;->p([I[I)V

    invoke-virtual {v3}, Lik/g0;->h()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v2, Lik/g0;->g:[I

    iget-object v3, v3, Lik/g0;->g:[I

    invoke-static {v1, v3, v1}, Lik/f0;->f([I[I[I)V

    :cond_2
    new-instance v1, Lik/h0;

    const/4 v3, 0x1

    new-array v3, v3, [Lfk/f;

    aput-object v2, v3, v4

    invoke-direct {v1, v0, v8, v6, v3}, Lik/h0;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-object v1
.end method

.method public F(Lfk/i;)Lfk/i;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lik/h0;->G()Lfk/i;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lfk/i;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lfk/i;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lik/h0;->E()Lfk/i;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lfk/i;->c:Lfk/f;

    invoke-virtual {v0}, Lfk/f;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lik/h0;->E()Lfk/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lfk/i;->a(Lfk/i;)Lfk/i;

    move-result-object p1

    return-object p1
.end method

.method public G()Lfk/i;
    .locals 1

    invoke-virtual {p0}, Lfk/i;->t()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lfk/i;->c:Lfk/f;

    invoke-virtual {v0}, Lfk/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lik/h0;->E()Lfk/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfk/i;->a(Lfk/i;)Lfk/i;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public a(Lfk/i;)Lfk/i;
    .locals 14

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
    if-ne p0, p1, :cond_2

    invoke-virtual {p0}, Lik/h0;->E()Lfk/i;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lfk/i;->i()Lfk/e;

    move-result-object v0

    iget-object v1, p0, Lfk/i;->b:Lfk/f;

    check-cast v1, Lik/g0;

    iget-object v2, p0, Lfk/i;->c:Lfk/f;

    check-cast v2, Lik/g0;

    invoke-virtual {p1}, Lfk/i;->p()Lfk/f;

    move-result-object v3

    check-cast v3, Lik/g0;

    invoke-virtual {p1}, Lfk/i;->q()Lfk/f;

    move-result-object v4

    check-cast v4, Lik/g0;

    iget-object v5, p0, Lfk/i;->d:[Lfk/f;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lik/g0;

    invoke-virtual {p1, v6}, Lfk/i;->r(I)Lfk/f;

    move-result-object p1

    check-cast p1, Lik/g0;

    invoke-static {}, Lnk/h;->k()[I

    move-result-object v7

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v8

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v9

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v10

    invoke-virtual {v5}, Lik/g0;->h()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v3, v3, Lik/g0;->g:[I

    iget-object v4, v4, Lik/g0;->g:[I

    goto :goto_0

    :cond_3
    iget-object v12, v5, Lik/g0;->g:[I

    invoke-static {v12, v9}, Lik/f0;->m([I[I)V

    iget-object v3, v3, Lik/g0;->g:[I

    invoke-static {v9, v3, v8}, Lik/f0;->f([I[I[I)V

    iget-object v3, v5, Lik/g0;->g:[I

    invoke-static {v9, v3, v9}, Lik/f0;->f([I[I[I)V

    iget-object v3, v4, Lik/g0;->g:[I

    invoke-static {v9, v3, v9}, Lik/f0;->f([I[I[I)V

    move-object v3, v8

    move-object v4, v9

    :goto_0
    invoke-virtual {p1}, Lik/g0;->h()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v1, v1, Lik/g0;->g:[I

    iget-object v2, v2, Lik/g0;->g:[I

    goto :goto_1

    :cond_4
    iget-object v13, p1, Lik/g0;->g:[I

    invoke-static {v13, v10}, Lik/f0;->m([I[I)V

    iget-object v1, v1, Lik/g0;->g:[I

    invoke-static {v10, v1, v7}, Lik/f0;->f([I[I[I)V

    iget-object v1, p1, Lik/g0;->g:[I

    invoke-static {v10, v1, v10}, Lik/f0;->f([I[I[I)V

    iget-object v1, v2, Lik/g0;->g:[I

    invoke-static {v10, v1, v10}, Lik/f0;->f([I[I[I)V

    move-object v1, v7

    move-object v2, v10

    :goto_1
    invoke-static {}, Lnk/h;->i()[I

    move-result-object v13

    invoke-static {v1, v3, v13}, Lik/f0;->o([I[I[I)V

    invoke-static {v2, v4, v8}, Lik/f0;->o([I[I[I)V

    invoke-static {v13}, Lnk/h;->v([I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v8}, Lnk/h;->v([I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lik/h0;->E()Lfk/i;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v0}, Lfk/e;->r()Lfk/i;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-static {v13, v9}, Lik/f0;->m([I[I)V

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v3

    invoke-static {v9, v13, v3}, Lik/f0;->f([I[I[I)V

    invoke-static {v9, v1, v9}, Lik/f0;->f([I[I[I)V

    invoke-static {v3, v3}, Lik/f0;->h([I[I)V

    invoke-static {v2, v3, v7}, Lnk/h;->y([I[I[I)V

    invoke-static {v9, v9, v3}, Lnk/h;->b([I[I[I)I

    move-result v1

    invoke-static {v1, v3}, Lik/f0;->l(I[I)V

    new-instance v1, Lik/g0;

    invoke-direct {v1, v10}, Lik/g0;-><init>([I)V

    iget-object v2, v1, Lik/g0;->g:[I

    invoke-static {v8, v2}, Lik/f0;->m([I[I)V

    iget-object v2, v1, Lik/g0;->g:[I

    invoke-static {v2, v3, v2}, Lik/f0;->o([I[I[I)V

    new-instance v2, Lik/g0;

    invoke-direct {v2, v3}, Lik/g0;-><init>([I)V

    iget-object v3, v1, Lik/g0;->g:[I

    iget-object v4, v2, Lik/g0;->g:[I

    invoke-static {v9, v3, v4}, Lik/f0;->o([I[I[I)V

    iget-object v3, v2, Lik/g0;->g:[I

    invoke-static {v3, v8, v7}, Lik/f0;->g([I[I[I)V

    iget-object v3, v2, Lik/g0;->g:[I

    invoke-static {v7, v3}, Lik/f0;->k([I[I)V

    new-instance v3, Lik/g0;

    invoke-direct {v3, v13}, Lik/g0;-><init>([I)V

    if-nez v11, :cond_7

    iget-object v4, v3, Lik/g0;->g:[I

    iget-object v5, v5, Lik/g0;->g:[I

    invoke-static {v4, v5, v4}, Lik/f0;->f([I[I[I)V

    :cond_7
    if-nez v12, :cond_8

    iget-object v4, v3, Lik/g0;->g:[I

    iget-object p1, p1, Lik/g0;->g:[I

    invoke-static {v4, p1, v4}, Lik/f0;->f([I[I[I)V

    :cond_8
    const/4 p1, 0x1

    new-array p1, p1, [Lfk/f;

    aput-object v3, p1, v6

    new-instance v3, Lik/h0;

    invoke-direct {v3, v0, v1, v2, p1}, Lik/h0;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-object v3
.end method

.method protected d()Lfk/i;
    .locals 4

    new-instance v0, Lik/h0;

    invoke-virtual {p0}, Lfk/i;->f()Lfk/f;

    move-result-object v1

    invoke-virtual {p0}, Lfk/i;->g()Lfk/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lik/h0;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    return-object v0
.end method

.method public x()Lfk/i;
    .locals 5

    invoke-virtual {p0}, Lfk/i;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lik/h0;

    iget-object v1, p0, Lfk/i;->a:Lfk/e;

    iget-object v2, p0, Lfk/i;->b:Lfk/f;

    iget-object v3, p0, Lfk/i;->c:Lfk/f;

    invoke-virtual {v3}, Lfk/f;->m()Lfk/f;

    move-result-object v3

    iget-object v4, p0, Lfk/i;->d:[Lfk/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lik/h0;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-object v0
.end method
