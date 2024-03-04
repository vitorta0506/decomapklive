.class public Lgj/b;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field a:Lorg/bouncycastle/asn1/k;

.field b:Lorg/bouncycastle/asn1/k;

.field c:Lorg/bouncycastle/asn1/k;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/k;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lgj/b;->a:Lorg/bouncycastle/asn1/k;

    new-instance p1, Lorg/bouncycastle/asn1/k;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lgj/b;->b:Lorg/bouncycastle/asn1/k;

    if-eqz p3, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/k;

    int-to-long p2, p3

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lgj/b;->c:Lorg/bouncycastle/asn1/k;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->N()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    iput-object v0, p0, Lgj/b;->a:Lorg/bouncycastle/asn1/k;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    iput-object v0, p0, Lgj/b;->b:Lorg/bouncycastle/asn1/k;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/k;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lgj/b;->c:Lorg/bouncycastle/asn1/k;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lgj/b;
    .locals 1

    instance-of v0, p0, Lgj/b;

    if-eqz v0, :cond_0

    check-cast p0, Lgj/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lgj/b;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lgj/b;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lgj/b;->a:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->M()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Lgj/b;->a:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lgj/b;->b:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    invoke-virtual {p0}, Lgj/b;->z()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgj/b;->c:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lgj/b;->b:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->M()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lgj/b;->c:Lorg/bouncycastle/asn1/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->M()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
