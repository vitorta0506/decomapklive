.class public Lhk/d;
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
    .locals 12

    invoke-virtual {p0}, Lfk/i;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lfk/i;->i()Lfk/e;

    move-result-object v0

    iget-object v1, p0, Lfk/i;->c:Lfk/f;

    check-cast v1, Lhk/c;

    invoke-virtual {v1}, Lhk/c;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lfk/e;->r()Lfk/i;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, p0, Lfk/i;->b:Lfk/f;

    check-cast v2, Lhk/c;

    iget-object v3, p0, Lfk/i;->d:[Lfk/f;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lhk/c;

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v5

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v6

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v7

    iget-object v8, v1, Lhk/c;->g:[I

    invoke-static {v8, v7}, Lhk/b;->n([I[I)V

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v8

    invoke-static {v7, v8}, Lhk/b;->n([I[I)V

    invoke-virtual {v3}, Lhk/c;->h()Z

    move-result v9

    iget-object v10, v3, Lhk/c;->g:[I

    if-nez v9, :cond_2

    invoke-static {v10, v6}, Lhk/b;->n([I[I)V

    move-object v10, v6

    :cond_2
    iget-object v11, v2, Lhk/c;->g:[I

    invoke-static {v11, v10, v5}, Lhk/b;->q([I[I[I)V

    iget-object v11, v2, Lhk/c;->g:[I

    invoke-static {v11, v10, v6}, Lhk/b;->a([I[I[I)V

    invoke-static {v6, v5, v6}, Lhk/b;->g([I[I[I)V

    invoke-static {v6, v6, v6}, Lnk/h;->b([I[I[I)I

    move-result v10

    invoke-static {v10, v6}, Lhk/b;->m(I[I)V

    iget-object v2, v2, Lhk/c;->g:[I

    invoke-static {v7, v2, v7}, Lhk/b;->g([I[I[I)V

    const/4 v2, 0x2

    const/16 v10, 0x8

    invoke-static {v10, v7, v2, v4}, Lnk/n;->L(I[III)I

    move-result v2

    invoke-static {v2, v7}, Lhk/b;->m(I[I)V

    const/4 v2, 0x3

    invoke-static {v10, v8, v2, v4, v5}, Lnk/n;->M(I[III[I)I

    move-result v2

    invoke-static {v2, v5}, Lhk/b;->m(I[I)V

    new-instance v2, Lhk/c;

    invoke-direct {v2, v8}, Lhk/c;-><init>([I)V

    iget-object v8, v2, Lhk/c;->g:[I

    invoke-static {v6, v8}, Lhk/b;->n([I[I)V

    iget-object v8, v2, Lhk/c;->g:[I

    invoke-static {v8, v7, v8}, Lhk/b;->q([I[I[I)V

    iget-object v8, v2, Lhk/c;->g:[I

    invoke-static {v8, v7, v8}, Lhk/b;->q([I[I[I)V

    new-instance v8, Lhk/c;

    invoke-direct {v8, v7}, Lhk/c;-><init>([I)V

    iget-object v10, v2, Lhk/c;->g:[I

    iget-object v11, v8, Lhk/c;->g:[I

    invoke-static {v7, v10, v11}, Lhk/b;->q([I[I[I)V

    iget-object v7, v8, Lhk/c;->g:[I

    invoke-static {v7, v6, v7}, Lhk/b;->g([I[I[I)V

    iget-object v7, v8, Lhk/c;->g:[I

    invoke-static {v7, v5, v7}, Lhk/b;->q([I[I[I)V

    new-instance v5, Lhk/c;

    invoke-direct {v5, v6}, Lhk/c;-><init>([I)V

    iget-object v1, v1, Lhk/c;->g:[I

    iget-object v6, v5, Lhk/c;->g:[I

    invoke-static {v1, v6}, Lhk/b;->r([I[I)V

    if-nez v9, :cond_3

    iget-object v1, v5, Lhk/c;->g:[I

    iget-object v3, v3, Lhk/c;->g:[I

    invoke-static {v1, v3, v1}, Lhk/b;->g([I[I[I)V

    :cond_3
    new-instance v1, Lhk/d;

    const/4 v3, 0x1

    new-array v3, v3, [Lfk/f;

    aput-object v5, v3, v4

    invoke-direct {v1, v0, v2, v8, v3}, Lhk/d;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-object v1
.end method

.method public F(Lfk/i;)Lfk/i;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lhk/d;->G()Lfk/i;

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

    invoke-virtual {p0}, Lhk/d;->E()Lfk/i;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lfk/i;->c:Lfk/f;

    invoke-virtual {v0}, Lfk/f;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lhk/d;->E()Lfk/i;

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
    invoke-virtual {p0}, Lhk/d;->E()Lfk/i;

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

    invoke-virtual {p0}, Lhk/d;->E()Lfk/i;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lfk/i;->i()Lfk/e;

    move-result-object v0

    iget-object v1, p0, Lfk/i;->b:Lfk/f;

    check-cast v1, Lhk/c;

    iget-object v2, p0, Lfk/i;->c:Lfk/f;

    check-cast v2, Lhk/c;

    invoke-virtual {p1}, Lfk/i;->p()Lfk/f;

    move-result-object v3

    check-cast v3, Lhk/c;

    invoke-virtual {p1}, Lfk/i;->q()Lfk/f;

    move-result-object v4

    check-cast v4, Lhk/c;

    iget-object v5, p0, Lfk/i;->d:[Lfk/f;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lhk/c;

    invoke-virtual {p1, v6}, Lfk/i;->r(I)Lfk/f;

    move-result-object p1

    check-cast p1, Lhk/c;

    invoke-static {}, Lnk/h;->k()[I

    move-result-object v7

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v8

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v9

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v10

    invoke-virtual {v5}, Lhk/c;->h()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v3, v3, Lhk/c;->g:[I

    iget-object v4, v4, Lhk/c;->g:[I

    goto :goto_0

    :cond_3
    iget-object v12, v5, Lhk/c;->g:[I

    invoke-static {v12, v9}, Lhk/b;->n([I[I)V

    iget-object v3, v3, Lhk/c;->g:[I

    invoke-static {v9, v3, v8}, Lhk/b;->g([I[I[I)V

    iget-object v3, v5, Lhk/c;->g:[I

    invoke-static {v9, v3, v9}, Lhk/b;->g([I[I[I)V

    iget-object v3, v4, Lhk/c;->g:[I

    invoke-static {v9, v3, v9}, Lhk/b;->g([I[I[I)V

    move-object v3, v8

    move-object v4, v9

    :goto_0
    invoke-virtual {p1}, Lhk/c;->h()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v1, v1, Lhk/c;->g:[I

    iget-object v2, v2, Lhk/c;->g:[I

    goto :goto_1

    :cond_4
    iget-object v13, p1, Lhk/c;->g:[I

    invoke-static {v13, v10}, Lhk/b;->n([I[I)V

    iget-object v1, v1, Lhk/c;->g:[I

    invoke-static {v10, v1, v7}, Lhk/b;->g([I[I[I)V

    iget-object v1, p1, Lhk/c;->g:[I

    invoke-static {v10, v1, v10}, Lhk/b;->g([I[I[I)V

    iget-object v1, v2, Lhk/c;->g:[I

    invoke-static {v10, v1, v10}, Lhk/b;->g([I[I[I)V

    move-object v1, v7

    move-object v2, v10

    :goto_1
    invoke-static {}, Lnk/h;->i()[I

    move-result-object v13

    invoke-static {v1, v3, v13}, Lhk/b;->q([I[I[I)V

    invoke-static {v2, v4, v8}, Lhk/b;->q([I[I[I)V

    invoke-static {v13}, Lnk/h;->v([I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v8}, Lnk/h;->v([I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lhk/d;->E()Lfk/i;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v0}, Lfk/e;->r()Lfk/i;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-static {v13, v9}, Lhk/b;->n([I[I)V

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v3

    invoke-static {v9, v13, v3}, Lhk/b;->g([I[I[I)V

    invoke-static {v9, v1, v9}, Lhk/b;->g([I[I[I)V

    invoke-static {v3, v3}, Lhk/b;->i([I[I)V

    invoke-static {v2, v3, v7}, Lnk/h;->y([I[I[I)V

    invoke-static {v9, v9, v3}, Lnk/h;->b([I[I[I)I

    move-result v1

    invoke-static {v1, v3}, Lhk/b;->m(I[I)V

    new-instance v1, Lhk/c;

    invoke-direct {v1, v10}, Lhk/c;-><init>([I)V

    iget-object v2, v1, Lhk/c;->g:[I

    invoke-static {v8, v2}, Lhk/b;->n([I[I)V

    iget-object v2, v1, Lhk/c;->g:[I

    invoke-static {v2, v3, v2}, Lhk/b;->q([I[I[I)V

    new-instance v2, Lhk/c;

    invoke-direct {v2, v3}, Lhk/c;-><init>([I)V

    iget-object v3, v1, Lhk/c;->g:[I

    iget-object v4, v2, Lhk/c;->g:[I

    invoke-static {v9, v3, v4}, Lhk/b;->q([I[I[I)V

    iget-object v3, v2, Lhk/c;->g:[I

    invoke-static {v3, v8, v7}, Lhk/b;->h([I[I[I)V

    iget-object v3, v2, Lhk/c;->g:[I

    invoke-static {v7, v3}, Lhk/b;->l([I[I)V

    new-instance v3, Lhk/c;

    invoke-direct {v3, v13}, Lhk/c;-><init>([I)V

    if-nez v11, :cond_7

    iget-object v4, v3, Lhk/c;->g:[I

    iget-object v5, v5, Lhk/c;->g:[I

    invoke-static {v4, v5, v4}, Lhk/b;->g([I[I[I)V

    :cond_7
    if-nez v12, :cond_8

    iget-object v4, v3, Lhk/c;->g:[I

    iget-object p1, p1, Lhk/c;->g:[I

    invoke-static {v4, p1, v4}, Lhk/b;->g([I[I[I)V

    :cond_8
    const/4 p1, 0x1

    new-array p1, p1, [Lfk/f;

    aput-object v3, p1, v6

    new-instance v3, Lhk/d;

    invoke-direct {v3, v0, v1, v2, p1}, Lhk/d;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-object v3
.end method

.method protected d()Lfk/i;
    .locals 4

    new-instance v0, Lhk/d;

    invoke-virtual {p0}, Lfk/i;->f()Lfk/f;

    move-result-object v1

    invoke-virtual {p0}, Lfk/i;->g()Lfk/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lhk/d;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    return-object v0
.end method

.method public x()Lfk/i;
    .locals 5

    invoke-virtual {p0}, Lfk/i;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lhk/d;

    iget-object v1, p0, Lfk/i;->a:Lfk/e;

    iget-object v2, p0, Lfk/i;->b:Lfk/f;

    iget-object v3, p0, Lfk/i;->c:Lfk/f;

    invoke-virtual {v3}, Lfk/f;->m()Lfk/f;

    move-result-object v3

    iget-object v4, p0, Lfk/i;->d:[Lfk/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lhk/d;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-object v0
.end method
