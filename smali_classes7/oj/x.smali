.class public Loj/x;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field a:Lorg/bouncycastle/asn1/s;

.field b:Lorg/bouncycastle/asn1/k;

.field c:Lorg/bouncycastle/asn1/k;

.field d:Loj/a;

.field e:Lmj/c;

.field f:Loj/y;

.field g:Loj/y;

.field h:Lmj/c;

.field i:Loj/v;

.field j:Lorg/bouncycastle/asn1/n0;

.field k:Lorg/bouncycastle/asn1/n0;

.field l:Loj/m;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 8

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput-object p1, p0, Loj/x;->a:Lorg/bouncycastle/asn1/s;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/y;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/y;

    invoke-static {v1, v4}, Lorg/bouncycastle/asn1/k;->L(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/k;

    move-result-object v1

    iput-object v1, p0, Loj/x;->b:Lorg/bouncycastle/asn1/k;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/k;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    iput-object v1, p0, Loj/x;->b:Lorg/bouncycastle/asn1/k;

    const/4 v1, -0x1

    :goto_0
    iget-object v5, p0, Loj/x;->b:Lorg/bouncycastle/asn1/k;

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/bouncycastle/asn1/k;->O(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    iget-object v2, p0, Loj/x;->b:Lorg/bouncycastle/asn1/k;

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/k;->O(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Loj/x;->b:Lorg/bouncycastle/asn1/k;

    const-wide/16 v5, 0x2

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/k;->O(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_1

    :goto_2
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v5

    iput-object v5, p0, Loj/x;->c:Lorg/bouncycastle/asn1/k;

    add-int/lit8 v5, v1, 0x2

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v5

    invoke-static {v5}, Loj/a;->y(Ljava/lang/Object;)Loj/a;

    move-result-object v5

    iput-object v5, p0, Loj/x;->d:Loj/a;

    add-int/lit8 v5, v1, 0x3

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v5

    invoke-static {v5}, Lmj/c;->x(Ljava/lang/Object;)Lmj/c;

    move-result-object v5

    iput-object v5, p0, Loj/x;->e:Lmj/c;

    add-int/lit8 v5, v1, 0x4

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/s;

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v6

    invoke-static {v6}, Loj/y;->y(Ljava/lang/Object;)Loj/y;

    move-result-object v6

    iput-object v6, p0, Loj/x;->f:Loj/y;

    invoke-virtual {v5, v4}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v5

    invoke-static {v5}, Loj/y;->y(Ljava/lang/Object;)Loj/y;

    move-result-object v5

    iput-object v5, p0, Loj/x;->g:Loj/y;

    add-int/lit8 v5, v1, 0x5

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v5

    invoke-static {v5}, Lmj/c;->x(Ljava/lang/Object;)Lmj/c;

    move-result-object v5

    iput-object v5, p0, Loj/x;->h:Lmj/c;

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v5

    invoke-static {v5}, Loj/v;->z(Ljava/lang/Object;)Loj/v;

    move-result-object v5

    iput-object v5, p0, Loj/x;->i:Loj/v;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    if-eqz v5, :cond_4

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "version 1 certificate contains extra data"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_3
    if-lez v5, :cond_9

    add-int v2, v1, v5

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/y;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/y;->N()I

    move-result v6

    if-eq v6, v4, :cond_8

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    if-nez v3, :cond_5

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/s;->L(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/s;

    move-result-object v2

    invoke-static {v2}, Loj/m;->F(Ljava/lang/Object;)Loj/m;

    move-result-object v2

    iput-object v2, p0, Loj/x;->l:Loj/m;

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "version 2 certificate cannot contain extensions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag encountered in structure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/y;->N()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/n0;->Q(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/n0;

    move-result-object v2

    iput-object v2, p0, Loj/x;->k:Lorg/bouncycastle/asn1/n0;

    goto :goto_4

    :cond_8
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/n0;->Q(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/n0;

    move-result-object v2

    iput-object v2, p0, Loj/x;->j:Lorg/bouncycastle/asn1/n0;

    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_9
    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "version number not recognised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static z(Ljava/lang/Object;)Loj/x;
    .locals 1

    instance-of v0, p0, Loj/x;

    if-eqz v0, :cond_0

    check-cast p0, Loj/x;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Loj/x;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/x;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()Lmj/c;
    .locals 1

    iget-object v0, p0, Loj/x;->e:Lmj/c;

    return-object v0
.end method

.method public F()Lorg/bouncycastle/asn1/n0;
    .locals 1

    iget-object v0, p0, Loj/x;->j:Lorg/bouncycastle/asn1/n0;

    return-object v0
.end method

.method public G()Lorg/bouncycastle/asn1/k;
    .locals 1

    iget-object v0, p0, Loj/x;->c:Lorg/bouncycastle/asn1/k;

    return-object v0
.end method

.method public H()Loj/a;
    .locals 1

    iget-object v0, p0, Loj/x;->d:Loj/a;

    return-object v0
.end method

.method public I()Loj/y;
    .locals 1

    iget-object v0, p0, Loj/x;->f:Loj/y;

    return-object v0
.end method

.method public J()Lmj/c;
    .locals 1

    iget-object v0, p0, Loj/x;->h:Lmj/c;

    return-object v0
.end method

.method public K()Loj/v;
    .locals 1

    iget-object v0, p0, Loj/x;->i:Loj/v;

    return-object v0
.end method

.method public L()Lorg/bouncycastle/asn1/n0;
    .locals 1

    iget-object v0, p0, Loj/x;->k:Lorg/bouncycastle/asn1/n0;

    return-object v0
.end method

.method public M()I
    .locals 1

    iget-object v0, p0, Loj/x;->b:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 6

    const-string v0, "org.bouncycastle.x509.allow_non-der_tbscert"

    invoke-static {v0}, Lorg/bouncycastle/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lorg/bouncycastle/util/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Loj/x;->a:Lorg/bouncycastle/asn1/s;

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/f;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/f;-><init>()V

    iget-object v1, p0, Loj/x;->b:Lorg/bouncycastle/asn1/k;

    sget-object v2, Lorg/bouncycastle/util/b;->a:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/k;->O(Ljava/math/BigInteger;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/d1;

    iget-object v4, p0, Loj/x;->b:Lorg/bouncycastle/asn1/k;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_1
    iget-object v1, p0, Loj/x;->c:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/x;->d:Loj/a;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/x;->e:Lmj/c;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/f;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v5, p0, Loj/x;->f:Loj/y;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v5, p0, Loj/x;->g:Loj/y;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v5, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/x;->h:Lmj/c;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/a1;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/x;->i:Loj/v;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/x;->j:Lorg/bouncycastle/asn1/n0;

    if-eqz v1, :cond_3

    new-instance v5, Lorg/bouncycastle/asn1/d1;

    invoke-direct {v5, v2, v3, v1}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_3
    iget-object v1, p0, Loj/x;->k:Lorg/bouncycastle/asn1/n0;

    if-eqz v1, :cond_4

    new-instance v5, Lorg/bouncycastle/asn1/d1;

    invoke-direct {v5, v2, v4, v1}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_4
    iget-object v1, p0, Loj/x;->l:Loj/m;

    if-eqz v1, :cond_5

    new-instance v2, Lorg/bouncycastle/asn1/d1;

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4, v1}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_5
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1

    :cond_6
    iget-object v0, p0, Loj/x;->a:Lorg/bouncycastle/asn1/s;

    return-object v0
.end method

.method public x()Loj/y;
    .locals 1

    iget-object v0, p0, Loj/x;->g:Loj/y;

    return-object v0
.end method

.method public y()Loj/m;
    .locals 1

    iget-object v0, p0, Loj/x;->l:Loj/m;

    return-object v0
.end method
