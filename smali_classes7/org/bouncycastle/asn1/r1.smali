.class public Lorg/bouncycastle/asn1/r1;
.super Lorg/bouncycastle/asn1/y;
.source "SourceFile"


# direct methods
.method public constructor <init>(ZILorg/bouncycastle/asn1/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/y;-><init>(ZILorg/bouncycastle/asn1/e;)V

    return-void
.end method


# virtual methods
.method H()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/y;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/y;->c:Lorg/bouncycastle/asn1/e;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/r;->J()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/r;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method J()Lorg/bouncycastle/asn1/r;
    .locals 0

    return-object p0
.end method

.method y(Lorg/bouncycastle/asn1/q;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/y;->c:Lorg/bouncycastle/asn1/e;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/r;->J()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/y;->b:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/r;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x80

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0xa0

    :goto_1
    iget v2, p0, Lorg/bouncycastle/asn1/y;->a:I

    invoke-virtual {p1, p2, v1, v2}, Lorg/bouncycastle/asn1/q;->v(ZII)V

    iget-boolean p2, p0, Lorg/bouncycastle/asn1/y;->b:Z

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/r;->z()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/q;->r(I)V

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/q;->e()Lorg/bouncycastle/asn1/q;

    move-result-object p1

    iget-boolean p2, p0, Lorg/bouncycastle/asn1/y;->b:Z

    invoke-virtual {p1, v0, p2}, Lorg/bouncycastle/asn1/q;->u(Lorg/bouncycastle/asn1/r;Z)V

    return-void
.end method

.method z()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/y;->c:Lorg/bouncycastle/asn1/e;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/r;->J()Lorg/bouncycastle/asn1/r;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/r;->z()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/y;->b:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/asn1/y;->a:I

    invoke-static {v1}, Lorg/bouncycastle/asn1/a2;->b(I)I

    move-result v1

    invoke-static {v0}, Lorg/bouncycastle/asn1/a2;->a(I)I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    add-int/2addr v1, v0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/bouncycastle/asn1/y;->a:I

    invoke-static {v1}, Lorg/bouncycastle/asn1/a2;->b(I)I

    move-result v1

    goto :goto_0
.end method
