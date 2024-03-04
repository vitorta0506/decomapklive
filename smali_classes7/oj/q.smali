.class public Loj/q;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field a:Loj/o;

.field b:Lorg/bouncycastle/asn1/k;

.field c:Lorg/bouncycastle/asn1/n0;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
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

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Loj/o;->x(Ljava/lang/Object;)Loj/o;

    move-result-object v0

    iput-object v0, p0, Loj/q;->a:Loj/o;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/k;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/k;

    move-result-object v0

    iput-object v0, p0, Loj/q;->b:Lorg/bouncycastle/asn1/k;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/n0;->P(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Loj/q;->c:Lorg/bouncycastle/asn1/n0;

    :cond_2
    return-void
.end method

.method public static x(Ljava/lang/Object;)Loj/q;
    .locals 1

    instance-of v0, p0, Loj/q;

    if-eqz v0, :cond_0

    check-cast p0, Loj/q;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Loj/q;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/q;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static y(Lorg/bouncycastle/asn1/y;Z)Loj/q;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/s;->L(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-static {p0}, Loj/q;->x(Ljava/lang/Object;)Loj/q;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Loj/q;->a:Loj/o;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/q;->b:Lorg/bouncycastle/asn1/k;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/q;->c:Lorg/bouncycastle/asn1/n0;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method
