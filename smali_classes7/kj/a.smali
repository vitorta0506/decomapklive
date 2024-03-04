.class public Lkj/a;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/k;->P()I

    move-result v1

    iput v1, p0, Lkj/a;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/k;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/k;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/k;->P()I

    move-result p1

    iput p1, p0, Lkj/a;->b:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/s;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->P()I

    move-result v0

    iput v0, p0, Lkj/a;->b:I

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->P()I

    move-result v0

    iput v0, p0, Lkj/a;->c:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/k;->P()I

    move-result p1

    iput p1, p0, Lkj/a;->d:I

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object parse error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static x(Ljava/lang/Object;)Lkj/a;
    .locals 1

    instance-of v0, p0, Lkj/a;

    if-eqz v0, :cond_0

    check-cast p0, Lkj/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lkj/a;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lkj/a;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()I
    .locals 1

    iget v0, p0, Lkj/a;->d:I

    return v0
.end method

.method public F()I
    .locals 1

    iget v0, p0, Lkj/a;->a:I

    return v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    iget v2, p0, Lkj/a;->a:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget v1, p0, Lkj/a;->c:I

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/k;

    iget v2, p0, Lkj/a;->b:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/f;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    new-instance v2, Lorg/bouncycastle/asn1/k;

    iget v3, p0, Lkj/a;->b:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v2, Lorg/bouncycastle/asn1/k;

    iget v3, p0, Lkj/a;->c:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v2, Lorg/bouncycastle/asn1/k;

    iget v3, p0, Lkj/a;->d:I

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v2, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :goto_0
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lkj/a;->b:I

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lkj/a;->c:I

    return v0
.end method
