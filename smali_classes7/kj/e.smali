.class public abstract Lkj/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lfk/e;[B)Lfk/i;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfk/e;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object v0

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v2}, Lfk/e;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object p1

    invoke-static {p1}, Lkj/e;->d(Lfk/f;)Lfk/f;

    move-result-object v1

    invoke-virtual {p0}, Lfk/e;->l()Lfk/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lfk/f;->b()Lfk/f;

    move-result-object p1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Lfk/f;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lfk/e;->m()Lfk/f;

    move-result-object v0

    invoke-virtual {v0}, Lfk/f;->n()Lfk/f;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lfk/f;->o()Lfk/f;

    move-result-object v2

    invoke-virtual {v2}, Lfk/f;->g()Lfk/f;

    move-result-object v2

    invoke-virtual {p0}, Lfk/e;->m()Lfk/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v2

    invoke-virtual {p0}, Lfk/e;->l()Lfk/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v2

    invoke-static {p0, v2}, Lkj/e;->c(Lfk/e;Lfk/f;)Lfk/f;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lkj/e;->d(Lfk/f;)Lfk/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lfk/f;->b()Lfk/f;

    move-result-object v2

    :cond_2
    invoke-virtual {p1, v2}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v1

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v1}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lfk/e;->z(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lfk/i;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid point compression"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lfk/i;)[B
    .locals 3

    invoke-virtual {p0}, Lfk/i;->y()Lfk/i;

    move-result-object p0

    invoke-virtual {p0}, Lfk/i;->f()Lfk/f;

    move-result-object v0

    invoke-virtual {v0}, Lfk/f;->e()[B

    move-result-object v1

    invoke-virtual {v0}, Lfk/f;->i()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lfk/i;->g()Lfk/f;

    move-result-object p0

    invoke-virtual {p0, v0}, Lfk/f;->d(Lfk/f;)Lfk/f;

    move-result-object p0

    invoke-static {p0}, Lkj/e;->d(Lfk/f;)Lfk/f;

    move-result-object p0

    invoke-virtual {p0}, Lfk/f;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    array-length p0, v1

    add-int/lit8 p0, p0, -0x1

    aget-byte v0, v1, p0

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v1, p0

    goto :goto_0

    :cond_0
    array-length p0, v1

    add-int/lit8 p0, p0, -0x1

    aget-byte v0, v1, p0

    and-int/lit16 v0, v0, 0xfe

    int-to-byte v0, v0

    aput-byte v0, v1, p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static c(Lfk/e;Lfk/f;)Lfk/f;
    .locals 8

    invoke-virtual {p1}, Lfk/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    sget-object v0, Lfk/d;->a:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lfk/e;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Lfk/f;->f()I

    move-result v2

    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2, v1}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-virtual {p0, v3}, Lfk/e;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object v3

    const/4 v4, 0x1

    move-object v5, p1

    move-object v6, v0

    :goto_0
    add-int/lit8 v7, v2, -0x1

    if-gt v4, v7, :cond_2

    invoke-virtual {v5}, Lfk/f;->o()Lfk/f;

    move-result-object v5

    invoke-virtual {v6}, Lfk/f;->o()Lfk/f;

    move-result-object v6

    invoke-virtual {v5, v3}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v7

    invoke-virtual {v6, v7}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v6

    invoke-virtual {v5, p1}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lfk/f;->i()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-virtual {v6}, Lfk/f;->o()Lfk/f;

    move-result-object v3

    invoke-virtual {v3, v6}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v3

    invoke-virtual {v3}, Lfk/f;->i()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v6
.end method

.method private static d(Lfk/f;)Lfk/f;
    .locals 3

    const/4 v0, 0x1

    move-object v1, p0

    :goto_0
    invoke-virtual {p0}, Lfk/f;->f()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1}, Lfk/f;->o()Lfk/f;

    move-result-object v1

    invoke-virtual {v1, p0}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
