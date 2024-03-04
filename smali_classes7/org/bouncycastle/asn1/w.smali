.class public Lorg/bouncycastle/asn1/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:I

.field private final c:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/a2;->c(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/w;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/w;->a:Ljava/io/InputStream;

    iput p2, p0, Lorg/bouncycastle/asn1/w;->b:I

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/w;->c:[[B

    return-void
.end method

.method private e(Z)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/w;->a:Ljava/io/InputStream;

    instance-of v1, v0, Lorg/bouncycastle/asn1/v1;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/v1;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/v1;->d(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(I)Lorg/bouncycastle/asn1/e;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/i0;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/i0;-><init>(Lorg/bouncycastle/asn1/w;)V

    return-object p1

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown BER object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/g0;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/g0;-><init>(Lorg/bouncycastle/asn1/w;)V

    return-object p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/asn1/p0;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/p0;-><init>(Lorg/bouncycastle/asn1/w;)V

    return-object p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/asn1/e0;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/e0;-><init>(Lorg/bouncycastle/asn1/w;)V

    return-object p1
.end method

.method public b()Lorg/bouncycastle/asn1/e;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/w;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/w;->e(Z)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/w;->a:Ljava/io/InputStream;

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/j;->p(Ljava/io/InputStream;I)I

    move-result v2

    and-int/lit8 v3, v0, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/asn1/w;->a:Ljava/io/InputStream;

    iget v6, p0, Lorg/bouncycastle/asn1/w;->b:I

    const/16 v7, 0x8

    const/16 v8, 0x11

    const/16 v9, 0x10

    const/4 v10, 0x4

    if-eq v2, v10, :cond_2

    if-eq v2, v9, :cond_2

    if-eq v2, v8, :cond_2

    if-ne v2, v7, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    invoke-static {v5, v6, v1}, Lorg/bouncycastle/asn1/j;->k(Ljava/io/InputStream;IZ)I

    move-result v1

    if-gez v1, :cond_7

    if-eqz v3, :cond_6

    new-instance v1, Lorg/bouncycastle/asn1/v1;

    iget-object v3, p0, Lorg/bouncycastle/asn1/w;->a:Ljava/io/InputStream;

    iget v5, p0, Lorg/bouncycastle/asn1/w;->b:I

    invoke-direct {v1, v3, v5}, Lorg/bouncycastle/asn1/v1;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Lorg/bouncycastle/asn1/w;

    iget v5, p0, Lorg/bouncycastle/asn1/w;->b:I

    invoke-direct {v3, v1, v5}, Lorg/bouncycastle/asn1/w;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/b0;

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/b0;-><init>(ILorg/bouncycastle/asn1/w;)V

    return-object v0

    :cond_4
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    new-instance v0, Lorg/bouncycastle/asn1/k0;

    invoke-direct {v0, v4, v2, v3}, Lorg/bouncycastle/asn1/k0;-><init>(ZILorg/bouncycastle/asn1/w;)V

    return-object v0

    :cond_5
    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/w;->a(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v4, Lorg/bouncycastle/asn1/t1;

    iget-object v5, p0, Lorg/bouncycastle/asn1/w;->a:Ljava/io/InputStream;

    iget v6, p0, Lorg/bouncycastle/asn1/w;->b:I

    invoke-direct {v4, v5, v1, v6}, Lorg/bouncycastle/asn1/t1;-><init>(Ljava/io/InputStream;II)V

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_8

    new-instance v0, Lorg/bouncycastle/asn1/i1;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Lorg/bouncycastle/asn1/i1;-><init>(ZI[B)V

    return-object v0

    :cond_8
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    new-instance v0, Lorg/bouncycastle/asn1/k0;

    new-instance v1, Lorg/bouncycastle/asn1/w;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/w;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3, v2, v1}, Lorg/bouncycastle/asn1/k0;-><init>(ZILorg/bouncycastle/asn1/w;)V

    return-object v0

    :cond_9
    if-eqz v3, :cond_e

    if-eq v2, v10, :cond_d

    if-eq v2, v7, :cond_c

    if-eq v2, v9, :cond_b

    if-ne v2, v8, :cond_a

    new-instance v0, Lorg/bouncycastle/asn1/q1;

    new-instance v1, Lorg/bouncycastle/asn1/w;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/w;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/q1;-><init>(Lorg/bouncycastle/asn1/w;)V

    return-object v0

    :cond_a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/o1;

    new-instance v1, Lorg/bouncycastle/asn1/w;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/w;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/o1;-><init>(Lorg/bouncycastle/asn1/w;)V

    return-object v0

    :cond_c
    new-instance v0, Lorg/bouncycastle/asn1/p0;

    new-instance v1, Lorg/bouncycastle/asn1/w;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/w;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/p0;-><init>(Lorg/bouncycastle/asn1/w;)V

    return-object v0

    :cond_d
    new-instance v0, Lorg/bouncycastle/asn1/e0;

    new-instance v1, Lorg/bouncycastle/asn1/w;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/w;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/e0;-><init>(Lorg/bouncycastle/asn1/w;)V

    return-object v0

    :cond_e
    if-eq v2, v10, :cond_f

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/w;->c:[[B

    invoke-static {v2, v4, v0}, Lorg/bouncycastle/asn1/j;->b(ILorg/bouncycastle/asn1/t1;[[B)Lorg/bouncycastle/asn1/r;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_f
    new-instance v0, Lorg/bouncycastle/asn1/x0;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/x0;-><init>(Lorg/bouncycastle/asn1/t1;)V

    return-object v0
.end method

.method c(ZI)Lorg/bouncycastle/asn1/r;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/asn1/w;->a:Ljava/io/InputStream;

    check-cast p1, Lorg/bouncycastle/asn1/t1;

    new-instance v1, Lorg/bouncycastle/asn1/r1;

    new-instance v2, Lorg/bouncycastle/asn1/w0;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/t1;->e()[B

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-direct {v1, v0, p2, v2}, Lorg/bouncycastle/asn1/r1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/w;->d()Lorg/bouncycastle/asn1/f;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/asn1/w;->a:Ljava/io/InputStream;

    instance-of v1, v1, Lorg/bouncycastle/asn1/v1;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/f;->f()I

    move-result v1

    if-ne v1, v2, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/j0;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/f;->d(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-direct {v1, v2, p2, p1}, Lorg/bouncycastle/asn1/j0;-><init>(ZILorg/bouncycastle/asn1/e;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/j0;

    invoke-static {p1}, Lorg/bouncycastle/asn1/c0;->a(Lorg/bouncycastle/asn1/f;)Lorg/bouncycastle/asn1/f0;

    move-result-object p1

    invoke-direct {v1, v0, p2, p1}, Lorg/bouncycastle/asn1/j0;-><init>(ZILorg/bouncycastle/asn1/e;)V

    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/f;->f()I

    move-result v1

    if-ne v1, v2, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/r1;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/f;->d(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-direct {v1, v2, p2, p1}, Lorg/bouncycastle/asn1/r1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/r1;

    invoke-static {p1}, Lorg/bouncycastle/asn1/l1;->a(Lorg/bouncycastle/asn1/f;)Lorg/bouncycastle/asn1/s;

    move-result-object p1

    invoke-direct {v1, v0, p2, p1}, Lorg/bouncycastle/asn1/r1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    :goto_1
    return-object v1
.end method

.method d()Lorg/bouncycastle/asn1/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/w;->b()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/f;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/f;-><init>()V

    :cond_1
    instance-of v2, v0, Lorg/bouncycastle/asn1/u1;

    if-eqz v2, :cond_2

    check-cast v0, Lorg/bouncycastle/asn1/u1;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/u1;->d()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/w;->b()Lorg/bouncycastle/asn1/e;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1
.end method
