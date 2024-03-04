.class public Lik/q0;
.super Lfk/e$c;
.source "SourceFile"


# static fields
.field public static final j:Ljava/math/BigInteger;

.field private static final k:[Lfk/f;


# instance fields
.field protected i:Lik/t0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lik/s0;->h:Ljava/math/BigInteger;

    sput-object v0, Lik/q0;->j:Ljava/math/BigInteger;

    const/4 v0, 0x1

    new-array v0, v0, [Lfk/f;

    new-instance v1, Lik/s0;

    sget-object v2, Lfk/d;->b:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lik/s0;-><init>(Ljava/math/BigInteger;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lik/q0;->k:[Lfk/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lik/q0;->j:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lfk/e$c;-><init>(Ljava/math/BigInteger;)V

    new-instance v0, Lik/t0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lik/t0;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    iput-object v0, p0, Lik/q0;->i:Lik/t0;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lik/q0;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object v0

    iput-object v0, p0, Lfk/e;->b:Lfk/f;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lik/q0;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object v0

    iput-object v0, p0, Lfk/e;->c:Lfk/f;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lfk/e;->d:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lfk/e;->e:Ljava/math/BigInteger;

    const/4 v0, 0x2

    iput v0, p0, Lfk/e;->f:I

    return-void
.end method

.method static synthetic B()[Lfk/f;
    .locals 1

    sget-object v0, Lik/q0;->k:[Lfk/f;

    return-object v0
.end method


# virtual methods
.method protected C(Lfk/f;Lfk/f;[Lfk/f;)Lfk/i;
    .locals 1

    new-instance v0, Lik/t0;

    invoke-direct {v0, p0, p1, p2, p3}, Lik/t0;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-object v0
.end method

.method protected c()Lfk/e;
    .locals 1

    new-instance v0, Lik/q0;

    invoke-direct {v0}, Lik/q0;-><init>()V

    return-object v0
.end method

.method public e([Lfk/i;II)Lfk/g;
    .locals 7

    mul-int/lit8 v0, p3, 0x11

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v4, p2, v2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lfk/i;->n()Lfk/f;

    move-result-object v5

    check-cast v5, Lik/s0;

    iget-object v5, v5, Lik/s0;->g:[I

    const/16 v6, 0x11

    invoke-static {v6, v5, v1, v0, v3}, Lnk/n;->j(I[II[II)V

    add-int/2addr v3, v6

    invoke-virtual {v4}, Lfk/i;->o()Lfk/f;

    move-result-object v4

    check-cast v4, Lik/s0;

    iget-object v4, v4, Lik/s0;->g:[I

    invoke-static {v6, v4, v1, v0, v3}, Lnk/n;->j(I[II[II)V

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lik/q0$a;

    invoke-direct {p1, p0, p3, v0}, Lik/q0$a;-><init>(Lik/q0;I[I)V

    return-object p1
.end method

.method protected g(Lfk/f;Lfk/f;)Lfk/i;
    .locals 1

    new-instance v0, Lik/t0;

    invoke-direct {v0, p0, p1, p2}, Lik/t0;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    return-object v0
.end method

.method public k(Ljava/math/BigInteger;)Lfk/f;
    .locals 1

    new-instance v0, Lik/s0;

    invoke-direct {v0, p1}, Lik/s0;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public q()I
    .locals 1

    sget-object v0, Lik/q0;->j:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public r()Lfk/i;
    .locals 1

    iget-object v0, p0, Lik/q0;->i:Lik/t0;

    return-object v0
.end method

.method public x(Ljava/security/SecureRandom;)Lfk/f;
    .locals 1

    const/16 v0, 0x11

    invoke-static {v0}, Lnk/n;->k(I)[I

    move-result-object v0

    invoke-static {p1, v0}, Lik/r0;->k(Ljava/security/SecureRandom;[I)V

    new-instance p1, Lik/s0;

    invoke-direct {p1, v0}, Lik/s0;-><init>([I)V

    return-object p1
.end method

.method public y(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
