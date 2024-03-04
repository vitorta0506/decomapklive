.class public Loj/e;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field a:Loj/f;

.field b:Loj/a;

.field c:Lorg/bouncycastle/asn1/n0;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Loj/f;->F(Ljava/lang/Object;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Loj/e;->a:Loj/f;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v0

    invoke-static {v0}, Loj/a;->y(Ljava/lang/Object;)Loj/a;

    move-result-object v0

    iput-object v0, p0, Loj/e;->b:Loj/a;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/n0;->P(Ljava/lang/Object;)Lorg/bouncycastle/asn1/n0;

    move-result-object p1

    iput-object p1, p0, Loj/e;->c:Lorg/bouncycastle/asn1/n0;

    return-void

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
.end method

.method public static y(Ljava/lang/Object;)Loj/e;
    .locals 1

    instance-of v0, p0, Loj/e;

    if-eqz v0, :cond_0

    check-cast p0, Loj/e;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Loj/e;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/e;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public B()Lorg/bouncycastle/asn1/n0;
    .locals 1

    iget-object v0, p0, Loj/e;->c:Lorg/bouncycastle/asn1/n0;

    return-object v0
.end method

.method public f()Lorg/bouncycastle/asn1/r;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Loj/e;->a:Loj/f;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/e;->b:Loj/a;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    iget-object v1, p0, Loj/e;->c:Lorg/bouncycastle/asn1/n0;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method

.method public x()Loj/f;
    .locals 1

    iget-object v0, p0, Loj/e;->a:Loj/f;

    return-object v0
.end method

.method public z()Loj/a;
    .locals 1

    iget-object v0, p0, Loj/e;->b:Loj/a;

    return-object v0
.end method
