.class public Lorg/bouncycastle/asn1/i1;
.super Lorg/bouncycastle/asn1/a;
.source "SourceFile"


# direct methods
.method constructor <init>(ZI[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/a;-><init>(ZI[B)V

    return-void
.end method


# virtual methods
.method y(Lorg/bouncycastle/asn1/q;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/a;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    iget v1, p0, Lorg/bouncycastle/asn1/a;->b:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/a;->c:[B

    invoke-virtual {p1, p2, v0, v1, v2}, Lorg/bouncycastle/asn1/q;->m(ZII[B)V

    return-void
.end method
