.class public Lyj/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a([I)[I
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    aget p0, p0, v3

    aput p0, v1, v3

    goto :goto_0

    :cond_0
    array-length v2, p0

    if-ne v2, v0, :cond_6

    aget v0, p0, v3

    aget v2, p0, v4

    const/4 v5, 0x2

    if-ge v0, v2, :cond_2

    aget v0, p0, v3

    aget v2, p0, v5

    if-ge v0, v2, :cond_2

    aget v0, p0, v3

    aput v0, v1, v3

    aget v0, p0, v4

    aget v2, p0, v5

    if-ge v0, v2, :cond_1

    aget v0, p0, v4

    aput v0, v1, v4

    aget p0, p0, v5

    aput p0, v1, v5

    goto :goto_0

    :cond_1
    aget v0, p0, v5

    aput v0, v1, v4

    aget p0, p0, v4

    aput p0, v1, v5

    goto :goto_0

    :cond_2
    aget v0, p0, v4

    aget v2, p0, v5

    if-ge v0, v2, :cond_4

    aget v0, p0, v4

    aput v0, v1, v3

    aget v0, p0, v3

    aget v2, p0, v5

    if-ge v0, v2, :cond_3

    aget v0, p0, v3

    aput v0, v1, v4

    aget p0, p0, v5

    aput p0, v1, v5

    goto :goto_0

    :cond_3
    aget v0, p0, v5

    aput v0, v1, v4

    aget p0, p0, v3

    aput p0, v1, v5

    goto :goto_0

    :cond_4
    aget v0, p0, v5

    aput v0, v1, v3

    aget v0, p0, v3

    aget v2, p0, v4

    if-ge v0, v2, :cond_5

    aget v0, p0, v3

    aput v0, v1, v4

    aget p0, p0, v4

    aput p0, v1, v5

    goto :goto_0

    :cond_5
    aget v0, p0, v4

    aput v0, v1, v4

    aget p0, p0, v3

    aput p0, v1, v5

    :goto_0
    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only Trinomials and pentanomials supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lfk/i;Lek/d;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Lek/d;->a()Lfk/e;

    move-result-object v0

    invoke-virtual {p1}, Lek/d;->b()Lfk/i;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lorg/bouncycastle/util/d;

    invoke-virtual {p0, v1}, Lfk/i;->l(Z)[B

    move-result-object p0

    invoke-virtual {v0}, Lfk/e;->l()Lfk/f;

    move-result-object v3

    invoke-virtual {v3}, Lfk/f;->e()[B

    move-result-object v3

    invoke-virtual {v0}, Lfk/e;->m()Lfk/f;

    move-result-object v0

    invoke-virtual {v0}, Lfk/f;->e()[B

    move-result-object v0

    invoke-virtual {p1, v1}, Lfk/i;->l(Z)[B

    move-result-object p1

    invoke-static {p0, v3, v0, p1}, Lorg/bouncycastle/util/a;->l([B[B[B[B)[B

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/bouncycastle/util/d;-><init>([B)V

    invoke-virtual {v2}, Lorg/bouncycastle/util/d;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lorg/bouncycastle/util/d;

    invoke-virtual {p0, v1}, Lfk/i;->l(Z)[B

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/util/d;-><init>([B)V

    invoke-virtual {p1}, Lorg/bouncycastle/util/d;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lpj/d;->c(Lorg/bouncycastle/asn1/n;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lzj/b;Lek/d;)Lvj/l;
    .locals 12

    instance-of v0, p1, Lek/b;

    if-eqz v0, :cond_0

    check-cast p1, Lek/b;

    invoke-virtual {p1}, Lek/b;->f()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyj/c;->g(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;

    move-result-object v1

    new-instance p0, Lvj/o;

    invoke-virtual {p1}, Lek/d;->a()Lfk/e;

    move-result-object v2

    invoke-virtual {p1}, Lek/d;->b()Lfk/i;

    move-result-object v3

    invoke-virtual {p1}, Lek/d;->d()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lek/d;->c()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Lek/d;->e()[B

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lvj/o;-><init>(Lorg/bouncycastle/asn1/n;Lfk/e;Lfk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-interface {p0}, Lzj/b;->b()Lek/d;

    move-result-object p0

    new-instance p1, Lvj/l;

    invoke-virtual {p0}, Lek/d;->a()Lfk/e;

    move-result-object v1

    invoke-virtual {p0}, Lek/d;->b()Lfk/i;

    move-result-object v2

    invoke-virtual {p0}, Lek/d;->d()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lek/d;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lek/d;->e()[B

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lvj/l;-><init>(Lfk/e;Lfk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    new-instance p0, Lvj/l;

    invoke-virtual {p1}, Lek/d;->a()Lfk/e;

    move-result-object v7

    invoke-virtual {p1}, Lek/d;->b()Lfk/i;

    move-result-object v8

    invoke-virtual {p1}, Lek/d;->d()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p1}, Lek/d;->c()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {p1}, Lek/d;->e()[B

    move-result-object v11

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lvj/l;-><init>(Lfk/e;Lfk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    :goto_0
    return-object p0
.end method

.method public static e(Lzj/b;Lpj/g;)Lvj/l;
    .locals 6

    invoke-virtual {p1}, Lpj/g;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lpj/g;->y()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/n;->P(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object p1

    invoke-static {p1}, Lyj/c;->f(Lorg/bouncycastle/asn1/n;)Lpj/i;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lzj/b;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lpj/i;

    :cond_0
    new-instance p0, Lvj/o;

    invoke-direct {p0, p1, v0}, Lvj/o;-><init>(Lorg/bouncycastle/asn1/n;Lpj/i;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lpj/g;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lzj/b;->b()Lek/d;

    move-result-object p0

    new-instance p1, Lvj/l;

    invoke-virtual {p0}, Lek/d;->a()Lfk/e;

    move-result-object v1

    invoke-virtual {p0}, Lek/d;->b()Lfk/i;

    move-result-object v2

    invoke-virtual {p0}, Lek/d;->d()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lek/d;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lek/d;->e()[B

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lvj/l;-><init>(Lfk/e;Lfk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lpj/g;->y()Lorg/bouncycastle/asn1/r;

    move-result-object p0

    invoke-static {p0}, Lpj/i;->B(Ljava/lang/Object;)Lpj/i;

    move-result-object p0

    new-instance p1, Lvj/l;

    invoke-virtual {p0}, Lpj/i;->x()Lfk/e;

    move-result-object v1

    invoke-virtual {p0}, Lpj/i;->y()Lfk/i;

    move-result-object v2

    invoke-virtual {p0}, Lpj/i;->F()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lpj/i;->z()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lpj/i;->G()[B

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lvj/l;-><init>(Lfk/e;Lfk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    :goto_0
    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public static f(Lorg/bouncycastle/asn1/n;)Lpj/i;
    .locals 1

    invoke-static {p0}, Lsj/a;->j(Lorg/bouncycastle/asn1/n;)Lpj/i;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lpj/d;->b(Lorg/bouncycastle/asn1/n;)Lpj/i;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static g(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;
    .locals 3

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/n;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    invoke-static {p0}, Lpj/d;->d(Ljava/lang/String;)Lorg/bouncycastle/asn1/n;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lzj/b;Ljava/math/BigInteger;Ljava/math/BigInteger;)I
    .locals 0

    if-nez p1, :cond_1

    invoke-interface {p0}, Lzj/b;->b()Lek/d;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lek/d;->d()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/math/BigInteger;Lek/d;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/i;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfk/k;

    invoke-direct {v2}, Lfk/k;-><init>()V

    invoke-virtual {p2}, Lek/d;->b()Lfk/i;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lfk/b;->b(Lfk/i;Ljava/math/BigInteger;)Lfk/i;

    move-result-object p1

    invoke-virtual {p1}, Lfk/i;->y()Lfk/i;

    move-result-object p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " Private Key ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Lyj/c;->b(Lfk/i;Lek/d;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "            X: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lfk/i;->f()Lfk/f;

    move-result-object p0

    invoke-virtual {p0}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object p0

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "            Y: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lfk/i;->g()Lfk/f;

    move-result-object p0

    invoke-virtual {p0}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;Lfk/i;Lek/d;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " Public Key ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Lyj/c;->b(Lfk/i;Lek/d;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "            X: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lfk/i;->f()Lfk/f;

    move-result-object p0

    invoke-virtual {p0}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object p0

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "            Y: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lfk/i;->g()Lfk/f;

    move-result-object p0

    invoke-virtual {p0}, Lfk/f;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
