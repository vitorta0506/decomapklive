.class public Lyk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a([B)[S
    .locals 4

    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    invoke-static {p0, v3}, Lorg/bouncycastle/util/g;->h([BI)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static b(Lgj/d;)Lvj/a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lgj/d;->B()Loj/a;

    move-result-object v0

    invoke-virtual {v0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    sget-object v1, Lxi/a;->W:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/n;->b0(Lorg/bouncycastle/asn1/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lgj/d;->I()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v0

    new-instance v1, Luk/a;

    invoke-virtual {p0}, Lgj/d;->B()Loj/a;

    move-result-object p0

    invoke-static {p0}, Lyk/e;->c(Loj/a;)I

    move-result p0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v0

    invoke-direct {v1, p0, v0}, Luk/a;-><init>(I[B)V

    return-object v1

    :cond_0
    sget-object v1, Lxi/a;->s:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lxk/b;

    invoke-virtual {p0}, Lgj/d;->I()Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v1

    invoke-virtual {p0}, Lgj/d;->B()Loj/a;

    move-result-object p0

    invoke-virtual {p0}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object p0

    invoke-static {p0}, Lpk/i;->x(Ljava/lang/Object;)Lpk/i;

    move-result-object p0

    invoke-static {p0}, Lyk/e;->e(Lpk/i;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lxk/b;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_1
    sget-object v1, Lxi/a;->f0:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ltk/a;

    invoke-virtual {p0}, Lgj/d;->I()Lorg/bouncycastle/asn1/e;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object p0

    invoke-static {p0}, Lyk/a;->a([B)[S

    move-result-object p0

    invoke-direct {v0, p0}, Ltk/a;-><init>([S)V

    return-object v0

    :cond_2
    sget-object v1, Lgj/c;->Q1:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lgj/d;->I()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v0

    invoke-virtual {p0}, Lgj/d;->F()Lorg/bouncycastle/asn1/b;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/g;->a([BI)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v1, v2, :cond_4

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/b;->M()[B

    move-result-object p0

    array-length v1, v0

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/util/a;->m([BII)[B

    move-result-object v0

    array-length v1, p0

    invoke-static {p0, v3, v1}, Lorg/bouncycastle/util/a;->m([BII)[B

    move-result-object p0

    invoke-static {v0, p0}, Lrk/k;->j([B[B)Lrk/k;

    move-result-object p0

    return-object p0

    :cond_3
    array-length p0, v0

    invoke-static {v0, v3, p0}, Lorg/bouncycastle/util/a;->m([BII)[B

    move-result-object p0

    invoke-static {p0}, Lrk/k;->i(Ljava/lang/Object;)Lrk/k;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/b;->M()[B

    move-result-object p0

    array-length v1, v0

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/util/a;->m([BII)[B

    move-result-object v0

    invoke-static {v0, p0}, Lrk/c;->e([B[B)Lrk/c;

    move-result-object p0

    return-object p0

    :cond_5
    array-length p0, v0

    invoke-static {v0, v3, p0}, Lorg/bouncycastle/util/a;->m([BII)[B

    move-result-object p0

    invoke-static {p0}, Lrk/c;->d(Ljava/lang/Object;)Lrk/c;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object v1, Lxi/a;->w:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v1

    const-string v2, "ClassNotFoundException processing BDS state: "

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lgj/d;->B()Loj/a;

    move-result-object v0

    invoke-virtual {v0}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lpk/j;->y(Ljava/lang/Object;)Lpk/j;

    move-result-object v0

    invoke-virtual {v0}, Lpk/j;->z()Loj/a;

    move-result-object v1

    invoke-virtual {v1}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v1

    invoke-virtual {p0}, Lgj/d;->I()Lorg/bouncycastle/asn1/e;

    move-result-object p0

    invoke-static {p0}, Lpk/n;->z(Ljava/lang/Object;)Lpk/n;

    move-result-object p0

    :try_start_0
    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/v$b;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/u;

    invoke-virtual {v0}, Lpk/j;->x()I

    move-result v0

    invoke-static {v1}, Lyk/e;->a(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/crypto/e;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lorg/bouncycastle/pqc/crypto/xmss/u;-><init>(ILorg/bouncycastle/crypto/e;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/v$b;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/u;)V

    invoke-virtual {p0}, Lpk/n;->y()I

    move-result v0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/v$b;->l(I)Lorg/bouncycastle/pqc/crypto/xmss/v$b;

    move-result-object v0

    invoke-virtual {p0}, Lpk/n;->I()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/v$b;->q([B)Lorg/bouncycastle/pqc/crypto/xmss/v$b;

    move-result-object v0

    invoke-virtual {p0}, Lpk/n;->H()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/v$b;->p([B)Lorg/bouncycastle/pqc/crypto/xmss/v$b;

    move-result-object v0

    invoke-virtual {p0}, Lpk/n;->F()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/v$b;->n([B)Lorg/bouncycastle/pqc/crypto/xmss/v$b;

    move-result-object v0

    invoke-virtual {p0}, Lpk/n;->G()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/v$b;->o([B)Lorg/bouncycastle/pqc/crypto/xmss/v$b;

    move-result-object v0

    invoke-virtual {p0}, Lpk/n;->J()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lpk/n;->B()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/v$b;->m(I)Lorg/bouncycastle/pqc/crypto/xmss/v$b;

    :cond_7
    invoke-virtual {p0}, Lpk/n;->x()[B

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lpk/n;->x()[B

    move-result-object p0

    const-class v3, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {p0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/x;->f([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->withWOTSDigest(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/crypto/xmss/v$b;->k(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/v$b;

    :cond_8
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/v$b;->j()Lorg/bouncycastle/pqc/crypto/xmss/v;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    sget-object v1, Lpk/e;->F:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lgj/d;->B()Loj/a;

    move-result-object v0

    invoke-virtual {v0}, Loj/a;->B()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lpk/k;->y(Ljava/lang/Object;)Lpk/k;

    move-result-object v0

    invoke-virtual {v0}, Lpk/k;->B()Loj/a;

    move-result-object v1

    invoke-virtual {v1}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v1

    :try_start_1
    invoke-virtual {p0}, Lgj/d;->I()Lorg/bouncycastle/asn1/e;

    move-result-object p0

    invoke-static {p0}, Lpk/l;->z(Ljava/lang/Object;)Lpk/l;

    move-result-object p0

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/q$b;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/p;

    invoke-virtual {v0}, Lpk/k;->x()I

    move-result v5

    invoke-virtual {v0}, Lpk/k;->z()I

    move-result v0

    invoke-static {v1}, Lyk/e;->a(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/crypto/e;

    move-result-object v6

    invoke-direct {v4, v5, v0, v6}, Lorg/bouncycastle/pqc/crypto/xmss/p;-><init>(IILorg/bouncycastle/crypto/e;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/p;)V

    invoke-virtual {p0}, Lpk/l;->y()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->m(J)Lorg/bouncycastle/pqc/crypto/xmss/q$b;

    move-result-object v0

    invoke-virtual {p0}, Lpk/l;->I()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->r([B)Lorg/bouncycastle/pqc/crypto/xmss/q$b;

    move-result-object v0

    invoke-virtual {p0}, Lpk/l;->H()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->q([B)Lorg/bouncycastle/pqc/crypto/xmss/q$b;

    move-result-object v0

    invoke-virtual {p0}, Lpk/l;->F()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->o([B)Lorg/bouncycastle/pqc/crypto/xmss/q$b;

    move-result-object v0

    invoke-virtual {p0}, Lpk/l;->G()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->p([B)Lorg/bouncycastle/pqc/crypto/xmss/q$b;

    move-result-object v0

    invoke-virtual {p0}, Lpk/l;->J()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lpk/l;->B()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->n(J)Lorg/bouncycastle/pqc/crypto/xmss/q$b;

    :cond_a
    invoke-virtual {p0}, Lpk/l;->x()[B

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lpk/l;->x()[B

    move-result-object p0

    const-class v3, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-static {p0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/x;->f([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->withWOTSDigest(Lorg/bouncycastle/asn1/n;)Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->l(Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;)Lorg/bouncycastle/pqc/crypto/xmss/q$b;

    :cond_b
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/q$b;->k()Lorg/bouncycastle/pqc/crypto/xmss/q;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "algorithm identifier in private key not recognised"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
