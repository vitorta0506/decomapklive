.class public Lyj/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lgj/d;)[B
    .locals 1

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/m;->u(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Loj/a;Lorg/bouncycastle/asn1/e;)[B
    .locals 1

    :try_start_0
    new-instance v0, Lgj/d;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    invoke-static {v0}, Lyj/e;->a(Lgj/d;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Loj/a;Lorg/bouncycastle/asn1/e;)[B
    .locals 1

    :try_start_0
    new-instance v0, Loj/v;

    invoke-direct {v0, p0, p1}, Loj/v;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    invoke-static {v0}, Lyj/e;->e(Loj/v;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Loj/a;[B)[B
    .locals 1

    :try_start_0
    new-instance v0, Loj/v;

    invoke-direct {v0, p0, p1}, Loj/v;-><init>(Loj/a;[B)V

    invoke-static {v0}, Lyj/e;->e(Loj/v;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Loj/v;)[B
    .locals 1

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/m;->u(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
