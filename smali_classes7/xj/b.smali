.class public Lxj/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lxj/b;->a:Ljava/util/Set;

    sget-object v1, Lzi/a;->x:Lorg/bouncycastle/asn1/n;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lxj/b;->a:Ljava/util/Set;

    sget-object v1, Lzi/a;->y:Lorg/bouncycastle/asn1/n;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lxj/b;->a:Ljava/util/Set;

    sget-object v1, Lzi/a;->z:Lorg/bouncycastle/asn1/n;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lxj/b;->a:Ljava/util/Set;

    sget-object v1, Lzi/a;->A:Lorg/bouncycastle/asn1/n;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lxj/b;->a:Ljava/util/Set;

    sget-object v1, Lzi/a;->B:Lorg/bouncycastle/asn1/n;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lvj/a;Lorg/bouncycastle/asn1/u;)Lgj/d;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lvj/e0;

    if-eqz v0, :cond_0

    check-cast p0, Lvj/f0;

    new-instance v0, Lgj/d;

    new-instance v1, Loj/a;

    sget-object v2, Lgj/c;->l0:Lorg/bouncycastle/asn1/n;

    sget-object v3, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    invoke-direct {v1, v2, v3}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    new-instance v2, Lgj/e;

    invoke-virtual {p0}, Lvj/e0;->c()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Lvj/f0;->h()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Lvj/e0;->b()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {p0}, Lvj/f0;->g()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {p0}, Lvj/f0;->i()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {p0}, Lvj/f0;->e()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {p0}, Lvj/f0;->f()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {p0}, Lvj/f0;->j()Ljava/math/BigInteger;

    move-result-object v12

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lgj/e;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2, p1}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lvj/i;

    if-eqz v0, :cond_1

    check-cast p0, Lvj/i;

    invoke-virtual {p0}, Lvj/g;->b()Lvj/h;

    move-result-object v0

    new-instance v1, Lgj/d;

    new-instance v2, Loj/a;

    sget-object v3, Lpj/o;->h4:Lorg/bouncycastle/asn1/n;

    new-instance v4, Loj/j;

    invoke-virtual {v0}, Lvj/h;->b()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lvj/h;->c()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lvj/h;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v4, v5, v6, v0}, Loj/j;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v3, v4}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    new-instance v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {p0}, Lvj/i;->c()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v0, p1}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;)V

    return-object v1

    :cond_1
    instance-of v0, p0, Lvj/p;

    if-eqz v0, :cond_9

    check-cast p0, Lvj/p;

    invoke-virtual {p0}, Lvj/n;->b()Lvj/l;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance v2, Lpj/g;

    sget-object v3, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    invoke-direct {v2, v3}, Lpj/g;-><init>(Lorg/bouncycastle/asn1/l;)V

    invoke-virtual {p0}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object v3

    :goto_0
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    goto/16 :goto_4

    :cond_2
    instance-of v2, v0, Lvj/m;

    if-eqz v2, :cond_7

    new-instance p1, Lzi/e;

    check-cast v0, Lvj/m;

    invoke-virtual {v0}, Lvj/m;->k()Lorg/bouncycastle/asn1/n;

    move-result-object v2

    invoke-virtual {v0}, Lvj/m;->i()Lorg/bouncycastle/asn1/n;

    move-result-object v3

    invoke-virtual {v0}, Lvj/m;->j()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    invoke-direct {p1, v2, v3, v0}, Lzi/e;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/n;)V

    sget-object v0, Lxj/b;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lzi/e;->B()Lorg/bouncycastle/asn1/n;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x20

    if-eqz v0, :cond_3

    sget-object v0, Lzi/a;->m:Lorg/bouncycastle/asn1/n;

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v3, 0x100

    if-le v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    sget-object v3, Lhj/a;->h:Lorg/bouncycastle/asn1/n;

    goto :goto_2

    :cond_5
    sget-object v3, Lhj/a;->g:Lorg/bouncycastle/asn1/n;

    :goto_2
    if-eqz v0, :cond_6

    const/16 v0, 0x40

    const/16 v2, 0x40

    :cond_6
    move-object v0, v3

    :goto_3
    new-array v3, v2, [B

    invoke-virtual {p0}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v3, v2, v1, p0}, Lxj/b;->b([BIILjava/math/BigInteger;)V

    new-instance p0, Lgj/d;

    new-instance v1, Loj/a;

    invoke-direct {v1, v0, p1}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    new-instance p1, Lorg/bouncycastle/asn1/w0;

    invoke-direct {p1, v3}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-direct {p0, v1, p1}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    return-object p0

    :cond_7
    instance-of v2, v0, Lvj/o;

    if-eqz v2, :cond_8

    new-instance v2, Lpj/g;

    move-object v3, v0

    check-cast v3, Lvj/o;

    invoke-virtual {v3}, Lvj/o;->h()Lorg/bouncycastle/asn1/n;

    move-result-object v3

    invoke-direct {v2, v3}, Lpj/g;-><init>(Lorg/bouncycastle/asn1/n;)V

    invoke-virtual {v0}, Lvj/l;->d()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    :cond_8
    new-instance v2, Lpj/i;

    invoke-virtual {v0}, Lvj/l;->a()Lfk/e;

    move-result-object v5

    new-instance v6, Lpj/k;

    invoke-virtual {v0}, Lvj/l;->b()Lfk/i;

    move-result-object v3

    invoke-direct {v6, v3, v1}, Lpj/k;-><init>(Lfk/i;Z)V

    invoke-virtual {v0}, Lvj/l;->d()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Lvj/l;->c()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v0}, Lvj/l;->e()[B

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lpj/i;-><init>(Lfk/e;Lpj/k;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v3, Lpj/g;

    invoke-direct {v3, v2}, Lpj/g;-><init>(Lpj/i;)V

    invoke-virtual {v0}, Lvj/l;->d()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    move-object v13, v3

    move v3, v2

    move-object v2, v13

    :goto_4
    new-instance v4, Lfk/k;

    invoke-direct {v4}, Lfk/k;-><init>()V

    invoke-virtual {v0}, Lvj/l;->b()Lfk/i;

    move-result-object v0

    invoke-virtual {p0}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lfk/b;->b(Lfk/i;Ljava/math/BigInteger;)Lfk/i;

    move-result-object v0

    new-instance v4, Lorg/bouncycastle/asn1/n0;

    invoke-virtual {v0, v1}, Lfk/i;->l(Z)[B

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/n0;-><init>([B)V

    new-instance v0, Lgj/d;

    new-instance v1, Loj/a;

    sget-object v5, Lpj/o;->v3:Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v5, v2}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    new-instance v5, Lij/a;

    invoke-virtual {p0}, Lvj/p;->c()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v5, v3, p0, v4, v2}, Lij/a;-><init>(ILjava/math/BigInteger;Lorg/bouncycastle/asn1/n0;Lorg/bouncycastle/asn1/e;)V

    invoke-direct {v0, v1, v5, p1}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;)V

    return-object v0

    :cond_9
    instance-of v0, p0, Lvj/i0;

    if-eqz v0, :cond_a

    check-cast p0, Lvj/i0;

    new-instance v0, Lgj/d;

    new-instance v1, Loj/a;

    sget-object v2, Laj/a;->c:Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v2}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    new-instance v2, Lorg/bouncycastle/asn1/w0;

    invoke-virtual {p0}, Lvj/i0;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {p0}, Lvj/i0;->b()Lvj/j0;

    move-result-object p0

    invoke-virtual {p0}, Lvj/j0;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;[B)V

    return-object v0

    :cond_a
    instance-of v0, p0, Lvj/g0;

    if-eqz v0, :cond_b

    check-cast p0, Lvj/g0;

    new-instance v0, Lgj/d;

    new-instance v1, Loj/a;

    sget-object v2, Laj/a;->b:Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v2}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    new-instance v2, Lorg/bouncycastle/asn1/w0;

    invoke-virtual {p0}, Lvj/g0;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {p0}, Lvj/g0;->b()Lvj/h0;

    move-result-object p0

    invoke-virtual {p0}, Lvj/h0;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;[B)V

    return-object v0

    :cond_b
    instance-of v0, p0, Lvj/t;

    if-eqz v0, :cond_c

    check-cast p0, Lvj/t;

    new-instance v0, Lgj/d;

    new-instance v1, Loj/a;

    sget-object v2, Laj/a;->e:Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v2}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    new-instance v2, Lorg/bouncycastle/asn1/w0;

    invoke-virtual {p0}, Lvj/t;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {p0}, Lvj/t;->b()Lvj/u;

    move-result-object p0

    invoke-virtual {p0}, Lvj/u;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;[B)V

    return-object v0

    :cond_c
    instance-of v0, p0, Lvj/r;

    if-eqz v0, :cond_d

    check-cast p0, Lvj/r;

    new-instance v0, Lgj/d;

    new-instance v1, Loj/a;

    sget-object v2, Laj/a;->d:Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v2}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    new-instance v2, Lorg/bouncycastle/asn1/w0;

    invoke-virtual {p0}, Lvj/r;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {p0}, Lvj/r;->b()Lvj/s;

    move-result-object p0

    invoke-virtual {p0}, Lvj/s;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p1, p0}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;[B)V

    return-object v0

    :cond_d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "key parameters not recognized"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b([BIILjava/math/BigInteger;)V
    .locals 4

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    array-length v2, p3

    sub-int v2, p1, v2

    array-length v3, p3

    invoke-static {p3, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, v0

    :cond_0
    :goto_0
    if-eq v1, p1, :cond_1

    add-int v0, p2, v1

    array-length v2, p3

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    aget-byte v2, p3, v2

    aput-byte v2, p0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
