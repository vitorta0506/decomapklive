.class public Lpj/h;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"

# interfaces
.implements Lpj/o;


# instance fields
.field private a:Lfk/e;

.field private b:[B

.field private c:Lorg/bouncycastle/asn1/n;


# direct methods
.method public constructor <init>(Lfk/e;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lpj/h;->c:Lorg/bouncycastle/asn1/n;

    iput-object p1, p0, Lpj/h;->a:Lfk/e;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lpj/h;->b:[B

    invoke-direct {p0}, Lpj/h;->z()V

    return-void
.end method

.method public constructor <init>(Lpj/m;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/s;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Lpj/h;->c:Lorg/bouncycastle/asn1/n;

    invoke-virtual/range {p1 .. p1}, Lpj/m;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v2

    iput-object v2, v0, Lpj/h;->c:Lorg/bouncycastle/asn1/n;

    sget-object v3, Lpj/o;->n3:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lpj/m;->z()Lorg/bouncycastle/asn1/r;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v2

    invoke-direct {v8, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v9, Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v2

    invoke-direct {v9, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Lfk/e$f;

    move-object v6, v2

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lfk/e$f;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    iput-object v2, v0, Lpj/h;->a:Lfk/e;

    goto/16 :goto_2

    :cond_0
    iget-object v2, v0, Lpj/h;->c:Lorg/bouncycastle/asn1/n;

    sget-object v6, Lpj/o;->o3:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lpj/m;->z()Lorg/bouncycastle/asn1/r;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v8

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/n;

    sget-object v7, Lpj/o;->q3:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v2

    move v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    sget-object v7, Lpj/o;->r3:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v6

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v7

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v2

    move v11, v2

    move v9, v6

    move v10, v7

    :goto_1
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v2

    invoke-direct {v12, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v13, Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v2

    invoke-direct {v13, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Lfk/e$e;

    move-object v7, v2

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v7 .. v15}, Lfk/e$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    :goto_2
    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/n0;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/b;->L()[B

    move-result-object v1

    iput-object v1, v0, Lpj/h;->b:[B

    :cond_2
    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This type of EC basis is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This type of ECCurve is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private z()V
    .locals 2

    iget-object v0, p0, Lpj/h;->a:Lfk/e;

    invoke-static {v0}, Lfk/c;->e(Lfk/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lpj/o;->n3:Lorg/bouncycastle/asn1/n;

    :goto_0
    iput-object v0, p0, Lpj/h;->c:Lorg/bouncycastle/asn1/n;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lpj/h;->a:Lfk/e;

    invoke-static {v0}, Lfk/c;->c(Lfk/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lpj/o;->o3:Lorg/bouncycastle/asn1/n;

    goto :goto_0

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Lpj/h;->c:Lorg/bouncycastle/asn1/n;

    sget-object v2, Lpj/o;->n3:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lpj/l;

    iget-object v2, p0, Lpj/h;->a:Lfk/e;

    invoke-virtual {v2}, Lfk/e;->l()Lfk/f;

    move-result-object v2

    invoke-direct {v1, v2}, Lpj/l;-><init>(Lfk/f;)V

    invoke-virtual {v1}, Lpj/l;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lpj/l;

    iget-object v2, p0, Lpj/h;->a:Lfk/e;

    invoke-virtual {v2}, Lfk/e;->m()Lfk/f;

    move-result-object v2

    invoke-direct {v1, v2}, Lpj/l;-><init>(Lfk/f;)V

    :goto_0
    invoke-virtual {v1}, Lpj/l;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lpj/h;->c:Lorg/bouncycastle/asn1/n;

    sget-object v2, Lpj/o;->o3:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lpj/l;

    iget-object v2, p0, Lpj/h;->a:Lfk/e;

    invoke-virtual {v2}, Lfk/e;->l()Lfk/f;

    move-result-object v2

    invoke-direct {v1, v2}, Lpj/l;-><init>(Lfk/f;)V

    invoke-virtual {v1}, Lpj/l;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lpj/l;

    iget-object v2, p0, Lpj/h;->a:Lfk/e;

    invoke-virtual {v2}, Lfk/e;->m()Lfk/f;

    move-result-object v2

    invoke-direct {v1, v2}, Lpj/l;-><init>(Lfk/f;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lpj/h;->b:[B

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/n0;

    iget-object v2, p0, Lpj/h;->b:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/n0;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Lfk/e;
    .locals 1

    iget-object v0, p0, Lpj/h;->a:Lfk/e;

    return-object v0
.end method

.method public y()[B
    .locals 1

    iget-object v0, p0, Lpj/h;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method
