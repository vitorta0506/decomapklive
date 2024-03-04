.class public Lorg/bouncycastle/asn1/h1;
.super Lorg/bouncycastle/asn1/r;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/x;


# instance fields
.field private final a:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/r;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/h1;->a:[B

    return-void
.end method


# virtual methods
.method H()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/h1;->a:[B

    invoke-static {v0}, Lorg/bouncycastle/util/i;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/h1;->a:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->r([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h1;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method x(Lorg/bouncycastle/asn1/r;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/asn1/h1;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/h1;->a:[B

    check-cast p1, Lorg/bouncycastle/asn1/h1;

    iget-object p1, p1, Lorg/bouncycastle/asn1/h1;->a:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->a([B[B)Z

    move-result p1

    return p1
.end method

.method y(Lorg/bouncycastle/asn1/q;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/h1;->a:[B

    const/16 v1, 0x1a

    invoke-virtual {p1, p2, v1, v0}, Lorg/bouncycastle/asn1/q;->n(ZI[B)V

    return-void
.end method

.method z()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/h1;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/a2;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/asn1/h1;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
