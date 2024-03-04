.class public Lgj/e;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private a:Ljava/math/BigInteger;

.field private b:Ljava/math/BigInteger;

.field private c:Ljava/math/BigInteger;

.field private d:Ljava/math/BigInteger;

.field private e:Ljava/math/BigInteger;

.field private f:Ljava/math/BigInteger;

.field private g:Ljava/math/BigInteger;

.field private h:Ljava/math/BigInteger;

.field private i:Ljava/math/BigInteger;

.field private j:Lorg/bouncycastle/asn1/s;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgj/e;->j:Lorg/bouncycastle/asn1/s;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lgj/e;->a:Ljava/math/BigInteger;

    iput-object p1, p0, Lgj/e;->b:Ljava/math/BigInteger;

    iput-object p2, p0, Lgj/e;->c:Ljava/math/BigInteger;

    iput-object p3, p0, Lgj/e;->d:Ljava/math/BigInteger;

    iput-object p4, p0, Lgj/e;->e:Ljava/math/BigInteger;

    iput-object p5, p0, Lgj/e;->f:Ljava/math/BigInteger;

    iput-object p6, p0, Lgj/e;->g:Ljava/math/BigInteger;

    iput-object p7, p0, Lgj/e;->h:Ljava/math/BigInteger;

    iput-object p8, p0, Lgj/e;->i:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lgj/e;->j:Lorg/bouncycastle/asn1/s;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->N()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->R()I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lgj/e;->a:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lgj/e;->b:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lgj/e;->c:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lgj/e;->d:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lgj/e;->e:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lgj/e;->f:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lgj/e;->g:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lgj/e;->h:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/k;->N()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lgj/e;->i:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/s;

    iput-object p1, p0, Lgj/e;->j:Lorg/bouncycastle/asn1/s;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong version for RSA private key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static B(Ljava/lang/Object;)Lgj/e;
    .locals 1

    instance-of v0, p0, Lgj/e;

    if-eqz v0, :cond_0

    check-cast p0, Lgj/e;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lgj/e;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lgj/e;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public F()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lgj/e;->b:Ljava/math/BigInteger;

    return-object v0
.end method

.method public G()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lgj/e;->e:Ljava/math/BigInteger;

    return-object v0
.end method

.method public H()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lgj/e;->f:Ljava/math/BigInteger;

    return-object v0
.end method

.method public I()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lgj/e;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public J()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lgj/e;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    iget-object v2, p0, Lgj/e;->a:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    invoke-virtual {p0}, Lgj/e;->F()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    invoke-virtual {p0}, Lgj/e;->J()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    invoke-virtual {p0}, Lgj/e;->I()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    invoke-virtual {p0}, Lgj/e;->G()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    invoke-virtual {p0}, Lgj/e;->H()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    invoke-virtual {p0}, Lgj/e;->y()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    invoke-virtual {p0}, Lgj/e;->z()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/k;

    invoke-virtual {p0}, Lgj/e;->x()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lgj/e;->j:Lorg/bouncycastle/asn1/s;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lgj/e;->i:Ljava/math/BigInteger;

    return-object v0
.end method

.method public y()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lgj/e;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public z()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lgj/e;->h:Ljava/math/BigInteger;

    return-object v0
.end method
