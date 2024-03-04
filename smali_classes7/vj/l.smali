.class public Lvj/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfk/d;


# instance fields
.field private final g:Lfk/e;

.field private final h:[B

.field private final i:Lfk/i;

.field private final j:Ljava/math/BigInteger;

.field private final k:Ljava/math/BigInteger;

.field private l:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lfk/e;Lfk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lvj/l;-><init>(Lfk/e;Lfk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lfk/e;Lfk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lvj/l;->l:Ljava/math/BigInteger;

    const-string v0, "curve"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "n"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lvj/l;->g:Lfk/e;

    invoke-static {p1, p2}, Lvj/l;->f(Lfk/e;Lfk/i;)Lfk/i;

    move-result-object p1

    iput-object p1, p0, Lvj/l;->i:Lfk/i;

    iput-object p3, p0, Lvj/l;->j:Ljava/math/BigInteger;

    iput-object p4, p0, Lvj/l;->k:Ljava/math/BigInteger;

    invoke-static {p5}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lvj/l;->h:[B

    return-void
.end method

.method public constructor <init>(Lpj/i;)V
    .locals 6

    invoke-virtual {p1}, Lpj/i;->x()Lfk/e;

    move-result-object v1

    invoke-virtual {p1}, Lpj/i;->y()Lfk/i;

    move-result-object v2

    invoke-virtual {p1}, Lpj/i;->F()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lpj/i;->z()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lpj/i;->G()[B

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lvj/l;-><init>(Lfk/e;Lfk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method static f(Lfk/e;Lfk/i;)Lfk/i;
    .locals 1

    const-string v0, "Point cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lfk/c;->b(Lfk/e;Lfk/i;)Lfk/i;

    move-result-object p0

    invoke-virtual {p0}, Lfk/i;->y()Lfk/i;

    move-result-object p0

    invoke-virtual {p0}, Lfk/i;->t()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lfk/i;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point not on curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point at infinity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Lfk/e;
    .locals 1

    iget-object v0, p0, Lvj/l;->g:Lfk/e;

    return-object v0
.end method

.method public b()Lfk/i;
    .locals 1

    iget-object v0, p0, Lvj/l;->i:Lfk/i;

    return-object v0
.end method

.method public c()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lvj/l;->k:Ljava/math/BigInteger;

    return-object v0
.end method

.method public d()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lvj/l;->j:Ljava/math/BigInteger;

    return-object v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lvj/l;->h:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->e([B)[B

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lvj/l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lvj/l;

    iget-object v1, p0, Lvj/l;->g:Lfk/e;

    iget-object v3, p1, Lvj/l;->g:Lfk/e;

    invoke-virtual {v1, v3}, Lfk/e;->j(Lfk/e;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lvj/l;->i:Lfk/i;

    iget-object v3, p1, Lvj/l;->i:Lfk/i;

    invoke-virtual {v1, v3}, Lfk/i;->e(Lfk/i;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lvj/l;->j:Ljava/math/BigInteger;

    iget-object p1, p1, Lvj/l;->j:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(Lfk/i;)Lfk/i;
    .locals 1

    invoke-virtual {p0}, Lvj/l;->a()Lfk/e;

    move-result-object v0

    invoke-static {v0, p1}, Lvj/l;->f(Lfk/e;Lfk/i;)Lfk/i;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lvj/l;->g:Lfk/e;

    invoke-virtual {v0}, Lfk/e;->hashCode()I

    move-result v0

    const/16 v1, 0x404

    xor-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x101

    iget-object v1, p0, Lvj/l;->i:Lfk/i;

    invoke-virtual {v1}, Lfk/i;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x101

    iget-object v1, p0, Lvj/l;->j:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
