.class public Lpj/m;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"

# interfaces
.implements Lpj/o;


# instance fields
.field private a:Lorg/bouncycastle/asn1/n;

.field private b:Lorg/bouncycastle/asn1/r;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lpj/m;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    sget-object v0, Lpj/o;->o3:Lorg/bouncycastle/asn1/n;

    iput-object v0, p0, Lpj/m;->a:Lorg/bouncycastle/asn1/n;

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    new-instance v2, Lorg/bouncycastle/asn1/k;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    const-string p1, "inconsistent k values"

    if-nez p3, :cond_1

    if-nez p4, :cond_0

    sget-object p1, Lpj/o;->q3:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance p1, Lorg/bouncycastle/asn1/k;

    int-to-long p2, p2

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-le p3, p2, :cond_2

    if-le p4, p3, :cond_2

    sget-object p1, Lpj/o;->r3:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance p1, Lorg/bouncycastle/asn1/f;

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    int-to-long v2, p2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance p2, Lorg/bouncycastle/asn1/k;

    int-to-long v1, p3

    invoke-direct {p2, v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance p2, Lorg/bouncycastle/asn1/k;

    int-to-long p3, p4

    invoke-direct {p2, p3, p4}, Lorg/bouncycastle/asn1/k;-><init>(J)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance p2, Lorg/bouncycastle/asn1/a1;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :goto_0
    new-instance p1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    iput-object p1, p0, Lpj/m;->b:Lorg/bouncycastle/asn1/r;

    return-void

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    sget-object v0, Lpj/o;->n3:Lorg/bouncycastle/asn1/n;

    iput-object v0, p0, Lpj/m;->a:Lorg/bouncycastle/asn1/n;

    new-instance v0, Lorg/bouncycastle/asn1/k;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lpj/m;->b:Lorg/bouncycastle/asn1/r;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/n;->P(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n;

    move-result-object v0

    iput-object v0, p0, Lpj/m;->a:Lorg/bouncycastle/asn1/n;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    iput-object p1, p0, Lpj/m;->b:Lorg/bouncycastle/asn1/r;

    return-void
.end method

.method public static y(Ljava/lang/Object;)Lpj/m;
    .locals 1

    instance-of v0, p0, Lpj/m;

    if-eqz v0, :cond_0

    check-cast p0, Lpj/m;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lpj/m;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lpj/m;-><init>(Lorg/bouncycastle/asn1/s;)V

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

    iget-object v1, p0, Lpj/m;->a:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lpj/m;->b:Lorg/bouncycastle/asn1/r;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Lorg/bouncycastle/asn1/n;
    .locals 1

    iget-object v0, p0, Lpj/m;->a:Lorg/bouncycastle/asn1/n;

    return-object v0
.end method

.method public z()Lorg/bouncycastle/asn1/r;
    .locals 1

    iget-object v0, p0, Lpj/m;->b:Lorg/bouncycastle/asn1/r;

    return-object v0
.end method
