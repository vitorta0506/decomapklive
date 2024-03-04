.class public Lfk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lfk/i;)Lfk/i;
    .locals 1

    invoke-virtual {p0}, Lfk/i;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid result"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lfk/e;Lfk/i;)Lfk/i;
    .locals 1

    invoke-virtual {p1}, Lfk/i;->i()Lfk/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfk/e;->j(Lfk/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lfk/e;->t(Lfk/i;)Lfk/i;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point must be on the same curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lfk/e;)Z
    .locals 0

    invoke-virtual {p0}, Lfk/e;->p()Lmk/a;

    move-result-object p0

    invoke-static {p0}, Lfk/c;->d(Lmk/a;)Z

    move-result p0

    return p0
.end method

.method public static d(Lmk/a;)Z
    .locals 3

    invoke-interface {p0}, Lmk/a;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-interface {p0}, Lmk/a;->b()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lfk/d;->c:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p0, p0, Lmk/f;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static e(Lfk/e;)Z
    .locals 0

    invoke-virtual {p0}, Lfk/e;->p()Lmk/a;

    move-result-object p0

    invoke-static {p0}, Lfk/c;->f(Lmk/a;)Z

    move-result p0

    return p0
.end method

.method public static f(Lmk/a;)Z
    .locals 1

    invoke-interface {p0}, Lmk/a;->a()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static g([Lfk/f;IILfk/f;)V
    .locals 4

    new-array v0, p2, [Lfk/f;

    aget-object v1, p0, p1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-ge v2, p2, :cond_0

    add-int/lit8 v1, v2, -0x1

    aget-object v1, v0, v1

    add-int v3, p1, v2

    aget-object v3, p0, v3

    invoke-virtual {v1, v3}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-eqz p3, :cond_1

    aget-object p2, v0, v2

    invoke-virtual {p2, p3}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object p2

    aput-object p2, v0, v2

    :cond_1
    aget-object p2, v0, v2

    invoke-virtual {p2}, Lfk/f;->g()Lfk/f;

    move-result-object p2

    :goto_1
    if-lez v2, :cond_2

    add-int/lit8 p3, v2, -0x1

    add-int/2addr v2, p1

    aget-object v1, p0, v2

    aget-object v3, v0, p3

    invoke-virtual {v3, p2}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v3

    aput-object v3, p0, v2

    invoke-virtual {p2, v1}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object p2

    move v2, p3

    goto :goto_1

    :cond_2
    aput-object p2, p0, p1

    return-void
.end method

.method public static h(Lfk/i;Ljava/math/BigInteger;)Lfk/i;
    .locals 5

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lfk/i;->i()Lfk/e;

    move-result-object v1

    invoke-virtual {v1}, Lfk/e;->r()Lfk/i;

    move-result-object v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, p0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0}, Lfk/i;->E()Lfk/i;

    move-result-object p0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, p0}, Lfk/i;->a(Lfk/i;)Lfk/i;

    move-result-object v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result p0

    if-gez p0, :cond_3

    invoke-virtual {v1}, Lfk/i;->x()Lfk/i;

    move-result-object v1

    :cond_3
    return-object v1
.end method
