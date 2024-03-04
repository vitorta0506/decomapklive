.class public abstract Lorg/bouncycastle/asn1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/e;
.implements Lorg/bouncycastle/util/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/e;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/e;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/m;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    invoke-interface {p1}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/r;->F(Lorg/bouncycastle/asn1/r;)Z

    move-result p1

    return p1
.end method

.method public abstract f()Lorg/bouncycastle/asn1/r;
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/m;->m(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/m;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/r;->hashCode()I

    move-result v0

    return v0
.end method

.method public m(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/asn1/q;->a(Ljava/io/OutputStream;)Lorg/bouncycastle/asn1/q;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/q;->s(Lorg/bouncycastle/asn1/e;)V

    return-void
.end method

.method public n(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/q;->b(Ljava/io/OutputStream;Ljava/lang/String;)Lorg/bouncycastle/asn1/q;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/q;->s(Lorg/bouncycastle/asn1/e;)V

    return-void
.end method

.method public u(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/asn1/m;->n(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
