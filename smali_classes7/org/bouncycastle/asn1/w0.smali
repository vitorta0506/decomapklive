.class public Lorg/bouncycastle/asn1/w0;
.super Lorg/bouncycastle/asn1/o;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/m;->u(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/o;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/o;-><init>([B)V

    return-void
.end method


# virtual methods
.method H()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method I()Lorg/bouncycastle/asn1/r;
    .locals 0

    return-object p0
.end method

.method J()Lorg/bouncycastle/asn1/r;
    .locals 0

    return-object p0
.end method

.method y(Lorg/bouncycastle/asn1/q;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/o;->a:[B

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1, v0}, Lorg/bouncycastle/asn1/q;->n(ZI[B)V

    return-void
.end method

.method z()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/o;->a:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/a2;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/asn1/o;->a:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method
