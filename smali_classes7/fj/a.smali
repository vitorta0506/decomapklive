.class public Lfj/a;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field a:Lorg/bouncycastle/asn1/k;

.field b:Lorg/bouncycastle/asn1/k;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/k;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lfj/a;->a:Lorg/bouncycastle/asn1/k;

    new-instance p1, Lorg/bouncycastle/asn1/k;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lfj/a;->b:Lorg/bouncycastle/asn1/k;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->N()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    iput-object v0, p0, Lfj/a;->a:Lorg/bouncycastle/asn1/k;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/k;

    iput-object p1, p0, Lfj/a;->b:Lorg/bouncycastle/asn1/k;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lfj/a;
    .locals 1

    instance-of v0, p0, Lfj/a;

    if-eqz v0, :cond_0

    check-cast p0, Lfj/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lfj/a;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lfj/a;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Lfj/a;->a:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lfj/a;->b:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lfj/a;->b:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->M()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lfj/a;->a:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->M()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
