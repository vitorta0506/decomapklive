.class public Lgj/d;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private a:Lorg/bouncycastle/asn1/k;

.field private b:Loj/a;

.field private c:Lorg/bouncycastle/asn1/o;

.field private d:Lorg/bouncycastle/asn1/u;

.field private e:Lorg/bouncycastle/asn1/b;


# direct methods
.method public constructor <init>(Loj/a;Lorg/bouncycastle/asn1/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;[B)V

    return-void
.end method

.method public constructor <init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lgj/d;-><init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;[B)V

    return-void
.end method

.method public constructor <init>(Loj/a;Lorg/bouncycastle/asn1/e;Lorg/bouncycastle/asn1/u;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/k;

    if-eqz p4, :cond_0

    sget-object v1, Lorg/bouncycastle/util/b;->b:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/bouncycastle/util/b;->a:Ljava/math/BigInteger;

    :goto_0
    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/k;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lgj/d;->a:Lorg/bouncycastle/asn1/k;

    iput-object p1, p0, Lgj/d;->b:Loj/a;

    new-instance p1, Lorg/bouncycastle/asn1/w0;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/w0;-><init>(Lorg/bouncycastle/asn1/e;)V

    iput-object p1, p0, Lgj/d;->c:Lorg/bouncycastle/asn1/o;

    iput-object p3, p0, Lgj/d;->d:Lorg/bouncycastle/asn1/u;

    if-nez p4, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/n0;

    invoke-direct {p1, p4}, Lorg/bouncycastle/asn1/n0;-><init>([B)V

    :goto_1
    iput-object p1, p0, Lgj/d;->e:Lorg/bouncycastle/asn1/b;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->N()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    iput-object v0, p0, Lgj/d;->a:Lorg/bouncycastle/asn1/k;

    invoke-static {v0}, Lgj/d;->G(Lorg/bouncycastle/asn1/k;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Loj/a;->y(Ljava/lang/Object;)Loj/a;

    move-result-object v1

    iput-object v1, p0, Lgj/d;->b:Loj/a;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/o;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/o;

    move-result-object v1

    iput-object v1, p0, Lgj/d;->c:Lorg/bouncycastle/asn1/o;

    const/4 v1, -0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/y;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/y;->N()I

    move-result v3

    if-le v3, v1, :cond_3

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-lt v0, v4, :cond_0

    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/n0;->Q(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/n0;

    move-result-object v1

    iput-object v1, p0, Lgj/d;->e:Lorg/bouncycastle/asn1/b;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'publicKey\' requires version v2(1) or later"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown optional field in private key info"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/u;->M(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/u;

    move-result-object v1

    iput-object v1, p0, Lgj/d;->d:Lorg/bouncycastle/asn1/u;

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid optional field in private key info"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method private static G(Lorg/bouncycastle/asn1/k;)I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/k;->R()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid version for private key info"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static y(Ljava/lang/Object;)Lgj/d;
    .locals 1

    instance-of v0, p0, Lgj/d;

    if-eqz v0, :cond_0

    check-cast p0, Lgj/d;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lgj/d;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lgj/d;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()Loj/a;
    .locals 1

    iget-object v0, p0, Lgj/d;->b:Loj/a;

    return-object v0
.end method

.method public F()Lorg/bouncycastle/asn1/b;
    .locals 1

    iget-object v0, p0, Lgj/d;->e:Lorg/bouncycastle/asn1/b;

    return-object v0
.end method

.method public H()Z
    .locals 1

    iget-object v0, p0, Lgj/d;->e:Lorg/bouncycastle/asn1/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public I()Lorg/bouncycastle/asn1/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lgj/d;->c:Lorg/bouncycastle/asn1/o;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/r;->G([B)Lorg/bouncycastle/asn1/r;

    move-result-object v0

    return-object v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Lgj/d;->a:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lgj/d;->b:Loj/a;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lgj/d;->c:Lorg/bouncycastle/asn1/o;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lgj/d;->d:Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/d1;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_0
    iget-object v1, p0, Lgj/d;->e:Lorg/bouncycastle/asn1/b;

    if-eqz v1, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/d1;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Lorg/bouncycastle/asn1/u;
    .locals 1

    iget-object v0, p0, Lgj/d;->d:Lorg/bouncycastle/asn1/u;

    return-object v0
.end method

.method public z()Lorg/bouncycastle/asn1/o;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/w0;

    iget-object v1, p0, Lgj/d;->c:Lorg/bouncycastle/asn1/o;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/o;->M()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/w0;-><init>([B)V

    return-object v0
.end method
