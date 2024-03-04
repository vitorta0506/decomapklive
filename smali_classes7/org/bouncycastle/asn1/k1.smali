.class public Lorg/bouncycastle/asn1/k1;
.super Lorg/bouncycastle/asn1/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/h;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/k;Lorg/bouncycastle/asn1/r;ILorg/bouncycastle/asn1/r;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/asn1/h;-><init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/asn1/k;Lorg/bouncycastle/asn1/r;ILorg/bouncycastle/asn1/r;)V

    return-void
.end method


# virtual methods
.method J()Lorg/bouncycastle/asn1/r;
    .locals 0

    return-object p0
.end method

.method y(Lorg/bouncycastle/asn1/q;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/h;->a:Lorg/bouncycastle/asn1/n;

    const-string v2, "DL"

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/m;->u(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/h;->b:Lorg/bouncycastle/asn1/k;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/m;->u(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/h;->c:Lorg/bouncycastle/asn1/r;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/m;->u(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/r1;

    const/4 v3, 0x1

    iget v4, p0, Lorg/bouncycastle/asn1/h;->d:I

    iget-object v5, p0, Lorg/bouncycastle/asn1/h;->e:Lorg/bouncycastle/asn1/r;

    invoke-direct {v1, v3, v4, v5}, Lorg/bouncycastle/asn1/r1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/m;->u(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v1, 0x20

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, p2, v1, v2, v0}, Lorg/bouncycastle/asn1/q;->m(ZII[B)V

    return-void
.end method

.method z()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/m;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method
