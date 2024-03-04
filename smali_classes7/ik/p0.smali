.class public Lik/p0;
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
    .locals 13

    invoke-virtual {p0}, Lfk/i;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lfk/i;->i()Lfk/e;

    move-result-object v0

    iget-object v1, p0, Lfk/i;->c:Lfk/f;

    check-cast v1, Lik/o0;

    invoke-virtual {v1}, Lik/o0;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lfk/e;->r()Lfk/i;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, p0, Lfk/i;->b:Lfk/f;

    check-cast v2, Lik/o0;

    iget-object v3, p0, Lfk/i;->d:[Lfk/f;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lik/o0;

    const/16 v5, 0xc

    invoke-static {v5}, Lnk/n;->k(I)[I

    move-result-object v6

    invoke-static {v5}, Lnk/n;->k(I)[I

    move-result-object v7

    invoke-static {v5}, Lnk/n;->k(I)[I

    move-result-object v8

    iget-object v9, v1, Lik/o0;->g:[I

    invoke-static {v9, v8}, Lik/n0;->n([I[I)V

    invoke-static {v5}, Lnk/n;->k(I)[I

    move-result-object v9

    invoke-static {v8, v9}, Lik/n0;->n([I[I)V

    invoke-virtual {v3}, Lik/o0;->h()Z

    move-result v10

    iget-object v11, v3, Lik/o0;->g:[I

    if-nez v10, :cond_2

    invoke-static {v11, v7}, Lik/n0;->n([I[I)V

    move-object v11, v7

    :cond_2
    iget-object v12, v2, Lik/o0;->g:[I

    invoke-static {v12, v11, v6}, Lik/n0;->q([I[I[I)V

    iget-object v12, v2, Lik/o0;->g:[I

    invoke-static {v12, v11, v7}, Lik/n0;->a([I[I[I)V

    invoke-static {v7, v6, v7}, Lik/n0;->h([I[I[I)V

    invoke-static {v5, v7, v7, v7}, Lnk/n;->c(I[I[I[I)I

    move-result v11

    invoke-static {v11, v7}, Lik/n0;->m(I[I)V

    iget-object v2, v2, Lik/o0;->g:[I

    invoke-static {v8, v2, v8}, Lik/n0;->h([I[I[I)V

    const/4 v2, 0x2

    invoke-static {v5, v8, v2, v4}, Lnk/n;->L(I[III)I

    move-result v2

    invoke-static {v2, v8}, Lik/n0;->m(I[I)V

    const/4 v2, 0x3

    invoke-static {v5, v9, v2, v4, v6}, Lnk/n;->M(I[III[I)I

    move-result v2

    invoke-static {v2, v6}, Lik/n0;->m(I[I)V

    new-instance v2, Lik/o0;

    invoke-direct {v2, v9}, Lik/o0;-><init>([I)V

    iget-object v5, v2, Lik/o0;->g:[I

    invoke-static {v7, v5}, Lik/n0;->n([I[I)V

    iget-object v5, v2, Lik/o0;->g:[I

    invoke-static {v5, v8, v5}, Lik/n0;->q([I[I[I)V

    iget-object v5, v2, Lik/o0;->g:[I

    invoke-static {v5, v8, v5}, Lik/n0;->q([I[I[I)V

    new-instance v5, Lik/o0;

    invoke-direct {v5, v8}, Lik/o0;-><init>([I)V

    iget-object v9, v2, Lik/o0;->g:[I

    iget-object v11, v5, Lik/o0;->g:[I

    invoke-static {v8, v9, v11}, Lik/n0;->q([I[I[I)V

    iget-object v8, v5, Lik/o0;->g:[I

    invoke-static {v8, v7, v8}, Lik/n0;->h([I[I[I)V

    iget-object v8, v5, Lik/o0;->g:[I

    invoke-static {v8, v6, v8}, Lik/n0;->q([I[I[I)V

    new-instance v6, Lik/o0;

    invoke-direct {v6, v7}, Lik/o0;-><init>([I)V

    iget-object v1, v1, Lik/o0;->g:[I

    iget-object v7, v6, Lik/o0;->g:[I

    invoke-static {v1, v7}, Lik/n0;->r([I[I)V

    if-nez v10, :cond_3

    iget-object v1, v6, Lik/o0;->g:[I

    iget-object v3, v3, Lik/o0;->g:[I

    invoke-static {v1, v3, v1}, Lik/n0;->h([I[I[I)V

    :cond_3
    new-instance v1, Lik/p0;

    const/4 v3, 0x1

    new-array v3, v3, [Lfk/f;

    aput-object v6, v3, v4

    invoke-direct {v1, v0, v2, v5, v3}, Lik/p0;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-object v1
.end method

.method public F(Lfk/i;)Lfk/i;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lik/p0;->G()Lfk/i;

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

    invoke-virtual {p0}, Lik/p0;->E()Lfk/i;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lfk/i;->c:Lfk/f;

    invoke-virtual {v0}, Lfk/f;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lik/p0;->E()Lfk/i;

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
    invoke-virtual {p0}, Lik/p0;->E()Lfk/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lfk/i;->a(Lfk/i;)Lfk/i;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public a(Lfk/i;)Lfk/i;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lfk/i;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lfk/i;->t()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    if-ne v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lik/p0;->E()Lfk/i;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lfk/i;->i()Lfk/e;

    move-result-object v2

    iget-object v3, v0, Lfk/i;->b:Lfk/f;

    check-cast v3, Lik/o0;

    iget-object v4, v0, Lfk/i;->c:Lfk/f;

    check-cast v4, Lik/o0;

    invoke-virtual/range {p1 .. p1}, Lfk/i;->p()Lfk/f;

    move-result-object v5

    check-cast v5, Lik/o0;

    invoke-virtual/range {p1 .. p1}, Lfk/i;->q()Lfk/f;

    move-result-object v6

    check-cast v6, Lik/o0;

    iget-object v7, v0, Lfk/i;->d:[Lfk/f;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Lik/o0;

    invoke-virtual {v1, v8}, Lfk/i;->r(I)Lfk/f;

    move-result-object v1

    check-cast v1, Lik/o0;

    const/16 v9, 0x18

    invoke-static {v9}, Lnk/n;->k(I)[I

    move-result-object v10

    invoke-static {v9}, Lnk/n;->k(I)[I

    move-result-object v9

    const/16 v11, 0xc

    invoke-static {v11}, Lnk/n;->k(I)[I

    move-result-object v12

    invoke-static {v11}, Lnk/n;->k(I)[I

    move-result-object v13

    invoke-virtual {v7}, Lik/o0;->h()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v5, v5, Lik/o0;->g:[I

    iget-object v6, v6, Lik/o0;->g:[I

    goto :goto_0

    :cond_3
    iget-object v15, v7, Lik/o0;->g:[I

    invoke-static {v15, v12}, Lik/n0;->n([I[I)V

    iget-object v5, v5, Lik/o0;->g:[I

    invoke-static {v12, v5, v9}, Lik/n0;->h([I[I[I)V

    iget-object v5, v7, Lik/o0;->g:[I

    invoke-static {v12, v5, v12}, Lik/n0;->h([I[I[I)V

    iget-object v5, v6, Lik/o0;->g:[I

    invoke-static {v12, v5, v12}, Lik/n0;->h([I[I[I)V

    move-object v5, v9

    move-object v6, v12

    :goto_0
    invoke-virtual {v1}, Lik/o0;->h()Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v3, v3, Lik/o0;->g:[I

    iget-object v4, v4, Lik/o0;->g:[I

    goto :goto_1

    :cond_4
    iget-object v8, v1, Lik/o0;->g:[I

    invoke-static {v8, v13}, Lik/n0;->n([I[I)V

    iget-object v3, v3, Lik/o0;->g:[I

    invoke-static {v13, v3, v10}, Lik/n0;->h([I[I[I)V

    iget-object v3, v1, Lik/o0;->g:[I

    invoke-static {v13, v3, v13}, Lik/n0;->h([I[I[I)V

    iget-object v3, v4, Lik/o0;->g:[I

    invoke-static {v13, v3, v13}, Lik/n0;->h([I[I[I)V

    move-object v3, v10

    move-object v4, v13

    :goto_1
    invoke-static {v11}, Lnk/n;->k(I)[I

    move-result-object v8

    invoke-static {v3, v5, v8}, Lik/n0;->q([I[I[I)V

    invoke-static {v11}, Lnk/n;->k(I)[I

    move-result-object v5

    invoke-static {v4, v6, v5}, Lik/n0;->q([I[I[I)V

    invoke-static {v11, v8}, Lnk/n;->A(I[I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v11, v5}, Lnk/n;->A(I[I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lik/p0;->E()Lfk/i;

    move-result-object v1

    return-object v1

    :cond_5
    invoke-virtual {v2}, Lfk/e;->r()Lfk/i;

    move-result-object v1

    return-object v1

    :cond_6
    invoke-static {v8, v12}, Lik/n0;->n([I[I)V

    invoke-static {v11}, Lnk/n;->k(I)[I

    move-result-object v6

    invoke-static {v12, v8, v6}, Lik/n0;->h([I[I[I)V

    invoke-static {v12, v3, v12}, Lik/n0;->h([I[I[I)V

    invoke-static {v6, v6}, Lik/n0;->i([I[I)V

    invoke-static {v4, v6, v10}, Lnk/j;->a([I[I[I)V

    invoke-static {v11, v12, v12, v6}, Lnk/n;->c(I[I[I[I)I

    move-result v3

    invoke-static {v3, v6}, Lik/n0;->m(I[I)V

    new-instance v3, Lik/o0;

    invoke-direct {v3, v13}, Lik/o0;-><init>([I)V

    iget-object v4, v3, Lik/o0;->g:[I

    invoke-static {v5, v4}, Lik/n0;->n([I[I)V

    iget-object v4, v3, Lik/o0;->g:[I

    invoke-static {v4, v6, v4}, Lik/n0;->q([I[I[I)V

    new-instance v4, Lik/o0;

    invoke-direct {v4, v6}, Lik/o0;-><init>([I)V

    iget-object v6, v3, Lik/o0;->g:[I

    iget-object v11, v4, Lik/o0;->g:[I

    invoke-static {v12, v6, v11}, Lik/n0;->q([I[I[I)V

    iget-object v6, v4, Lik/o0;->g:[I

    invoke-static {v6, v5, v9}, Lnk/j;->a([I[I[I)V

    invoke-static {v10, v9, v10}, Lik/n0;->b([I[I[I)V

    iget-object v5, v4, Lik/o0;->g:[I

    invoke-static {v10, v5}, Lik/n0;->l([I[I)V

    new-instance v5, Lik/o0;

    invoke-direct {v5, v8}, Lik/o0;-><init>([I)V

    if-nez v14, :cond_7

    iget-object v6, v5, Lik/o0;->g:[I

    iget-object v7, v7, Lik/o0;->g:[I

    invoke-static {v6, v7, v6}, Lik/n0;->h([I[I[I)V

    :cond_7
    if-nez v15, :cond_8

    iget-object v6, v5, Lik/o0;->g:[I

    iget-object v1, v1, Lik/o0;->g:[I

    invoke-static {v6, v1, v6}, Lik/n0;->h([I[I[I)V

    :cond_8
    const/4 v1, 0x1

    new-array v1, v1, [Lfk/f;

    const/4 v6, 0x0

    aput-object v5, v1, v6

    new-instance v5, Lik/p0;

    invoke-direct {v5, v2, v3, v4, v1}, Lik/p0;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-object v5
.end method

.method protected d()Lfk/i;
    .locals 4

    new-instance v0, Lik/p0;

    invoke-virtual {p0}, Lfk/i;->f()Lfk/f;

    move-result-object v1

    invoke-virtual {p0}, Lfk/i;->g()Lfk/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lik/p0;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    return-object v0
.end method

.method public x()Lfk/i;
    .locals 5

    invoke-virtual {p0}, Lfk/i;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lik/p0;

    iget-object v1, p0, Lfk/i;->a:Lfk/e;

    iget-object v2, p0, Lfk/i;->b:Lfk/f;

    iget-object v3, p0, Lfk/i;->c:Lfk/f;

    invoke-virtual {v3}, Lfk/f;->m()Lfk/f;

    move-result-object v3

    iget-object v4, p0, Lfk/i;->d:[Lfk/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lik/p0;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-object v0
.end method
