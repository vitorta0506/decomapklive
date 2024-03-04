.class public Loj/h;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field a:Lorg/bouncycastle/asn1/s;

.field b:Loj/x;

.field c:Loj/a;

.field d:Lorg/bouncycastle/asn1/n0;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput-object p1, p0, Loj/h;->a:Lorg/bouncycastle/asn1/s;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Loj/x;->z(Ljava/lang/Object;)Loj/x;

    move-result-object v0

    iput-object v0, p0, Loj/h;->b:Loj/x;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Loj/a;->y(Ljava/lang/Object;)Loj/a;

    move-result-object v0

    iput-object v0, p0, Loj/h;->c:Loj/a;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/n0;->P(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Loj/h;->d:Lorg/bouncycastle/asn1/n0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for a certificate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static y(Ljava/lang/Object;)Loj/h;
    .locals 1

    instance-of v0, p0, Loj/h;

    if-eqz v0, :cond_0

    check-cast p0, Loj/h;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Loj/h;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/h;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()Lorg/bouncycastle/asn1/k;
    .locals 1

    iget-object v0, p0, Loj/h;->b:Loj/x;

    invoke-virtual {v0}, Loj/x;->G()Lorg/bouncycastle/asn1/k;

    move-result-object v0

    return-object v0
.end method

.method public F()Lorg/bouncycastle/asn1/n0;
    .locals 1

    iget-object v0, p0, Loj/h;->d:Lorg/bouncycastle/asn1/n0;

    return-object v0
.end method

.method public G()Loj/a;
    .locals 1

    iget-object v0, p0, Loj/h;->c:Loj/a;

    return-object v0
.end method

.method public H()Loj/y;
    .locals 1

    iget-object v0, p0, Loj/h;->b:Loj/x;

    invoke-virtual {v0}, Loj/x;->I()Loj/y;

    move-result-object v0

    return-object v0
.end method

.method public I()Lmj/c;
    .locals 1

    iget-object v0, p0, Loj/h;->b:Loj/x;

    invoke-virtual {v0}, Loj/x;->J()Lmj/c;

    move-result-object v0

    return-object v0
.end method

.method public J()Loj/v;
    .locals 1

    iget-object v0, p0, Loj/h;->b:Loj/x;

    invoke-virtual {v0}, Loj/x;->K()Loj/v;

    move-result-object v0

    return-object v0
.end method

.method public K()Loj/x;
    .locals 1

    iget-object v0, p0, Loj/h;->b:Loj/x;

    return-object v0
.end method

.method public L()I
    .locals 1

    iget-object v0, p0, Loj/h;->b:Loj/x;

    invoke-virtual {v0}, Loj/x;->M()I

    move-result v0

    return v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 1

    iget-object v0, p0, Loj/h;->a:Lorg/bouncycastle/asn1/s;

    return-object v0
.end method

.method public x()Loj/y;
    .locals 1

    iget-object v0, p0, Loj/h;->b:Loj/x;

    invoke-virtual {v0}, Loj/x;->x()Loj/y;

    move-result-object v0

    return-object v0
.end method

.method public z()Lmj/c;
    .locals 1

    iget-object v0, p0, Loj/h;->b:Loj/x;

    invoke-virtual {v0}, Loj/x;->B()Lmj/c;

    move-result-object v0

    return-object v0
.end method
