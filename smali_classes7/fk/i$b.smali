.class public abstract Lfk/i$b;
.super Lfk/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method protected constructor <init>(Lfk/e;Lfk/f;Lfk/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lfk/i;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    return-void
.end method

.method protected constructor <init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lfk/i;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-void
.end method


# virtual methods
.method protected A()Z
    .locals 7

    invoke-virtual {p0}, Lfk/i;->i()Lfk/e;

    move-result-object v0

    iget-object v1, p0, Lfk/i;->b:Lfk/f;

    invoke-virtual {v0}, Lfk/e;->l()Lfk/f;

    move-result-object v2

    invoke-virtual {v0}, Lfk/e;->m()Lfk/f;

    move-result-object v3

    invoke-virtual {v0}, Lfk/e;->o()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lfk/i;->d:[Lfk/f;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lfk/f;->h()Z

    move-result v4

    invoke-virtual {v1}, Lfk/f;->i()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v1, p0, Lfk/i;->c:Lfk/f;

    invoke-virtual {v1}, Lfk/f;->o()Lfk/f;

    move-result-object v1

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lfk/f;->o()Lfk/f;

    move-result-object v0

    invoke-virtual {v3, v0}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v3

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v5, p0, Lfk/i;->c:Lfk/f;

    invoke-virtual {v1}, Lfk/f;->o()Lfk/f;

    move-result-object v1

    if-eqz v4, :cond_2

    invoke-virtual {v5}, Lfk/f;->o()Lfk/f;

    move-result-object v0

    invoke-virtual {v0, v5}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v0

    invoke-virtual {v1}, Lfk/f;->o()Lfk/f;

    move-result-object v2

    invoke-virtual {v2, v3}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lfk/f;->o()Lfk/f;

    move-result-object v4

    invoke-virtual {v4}, Lfk/f;->o()Lfk/f;

    move-result-object v6

    invoke-virtual {v5, v0}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v0

    invoke-virtual {v0, v5, v2, v4}, Lfk/f;->l(Lfk/f;Lfk/f;Lfk/f;)Lfk/f;

    move-result-object v0

    invoke-virtual {v1, v3, v6}, Lfk/f;->p(Lfk/f;Lfk/f;)Lfk/f;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    iget-object v5, p0, Lfk/i;->c:Lfk/f;

    invoke-virtual {v5, v1}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v6

    invoke-virtual {v6, v5}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v5

    if-eqz v0, :cond_5

    const/4 v6, 0x1

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lfk/i;->d:[Lfk/f;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lfk/f;->h()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lfk/f;->o()Lfk/f;

    move-result-object v4

    invoke-virtual {v0, v4}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v4

    invoke-virtual {v5, v0}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v5

    invoke-virtual {v2, v0}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v2

    invoke-virtual {v3, v4}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v3

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    invoke-virtual {v1, v2}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v0

    invoke-virtual {v1}, Lfk/f;->o()Lfk/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected B()Z
    .locals 6

    iget-object v0, p0, Lfk/i;->a:Lfk/e;

    invoke-virtual {v0}, Lfk/e;->n()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lfk/d;->c:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lfk/i;->y()Lfk/i;

    move-result-object v0

    invoke-virtual {v0}, Lfk/i;->f()Lfk/f;

    move-result-object v0

    check-cast v0, Lfk/f$a;

    invoke-virtual {v0}, Lfk/f$a;->w()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    sget-object v1, Lfk/d;->e:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lfk/i;->y()Lfk/i;

    move-result-object v0

    invoke-virtual {v0}, Lfk/i;->f()Lfk/f;

    move-result-object v1

    iget-object v4, p0, Lfk/i;->a:Lfk/e;

    move-object v5, v4

    check-cast v5, Lfk/e$b;

    invoke-virtual {v4}, Lfk/e;->l()Lfk/f;

    move-result-object v4

    invoke-virtual {v1, v4}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v4

    invoke-virtual {v5, v4}, Lfk/e$b;->C(Lfk/f;)Lfk/f;

    move-result-object v4

    if-nez v4, :cond_2

    return v3

    :cond_2
    invoke-virtual {v0}, Lfk/i;->g()Lfk/f;

    move-result-object v0

    invoke-virtual {v1, v4}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v0

    check-cast v0, Lfk/f$a;

    invoke-virtual {v0}, Lfk/f$a;->w()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_4
    invoke-super {p0}, Lfk/i;->B()Z

    move-result v0

    return v0
.end method

.method public C(Lfk/i;)Lfk/i;
    .locals 1

    invoke-virtual {p1}, Lfk/i;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lfk/i;->x()Lfk/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfk/i;->a(Lfk/i;)Lfk/i;

    move-result-object p1

    return-object p1
.end method
