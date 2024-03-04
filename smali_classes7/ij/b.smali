.class public Lij/b;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private a:Lorg/bouncycastle/asn1/s;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lij/b;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/n0;Lorg/bouncycastle/asn1/e;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/asn1/n0;Lorg/bouncycastle/asn1/e;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/b;->b(Ljava/math/BigInteger;)[B

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/w0;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    const/4 p1, 0x1

    if-eqz p3, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/d1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p3}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_0
    if-eqz p2, :cond_1

    new-instance p3, Lorg/bouncycastle/asn1/d1;

    invoke-direct {p3, p1, p1, p2}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    iput-object p1, p0, Lij/b;->a:Lorg/bouncycastle/asn1/s;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    iput-object p1, p0, Lij/b;->a:Lorg/bouncycastle/asn1/s;

    return-void
.end method

.method private y(I)Lorg/bouncycastle/asn1/r;
    .locals 3

    iget-object v0, p0, Lij/b;->a:Lorg/bouncycastle/asn1/s;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/s;->N()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/e;

    instance-of v2, v1, Lorg/bouncycastle/asn1/y;

    if-eqz v2, :cond_0

    check-cast v1, Lorg/bouncycastle/asn1/y;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/y;->N()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/y;->M()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 1

    iget-object v0, p0, Lij/b;->a:Lorg/bouncycastle/asn1/s;

    return-object v0
.end method

.method public x()Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p0, Lij/b;->a:Lorg/bouncycastle/asn1/s;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/o;

    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v2
.end method

.method public z()Lorg/bouncycastle/asn1/n0;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lij/b;->y(I)Lorg/bouncycastle/asn1/r;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/n0;

    return-object v0
.end method
