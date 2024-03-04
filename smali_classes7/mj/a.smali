.class public Lmj/a;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field private a:Lorg/bouncycastle/asn1/n;

.field private b:Lorg/bouncycastle/asn1/e;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/n;

    iput-object v0, p0, Lmj/a;->a:Lorg/bouncycastle/asn1/n;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    iput-object p1, p0, Lmj/a;->b:Lorg/bouncycastle/asn1/e;

    return-void
.end method

.method public static x(Ljava/lang/Object;)Lmj/a;
    .locals 1

    instance-of v0, p0, Lmj/a;

    if-eqz v0, :cond_0

    check-cast p0, Lmj/a;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lmj/a;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Lmj/a;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "null value in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Lmj/a;->a:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Lmj/a;->b:Lorg/bouncycastle/asn1/e;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public y()Lorg/bouncycastle/asn1/n;
    .locals 1

    iget-object v0, p0, Lmj/a;->a:Lorg/bouncycastle/asn1/n;

    return-object v0
.end method

.method public z()Lorg/bouncycastle/asn1/e;
    .locals 1

    iget-object v0, p0, Lmj/a;->b:Lorg/bouncycastle/asn1/e;

    return-object v0
.end method
