.class public Lgk/a;
.super Lfk/e$c;
.source "SourceFile"


# static fields
.field public static final j:Ljava/math/BigInteger;

.field private static final k:Ljava/math/BigInteger;

.field private static final l:Ljava/math/BigInteger;

.field private static final m:[Lfk/f;


# instance fields
.field protected i:Lgk/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lgk/c;->h:Ljava/math/BigInteger;

    sput-object v0, Lgk/a;->j:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA984914A144"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lgk/a;->k:Ljava/math/BigInteger;

    new-instance v1, Ljava/math/BigInteger;

    const-string v3, "7B425ED097B425ED097B425ED097B425ED097B425ED097B4260B5E9C7710C864"

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v1, Lgk/a;->l:Ljava/math/BigInteger;

    const/4 v1, 0x2

    new-array v1, v1, [Lfk/f;

    new-instance v3, Lgk/c;

    sget-object v4, Lfk/d;->b:Ljava/math/BigInteger;

    invoke-direct {v3, v4}, Lgk/c;-><init>(Ljava/math/BigInteger;)V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-instance v3, Lgk/c;

    invoke-direct {v3, v0}, Lgk/c;-><init>(Ljava/math/BigInteger;)V

    aput-object v3, v1, v2

    sput-object v1, Lgk/a;->m:[Lfk/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lgk/a;->j:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lfk/e$c;-><init>(Ljava/math/BigInteger;)V

    new-instance v0, Lgk/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lgk/d;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    iput-object v0, p0, Lgk/a;->i:Lgk/d;

    sget-object v0, Lgk/a;->k:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lgk/a;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object v0

    iput-object v0, p0, Lfk/e;->b:Lfk/f;

    sget-object v0, Lgk/a;->l:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lgk/a;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object v0

    iput-object v0, p0, Lfk/e;->c:Lfk/f;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1000000000000000000000000000000014DEF9DEA2F79CD65812631A5CF5D3ED"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/d;->b(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lfk/e;->d:Ljava/math/BigInteger;

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lfk/e;->e:Ljava/math/BigInteger;

    const/4 v0, 0x4

    iput v0, p0, Lfk/e;->f:I

    return-void
.end method

.method static synthetic B()[Lfk/f;
    .locals 1

    sget-object v0, Lgk/a;->m:[Lfk/f;

    return-object v0
.end method


# virtual methods
.method protected C(Lfk/f;Lfk/f;[Lfk/f;)Lfk/i;
    .locals 1

    new-instance v0, Lgk/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lgk/d;-><init>(Lfk/e;Lfk/f;Lfk/f;[Lfk/f;)V

    return-object v0
.end method

.method protected c()Lfk/e;
    .locals 1

    new-instance v0, Lgk/a;

    invoke-direct {v0}, Lgk/a;-><init>()V

    return-object v0
.end method

.method public e([Lfk/i;II)Lfk/g;
    .locals 6

    mul-int/lit8 v0, p3, 0x8

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

    check-cast v5, Lgk/c;

    iget-object v5, v5, Lgk/c;->g:[I

    invoke-static {v5, v1, v0, v3}, Lnk/h;->f([II[II)V

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v4}, Lfk/i;->o()Lfk/f;

    move-result-object v4

    check-cast v4, Lgk/c;

    iget-object v4, v4, Lgk/c;->g:[I

    invoke-static {v4, v1, v0, v3}, Lnk/h;->f([II[II)V

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lgk/a$a;

    invoke-direct {p1, p0, p3, v0}, Lgk/a$a;-><init>(Lgk/a;I[I)V

    return-object p1
.end method

.method protected g(Lfk/f;Lfk/f;)Lfk/i;
    .locals 1

    new-instance v0, Lgk/d;

    invoke-direct {v0, p0, p1, p2}, Lgk/d;-><init>(Lfk/e;Lfk/f;Lfk/f;)V

    return-object v0
.end method

.method public k(Ljava/math/BigInteger;)Lfk/f;
    .locals 1

    new-instance v0, Lgk/c;

    invoke-direct {v0, p1}, Lgk/c;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public q()I
    .locals 1

    sget-object v0, Lgk/a;->j:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public r()Lfk/i;
    .locals 1

    iget-object v0, p0, Lgk/a;->i:Lgk/d;

    return-object v0
.end method

.method public x(Ljava/security/SecureRandom;)Lfk/f;
    .locals 1

    invoke-static {}, Lnk/h;->i()[I

    move-result-object v0

    invoke-static {p1, v0}, Lgk/b;->k(Ljava/security/SecureRandom;[I)V

    new-instance p1, Lgk/c;

    invoke-direct {p1, v0}, Lgk/c;-><init>([I)V

    return-object p1
.end method

.method public y(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
