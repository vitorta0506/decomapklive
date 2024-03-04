.class Lorg/bouncycastle/pqc/jcajce/provider/mceliece/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/String;)Loj/a;
    .locals 3

    const-string v0, "SHA-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Loj/a;

    sget-object v0, Lfj/b;->i:Lorg/bouncycastle/asn1/n;

    sget-object v1, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    invoke-direct {p0, v0, v1}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    return-object p0

    :cond_0
    const-string v0, "SHA-224"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Loj/a;

    sget-object v0, Lej/b;->f:Lorg/bouncycastle/asn1/n;

    sget-object v1, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    invoke-direct {p0, v0, v1}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    return-object p0

    :cond_1
    const-string v0, "SHA-256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Loj/a;

    sget-object v0, Lej/b;->c:Lorg/bouncycastle/asn1/n;

    sget-object v1, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    invoke-direct {p0, v0, v1}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    return-object p0

    :cond_2
    const-string v0, "SHA-384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Loj/a;

    sget-object v0, Lej/b;->d:Lorg/bouncycastle/asn1/n;

    sget-object v1, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    invoke-direct {p0, v0, v1}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    return-object p0

    :cond_3
    const-string v0, "SHA-512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, Loj/a;

    sget-object v0, Lej/b;->e:Lorg/bouncycastle/asn1/n;

    sget-object v1, Lorg/bouncycastle/asn1/u0;->a:Lorg/bouncycastle/asn1/u0;

    invoke-direct {p0, v0, v1}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognised digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static b(Loj/a;)Lorg/bouncycastle/crypto/e;
    .locals 3

    invoke-virtual {p0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    sget-object v1, Lfj/b;->i:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lxj/a;->a()Lorg/bouncycastle/crypto/e;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    sget-object v1, Lej/b;->f:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lxj/a;->b()Lorg/bouncycastle/crypto/e;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    sget-object v1, Lej/b;->c:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lxj/a;->c()Lorg/bouncycastle/crypto/e;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    sget-object v1, Lej/b;->d:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lxj/a;->d()Lorg/bouncycastle/crypto/e;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object v0

    sget-object v1, Lej/b;->e:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lxj/a;->e()Lorg/bouncycastle/crypto/e;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognised OID in digest algorithm identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Loj/a;->x()Lorg/bouncycastle/asn1/n;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
