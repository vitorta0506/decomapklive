.class Lrk/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a([BLorg/bouncycastle/crypto/e;)V
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0}, Lorg/bouncycastle/crypto/e;->c([BII)V

    return-void
.end method

.method static b(SLorg/bouncycastle/crypto/e;)V
    .locals 1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/e;->b(B)V

    int-to-byte p0, p0

    invoke-interface {p1, p0}, Lorg/bouncycastle/crypto/e;->b(B)V

    return-void
.end method

.method static c(ILorg/bouncycastle/crypto/e;)V
    .locals 1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/e;->b(B)V

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/e;->b(B)V

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/e;->b(B)V

    int-to-byte p0, p0

    invoke-interface {p1, p0}, Lorg/bouncycastle/crypto/e;->b(B)V

    return-void
.end method
