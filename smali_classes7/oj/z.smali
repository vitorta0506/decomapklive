.class public Loj/z;
.super Lorg/bouncycastle/asn1/m;
.source "SourceFile"


# instance fields
.field a:Loj/o;

.field b:Loj/q;

.field c:Loj/t;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/m;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/y;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v1

    invoke-static {v1}, Loj/o;->x(Ljava/lang/Object;)Loj/o;

    move-result-object v1

    iput-object v1, p0, Loj/z;->a:Loj/o;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/s;->size()I

    move-result v3

    if-eq v1, v3, :cond_3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/s;->M(I)Lorg/bouncycastle/asn1/e;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/y;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/y;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/y;->N()I

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3, v0}, Loj/q;->y(Lorg/bouncycastle/asn1/y;Z)Loj/q;

    move-result-object v3

    iput-object v3, p0, Loj/z;->b:Loj/q;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/y;->N()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-static {v3, v0}, Loj/t;->y(Lorg/bouncycastle/asn1/y;Z)Loj/t;

    move-result-object v3

    iput-object v3, p0, Loj/z;->c:Loj/t;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad tag number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/y;->N()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void

    :cond_4
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

.method public static x(Ljava/lang/Object;)Loj/z;
    .locals 1

    instance-of v0, p0, Loj/z;

    if-eqz v0, :cond_0

    check-cast p0, Loj/z;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Loj/z;

    invoke-static {p0}, Lorg/bouncycastle/asn1/s;->K(Ljava/lang/Object;)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-direct {v0, p0}, Loj/z;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static y(Lorg/bouncycastle/asn1/y;Z)Loj/z;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/s;->L(Lorg/bouncycastle/asn1/y;Z)Lorg/bouncycastle/asn1/s;

    move-result-object p0

    invoke-static {p0}, Loj/z;->x(Ljava/lang/Object;)Loj/z;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public f()Lorg/bouncycastle/asn1/r;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/f;-><init>(I)V

    iget-object v1, p0, Loj/z;->a:Loj/o;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_0
    iget-object v1, p0, Loj/z;->b:Loj/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/d1;

    invoke-direct {v3, v2, v2, v1}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_1
    iget-object v1, p0, Loj/z;->c:Loj/t;

    if-eqz v1, :cond_2

    new-instance v3, Lorg/bouncycastle/asn1/d1;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, Lorg/bouncycastle/asn1/d1;-><init>(ZILorg/bouncycastle/asn1/e;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/f;->a(Lorg/bouncycastle/asn1/e;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/a1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/a1;-><init>(Lorg/bouncycastle/asn1/f;)V

    return-object v1
.end method
