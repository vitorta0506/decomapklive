.class public Lck/b;
.super Loj/b0;
.source "SourceFile"

# interfaces
.implements Ljava/security/Principal;


# direct methods
.method public constructor <init>(Lmj/c;)V
    .locals 0

    invoke-virtual {p1}, Lmj/c;->f()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/s;

    invoke-direct {p0, p1}, Loj/b0;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/m;->u(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Loj/b0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
