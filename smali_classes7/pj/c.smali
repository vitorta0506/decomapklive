.class public Lpj/c;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private final a:Lorg/bouncycastle/asn1/k;

.field private final b:Lorg/bouncycastle/asn1/k;

.field private final c:Lorg/bouncycastle/asn1/k;

.field private final d:Lorg/bouncycastle/asn1/k;

.field private final e:Lpj/e;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lpj/e;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/k;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lpj/c;->a:Lorg/bouncycastle/asn1/k;

    new-instance p1, Lorg/bouncycastle/asn1/k;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lpj/c;->b:Lorg/bouncycastle/asn1/k;

    new-instance p1, Lorg/bouncycastle/asn1/k;

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lpj/c;->c:Lorg/bouncycastle/asn1/k;

    if-eqz p4, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/k;

    invoke-direct {p1, p4}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lpj/c;->d:Lorg/bouncycastle/asn1/k;

    iput-object p5, p0, Lpj/c;->e:Lpj/e;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'q\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'g\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'p\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->N()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    iput-object v0, p0, Lpj/c;->a:Lorg/bouncycastle/asn1/k;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    iput-object v0, p0, Lpj/c;->b:Lorg/bouncycastle/asn1/k;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    iput-object v0, p0, Lpj/c;->c:Lorg/bouncycastle/asn1/k;

    invoke-static {p1}, Lpj/c;->B(Ljava/util/Enumeration;)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lorg/bouncycastle/asn1/k;

    if-eqz v2, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    iput-object v0, p0, Lpj/c;->d:Lorg/bouncycastle/asn1/k;

    invoke-static {p1}, Lpj/c;->B(Ljava/util/Enumeration;)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lpj/c;->d:Lorg/bouncycastle/asn1/k;

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/bouncycastle/asn1/e;->f()Lorg/bouncycastle/asn1/r;

    move-result-object p1

    invoke-static {p1}, Lpj/e;->x(Ljava/lang/Object;)Lpj/e;

    move-result-object p1

    iput-object p1, p0, Lpj/c;->e:Lpj/e;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lpj/c;->e:Lpj/e;

    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static B(Ljava/util/Enumeration;)Lorg/bouncycastle/asn1/e;
    .locals 1

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/e;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static y(Ljava/lang/Object;)Lpj/c;
    .locals 1

    instance-of v0, p0, Lpj/c;

    if-eqz v0, :cond_0

    check-cast p0, Lpj/c;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lpj/c;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lpj/c;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public F()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lpj/c;->a:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->M()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public G()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lpj/c;->c:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->M()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public H()Lpj/e;
    .locals 1

    iget-object v0, p0, Lpj/c;->e:Lpj/e;

    return-object v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Lpj/c;->a:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lpj/c;->b:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lpj/c;->c:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lpj/c;->d:Lorg/bouncycastle/asn1/k;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_0
    iget-object v1, p0, Lpj/c;->e:Lpj/e;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lpj/c;->b:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->M()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lpj/c;->d:Lorg/bouncycastle/asn1/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->M()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
