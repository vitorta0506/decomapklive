.class public Lck/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lek/b;
    .locals 9

    invoke-static {p0}, Lzi/b;->c(Ljava/lang/String;)Lpj/i;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/n;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lzi/b;->e(Lorg/bouncycastle/asn1/n;)Lpj/i;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lek/b;

    invoke-virtual {v0}, Lpj/i;->x()Lfk/e;

    move-result-object v4

    invoke-virtual {v0}, Lpj/i;->y()Lfk/i;

    move-result-object v5

    invoke-virtual {v0}, Lpj/i;->F()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lpj/i;->z()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Lpj/i;->G()[B

    move-result-object v8

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lek/b;-><init>(Ljava/lang/String;Lfk/e;Lfk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method
