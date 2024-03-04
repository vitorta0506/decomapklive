.class public Lik/c1;
.super Lfk/e$b;
.source "SourceFile"


# static fields
.field private static final k:[Lfk/f;


# instance fields
.field protected j:Lik/d1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lfk/f;

    new-instance v1, Lik/b1;

    sget-object v2, Lfk/d;->b:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lik/b1;-><init>(Ljava/math/BigInteger;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lik/c1;->k:[Lfk/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x83

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/16 v3, 0x8

    invoke-direct {p0, v0, v1, v2, v3}, Lfk/e$b;-><init>(IIII)V

    new-instance v0, Lik/d1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lik/d1;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    iput-object v0, p0, Lik/c1;->j:Lik/d1;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "07A11B09A76B562144418FF3FF8C2570B8"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lik/c1;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object v0

    iput-object v0, p0, Lfk/e;->b:Lfk/f;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0217C05610884B63B9C6C7291678F9D341"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lik/c1;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object v0

    iput-object v0, p0, Lfk/e;->c:Lfk/f;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0400000000000000023123953A9464B54D"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lfk/e;->d:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lfk/e;->e:Ljava/math/BigInteger;

    const/4 v0, 0x6

    iput v0, p0, Lfk/e;->f:I

    return-void
.end method

.method static synthetic D()[Lfk/f;
    .locals 1

    sget-object v0, Lik/c1;->k:[Lfk/f;

    return-object v0
.end method


# virtual methods
.method protected E(Lfk/f;Lfk/f;[Lfk/f;)Lfk/i;
    .locals 1

    new-instance v0, Lik/d1;

    invoke-direct {v0, p0, p1, p2, p3}, Lik/d1;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-object v0
.end method

.method protected c()Lfk/e;
    .locals 1

    new-instance v0, Lik/c1;

    invoke-direct {v0}, Lik/c1;-><init>()V

    return-object v0
.end method

.method public e([Lfk/i;II)Lfk/g;
    .locals 6

    mul-int/lit8 v0, p3, 0x3

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v4, p2, v2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lfk/i;->n()Lfk/f;

    move-result-object v5

    check-cast v5, Lik/b1;

    iget-object v5, v5, Lik/b1;->g:[J

    invoke-static {v5, v1, v0, v3}, Lnk/f;->f([JI[JI)V

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v4}, Lfk/i;->o()Lfk/f;

    move-result-object v4

    check-cast v4, Lik/b1;

    iget-object v4, v4, Lik/b1;->g:[J

    invoke-static {v4, v1, v0, v3}, Lnk/f;->f([JI[JI)V

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lik/c1$a;

    invoke-direct {p1, p0, p3, v0}, Lik/c1$a;-><init>(Lik/c1;I[J)V

    return-object p1
.end method

.method protected g(Lfk/f;Lfk/f;)Lfk/i;
    .locals 1

    new-instance v0, Lik/d1;

    invoke-direct {v0, p0, p1, p2}, Lik/d1;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    return-object v0
.end method

.method public k(Ljava/math/BigInteger;)Lfk/f;
    .locals 1

    new-instance v0, Lik/b1;

    invoke-direct {v0, p1}, Lik/b1;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public q()I
    .locals 1

    const/16 v0, 0x83

    return v0
.end method

.method public r()Lfk/i;
    .locals 1

    iget-object v0, p0, Lik/c1;->j:Lik/d1;

    return-object v0
.end method

.method public y(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
