.class public Loj/i;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field a:Loj/w;

.field b:Loj/a;

.field c:Lorg/bouncycastle/asn1/n0;

.field d:Z

.field e:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Loj/i;->d:Z

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Loj/w;->y(Ljava/lang/Object;)Loj/w;

    move-result-object v0

    iput-object v0, p0, Loj/i;->a:Loj/w;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Loj/a;->y(Ljava/lang/Object;)Loj/a;

    move-result-object v0

    iput-object v0, p0, Loj/i;->b:Loj/a;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/n0;->P(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Loj/i;->c:Lorg/bouncycastle/asn1/n0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for CertificateList"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static x(Ljava/lang/Object;)Loj/i;
    .locals 1

    instance-of v0, p0, Loj/i;

    if-eqz v0, :cond_0

    check-cast p0, Loj/i;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Loj/i;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/i;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Loj/i;->a:Loj/w;

    invoke-virtual {v0}, Loj/w;->F()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public F()[Loj/w$b;
    .locals 1

    iget-object v0, p0, Loj/i;->a:Loj/w;

    invoke-virtual {v0}, Loj/w;->G()[Loj/w$b;

    move-result-object v0

    return-object v0
.end method

.method public G()Lorg/bouncycastle/asn1/n0;
    .locals 1

    iget-object v0, p0, Loj/i;->c:Lorg/bouncycastle/asn1/n0;

    return-object v0
.end method

.method public H()Loj/a;
    .locals 1

    iget-object v0, p0, Loj/i;->b:Loj/a;

    return-object v0
.end method

.method public I()Loj/w;
    .locals 1

    iget-object v0, p0, Loj/i;->a:Loj/w;

    return-object v0
.end method

.method public J()Loj/y;
    .locals 1

    iget-object v0, p0, Loj/i;->a:Loj/w;

    invoke-virtual {v0}, Loj/w;->I()Loj/y;

    move-result-object v0

    return-object v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Loj/i;->a:Loj/w;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/i;->b:Loj/a;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/i;->c:Lorg/bouncycastle/asn1/n0;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Loj/i;->d:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/bouncycastle/asn1/m;->hashCode()I

    move-result v0

    iput v0, p0, Loj/i;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Loj/i;->d:Z

    :cond_0
    iget v0, p0, Loj/i;->e:I

    return v0
.end method

.method public y()Lmj/c;
    .locals 1

    iget-object v0, p0, Loj/i;->a:Loj/w;

    invoke-virtual {v0}, Loj/w;->z()Lmj/c;

    move-result-object v0

    return-object v0
.end method

.method public z()Loj/y;
    .locals 1

    iget-object v0, p0, Loj/i;->a:Loj/w;

    invoke-virtual {v0}, Loj/w;->B()Loj/y;

    move-result-object v0

    return-object v0
.end method
