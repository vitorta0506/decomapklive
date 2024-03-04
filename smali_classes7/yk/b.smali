.class public Lyk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lvj/a;Lorg/bouncycastle/asn1/u;)Lgj/d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Luk/a;

    if-eqz v0, :cond_0

    check-cast p0, Luk/a;

    invoke-virtual {p0}, Luk/a;->c()I

    move-result v0

    invoke-static {v0}, Lyk/e;->b(I)Loj/a;

    move-result-object v0

    new-instance v1, Lgj/d;

    new-instance v2, Lorg/bouncycastle/asn1/w0;

    invoke-virtual {p0}, Luk/a;->b()[B

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-direct {v1, v0, v2, p1}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;)V

    return-object v1

    :cond_0
    instance-of v0, p0, Lxk/b;

    if-eqz v0, :cond_1

    check-cast p0, Lxk/b;

    new-instance p1, Loj/a;

    sget-object v0, Lpk/e;->r:Lorg/bouncycastle/asn1/n;

    new-instance v1, Lpk/i;

    invoke-virtual {p0}, Lxk/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lyk/e;->d(Ljava/lang/String;)Loj/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lpk/i;-><init>(Loj/a;)V

    invoke-direct {p1, v0, v1}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    new-instance v0, Lgj/d;

    new-instance v1, Lorg/bouncycastle/asn1/w0;

    invoke-virtual {p0}, Lxk/b;->c()[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-direct {v0, p1, v1}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Ltk/a;

    if-eqz v0, :cond_3

    check-cast p0, Ltk/a;

    new-instance p1, Loj/a;

    sget-object v0, Lpk/e;->v:Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, v0}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    invoke-virtual {p0}, Ltk/a;->b()[S

    move-result-object p0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-eq v1, v2, :cond_2

    aget-short v2, p0, v1

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/g;->o(S[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Lgj/d;

    new-instance v1, Lorg/bouncycastle/asn1/w0;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-direct {p0, p1, v1}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    return-object p0

    :cond_3
    instance-of v0, p0, Lrk/k;

    if-eqz v0, :cond_4

    check-cast p0, Lrk/k;

    invoke-static {}, Lrk/a;->f()Lrk/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrk/a;->i(I)Lrk/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lrk/a;->c(Lorg/bouncycastle/util/c;)Lrk/a;

    move-result-object v0

    invoke-virtual {v0}, Lrk/a;->b()[B

    move-result-object v0

    invoke-static {}, Lrk/a;->f()Lrk/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lrk/a;->i(I)Lrk/a;

    move-result-object v1

    invoke-virtual {p0}, Lrk/k;->n()Lrk/l;

    move-result-object p0

    invoke-virtual {v1, p0}, Lrk/a;->c(Lorg/bouncycastle/util/c;)Lrk/a;

    move-result-object p0

    invoke-virtual {p0}, Lrk/a;->b()[B

    move-result-object p0

    new-instance v1, Loj/a;

    sget-object v2, Lgj/c;->Q1:Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v2}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    new-instance v2, Lgj/d;

    new-instance v3, Lorg/bouncycastle/asn1/w0;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-direct {v2, v1, v3, p1, p0}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;[B)V

    return-object v2

    :cond_4
    instance-of v0, p0, Lrk/c;

    if-eqz v0, :cond_5

    check-cast p0, Lrk/c;

    invoke-static {}, Lrk/a;->f()Lrk/a;

    move-result-object v0

    invoke-virtual {p0}, Lrk/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lrk/a;->i(I)Lrk/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lrk/a;->c(Lorg/bouncycastle/util/c;)Lrk/a;

    move-result-object v0

    invoke-virtual {v0}, Lrk/a;->b()[B

    move-result-object v0

    invoke-static {}, Lrk/a;->f()Lrk/a;

    move-result-object v1

    invoke-virtual {p0}, Lrk/c;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lrk/a;->i(I)Lrk/a;

    move-result-object v1

    invoke-virtual {p0}, Lrk/c;->h()Lrk/d;

    move-result-object p0

    invoke-virtual {p0}, Lrk/d;->d()Lrk/l;

    move-result-object p0

    invoke-virtual {v1, p0}, Lrk/a;->c(Lorg/bouncycastle/util/c;)Lrk/a;

    move-result-object p0

    invoke-virtual {p0}, Lrk/a;->b()[B

    move-result-object p0

    new-instance v1, Loj/a;

    sget-object v2, Lgj/c;->Q1:Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v2}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    new-instance v2, Lgj/d;

    new-instance v3, Lorg/bouncycastle/asn1/w0;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-direct {v2, v1, v3, p1, p0}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;[B)V

    return-object v2

    :cond_5
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/v;

    if-eqz v0, :cond_6

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/v;

    new-instance v0, Loj/a;

    sget-object v1, Lpk/e;->w:Lorg/bouncycastle/asn1/n;

    new-instance v2, Lpk/j;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/v;->e()Lorg/bouncycastle/pqc/crypto/xmss/u;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/u;->b()I

    move-result v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/n;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lyk/e;->f(Ljava/lang/String;)Loj/a;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lpk/j;-><init>(ILoj/a;)V

    invoke-direct {v0, v1, v2}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lgj/d;

    invoke-static {p0}, Lyk/b;->b(Lorg/bouncycastle/pqc/crypto/xmss/v;)Lpk/n;

    move-result-object p0

    invoke-direct {v1, v0, p0, p1}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;)V

    return-object v1

    :cond_6
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/q;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/q;

    new-instance v0, Loj/a;

    sget-object v1, Lpk/e;->F:Lorg/bouncycastle/asn1/n;

    new-instance v2, Lpk/k;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/q;->e()Lorg/bouncycastle/pqc/crypto/xmss/p;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/p;->a()I

    move-result v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/q;->e()Lorg/bouncycastle/pqc/crypto/xmss/p;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/p;->b()I

    move-result v4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/o;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyk/e;->f(Ljava/lang/String;)Loj/a;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lpk/k;-><init>(IILoj/a;)V

    invoke-direct {v0, v1, v2}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lgj/d;

    invoke-static {p0}, Lyk/b;->c(Lorg/bouncycastle/pqc/crypto/xmss/q;)Lpk/l;

    move-result-object p0

    invoke-direct {v1, v0, p0, p1}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;)V

    return-object v1

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "key parameters not recognized"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lorg/bouncycastle/pqc/crypto/xmss/v;)Lpk/n;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/v;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/v;->e()Lorg/bouncycastle/pqc/crypto/xmss/u;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/u;->h()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/v;->e()Lorg/bouncycastle/pqc/crypto/xmss/u;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/u;->b()I

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/x;->a([BII)J

    move-result-wide v4

    long-to-int v7, v4

    int-to-long v4, v7

    invoke-static {p0, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/x;->l(IJ)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->g([BII)[B

    move-result-object v8

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->g([BII)[B

    move-result-object v9

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->g([BII)[B

    move-result-object v10

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->g([BII)[B

    move-result-object v11

    add-int/2addr v3, v1

    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->g([BII)[B

    move-result-object v12

    :try_start_0
    const-class v0, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v12, v0}, Lorg/bouncycastle/pqc/crypto/xmss/x;->f([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/BDS;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getMaxIndex()I

    move-result v1

    const/4 v2, 0x1

    shl-int p0, v2, p0

    sub-int/2addr p0, v2

    if-eq v1, p0, :cond_0

    new-instance p0, Lpk/n;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->getMaxIndex()I

    move-result v13

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lpk/n;-><init>(I[B[B[B[B[BI)V

    return-object p0

    :cond_0
    new-instance p0, Lpk/n;

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lpk/n;-><init>(I[B[B[B[B[B)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse BDS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static c(Lorg/bouncycastle/pqc/crypto/xmss/q;)Lpk/l;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/q;->getEncoded()[B

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/q;->e()Lorg/bouncycastle/pqc/crypto/xmss/p;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/p;->f()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/xmss/q;->e()Lorg/bouncycastle/pqc/crypto/xmss/p;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/p;->a()I

    move-result v2

    add-int/lit8 v3, v2, 0x7

    div-int/lit8 v3, v3, 0x8

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/x;->a([BII)J

    move-result-wide v5

    long-to-int v6, v5

    int-to-long v8, v6

    invoke-static {v2, v8, v9}, Lorg/bouncycastle/pqc/crypto/xmss/x;->l(IJ)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/2addr v3, v4

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->g([BII)[B

    move-result-object v10

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->g([BII)[B

    move-result-object v11

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->g([BII)[B

    move-result-object v12

    add-int/2addr v3, v1

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->g([BII)[B

    move-result-object v13

    add-int/2addr v3, v1

    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/x;->g([BII)[B

    move-result-object v14

    :try_start_0
    const-class v0, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-static {v14, v0}, Lorg/bouncycastle/pqc/crypto/xmss/x;->f([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->getMaxIndex()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    shl-long v1, v5, v2

    sub-long/2addr v1, v5

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    new-instance v1, Lpk/l;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->getMaxIndex()J

    move-result-wide v15

    move-object v7, v1

    invoke-direct/range {v7 .. v16}, Lpk/l;-><init>(J[B[B[B[B[BJ)V

    return-object v1

    :cond_0
    new-instance v0, Lpk/l;

    move-object v7, v0

    invoke-direct/range {v7 .. v14}, Lpk/l;-><init>(J[B[B[B[B[B)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot parse BDSStateMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
