.class Lorg/bouncycastle/pqc/crypto/xmss/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lorg/bouncycastle/pqc/crypto/xmss/i;Lorg/bouncycastle/pqc/crypto/xmss/l;Lorg/bouncycastle/pqc/crypto/xmss/g;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;
    .locals 8

    const-string v0, "publicKey == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "address == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/i;->d()Lorg/bouncycastle/pqc/crypto/xmss/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/k;->a()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/l;->a()[[B

    move-result-object p1

    array-length v1, p1

    new-array v1, v1, [Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    aget-object v5, p1, v3

    invoke-direct {v4, v2, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/m;->b()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/m;->c()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/g;->e()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->n(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->o(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/g;->g()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->p(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/m;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->f(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p1

    :goto_1
    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->l()Lorg/bouncycastle/pqc/crypto/xmss/m;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/g;

    const/4 p2, 0x1

    if-le v0, p2, :cond_3

    const/4 v3, 0x0

    :goto_2
    div-int/lit8 v4, v0, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    if-ge v3, v6, :cond_1

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/m;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/m;->c()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->n(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g;->f()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->o(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->p(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/m;->a()I

    move-result p1

    invoke-virtual {v4, p1}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->f(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->l()Lorg/bouncycastle/pqc/crypto/xmss/m;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/g;

    mul-int/lit8 v4, v3, 0x2

    aget-object v5, v1, v4

    add-int/2addr v4, p2

    aget-object v4, v1, v4

    invoke-static {p0, v5, v4, p1}, Lorg/bouncycastle/pqc/crypto/xmss/s;->b(Lorg/bouncycastle/pqc/crypto/xmss/i;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/m;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    rem-int/lit8 v3, v0, 0x2

    if-ne v3, p2, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/lit8 v4, v0, -0x1

    aget-object v4, v1, v4

    aput-object v4, v1, v3

    :cond_2
    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/m;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/m;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g;->e()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->n(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g;->f()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->o(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/g;->g()I

    move-result v3

    invoke-virtual {p2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->p(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/m;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->f(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p1

    goto/16 :goto_1

    :cond_3
    aget-object p0, v1, v2

    return-object p0
.end method

.method static b(Lorg/bouncycastle/pqc/crypto/xmss/i;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/m;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;
    .locals 8

    const-string v0, "left == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "right == null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_8

    const-string v0, "address == null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/i;->f()[B

    move-result-object v0

    instance-of v1, p3, Lorg/bouncycastle/pqc/crypto/xmss/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/g;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/m;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/m;->c()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/g;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->n(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/g;->f()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->o(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/g;->g()I

    move-result p3

    invoke-virtual {v1, p3}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->p(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object p3

    invoke-virtual {p3, v2}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->f(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->l()Lorg/bouncycastle/pqc/crypto/xmss/m;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/g;

    goto :goto_0

    :cond_0
    instance-of v1, p3, Lorg/bouncycastle/pqc/crypto/xmss/e;

    if-eqz v1, :cond_1

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/e;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/e$b;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/m;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/m;->c()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/e;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/e$b;->m(I)Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    move-result-object v1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/e;->f()I

    move-result p3

    invoke-virtual {v1, p3}, Lorg/bouncycastle/pqc/crypto/xmss/e$b;->n(I)Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    move-result-object p3

    invoke-virtual {p3, v2}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->f(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/e$b;->k()Lorg/bouncycastle/pqc/crypto/xmss/m;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/e;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/i;->c()Lorg/bouncycastle/pqc/crypto/xmss/f;

    move-result-object v1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/m;->d()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/f;->c([B[B)[B

    move-result-object v1

    instance-of v3, p3, Lorg/bouncycastle/pqc/crypto/xmss/g;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/g;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/m;->b()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/m;->c()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/g;->e()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->n(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/g;->f()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->o(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/g;->g()I

    move-result p3

    invoke-virtual {v3, p3}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->p(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object p3

    invoke-virtual {p3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->f(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->l()Lorg/bouncycastle/pqc/crypto/xmss/m;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/g;

    goto :goto_1

    :cond_2
    instance-of v3, p3, Lorg/bouncycastle/pqc/crypto/xmss/e;

    if-eqz v3, :cond_3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/e;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/xmss/e$b;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/m;->b()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/m;->c()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/e;->e()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/e$b;->m(I)Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/e;->f()I

    move-result p3

    invoke-virtual {v3, p3}, Lorg/bouncycastle/pqc/crypto/xmss/e$b;->n(I)Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    move-result-object p3

    invoke-virtual {p3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->f(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/e$b;->k()Lorg/bouncycastle/pqc/crypto/xmss/m;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/e;

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/i;->c()Lorg/bouncycastle/pqc/crypto/xmss/f;

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/m;->d()[B

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/f;->c([B[B)[B

    move-result-object v3

    instance-of v4, p3, Lorg/bouncycastle/pqc/crypto/xmss/g;

    const/4 v5, 0x2

    if-eqz v4, :cond_4

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/g;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/m;->b()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/m;->c()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/g;->e()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->n(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v4

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/g;->f()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->o(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object v4

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/g;->g()I

    move-result p3

    invoke-virtual {v4, p3}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->p(I)Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    move-result-object p3

    invoke-virtual {p3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->f(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/g$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/g$b;->l()Lorg/bouncycastle/pqc/crypto/xmss/m;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/g;

    goto :goto_2

    :cond_4
    instance-of v4, p3, Lorg/bouncycastle/pqc/crypto/xmss/e;

    if-eqz v4, :cond_5

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/e;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/xmss/e$b;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/m;->b()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->g(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/m;->c()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->h(J)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/e;->e()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/xmss/e$b;->m(I)Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    move-result-object v4

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/e;->f()I

    move-result p3

    invoke-virtual {v4, p3}, Lorg/bouncycastle/pqc/crypto/xmss/e$b;->n(I)Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    move-result-object p3

    invoke-virtual {p3, v5}, Lorg/bouncycastle/pqc/crypto/xmss/m$a;->f(I)Lorg/bouncycastle/pqc/crypto/xmss/m$a;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/e$b;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/e$b;->k()Lorg/bouncycastle/pqc/crypto/xmss/m;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/e;

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/i;->c()Lorg/bouncycastle/pqc/crypto/xmss/f;

    move-result-object v4

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/m;->d()[B

    move-result-object p3

    invoke-virtual {v4, v0, p3}, Lorg/bouncycastle/pqc/crypto/xmss/f;->c([B[B)[B

    move-result-object p3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/i;->d()Lorg/bouncycastle/pqc/crypto/xmss/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/k;->c()I

    move-result v0

    mul-int/lit8 v4, v0, 0x2

    new-array v4, v4, [B

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v6

    aget-byte v6, v6, v5

    aget-byte v7, v3, v5

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ge v2, v0, :cond_7

    add-int v3, v2, v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v5

    aget-byte v5, v5, v2

    aget-byte v6, p3, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/i;->c()Lorg/bouncycastle/pqc/crypto/xmss/f;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Lorg/bouncycastle/pqc/crypto/xmss/f;->b([B[B)[B

    move-result-object p0

    new-instance p2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result p1

    invoke-direct {p2, p1, p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    return-object p2

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "height of both nodes must be equal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
