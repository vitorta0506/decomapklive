.class public Lfk/e$e;
.super Lfk/e$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lfk/i$d;


# direct methods
.method protected constructor <init>(IIIILfk/f;Lfk/f;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lfk/e$b;-><init>(IIII)V

    iput p1, p0, Lfk/e$e;->j:I

    iput p2, p0, Lfk/e$e;->k:I

    iput p3, p0, Lfk/e$e;->l:I

    iput p4, p0, Lfk/e$e;->m:I

    iput-object p7, p0, Lfk/e;->d:Ljava/math/BigInteger;

    iput-object p8, p0, Lfk/e;->e:Ljava/math/BigInteger;

    new-instance p1, Lfk/i$d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Lfk/i$d;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    iput-object p1, p0, Lfk/e$e;->n:Lfk/i$d;

    iput-object p5, p0, Lfk/e;->b:Lfk/f;

    iput-object p6, p0, Lfk/e;->c:Lfk/f;

    const/4 p1, 0x6

    iput p1, p0, Lfk/e;->f:I

    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lfk/e$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lfk/e$b;-><init>(IIII)V

    iput p1, p0, Lfk/e$e;->j:I

    iput p2, p0, Lfk/e$e;->k:I

    iput p3, p0, Lfk/e$e;->l:I

    iput p4, p0, Lfk/e$e;->m:I

    iput-object p7, p0, Lfk/e;->d:Ljava/math/BigInteger;

    iput-object p8, p0, Lfk/e;->e:Ljava/math/BigInteger;

    new-instance p1, Lfk/i$d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Lfk/i$d;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    iput-object p1, p0, Lfk/e$e;->n:Lfk/i$d;

    invoke-virtual {p0, p5}, Lfk/e$e;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object p1

    iput-object p1, p0, Lfk/e;->b:Lfk/f;

    invoke-virtual {p0, p6}, Lfk/e$e;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object p1

    iput-object p1, p0, Lfk/e;->c:Lfk/f;

    const/4 p1, 0x6

    iput p1, p0, Lfk/e;->f:I

    return-void
.end method

.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lfk/e$e;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method

.method static synthetic D(Lfk/e$e;)I
    .locals 0

    iget p0, p0, Lfk/e$e;->j:I

    return p0
.end method


# virtual methods
.method public E()Z
    .locals 1

    iget v0, p0, Lfk/e$e;->l:I

    if-nez v0, :cond_0

    iget v0, p0, Lfk/e$e;->m:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected c()Lfk/e;
    .locals 10

    new-instance v9, Lfk/e$e;

    iget v1, p0, Lfk/e$e;->j:I

    iget v2, p0, Lfk/e$e;->k:I

    iget v3, p0, Lfk/e$e;->l:I

    iget v4, p0, Lfk/e$e;->m:I

    iget-object v5, p0, Lfk/e;->b:Lfk/f;

    iget-object v6, p0, Lfk/e;->c:Lfk/f;

    iget-object v7, p0, Lfk/e;->d:Ljava/math/BigInteger;

    iget-object v8, p0, Lfk/e;->e:Ljava/math/BigInteger;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lfk/e$e;-><init>(IIIILfk/f;Lfk/f;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v9
.end method

.method public e([Lfk/i;II)Lfk/g;
    .locals 7

    iget v0, p0, Lfk/e$e;->j:I

    add-int/lit8 v0, v0, 0x3f

    ushr-int/lit8 v4, v0, 0x6

    invoke-virtual {p0}, Lfk/e$e;->E()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v2, [I

    iget v2, p0, Lfk/e$e;->k:I

    aput v2, v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v5, p0, Lfk/e$e;->k:I

    aput v5, v0, v3

    iget v5, p0, Lfk/e$e;->l:I

    aput v5, v0, v2

    iget v2, p0, Lfk/e$e;->m:I

    aput v2, v0, v1

    :goto_0
    move-object v6, v0

    mul-int v0, p3, v4

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [J

    const/4 v0, 0x0

    :goto_1
    if-ge v3, p3, :cond_1

    add-int v1, p2, v3

    aget-object v1, p1, v1

    invoke-virtual {v1}, Lfk/i;->n()Lfk/f;

    move-result-object v2

    check-cast v2, Lfk/f$c;

    iget-object v2, v2, Lfk/f$c;->j:Lfk/n;

    invoke-virtual {v2, v5, v0}, Lfk/n;->k([JI)V

    add-int/2addr v0, v4

    invoke-virtual {v1}, Lfk/i;->o()Lfk/f;

    move-result-object v1

    check-cast v1, Lfk/f$c;

    iget-object v1, v1, Lfk/f$c;->j:Lfk/n;

    invoke-virtual {v1, v5, v0}, Lfk/n;->k([JI)V

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lfk/e$e$a;

    move-object v1, p1

    move-object v2, p0

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lfk/e$e$a;-><init>(Lfk/e$e;II[J[I)V

    return-object p1
.end method

.method protected g(Lfk/f;Lfk/f;)Lfk/i;
    .locals 1

    new-instance v0, Lfk/i$d;

    invoke-direct {v0, p0, p1, p2}, Lfk/i$d;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    return-object v0
.end method

.method public k(Ljava/math/BigInteger;)Lfk/f;
    .locals 7

    new-instance v6, Lfk/f$c;

    iget v1, p0, Lfk/e$e;->j:I

    iget v2, p0, Lfk/e$e;->k:I

    iget v3, p0, Lfk/e$e;->l:I

    iget v4, p0, Lfk/e$e;->m:I

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lfk/f$c;-><init>(IIIILjava/math/BigInteger;)V

    return-object v6
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lfk/e$e;->j:I

    return v0
.end method

.method public r()Lfk/i;
    .locals 1

    iget-object v0, p0, Lfk/e$e;->n:Lfk/i$d;

    return-object v0
.end method

.method public y(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method
