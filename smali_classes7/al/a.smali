.class public Lal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Loj/a;Lorg/bouncycastle/asn1/e;)[B
    .locals 1

    :try_start_0
    new-instance v0, Loj/v;

    invoke-direct {v0, p0, p1}, Loj/v;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    invoke-static {v0}, Lal/a;->b(Loj/v;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Loj/v;)[B
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
