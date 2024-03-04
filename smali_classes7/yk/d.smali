.class public Lyk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lvj/a;)Loj/v;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Luk/b;

    if-eqz v0, :cond_0

    check-cast p0, Luk/b;

    invoke-virtual {p0}, Luk/b;->c()I

    move-result v0

    invoke-static {v0}, Lyk/e;->b(I)Loj/a;

    move-result-object v0

    new-instance v1, Loj/v;

    invoke-virtual {p0}, Luk/b;->b()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Loj/v;-><init>(Loj/a;[B)V

    return-object v1

    :cond_0
    instance-of v0, p0, Lxk/c;

    if-eqz v0, :cond_1

    check-cast p0, Lxk/c;

    new-instance v0, Loj/a;

    sget-object v1, Lpk/e;->r:Lorg/bouncycastle/asn1/n;

    new-instance v2, Lpk/i;

    invoke-virtual {p0}, Lxk/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lyk/e;->d(Ljava/lang/String;)Loj/a;

    move-result-object v3

    invoke-direct {v2, v3}, Lpk/i;-><init>(Loj/a;)V

    invoke-direct {v0, v1, v2}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Loj/v;

    invoke-virtual {p0}, Lxk/c;->c()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Loj/v;-><init>(Loj/a;[B)V

    return-object v1

    :cond_1
    instance-of v0, p0, Ltk/b;

    if-eqz v0, :cond_2

    check-cast p0, Ltk/b;

    new-instance v0, Loj/a;

    sget-object v1, Lpk/e;->v:Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, v1}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    new-instance v1, Loj/v;

    invoke-virtual {p0}, Ltk/b;->b()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Loj/v;-><init>(Loj/a;[B)V

    return-object v1

    :cond_2
    instance-of v0, p0, Lrk/l;

    if-eqz v0, :cond_3

    check-cast p0, Lrk/l;

    invoke-static {}, Lrk/a;->f()Lrk/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrk/a;->i(I)Lrk/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lrk/a;->c(Lorg/bouncycastle/util/c;)Lrk/a;

    move-result-object p0

    invoke-virtual {p0}, Lrk/a;->b()[B

    move-result-object p0

    new-instance v0, Loj/a;

    sget-object v1, Lgj/c;->Q1:Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, v1}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    new-instance v1, Loj/v;

    new-instance v2, Lorg/bouncycastle/asn1/w0;

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-direct {v1, v0, v2}, Loj/v;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    return-object v1

    :cond_3
    instance-of v0, p0, Lrk/d;

    if-eqz v0, :cond_4

    check-cast p0, Lrk/d;

    invoke-static {}, Lrk/a;->f()Lrk/a;

    move-result-object v0

    invoke-virtual {p0}, Lrk/d;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lrk/a;->i(I)Lrk/a;

    move-result-object v0

    invoke-virtual {p0}, Lrk/d;->d()Lrk/l;

    move-result-object p0

    invoke-virtual {v0, p0}, Lrk/a;->c(Lorg/bouncycastle/util/c;)Lrk/a;

    move-result-object p0

    invoke-virtual {p0}, Lrk/a;->b()[B

    move-result-object p0

    new-instance v0, Loj/a;

    sget-object v1, Lgj/c;->Q1:Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, v1}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    new-instance v1, Loj/v;

    new-instance v2, Lorg/bouncycastle/asn1/w0;

    invoke-direct {v2, p0}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-direct {v1, v0, v2}, Loj/v;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    return-object v1

    :cond_4
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/w;

    if-eqz v0, :cond_6

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/w;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/w;->d()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/w;->e()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/w;->getEncoded()[B

    move-result-object v2

    array-length v3, v2

    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    if-le v3, v4, :cond_5

    new-instance p0, Loj/a;

    sget-object v0, Lcj/a;->a:Lorg/bouncycastle/asn1/n;

    invoke-direct {p0, v0}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    new-instance v0, Loj/v;

    new-instance v1, Lorg/bouncycastle/asn1/w0;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-direct {v0, p0, v1}, Loj/v;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    return-object v0

    :cond_5
    new-instance v2, Loj/a;

    sget-object v3, Lpk/e;->w:Lorg/bouncycastle/asn1/n;

    new-instance v4, Lpk/j;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/w;->c()Lorg/bouncycastle/pqc/crypto/xmss/u;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/xmss/u;->b()I

    move-result v5

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/n;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lyk/e;->f(Ljava/lang/String;)Loj/a;

    move-result-object p0

    invoke-direct {v4, v5, p0}, Lpk/j;-><init>(ILoj/a;)V

    invoke-direct {v2, v3, v4}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    new-instance p0, Loj/v;

    new-instance v3, Lpk/o;

    invoke-direct {v3, v0, v1}, Lpk/o;-><init>([B[B)V

    invoke-direct {p0, v2, v3}, Loj/v;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    return-object p0

    :cond_6
    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/r;

    if-eqz v0, :cond_8

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/r;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/r;->d()[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/r;->e()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/r;->getEncoded()[B

    move-result-object v2

    array-length v3, v2

    array-length v0, v0

    array-length v1, v1

    add-int/2addr v0, v1

    if-le v3, v0, :cond_7

    new-instance p0, Loj/a;

    sget-object v0, Lcj/a;->b:Lorg/bouncycastle/asn1/n;

    invoke-direct {p0, v0}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;)V

    new-instance v0, Loj/v;

    new-instance v1, Lorg/bouncycastle/asn1/w0;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-direct {v0, p0, v1}, Loj/v;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    return-object v0

    :cond_7
    new-instance v0, Loj/a;

    sget-object v1, Lpk/e;->F:Lorg/bouncycastle/asn1/n;

    new-instance v2, Lpk/k;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/r;->c()Lorg/bouncycastle/pqc/crypto/xmss/p;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/p;->a()I

    move-result v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/r;->c()Lorg/bouncycastle/pqc/crypto/xmss/p;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/p;->b()I

    move-result v4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/o;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lyk/e;->f(Ljava/lang/String;)Loj/a;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lpk/k;-><init>(IILoj/a;)V

    invoke-direct {v0, v1, v2}, Loj/a;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Loj/v;

    new-instance v2, Lpk/m;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/r;->d()[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/r;->e()[B

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lpk/m;-><init>([B[B)V

    invoke-direct {v1, v0, v2}, Loj/v;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;)V

    return-object v1

    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string v0, "key parameters not recognized"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
