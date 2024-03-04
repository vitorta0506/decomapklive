.class public abstract Lfk/e$c;
.super Lfk/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfk/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-static {p1}, Lmk/b;->b(Ljava/math/BigInteger;)Lmk/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lfk/e;-><init>(Lmk/a;)V

    return-void
.end method

.method private static A(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0, p0}, Lorg/bouncycastle/util/b;->d(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    return-object v0
.end method


# virtual methods
.method protected i(ILjava/math/BigInteger;)Lfk/i;
    .locals 3

    invoke-virtual {p0, p2}, Lfk/e;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object p2

    invoke-virtual {p2}, Lfk/f;->o()Lfk/f;

    move-result-object v0

    iget-object v1, p0, Lfk/e;->b:Lfk/f;

    invoke-virtual {v0, v1}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object v0

    iget-object v1, p0, Lfk/e;->c:Lfk/f;

    invoke-virtual {v0, v1}, Lfk/f;->a(Lfk/f;)Lfk/f;

    move-result-object v0

    invoke-virtual {v0}, Lfk/f;->n()Lfk/f;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lfk/f;->s()Z

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lfk/f;->m()Lfk/f;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, p2, v0}, Lfk/e;->g(Lfk/f;Lfk/f;)Lfk/i;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid point compression"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public x(Ljava/security/SecureRandom;)Lfk/f;
    .locals 2

    invoke-virtual {p0}, Lfk/e;->p()Lmk/a;

    move-result-object v0

    invoke-interface {v0}, Lmk/a;->b()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p1, v0}, Lfk/e$c;->A(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lfk/e;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object v1

    invoke-static {p1, v0}, Lfk/e$c;->A(Ljava/security/SecureRandom;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfk/e;->k(Ljava/math/BigInteger;)Lfk/f;

    move-result-object p1

    invoke-virtual {v1, p1}, Lfk/f;->j(Lfk/f;)Lfk/f;

    move-result-object p1

    return-object p1
.end method
