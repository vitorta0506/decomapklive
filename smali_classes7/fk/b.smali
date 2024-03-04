.class public abstract Lfk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfk/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lfk/i;)Lfk/i;
    .locals 0

    invoke-static {p1}, Lfk/c;->a(Lfk/i;)Lfk/i;

    move-result-object p1

    return-object p1
.end method

.method public b(Lfk/i;Ljava/math/BigInteger;)Lfk/i;
    .locals 2

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lfk/i;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lfk/b;->c(Lfk/i;Ljava/math/BigInteger;)Lfk/i;

    move-result-object p1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lfk/i;->x()Lfk/i;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lfk/b;->a(Lfk/i;)Lfk/i;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lfk/i;->i()Lfk/e;

    move-result-object p1

    invoke-virtual {p1}, Lfk/e;->r()Lfk/i;

    move-result-object p1

    return-object p1
.end method

.method protected abstract c(Lfk/i;Ljava/math/BigInteger;)Lfk/i;
.end method
